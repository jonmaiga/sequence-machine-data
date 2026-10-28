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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A080700: Product of upper bound twin-prime-indexed primes and their lower bound twin prime.

The programs for A080700, the canonical program `A080700.P8581527267507242` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080700 has offset 1).

The definition of A080700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080700.P8581527267507242

`A001359(n+1)*A057473(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A080700

/-- `A001359(n+1)*A057473(n+1)` -/
def P8581527267507242.Spec : Prop :=
  ∀ n, P8581527267507242.a n = A080700 (n + 1)

theorem P8581527267507242.correct : P8581527267507242.Spec := by
  intro n
  simp only [A080700, Nat.add_sub_cancel]

end A080700

/-! ## A080700.P36995805334126274

`A080701(n+1)-(A057473(n+1)+A057473(n+1))`
-/

namespace A080700.P36995805334126274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080701 (n + 1) - (A057473 (n + 1) + A057473 (n + 1))

end

end A080700.P36995805334126274

namespace A080700

/-- `A080701(n+1)-(A057473(n+1)+A057473(n+1))` -/
def P36995805334126274.Spec : Prop :=
  ∀ n, P36995805334126274.a n = A080700 (n + 1)

theorem P36995805334126274.correct : P36995805334126274.Spec := by
  intro n
  simp only [A080700, Nat.add_sub_cancel, A080700.P36995805334126274.a, A080700.P8581527267507242.a, A001359, A001359.P8865495035699438537.a, A057473, A057473.P10214485168046116986.a, A080701, A080701.P2642423002397275163.a, A006512, A006512.P8157243218962949380.a, A057470, A057470.P5128375788185333581.a, A077800, A077800.P16009445446139691322.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A008864, A008864.P9177617808325052279.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080700

/-! ## A080700.P12983076276990862332

`(A096474(n+1)+A057470(n+1))*A001359(n+1)`
-/

namespace A080700.P12983076276990862332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096474 (n + 1) + A057470 (n + 1)) * A001359 (n + 1)

end

end A080700.P12983076276990862332

namespace A080700

/-- `(A096474(n+1)+A057470(n+1))*A001359(n+1)` -/
def P12983076276990862332.Spec : Prop :=
  ∀ n, P12983076276990862332.a n = A080700 (n + 1)

theorem P12983076276990862332.correct : P12983076276990862332.Spec := by
  intro n
  simp only [A080700, Nat.add_sub_cancel, A080700.P12983076276990862332.a, A080700.P8581527267507242.a, A001359, A001359.P8865495035699438537.a, A057470, A057470.P5128375788185333581.a, A057473, A057473.P10214485168046116986.a, A096474, A096474.P15193505077618010963.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A077800, A077800.P16009445446139691322.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A008864, A008864.P9177617808325052279.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080700

/-! ## A080700.P4680250933757659648

`A057473(n+1)/A057470(n+1)*A080698(n+1)`
-/

namespace A080700.P4680250933757659648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057473 (n + 1) : ℚ) / (A057470 (n + 1) : ℚ) * (A080698 (n + 1) : ℚ)

end

end A080700.P4680250933757659648

namespace A080700

/-- `A057473(n+1)/A057470(n+1)*A080698(n+1)` -/
def P4680250933757659648.Spec : Prop :=
  ∀ n, P4680250933757659648.a n = (A080700 (n + 1) : ℚ)

end A080700

/-! ## A080700.P6365264357535698608

`A306192(A014574(n+1))`
-/

namespace A080700.P6365264357535698608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306192 (A014574 (n + 1)).toNat

end

end A080700.P6365264357535698608

namespace A080700

/-- `A306192(A014574(n+1))` -/
def P6365264357535698608.Spec : Prop :=
  ∀ n, P6365264357535698608.a n = A080700 (n + 1)

end A080700

/-! ## A080700.P12656608614865618494

`A306192(A001359(n+1)+1)`
-/

namespace A080700.P12656608614865618494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306192 (A001359 (n + 1) + 1).toNat

end

end A080700.P12656608614865618494

namespace A080700

/-- `A306192(A001359(n+1)+1)` -/
def P12656608614865618494.Spec : Prop :=
  ∀ n, P12656608614865618494.a n = A080700 (n + 1)

end A080700

/-! ## A080700.P2532443607027879148

`A306192(A006512(n+1)-1)`
-/

namespace A080700.P2532443607027879148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306192 (A006512 (n + 1) - 1).toNat

end

end A080700.P2532443607027879148

namespace A080700

/-- `A306192(A006512(n+1)-1)` -/
def P2532443607027879148.Spec : Prop :=
  ∀ n, P2532443607027879148.a n = A080700 (n + 1)

end A080700

/-! ## A080700.P533086850367309490

`A000040(A006512(n+1))*A001359(n+1)`
-/

namespace A080700.P533086850367309490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006512 (n + 1)).toNat * A001359 (n + 1)

end

end A080700.P533086850367309490

namespace A080700

/-- `A000040(A006512(n+1))*A001359(n+1)` -/
def P533086850367309490.Spec : Prop :=
  ∀ n, P533086850367309490.a n = A080700 (n + 1)

end A080700

/-! ## A080700.P16607856462821567748

`A001359(n+1)*A065091(A014574(n+1))`
-/

namespace A080700.P16607856462821567748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A065091 (A014574 (n + 1)).toNat

end

end A080700.P16607856462821567748

namespace A080700

/-- `A001359(n+1)*A065091(A014574(n+1))` -/
def P16607856462821567748.Spec : Prop :=
  ∀ n, P16607856462821567748.a n = A080700 (n + 1)

end A080700

/-! ## A080700.P13103773175669311103

`A306192(A167777(n+2))`
-/

namespace A080700.P13103773175669311103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306192 (A167777 (n + 2)).toNat

end

end A080700.P13103773175669311103

namespace A080700

/-- `A306192(A167777(n+2))` -/
def P13103773175669311103.Spec : Prop :=
  ∀ n, P13103773175669311103.a n = A080700 (n + 1)

end A080700

/-!
# A080701: Product of upper bound twin-prime-indexed primes and their upper bound twin prime.

The programs for A080701, the canonical program `A080701.P2642423002397275163` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080701 has offset 1).

The definition of A080701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080701.P2642423002397275163

`A006512(n+1)*A057473(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A080701

/-- `A006512(n+1)*A057473(n+1)` -/
def P2642423002397275163.Spec : Prop :=
  ∀ n, P2642423002397275163.a n = A080701 (n + 1)

theorem P2642423002397275163.correct : P2642423002397275163.Spec := by
  intro n
  simp only [A080701, Nat.add_sub_cancel]

end A080701

/-! ## A080701.P641326540657204083

`A057473(n+1)+A080700(n+1)+A057473(n+1)`
-/

namespace A080701.P641326540657204083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057473 (n + 1) + (A080700 (n + 1) + A057473 (n + 1))

end

end A080701.P641326540657204083

namespace A080701

/-- `A057473(n+1)+A080700(n+1)+A057473(n+1)` -/
def P641326540657204083.Spec : Prop :=
  ∀ n, P641326540657204083.a n = A080701 (n + 1)

theorem P641326540657204083.correct : P641326540657204083.Spec := by
  intro n
  simp only [A080701, Nat.add_sub_cancel, A080701.P641326540657204083.a, A080701.P2642423002397275163.a, A006512, A006512.P8157243218962949380.a, A057473, A057473.P10214485168046116986.a, A080700, A080700.P8581527267507242.a, A001359, A001359.P8865495035699438537.a, A057470, A057470.P5128375788185333581.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A077800, A077800.P16009445446139691322.a, A008864, A008864.P9177617808325052279.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080701

/-! ## A080701.P17945836501386675864

`(A096474(n+1)+A057470(n+1))*A006512(n+1)`
-/

namespace A080701.P17945836501386675864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096474 (n + 1) + A057470 (n + 1)) * A006512 (n + 1)

end

end A080701.P17945836501386675864

namespace A080701

/-- `(A096474(n+1)+A057470(n+1))*A006512(n+1)` -/
def P17945836501386675864.Spec : Prop :=
  ∀ n, P17945836501386675864.a n = A080701 (n + 1)

theorem P17945836501386675864.correct : P17945836501386675864.Spec := by
  intro n
  simp only [A080701, Nat.add_sub_cancel, A080701.P17945836501386675864.a, A080701.P2642423002397275163.a, A006512, A006512.P8157243218962949380.a, A057470, A057470.P5128375788185333581.a, A057473, A057473.P10214485168046116986.a, A096474, A096474.P15193505077618010963.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001359, A001359.P8865495035699438537.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A077800, A077800.P16009445446139691322.a, A008864, A008864.P9177617808325052279.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080701

/-! ## A080701.P10243215540466714442

`A057473(n+1)/A057470(n+1)*A080699(n+1)`
-/

namespace A080701.P10243215540466714442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057473 (n + 1) : ℚ) / (A057470 (n + 1) : ℚ) * (A080699 (n + 1) : ℚ)

end

end A080701.P10243215540466714442

namespace A080701

/-- `A057473(n+1)/A057470(n+1)*A080699(n+1)` -/
def P10243215540466714442.Spec : Prop :=
  ∀ n, P10243215540466714442.a n = (A080701 (n + 1) : ℚ)

end A080701

/-! ## A080701.P1844302481020581014

`A080699(n+1)/A080698(n+1)*A080700(n+1)`
-/

namespace A080701.P1844302481020581014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080699 (n + 1) : ℚ) / (A080698 (n + 1) : ℚ) * (A080700 (n + 1) : ℚ)

end

end A080701.P1844302481020581014

namespace A080701

/-- `A080699(n+1)/A080698(n+1)*A080700(n+1)` -/
def P1844302481020581014.Spec : Prop :=
  ∀ n, P1844302481020581014.a n = (A080701 (n + 1) : ℚ)

end A080701

/-! ## A080701.P15092008366794610607

`A073065(A107770(n+1))`
-/

namespace A080701.P15092008366794610607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073065 (A107770 (n + 1)).toNat

end

end A080701.P15092008366794610607

namespace A080701

/-- `A073065(A107770(n+1))` -/
def P15092008366794610607.Spec : Prop :=
  ∀ n, P15092008366794610607.a n = A080701 (n + 1)

end A080701

/-! ## A080701.P6935337377937903171

`A033286(A006512(n+1))`
-/

namespace A080701.P6935337377937903171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A006512 (n + 1)).toNat

end

end A080701.P6935337377937903171

namespace A080701

/-- `A033286(A006512(n+1))` -/
def P6935337377937903171.Spec : Prop :=
  ∀ n, P6935337377937903171.a n = A080701 (n + 1)

end A080701

/-! ## A080701.P3011788149646262800

`A033286(A067829(n+2))`
-/

namespace A080701.P3011788149646262800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A067829 (n + 2)).toNat

end

end A080701.P3011788149646262800

namespace A080701

/-- `A033286(A067829(n+2))` -/
def P3011788149646262800.Spec : Prop :=
  ∀ n, P3011788149646262800.a n = A080701 (n + 1)

end A080701

/-! ## A080701.P15124897068217451991

`A033286(A094743(n+2))`
-/

namespace A080701.P15124897068217451991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A094743 (n + 2)).toNat

end

end A080701.P15124897068217451991

namespace A080701

/-- `A033286(A094743(n+2))` -/
def P15124897068217451991.Spec : Prop :=
  ∀ n, P15124897068217451991.a n = A080701 (n + 1)

end A080701

/-! ## A080701.P3537521222928112403

`A033286(A001359(n+1)+2)`
-/

namespace A080701.P3537521222928112403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A001359 (n + 1) + 2).toNat

end

end A080701.P3537521222928112403

namespace A080701

/-- `A033286(A001359(n+1)+2)` -/
def P3537521222928112403.Spec : Prop :=
  ∀ n, P3537521222928112403.a n = A080701 (n + 1)

end A080701

/-! ## A080701.P511879173339267281

`A006512(n+1)*A065091(A014574(n+1))`
-/

namespace A080701.P511879173339267281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) * A065091 (A014574 (n + 1)).toNat

end

end A080701.P511879173339267281

namespace A080701

/-- `A006512(n+1)*A065091(A014574(n+1))` -/
def P511879173339267281.Spec : Prop :=
  ∀ n, P511879173339267281.a n = A080701 (n + 1)

end A080701

/-!
# A080702: a(1)=3; for n>1, a(n) = smallest number > a(n-1) such that the condition "if n is in the sequence then a(n) is even" is satisfied.

The programs for A080702, the canonical program `A080702.P6276148619349041055` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080702 has offset 1).

The definition of A080702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080702.P6276148619349041055

`A166079(n+6)+n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080702

/-- `A166079(n+6)+n` -/
def P6276148619349041055.Spec : Prop :=
  ∀ n, P6276148619349041055.a n = A080702 (n + 1)

theorem P6276148619349041055.correct : P6276148619349041055.Spec := by
  intro n
  simp only [A080702, Nat.add_sub_cancel]

end A080702

/-! ## A080702.P10302397155987855318

`A079945(n+2)-1`
-/

namespace A080702.P10302397155987855318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 (n + 2) - 1

end

end A080702.P10302397155987855318

namespace A080702

/-- `A079945(n+2)-1` -/
def P10302397155987855318.Spec : Prop :=
  ∀ n, P10302397155987855318.a n = A080702 (n + 1)

end A080702

/-! ## A080702.P12532065545799457255

`A080596(n+2)-1`
-/

namespace A080702.P12532065545799457255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080596 (n + 2) - 1

end

end A080702.P12532065545799457255

namespace A080702

/-- `A080596(n+2)-1` -/
def P12532065545799457255.Spec : Prop :=
  ∀ n, P12532065545799457255.a n = A080702 (n + 1)

end A080702

/-! ## A080702.P16339557362506170891

`∑[A079882(n+2)]+2`
-/

namespace A080702.P16339557362506170891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A080702.P16339557362506170891

namespace A080702

/-- `∑[A079882(n+2)]+2` -/
def P16339557362506170891.Spec : Prop :=
  ∀ n, P16339557362506170891.a n = A080702 (n + 1)

end A080702

/-! ## A080702.P3150920208052026533

`A080653(n+3)-2`
-/

namespace A080702.P3150920208052026533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080653 (n + 3) - 2

end

end A080702.P3150920208052026533

namespace A080702

/-- `A080653(n+3)-2` -/
def P3150920208052026533.Spec : Prop :=
  ∀ n, P3150920208052026533.a n = A080702 (n + 1)

end A080702

/-! ## A080702.P15911574253771610246

`A079905(n+4)-3`
-/

namespace A080702.P15911574253771610246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (n + 4) - 3

end

end A080702.P15911574253771610246

namespace A080702

/-- `A079905(n+4)-3` -/
def P15911574253771610246.Spec : Prop :=
  ∀ n, P15911574253771610246.a n = A080702 (n + 1)

end A080702

/-! ## A080702.P15875340103035863267

`A080637(n+4)-3`
-/

namespace A080702.P15875340103035863267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080637 (n + 4) - 3

end

end A080702.P15875340103035863267

namespace A080702

/-- `A080637(n+4)-3` -/
def P15875340103035863267.Spec : Prop :=
  ∀ n, P15875340103035863267.a n = A080702 (n + 1)

end A080702

/-! ## A080702.P17042275436365838788

`A007378(n+5)-4`
-/

namespace A080702.P17042275436365838788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (n + 5) - 4

end

end A080702.P17042275436365838788

namespace A080702

/-- `A007378(n+5)-4` -/
def P17042275436365838788.Spec : Prop :=
  ∀ n, P17042275436365838788.a n = A080702 (n + 1)

end A080702

/-! ## A080702.P3315780572830456459

`A277267(n+4)+n+2`
-/

namespace A080702.P3315780572830456459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 (n + 4) + (n + 2 : ℤ)

end

end A080702.P3315780572830456459

namespace A080702

/-- `A277267(n+4)+n+2` -/
def P3315780572830456459.Spec : Prop :=
  ∀ n, P3315780572830456459.a n = A080702 (n + 1)

end A080702

/-! ## A080702.P15399747236655473455

`n+1+A060973(n+5)`
-/

namespace A080702.P15399747236655473455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A060973 (n + 5)

end

end A080702.P15399747236655473455

namespace A080702

/-- `n+1+A060973(n+5)` -/
def P15399747236655473455.Spec : Prop :=
  ∀ n, P15399747236655473455.a n = A080702 (n + 1)

end A080702

/-! ## A080702.P1099770953218129738

`A023443(A080596(n+2))`
-/

namespace A080702.P1099770953218129738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080596 (n + 2)).toNat

end

end A080702.P1099770953218129738

namespace A080702

/-- `A023443(A080596(n+2))` -/
def P1099770953218129738.Spec : Prop :=
  ∀ n, P1099770953218129738.a n = A080702 (n + 1)

end A080702

/-!
# A080703: a(1)=5; for n>1, a(n) = smallest number > a(n-1) such that the condition "if n is in the sequence then a(n) is a multiple of 4" is satisfied.

The programs for A080703, the canonical program `A080703.P3176310097382570726` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080703 has offset 1).

The definition of A080703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080703.P3176310097382570726

`A353651(n+4)-3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080703

/-- `A353651(n+4)-3` -/
def P3176310097382570726.Spec : Prop :=
  ∀ n, P3176310097382570726.a n = A080703 (n + 1)

theorem P3176310097382570726.correct : P3176310097382570726.Spec := by
  intro n
  simp only [A080703, Nat.add_sub_cancel]

end A080703

/-! ## A080703.P7081947056171582934

`A028242(A080646(2*n+5))-1`
-/

namespace A080703.P7081947056171582934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A080646 (2 * n + 5)).toNat - 1

end

end A080703.P7081947056171582934

namespace A080703

/-- `A028242(A080646(2*n+5))-1` -/
def P7081947056171582934.Spec : Prop :=
  ∀ n, P7081947056171582934.a n = A080703 (n + 1)

end A080703

/-! ## A080703.P3281212677282302896

`A057428(2*(n+1))+A028242(A080646(2*n+5))`
-/

namespace A080703.P3281212677282302896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * (n + 1)) + A028242 (A080646 (2 * n + 5)).toNat

end

end A080703.P3281212677282302896

namespace A080703

/-- `A057428(2*(n+1))+A028242(A080646(2*n+5))` -/
def P3281212677282302896.Spec : Prop :=
  ∀ n, P3281212677282302896.a n = A080703 (n + 1)

end A080703

/-! ## A080703.P6892011452354538082

`A099837(3*n+2)+A028242(A080646(2*n+5))`
-/

namespace A080703.P6892011452354538082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 2) + A028242 (A080646 (2 * n + 5)).toNat

end

end A080703.P6892011452354538082

namespace A080703

/-- `A099837(3*n+2)+A028242(A080646(2*n+5))` -/
def P6892011452354538082.Spec : Prop :=
  ∀ n, P6892011452354538082.a n = A080703 (n + 1)

end A080703

/-! ## A080703.P13567044705547295574

`∑[A099563(A007088(n))]+5`
-/

namespace A080703.P13567044705547295574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A007088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A080703.P13567044705547295574

namespace A080703

/-- `∑[A099563(A007088(n))]+5` -/
def P13567044705547295574.Spec : Prop :=
  ∀ n, P13567044705547295574.a n = A080703 (n + 1)

end A080703

/-!
# A080704: a(1)=2; for n>1, if n is in the sequence then a(n) is the smallest even integer > a(n-1), otherwise a(n) = a(n-1) + 3.

The programs for A080704, there is no canonical definition to state claims against.
-/

/-! ## A080704.P11329898901823570650

`∑[A080717(floor(acot(n)+n))]`
-/

namespace A080704.P11329898901823570650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080717 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080704.P11329898901823570650

/-! ## A080704.P11734682942324284591

`A080717(n)+a(n-1)` with `a(0)=2`
-/

namespace A080704.P11734682942324284591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A080717 n + a (n - 1)

end

end A080704.P11734682942324284591

/-! ## A080704.P2766636360845319070

`∑[A080717(floor(sqrt(n²+1)))]`
-/

namespace A080704.P2766636360845319070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080717 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080704.P2766636360845319070

/-! ## A080704.P11593157326879943719

`∑[A080717(A000038(n)+n)]-1`
-/

namespace A080704.P11593157326879943719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080717 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A080704.P11593157326879943719

/-! ## A080704.P7513880384166282602

`∑[A080717(n+1)]+2-A080717(n+1)`
-/

namespace A080704.P7513880384166282602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A080717 (n + 1))

end

end A080704.P7513880384166282602

/-!
# A080705: Numbers k such that A080704(k+1) - A080704(k) = 1.

The programs for A080705, there is no canonical definition to state claims against.
-/

/-! ## A080705.P16001097361533794147

`∩[A080704(n+1)-2, A080704(n+1)]+1`
-/

namespace A080705.P16001097361533794147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080704 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A080705.P16001097361533794147

/-! ## A080705.P2233514210982689181

`eq[1, A080717(n+1)]+1`
-/

namespace A080705.P2233514210982689181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080705.P2233514210982689181

/-! ## A080705.P9192559305787736810

`filter[2*n+1, A080717(#)]`
-/

namespace A080705.P9192559305787736810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080717 (f1 j) = 1) n)

end

end A080705.P9192559305787736810

/-! ## A080705.P16225258700317153849

`eq[1, A080717(C(n, and(1, n)))]`
-/

namespace A080705.P16225258700317153849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080717 (Nat.choose n (Nat.land 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080705.P16225258700317153849

/-! ## A080705.P2524599922764141548

`lt[A080717(floor(sqrt(n²+1))), 2]`
-/

namespace A080705.P2524599922764141548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080717 (Nat.sqrt (n ^ 2 + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080705.P2524599922764141548

/-! ## A080705.P2934997829982236567

`lt[A080717(abs(1-n)+1)+1, 3]`
-/

namespace A080705.P2934997829982236567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080717 (|1 - (n : ℤ)| + 1).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080705.P2934997829982236567

/-!
# A080706: Powers of 3 that reach ...,7,8,4,2,1 under the mapping: if n is even divide by 2 else add 1.

The programs for A080706, there is no canonical definition to state claims against.
-/

/-! ## A080706.P2586955709065185157

`eq[3, A093476(n+2)]+2`
-/

namespace A080706.P2586955709065185157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093476 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A080706.P2586955709065185157

/-! ## A080706.P7005221011873474361

`A009056(eq[3, A093476(n+2)])`
-/

namespace A080706.P7005221011873474361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093476 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080706.P7005221011873474361

/-! ## A080706.P3785655203788205646

`eq[3, A093476(n/a(A000038(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A080706.P3785655203788205646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  A093476 (SequenceMachineLib.roundAway ((n : ℚ) / (f2 (A000038 n).toNat : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080706.P3785655203788205646

/-! ## A080706.P15149925424793257894

`lt[A294448(A093476(n+2)+4), 0]+2`
-/

namespace A080706.P15149925424793257894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (A093476 (n + 2) + 4).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A080706.P15149925424793257894

/-! ## A080706.P2615390236088974476

`eq[3, A093476(A233583(n+1))]`
-/

namespace A080706.P2615390236088974476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093476 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080706.P2615390236088974476

/-!
# A080707: a(1)=5; for n>1, a(n) = smallest number > a(n-1) such that the condition "n is in the sequence if and only if a(n) is a multiple of 3" is satisfied.

The programs for A080707, there is no canonical definition to state claims against.
-/

/-! ## A080707.P3321862605075790539

`A020915(n+1)+A014091(A187829(n+1))`
-/

namespace A080707.P3321862605075790539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (n + 1) + A014091 (A187829 (n + 1)).toNat

end

end A080707.P3321862605075790539

/-! ## A080707.P15951587325153089059

`floor((eq[5, A359361(n+2)]+1)/3)`
-/

namespace A080707.P15951587325153089059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 3⌋

end

end A080707.P15951587325153089059

/-! ## A080707.P11320142474100847752

`A176843(A187227(n+1)+2)`
-/

namespace A080707.P11320142474100847752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176843 (A187227 (n + 1) + 2).toNat

end

end A080707.P11320142474100847752

/-! ## A080707.P11396655981871330722

`lt[A113278(n), A156921(comp[10*n])]`
-/

namespace A080707.P11396655981871330722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113278 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156921 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080707.P11396655981871330722

/-! ## A080707.P8759196582739771688

`A186153(n+1)+A000002(A076102(3*(n+1)))`
-/

namespace A080707.P8759196582739771688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186153 (n + 1) + A000002 (A076102 (3 * (n + 1))).toNat

end

end A080707.P8759196582739771688

/-!
# A080709: Take sum of squares of digits of previous term, starting with 4.

The programs for A080709, the canonical program `A080709.P8464403126802922884` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080709 has offset 1).

The definition of A080709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080709.P8464403126802922884

`A000216(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080709

/-- `A000216(n+2)` -/
def P8464403126802922884.Spec : Prop :=
  ∀ n, P8464403126802922884.a n = A080709 (n + 1)

theorem P8464403126802922884.correct : P8464403126802922884.Spec := by
  intro n
  simp only [A080709, Nat.add_sub_cancel]

end A080709

/-!
# A080710: a(0) = 1; for n>0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is a multiple of 3".

The programs for A080710, there is no canonical definition to state claims against.
-/

/-! ## A080710.P6721331543296927472

`A080725(n+1)-1`
-/

namespace A080710.P6721331543296927472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080725 (n + 1) - 1

end

end A080710.P6721331543296927472

/-! ## A080710.P17863551121200861787

`A001478(n+1)+A080725(n+1)+n`
-/

namespace A080710.P17863551121200861787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A080725 (n + 1) + (n : ℤ))

end

end A080710.P17863551121200861787

/-! ## A080710.P9316507396399171151

`A023443(A080725(n+1))`
-/

namespace A080710.P9316507396399171151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080725 (n + 1)).toNat

end

end A080710.P9316507396399171151

/-! ## A080710.P4478361712573460910

`A023444(A080725(n+1)+1)`
-/

namespace A080710.P4478361712573460910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A080725 (n + 1) + 1).toNat

end

end A080710.P4478361712573460910

/-! ## A080710.P7083228488613072793

`A289207(A080725(n+1)+1)`
-/

namespace A080710.P7083228488613072793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A080725 (n + 1) + 1).toNat

end

end A080710.P7083228488613072793

/-! ## A080710.P5501136921631865052

`A023445(A080725(n+1)+1)+1`
-/

namespace A080710.P5501136921631865052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A080725 (n + 1) + 1).toNat + 1

end

end A080710.P5501136921631865052

/-! ## A080710.P16515438737893202568

`A023445(A080725(n+1)+2)`
-/

namespace A080710.P16515438737893202568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A080725 (n + 1) + 2).toNat

end

end A080710.P16515438737893202568

/-! ## A080710.P14037791012668516397

`A046667(2*A080725(n+1))`
-/

namespace A080710.P14037791012668516397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A080725 (n + 1)).toNat

end

end A080710.P14037791012668516397

/-! ## A080710.P3025874785848617033

`A105812(2*A080725(n+1))+A080725(n+1)`
-/

namespace A080710.P3025874785848617033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * A080725 (n + 1)).toNat + A080725 (n + 1)

end

end A080710.P3025874785848617033

/-! ## A080710.P7827953000081125725

`A105812(4*(n+1))+A080725(n+1)`
-/

namespace A080710.P7827953000081125725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (4 * (n + 1)) + A080725 (n + 1)

end

end A080710.P7827953000081125725

/-! ## A080710.P2114913333232260110

`A059169(4*A080725(n+1))`
-/

namespace A080710.P2114913333232260110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A080725 (n + 1)).toNat

end

end A080710.P2114913333232260110

/-! ## A080710.P1052655298394820097

`abs(A080725(n+1)+A008683(A000355(n+1)))`
-/

namespace A080710.P1052655298394820097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080725 (n + 1) + A008683 (A000355 (n + 1)).toNat|

end

end A080710.P1052655298394820097

/-!
# A080711: a(0) = 2; for n>0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is a multiple of 3".

The programs for A080711, there is no canonical definition to state claims against.
-/

/-! ## A080711.P11468290902602766459

`∑[A000188(A307119(A280616(n+1)))]`
-/

namespace A080711.P11468290902602766459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A307119 (A280616 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080711.P11468290902602766459

/-! ## A080711.P15645004400378946773

`record[A007953(A037225(A091581(n)))]`
-/

namespace A080711.P15645004400378946773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A037225 (A091581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080711.P15645004400378946773

/-! ## A080711.P2450935163839385196

`lt[A211790(A000961(n+1)), A348246(n+1)]`
-/

namespace A080711.P2450935163839385196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211790 (A000961 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080711.P2450935163839385196

/-! ## A080711.P3504048103119388330

`lt[A040200(A005153(2*(n+2))), A239578(n+1)]`
-/

namespace A080711.P3504048103119388330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040200 (A005153 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080711.P3504048103119388330

/-!
# A080713: Numbers not of the form p + q^2.

The programs for A080713, there is no canonical definition to state claims against.
-/

/-! ## A080713.P5666043597780348067

`eq[0, A258139(n+1)]+1`
-/

namespace A080713.P5666043597780348067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080713.P5666043597780348067

/-! ## A080713.P12158972617478250679

`eq[A100949(n+1), A282192(n+1)]+1`
-/

namespace A080713.P12158972617478250679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080713.P12158972617478250679

/-! ## A080713.P13677727392801176711

`record[n+1-A014601(9*A258139(n+1))]`
-/

namespace A080713.P13677727392801176711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014601 (9 * A258139 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080713.P13677727392801176711

/-! ## A080713.P14111010114141900445

`record[n+1-A001156(n)*A258139(n+1)]`
-/

namespace A080713.P14111010114141900445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001156 n * A258139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080713.P14111010114141900445

/-! ## A080713.P17683839639186637180

`record[n+1-A014601(A258139(n+1)²)²]`
-/

namespace A080713.P17683839639186637180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014601 (A258139 (n + 1) ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080713.P17683839639186637180

/-! ## A080713.P730958992655532232

`record[n+1-A032838(n+1)*A258139(n+1)]`
-/

namespace A080713.P730958992655532232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A032838 (n + 1) * A258139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080713.P730958992655532232

/-!
# A080714: a(n) is taken to be the (n-th)-smallest positive integer greater than a(n-1) that is consistent with the condition "n is a member of the sequence if and only if a(n) is odd.".

The programs for A080714, there is no canonical definition to state claims against.
-/

/-! ## A080714.P9124848472470271068

`A136272(∑[∑[A000164(n+2)]])`
-/

namespace A080714.P9124848472470271068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080714.P9124848472470271068

/-! ## A080714.P4687275801019946106

`A064724(∑[A120397(ceil(8*n/3)+1)])`
-/

namespace A080714.P4687275801019946106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (⌈8 * ((n : ℚ) / 3)⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064724 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080714.P4687275801019946106

/-! ## A080714.P16673041121476506904

`2*n+1+A000194(A174002(n))+n`
-/

namespace A080714.P16673041121476506904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A000194 (A174002 n).toNat + (n : ℤ))

end

end A080714.P16673041121476506904

/-! ## A080714.P4169455092102625155

`A016777(n)+A000194(A174002(n))`
-/

namespace A080714.P4169455092102625155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A000194 (A174002 n).toNat

end

end A080714.P4169455092102625155

/-! ## A080714.P18359392296291810719

`A081604(A271269(3*n+2))+A005563(n)`
-/

namespace A080714.P18359392296291810719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A271269 (3 * n + 2)).toNat + A005563 n

end

end A080714.P18359392296291810719

/-!
# A080715: Numbers k such that for any positive integers (a, b), if a * b = k then a + b is prime.

The programs for A080715, there is no canonical definition to state claims against.
-/

/-! ## A080715.P11840877791661361151

`A020639(A008458(n))*A244520(A028310(n))`
-/

namespace A080715.P11840877791661361151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A244520 (A028310 n).toNat

end

end A080715.P11840877791661361151

/-! ## A080715.P17716335834868688735

`A020639(A008574(n))*A244520(A028310(n))`
-/

namespace A080715.P17716335834868688735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A244520 (A028310 n).toNat

end

end A080715.P17716335834868688735

/-! ## A080715.P11409310032800866363

`record[A036453(n+1)*A244520(A250028(n+1))]`
-/

namespace A080715.P11409310032800866363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A244520 (A250028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080715.P11409310032800866363

/-! ## A080715.P7636080751574751572

`A000005(A008578(n+1))*A244520(A123108(2*n))`
-/

namespace A080715.P7636080751574751572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A244520 (A123108 (2 * n)).toNat

end

end A080715.P7636080751574751572

/-! ## A080715.P11372077511969806673

`∩[A077064(n+1), A358816(n+1)]`
-/

namespace A080715.P11372077511969806673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080715.P11372077511969806673

/-! ## A080715.P15482893200278996095

`∩[A112925(n+1), A358816(n+1)]`
-/

namespace A080715.P15482893200278996095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080715.P15482893200278996095

/-! ## A080715.P8826558094479485647

`filter[A358816(n+1), A008966(#)]`
-/

namespace A080715.P8826558094479485647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A080715.P8826558094479485647

/-! ## A080715.P16210700743119497829

`∩[A005117(n+1), A358816(n+1)]`
-/

namespace A080715.P16210700743119497829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080715.P16210700743119497829

/-! ## A080715.P17837397009039446346

`∩[A007674(n+1), A358816(n+1)]`
-/

namespace A080715.P17837397009039446346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080715.P17837397009039446346

/-! ## A080715.P10608002878736277507

`∩[A081083(n+1), A358816(n+1)]`
-/

namespace A080715.P10608002878736277507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080715.P10608002878736277507

/-! ## A080715.P1931699785463770434

`∩[A344314(n+1), A358816(n+1)]`
-/

namespace A080715.P1931699785463770434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080715.P1931699785463770434

/-! ## A080715.P11610936166030316622

`∩[A358816(n+1), A358817(n+1)]`
-/

namespace A080715.P11610936166030316622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080715.P11610936166030316622

/-! ## A080715.P11201489933015262655

`∩[A344312(n+1), A358816(n+1)]`
-/

namespace A080715.P11201489933015262655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080715.P11201489933015262655

/-! ## A080715.P18147665511104749914

`∩[A358816(n+1), A398169(n+1)]`
-/

namespace A080715.P18147665511104749914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080715.P18147665511104749914

/-!
# A080716: Numbers k such that sum of the divisors of k equals the sum of the reversals of the divisors of k.

The programs for A080716, there is no canonical definition to state claims against.
-/

/-! ## A080716.P1863331344156926369

`∪[A062687(n+1), A196677(n+1)]`
-/

namespace A080716.P1863331344156926369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080716.P1863331344156926369

/-! ## A080716.P17693438388054488054

`eq[A069250(n+1)+A004086(n+1), 2*(n+1)-A033879(n+1)]+1`
-/

namespace A080716.P17693438388054488054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069250 (n + 1) + A004086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080716.P17693438388054488054

/-! ## A080716.P17056399067284868845

`eq[A001065(n+1)+1+n, A069250(n+1)+A004086(n+1)]+1`
-/

namespace A080716.P17056399067284868845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069250 (n + 1) + A004086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080716.P17056399067284868845

/-! ## A080716.P2851710379587470756

`eq[A069250(n+1)+A004086(n+1), A064987(n+1)/(n+1)]+1`
-/

namespace A080716.P2851710379587470756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069250 (n + 1) + A004086 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A080716.P2851710379587470756

/-! ## A080716.P10092741239220917425

`eq[A033880(n+1)+2*(n+1), A069250(n+1)+A004086(n+1)]+1`
-/

namespace A080716.P10092741239220917425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (2 * (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069250 (n + 1) + A004086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080716.P10092741239220917425

/-! ## A080716.P517088504733861323

`eq[A135020(2*(n+1))+A069250(n+1), A001065(n+1)+1+n]+1`
-/

namespace A080716.P517088504733861323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (n + 1)) + A069250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080716.P517088504733861323

/-!
# A080717: Let S(0) = 1; obtain S(k) from S(k-1) by applying 1 -> 2, 2 -> 31, 3 -> 332; sequence is S(0), S(1), S(2), ...

The programs for A080717, there is no canonical definition to state claims against.
-/

/-! ## A080717.P16582296948007624420

`Δ[A080704(n+1)]`
-/

namespace A080717.P16582296948007624420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080717.P16582296948007624420

/-! ## A080717.P6935191140432809527

`Δ[record[A080704(A323889(n))]]`
-/

namespace A080717.P6935191140432809527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080704 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080717.P6935191140432809527

/-! ## A080717.P12830476413773791269

`A080704(n+2)-A080704(n+1)`
-/

namespace A080717.P12830476413773791269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080704 (n + 2) - A080704 (n + 1)

end

end A080717.P12830476413773791269

/-! ## A080717.P11959183276187818258

`Δ[record[A080704(A133310(n))]]`
-/

namespace A080717.P11959183276187818258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080704 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080717.P11959183276187818258

/-! ## A080717.P16605749579246498072

`Δ[record[A080704(A117910(n))]]`
-/

namespace A080717.P16605749579246498072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080704 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080717.P16605749579246498072

/-! ## A080717.P2969050389875300160

`Δ[record[A080704(A134478(n))]]`
-/

namespace A080717.P2969050389875300160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080704 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080717.P2969050389875300160

/-! ## A080717.P15177804798502989872

`Δ[record[A080704(A137735(n))]]`
-/

namespace A080717.P15177804798502989872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080704 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080717.P15177804798502989872

/-!
# A080718: 1, together with numbers n that are the product of two primes p and q such that the multiset of the digits of n coincides with the multiset of the digits of p and q.

The programs for A080718, there is no canonical definition to state claims against.
-/

/-! ## A080718.P9007974808975010334

`∏{e}[3^n, A280928(#)]`
-/

namespace A080718.P9007974808975010334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A280928 (Nat.factorization (f1 n) p)

end

end A080718.P9007974808975010334

/-! ## A080718.P7865083557449969316

`A280928(n*a(A067032(n)-1))` with `a(0)=1`
-/

namespace A080718.P7865083557449969316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280928 ((n : ℤ) * a (A067032 n - 1).toNat).toNat

end

end A080718.P7865083557449969316

/-!
# A080721: Triangle of binomial(n,k)*(binomial(n+k,k)-binomial(n+k-2,k-1)).

The programs for A080721, the canonical program `A080721.P15022973777539012223` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080721 has offset 0).

The definition of A080721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080721.P15022973777539012223

`A007318(n)*A072405(A245300(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080721

/-- `A007318(n)*A072405(A245300(n))` -/
def P15022973777539012223.Spec : Prop :=
  ∀ n, P15022973777539012223.a n = A080721 n

theorem P15022973777539012223.correct : P15022973777539012223.Spec := by
  intro n
  simp only [A080721]

end A080721

/-! ## A080721.P13466229568519073620

`sqrt(A008459(n))*A072405(A245300(n))`
-/

namespace A080721.P13466229568519073620
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A072405 (A245300 n).toNat : ℝ)

end

end A080721.P13466229568519073620

namespace A080721

/-- `sqrt(A008459(n))*A072405(A245300(n))` -/
def P13466229568519073620.Spec : Prop :=
  ∀ n, P13466229568519073620.a n = (A080721 n : ℝ)

end A080721

/-! ## A080721.P3710495237451167557

`Δ[A102363(n)]*A072405(A245300(n))`
-/

namespace A080721.P3710495237451167557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A072405 (A245300 n).toNat

end

end A080721.P3710495237451167557

namespace A080721

/-- `Δ[A102363(n)]*A072405(A245300(n))` -/
def P3710495237451167557.Spec : Prop :=
  ∀ n, P3710495237451167557.a n = A080721 n

end A080721

/-! ## A080721.P17644002382283963911

`A028326(n)/2*A072405(A245300(n))`
-/

namespace A080721.P17644002382283963911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A072405 (A245300 n).toNat : ℚ)

end

end A080721.P17644002382283963911

namespace A080721

/-- `A028326(n)/2*A072405(A245300(n))` -/
def P17644002382283963911.Spec : Prop :=
  ∀ n, P17644002382283963911.a n = (A080721 n : ℚ)

theorem P17644002382283963911.correct : P17644002382283963911.Spec := by
  intro n
  simp only [A080721, Nat.add_sub_cancel, A080721.P17644002382283963911.a, A080721.P15022973777539012223.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A072405, A072405.P2649620501641644678.a, A245300, A245300.P9556212720038646879.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A080721

/-!
# A080722: a(0) = 0; for n > 0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a term of the sequence if and only if a(n) == 1 (mod 3)".

The programs for A080722, the canonical program `A080722.P13409397924054965325` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080722 has offset 0).

The definition of A080722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080722.P13409397924054965325

`A006166(n-A057427(n))+n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080722

/-- `A006166(n-A057427(n))+n` -/
def P13409397924054965325.Spec : Prop :=
  ∀ n, P13409397924054965325.a n = A080722 n

theorem P13409397924054965325.correct : P13409397924054965325.Spec := by
  intro n
  simp only [A080722]

end A080722

/-! ## A080722.P7176900234804127093

`A006166(A000007(n)-1+n)+n`
-/

namespace A080722.P7176900234804127093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 (A000007 n - 1 + (n : ℤ)).toNat + (n : ℤ)

end

end A080722.P7176900234804127093

namespace A080722

/-- `A006166(A000007(n)-1+n)+n` -/
def P7176900234804127093.Spec : Prop :=
  ∀ n, P7176900234804127093.a n = A080722 n

end A080722

/-! ## A080722.P2839171577153121422

`A003605(A004273(n)-n)+char[xor(1, n)+1]`
-/

namespace A080722.P2839171577153121422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (A004273 n - (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A080722.P2839171577153121422

namespace A080722

/-- `A003605(A004273(n)-n)+char[xor(1, n)+1]` -/
def P2839171577153121422.Spec : Prop :=
  ∀ n, P2839171577153121422.a n = A080722 n

end A080722

/-! ## A080722.P816442375723953267

`A003605(A057428(n)+n)-A057428(n)`
-/

namespace A080722.P816442375723953267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (A057428 n + (n : ℤ)).toNat - A057428 n

end

end A080722.P816442375723953267

namespace A080722

/-- `A003605(A057428(n)+n)-A057428(n)` -/
def P816442375723953267.Spec : Prop :=
  ∀ n, P816442375723953267.a n = A080722 n

end A080722

/-! ## A080722.P14694678385143034786

`comp[A321464(3*n+1)+1]`
-/

namespace A080722.P14694678385143034786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (3 * n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080722.P14694678385143034786

namespace A080722

/-- `comp[A321464(3*n+1)+1]` -/
def P14694678385143034786.Spec : Prop :=
  ∀ n, (P14694678385143034786.a n : ℤ) = A080722 n

end A080722

/-! ## A080722.P1728420690928850602

`record[(A003605(A002264(n+1))+1)%(n+1)]`
-/

namespace A080722.P1728420690928850602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003605 (A002264 (n + 1)).toNat + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080722.P1728420690928850602

namespace A080722

/-- `record[(A003605(A002264(n+1))+1)%(n+1)]` -/
def P1728420690928850602.Spec : Prop :=
  ∀ n, P1728420690928850602.a n = A080722 n

end A080722

/-! ## A080722.P8288288247589762416

`A006166(log2(A011782(n)))+n`
-/

namespace A080722.P8288288247589762416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + (n : ℤ)

end

end A080722.P8288288247589762416

namespace A080722

/-- `A006166(log2(A011782(n)))+n` -/
def P8288288247589762416.Spec : Prop :=
  ∀ n, P8288288247589762416.a n = A080722 n

end A080722

/-! ## A080722.P3713455114204735206

`A003605(log2(A011782(n)))-A057428(n)`
-/

namespace A080722.P3713455114204735206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat - A057428 n

end

end A080722.P3713455114204735206

namespace A080722

/-- `A003605(log2(A011782(n)))-A057428(n)` -/
def P3713455114204735206.Spec : Prop :=
  ∀ n, P3713455114204735206.a n = A080722 n

end A080722

/-!
# A080723: a(0) = 1; for n>0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) == 1 mod 3".

The programs for A080723, the canonical program `A080723.P7336110079709998487` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080723 has offset 0).

The definition of A080723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080723.P7336110079709998487

`∑[floor(a(floor((n-2)/3)))]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080723

/-- `∑[floor(a(floor((n-2)/3)))]` -/
def P7336110079709998487.Spec : Prop :=
  ∀ n, (P7336110079709998487.a n : ℤ) = A080723 n

theorem P7336110079709998487.correct : P7336110079709998487.Spec := by
  intro n
  simp only [A080723]

end A080723

/-! ## A080723.P10991023750322654682

`∑[or(1, A122586(n+1))]`
-/

namespace A080723.P10991023750322654682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122586 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P10991023750322654682

namespace A080723

/-- `∑[or(1, A122586(n+1))]` -/
def P10991023750322654682.Spec : Prop :=
  ∀ n, P10991023750322654682.a n = A080723 n

end A080723

/-! ## A080723.P8421309561463581626

`∑[or(1, A030102(n+1)%3)]`
-/

namespace A080723.P8421309561463581626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.tmod (A030102 (n + 1)) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P8421309561463581626

namespace A080723

/-- `∑[or(1, A030102(n+1)%3)]` -/
def P8421309561463581626.Spec : Prop :=
  ∀ n, P8421309561463581626.a n = A080723 n

end A080723

/-! ## A080723.P2440860944822285525

`∑[and(3, ∑[A000010(3*(n+1))]-1)]`
-/

namespace A080723.P2440860944822285525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P2440860944822285525

namespace A080723

/-- `∑[and(3, ∑[A000010(3*(n+1))]-1)]` -/
def P2440860944822285525.Spec : Prop :=
  ∀ n, P2440860944822285525.a n = A080723 n

end A080723

/-! ## A080723.P5402172414528792380

`∪[A008585(n+1), A157671(n+2)]-2`
-/

namespace A080723.P5402172414528792380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A080723.P5402172414528792380

namespace A080723

/-- `∪[A008585(n+1), A157671(n+2)]-2` -/
def P5402172414528792380.Spec : Prop :=
  ∀ n, P5402172414528792380.a n = A080723 n

end A080723

/-! ## A080723.P1734224666049380520

`∑[abs(Δ[A080727(n)])]`
-/

namespace A080723.P1734224666049380520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P1734224666049380520

namespace A080723

/-- `∑[abs(Δ[A080727(n)])]` -/
def P1734224666049380520.Spec : Prop :=
  ∀ n, P1734224666049380520.a n = A080723 n

end A080723

/-! ## A080723.P14503333835539432166

`A080727(n+1)-1`
-/

namespace A080723.P14503333835539432166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 (n + 1) - 1

end

end A080723.P14503333835539432166

namespace A080723

/-- `A080727(n+1)-1` -/
def P14503333835539432166.Spec : Prop :=
  ∀ n, P14503333835539432166.a n = A080723 n

end A080723

/-! ## A080723.P8492937221505234854

`A003605(n+2)-2`
-/

namespace A080723.P8492937221505234854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 2) - 2

end

end A080723.P8492937221505234854

namespace A080723

/-- `A003605(n+2)-2` -/
def P8492937221505234854.Spec : Prop :=
  ∀ n, P8492937221505234854.a n = A080723 n

end A080723

/-! ## A080723.P14472065914486508063

`∑[abs(Δ[A003605(n+1)])]`
-/

namespace A080723.P14472065914486508063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P14472065914486508063

namespace A080723

/-- `∑[abs(Δ[A003605(n+1)])]` -/
def P14472065914486508063.Spec : Prop :=
  ∀ n, P14472065914486508063.a n = A080723 n

end A080723

/-! ## A080723.P1301118519648729805

`∑[2-Δ[A081134(n+1)]]`
-/

namespace A080723.P1301118519648729805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P1301118519648729805

namespace A080723

/-- `∑[2-Δ[A081134(n+1)]]` -/
def P1301118519648729805.Spec : Prop :=
  ∀ n, P1301118519648729805.a n = A080723 n

end A080723

/-! ## A080723.P16920634768430512987

`2*A073849(n+1)-(n+1)`
-/

namespace A080723.P16920634768430512987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073849 (n + 1) - (n + 1 : ℤ)

end

end A080723.P16920634768430512987

namespace A080723

/-- `2*A073849(n+1)-(n+1)` -/
def P16920634768430512987.Spec : Prop :=
  ∀ n, P16920634768430512987.a n = A080723 n

end A080723

/-! ## A080723.P2990657773038635297

`2*(n+1)-A081134(n+2)`
-/

namespace A080723.P2990657773038635297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A081134 (n + 2)

end

end A080723.P2990657773038635297

namespace A080723

/-- `2*(n+1)-A081134(n+2)` -/
def P2990657773038635297.Spec : Prop :=
  ∀ n, P2990657773038635297.a n = A080723 n

end A080723

/-! ## A080723.P5137278642413471075

`∑[A006530(Δ[A080727(n)])]`
-/

namespace A080723.P5137278642413471075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P5137278642413471075

namespace A080723

/-- `∑[A006530(Δ[A080727(n)])]` -/
def P5137278642413471075.Spec : Prop :=
  ∀ n, P5137278642413471075.a n = A080723 n

end A080723

/-! ## A080723.P9625545149907351976

`∑[A000041(Δ[A003605(n+1)])]`
-/

namespace A080723.P9625545149907351976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P9625545149907351976

namespace A080723

/-- `∑[A000041(Δ[A003605(n+1)])]` -/
def P9625545149907351976.Spec : Prop :=
  ∀ n, P9625545149907351976.a n = A080723 n

end A080723

/-! ## A080723.P2864083986418200913

`∑[A003611(Δ[A003605(n+1)])]`
-/

namespace A080723.P2864083986418200913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003611 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P2864083986418200913

namespace A080723

/-- `∑[A003611(Δ[A003605(n+1)])]` -/
def P2864083986418200913.Spec : Prop :=
  ∀ n, P2864083986418200913.a n = A080723 n

end A080723

/-! ## A080723.P9602133149523974760

`∑[A003615(Δ[A003605(n+1)])]`
-/

namespace A080723.P9602133149523974760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P9602133149523974760

namespace A080723

/-- `∑[A003615(Δ[A003605(n+1)])]` -/
def P9602133149523974760.Spec : Prop :=
  ∀ n, P9602133149523974760.a n = A080723 n

end A080723

/-! ## A080723.P8492805947130464003

`∑[A014963(Δ[A003605(n+1)])]`
-/

namespace A080723.P8492805947130464003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P8492805947130464003

namespace A080723

/-- `∑[A014963(Δ[A003605(n+1)])]` -/
def P8492805947130464003.Spec : Prop :=
  ∀ n, P8492805947130464003.a n = A080723 n

end A080723

/-! ## A080723.P5855579064650731094

`∑[A080727(Δ[A080727(n)])/2]`
-/

namespace A080723.P5855579064650731094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080727 (f2 (n + 1) - f2 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080723.P5855579064650731094

namespace A080723

/-- `∑[A080727(Δ[A080727(n)])/2]` -/
def P5855579064650731094.Spec : Prop :=
  ∀ n, P5855579064650731094.a n = (A080723 n : ℚ)

end A080723

/-! ## A080723.P18217149619258212341

`A006166(n+2)+n`
-/

namespace A080723.P18217149619258212341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 (n + 2) + (n : ℤ)

end

end A080723.P18217149619258212341

namespace A080723

/-- `A006166(n+2)+n` -/
def P18217149619258212341.Spec : Prop :=
  ∀ n, P18217149619258212341.a n = A080723 n

end A080723

/-!
# A080724: a(0) = 2; for n>0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) == 1 mod 3".

The programs for A080724, the canonical program `A080724.P3228021590566063094` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080724 has offset 0).

The definition of A080724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080724.P11247292683707771346

`eq[1, A019427(A330312(n+1))]`
-/

namespace A080724.P11247292683707771346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A330312 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080724.P11247292683707771346

namespace A080724

/-- `eq[1, A019427(A330312(n+1))]` -/
def P11247292683707771346.Spec : Prop :=
  ∀ n, (P11247292683707771346.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P5353752585387090299

`eq[1, A000035(A330312(n+1)+1)]`
-/

namespace A080724.P5353752585387090299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A330312 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080724.P5353752585387090299

namespace A080724

/-- `eq[1, A000035(A330312(n+1)+1)]` -/
def P5353752585387090299.Spec : Prop :=
  ∀ n, (P5353752585387090299.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P3503652163353930581

`lt[1, A260738(A330312(n+1)+1)]`
-/

namespace A080724.P3503652163353930581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A330312 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080724.P3503652163353930581

namespace A080724

/-- `lt[1, A260738(A330312(n+1)+1)]` -/
def P3503652163353930581.Spec : Prop :=
  ∀ n, (P3503652163353930581.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P11569070046348691515

`eq[2, A089643(2*A330312(n+1))]`
-/

namespace A080724.P11569070046348691515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (2 * A330312 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080724.P11569070046348691515

namespace A080724

/-- `eq[2, A089643(2*A330312(n+1))]` -/
def P11569070046348691515.Spec : Prop :=
  ∀ n, (P11569070046348691515.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P3228021590566063094

`A080726(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080724

/-- `A080726(n+1)-1` -/
def P3228021590566063094.Spec : Prop :=
  ∀ n, P3228021590566063094.a n = A080724 n

theorem P3228021590566063094.correct : P3228021590566063094.Spec := by
  intro n
  simp only [A080724]

end A080724

/-! ## A080724.P18159338171723006461

`eq[A000035(A330312(n+1)), A000038(n)]`
-/

namespace A080724.P18159338171723006461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A330312 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080724.P18159338171723006461

namespace A080724

/-- `eq[A000035(A330312(n+1)), A000038(n)]` -/
def P18159338171723006461.Spec : Prop :=
  ∀ n, (P18159338171723006461.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P4471826947288078101

`eq[0, A032938(n+1)%3]`
-/

namespace A080724.P4471826947288078101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032938 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080724.P4471826947288078101

namespace A080724

/-- `eq[0, A032938(n+1)%3]` -/
def P4471826947288078101.Spec : Prop :=
  ∀ n, (P4471826947288078101.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P13070579709013699238

`A023443(A080726(n+1))`
-/

namespace A080724.P13070579709013699238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080726 (n + 1)).toNat

end

end A080724.P13070579709013699238

namespace A080724

/-- `A023443(A080726(n+1))` -/
def P13070579709013699238.Spec : Prop :=
  ∀ n, P13070579709013699238.a n = A080724 n

end A080724

/-! ## A080724.P17296262117678585062

`eq[A033999(n+1), A056594(A043262(n+2))]`
-/

namespace A080724.P17296262117678585062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A043262 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080724.P17296262117678585062

namespace A080724

/-- `eq[A033999(n+1), A056594(A043262(n+2))]` -/
def P17296262117678585062.Spec : Prop :=
  ∀ n, (P17296262117678585062.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P17219474151442510049

`eq[2, A020639(A014190(n+2)+A014190(n+1))]`
-/

namespace A080724.P17219474151442510049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014190 (n + 2) + A014190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080724.P17219474151442510049

namespace A080724

/-- `eq[2, A020639(A014190(n+2)+A014190(n+1))]` -/
def P17219474151442510049.Spec : Prop :=
  ∀ n, (P17219474151442510049.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P17737444359334924580

`eq[0, A319997(A330312(n+1)²)]`
-/

namespace A080724.P17737444359334924580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (A330312 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080724.P17737444359334924580

namespace A080724

/-- `eq[0, A319997(A330312(n+1)²)]` -/
def P17737444359334924580.Spec : Prop :=
  ∀ n, (P17737444359334924580.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P6397299775545671528

`eq[2, A020639(A330312(n+1)²)]`
-/

namespace A080724.P6397299775545671528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A330312 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080724.P6397299775545671528

namespace A080724

/-- `eq[2, A020639(A330312(n+1)²)]` -/
def P6397299775545671528.Spec : Prop :=
  ∀ n, (P6397299775545671528.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P12147927935773338343

`eq[2, A089643(A330312(n+1)²)]`
-/

namespace A080724.P12147927935773338343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A330312 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080724.P12147927935773338343

namespace A080724

/-- `eq[2, A089643(A330312(n+1)²)]` -/
def P12147927935773338343.Spec : Prop :=
  ∀ n, (P12147927935773338343.a n : ℤ) = A080724 n

end A080724

/-! ## A080724.P8712652399911149277

`eq[0, A080425(A032938(n+1))]`
-/

namespace A080724.P8712652399911149277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A032938 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080724.P8712652399911149277

namespace A080724

/-- `eq[0, A080425(A032938(n+1))]` -/
def P8712652399911149277.Spec : Prop :=
  ∀ n, (P8712652399911149277.a n : ℤ) = A080724 n

end A080724

/-!
# A080725: a(1) = 2; for n>1, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) == 1 mod 3".

The programs for A080725, there is no canonical definition to state claims against.
-/

/-! ## A080725.P17788009923449541064

`A080710(n)+1`
-/

namespace A080725.P17788009923449541064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080710 n + 1

end

end A080725.P17788009923449541064

/-! ## A080725.P13548214153639503442

`2-(A007318(C(2, n))-A080710(n))`
-/

namespace A080725.P13548214153639503442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A080710 n)

end

end A080725.P13548214153639503442

/-! ## A080725.P487208853066925123

`A328399(2*A080710(n))`
-/

namespace A080725.P487208853066925123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A080710 n).toNat

end

end A080725.P487208853066925123

/-! ## A080725.P13218190013282103117

`A020725(A080710(n))`
-/

namespace A080725.P13218190013282103117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A080710 n).toNat

end

end A080725.P13218190013282103117

/-! ## A080725.P3668079981655740066

`A008619(2*A080710(n))`
-/

namespace A080725.P3668079981655740066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A080710 n).toNat

end

end A080725.P3668079981655740066

/-! ## A080725.P17904426510757914681

`A027656(2*A080710(n))`
-/

namespace A080725.P17904426510757914681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A080710 n).toNat

end

end A080725.P17904426510757914681

/-! ## A080725.P4249136052376734888

`A028242(2*A080710(n))`
-/

namespace A080725.P4249136052376734888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A080710 n).toNat

end

end A080725.P4249136052376734888

/-! ## A080725.P2343828179346913266

`A052938(2*A080710(n))`
-/

namespace A080725.P2343828179346913266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A080710 n).toNat

end

end A080725.P2343828179346913266

/-! ## A080725.P17170026263279721586

`A080513(2*A080710(n))`
-/

namespace A080725.P17170026263279721586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A080710 n).toNat

end

end A080725.P17170026263279721586

/-! ## A080725.P16416632892379752550

`A008611(3*A080710(n))`
-/

namespace A080725.P16416632892379752550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A080710 n).toNat

end

end A080725.P16416632892379752550

/-!
# A080726: a(0) = 0; for n>0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) == 2 mod 3".

The programs for A080726, the canonical program `A080726.P10899128741164103243` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080726 has offset 0).

The definition of A080726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080726.P10899128741164103243

`∑[floor(a(floor(n/3)))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080726

/-- `∑[floor(a(floor(n/3)))]` -/
def P10899128741164103243.Spec : Prop :=
  ∀ n, (P10899128741164103243.a n : ℤ) = A080726 n

theorem P10899128741164103243.correct : P10899128741164103243.Spec := by
  intro n
  simp only [A080726]

end A080726

/-! ## A080726.P10297858870938229025

`comp[comp[A080724(n)]+1]`
-/

namespace A080726.P10297858870938229025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080724 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A080726.P10297858870938229025

namespace A080726

/-- `comp[comp[A080724(n)]+1]` -/
def P10297858870938229025.Spec : Prop :=
  ∀ n, (P10297858870938229025.a n : ℤ) = A080726 n

end A080726

/-! ## A080726.P14699990260880587331

`record[(n+1)*A059841(A330312(n+1))]`
-/

namespace A080726.P14699990260880587331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059841 (A330312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080726.P14699990260880587331

namespace A080726

/-- `record[(n+1)*A059841(A330312(n+1))]` -/
def P14699990260880587331.Spec : Prop :=
  ∀ n, P14699990260880587331.a n = A080726 n

end A080726

/-! ## A080726.P3336608264597185727

`record[n+1-A033999(A043262(n+1))]`
-/

namespace A080726.P3336608264597185727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033999 (A043262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080726.P3336608264597185727

namespace A080726

/-- `record[n+1-A033999(A043262(n+1))]` -/
def P3336608264597185727.Spec : Prop :=
  ∀ n, P3336608264597185727.a n = A080726 n

end A080726

/-! ## A080726.P11776729422826365867

`eq[A033999(n), A056594(A043262(n+1))]`
-/

namespace A080726.P11776729422826365867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A043262 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080726.P11776729422826365867

namespace A080726

/-- `eq[A033999(n), A056594(A043262(n+1))]` -/
def P11776729422826365867.Spec : Prop :=
  ∀ n, (P11776729422826365867.a n : ℤ) = A080726 n

end A080726

/-! ## A080726.P17328532436590717748

`eq[0, A189718(A014190(n+1))]`
-/

namespace A080726.P17328532436590717748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (A014190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080726.P17328532436590717748

namespace A080726

/-- `eq[0, A189718(A014190(n+1))]` -/
def P17328532436590717748.Spec : Prop :=
  ∀ n, (P17328532436590717748.a n : ℤ) = A080726 n

end A080726

/-! ## A080726.P7827188703359851022

`record[n+1-A265511(A032938(n+1))]`
-/

namespace A080726.P7827188703359851022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A265511 (A032938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080726.P7827188703359851022

namespace A080726

/-- `record[n+1-A265511(A032938(n+1))]` -/
def P7827188703359851022.Spec : Prop :=
  ∀ n, P7827188703359851022.a n = A080726 n

end A080726

/-!
# A080727: a(0) = 1; for n>0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) == 2 mod 3".

The programs for A080727, the canonical program `A080727.P10976234059669822867` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080727 has offset 0).

The definition of A080727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080727.P10976234059669822867

`∑[abs(a(floor(n/3)))]` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080727

/-- `∑[abs(a(floor(n/3)))]` -/
def P10976234059669822867.Spec : Prop :=
  ∀ n, (P10976234059669822867.a n : ℤ) = A080727 n

theorem P10976234059669822867.correct : P10976234059669822867.Spec := by
  intro n
  simp only [A080727]

end A080727

/-! ## A080727.P18311229117760795691

`∑[dr(a(floor(n/3)))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A080727.P18311229117760795691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 ⌊(n : ℚ) / 3⌋.toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080727.P18311229117760795691

namespace A080727

/-- `∑[dr(a(floor(n/3)))]` -/
def P18311229117760795691.Spec : Prop :=
  ∀ n, (P18311229117760795691.a n : ℤ) = A080727 n

end A080727

/-! ## A080727.P16308843040823832134

`∑[floor(a(floor(n/3)))]` with `a(0)=1, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A080727.P16308843040823832134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080727.P16308843040823832134

namespace A080727

/-- `∑[floor(a(floor(n/3)))]` -/
def P16308843040823832134.Spec : Prop :=
  ∀ n, (P16308843040823832134.a n : ℤ) = A080727 n

theorem P16308843040823832134.correct : P16308843040823832134.Spec := by
  intro n
  simp only [A080727, Nat.add_sub_cancel, A080727.P16308843040823832134.f1, A080727.P16308843040823832134.a, A080727.P10976234059669822867.f1, A080727.P10976234059669822867.a, SequenceMachineLib.memo_apply]

end A080727

/-! ## A080727.P11846969942810921026

`A003605(n+1)-1`
-/

namespace A080727.P11846969942810921026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 1) - 1

end

end A080727.P11846969942810921026

namespace A080727

/-- `A003605(n+1)-1` -/
def P11846969942810921026.Spec : Prop :=
  ∀ n, P11846969942810921026.a n = A080727 n

end A080727

/-! ## A080727.P9950393227261072889

`∑[or(1, A030102(n)%3)]`
-/

namespace A080727.P9950393227261072889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.tmod (A030102 n) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080727.P9950393227261072889

namespace A080727

/-- `∑[or(1, A030102(n)%3)]` -/
def P9950393227261072889.Spec : Prop :=
  ∀ n, P9950393227261072889.a n = A080727 n

end A080727

/-! ## A080727.P16969361681164269302

`∑[abs(Δ[A003605(n)])]-1`
-/

namespace A080727.P16969361681164269302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A080727.P16969361681164269302

namespace A080727

/-- `∑[abs(Δ[A003605(n)])]-1` -/
def P16969361681164269302.Spec : Prop :=
  ∀ n, P16969361681164269302.a n = A080727 n

end A080727

/-! ## A080727.P4421872718659430609

`Δ[n²]-A081134(n+1)`
-/

namespace A080727.P4421872718659430609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A081134 (n + 1)

end

end A080727.P4421872718659430609

namespace A080727

/-- `Δ[n²]-A081134(n+1)` -/
def P4421872718659430609.Spec : Prop :=
  ∀ n, P4421872718659430609.a n = A080727 n

end A080727

/-! ## A080727.P17927090417847409555

`lt[A004488((n+1)/3^val(n+1, 3)), n+1]`
-/

namespace A080727.P17927090417847409555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080727.P17927090417847409555

namespace A080727

/-- `lt[A004488((n+1)/3^val(n+1, 3)), n+1]` -/
def P17927090417847409555.Spec : Prop :=
  ∀ n, (P17927090417847409555.a n : ℤ) = A080727 n

end A080727

/-! ## A080727.P5311180318609568888

`lt[A330740((n+1)/3^val(n+1, 3)), n+1]`
-/

namespace A080727.P5311180318609568888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080727.P5311180318609568888

namespace A080727

/-- `lt[A330740((n+1)/3^val(n+1, 3)), n+1]` -/
def P5311180318609568888.Spec : Prop :=
  ∀ n, (P5311180318609568888.a n : ℤ) = A080727 n

end A080727

/-! ## A080727.P1914371878386319629

`∑[A003611(Δ[A003605(n)])]`
-/

namespace A080727.P1914371878386319629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003611 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080727.P1914371878386319629

namespace A080727

/-- `∑[A003611(Δ[A003605(n)])]` -/
def P1914371878386319629.Spec : Prop :=
  ∀ n, P1914371878386319629.a n = A080727 n

end A080727

/-! ## A080727.P5653181181910600481

`∑[A003615(Δ[A003605(n)])]`
-/

namespace A080727.P5653181181910600481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080727.P5653181181910600481

namespace A080727

/-- `∑[A003615(Δ[A003605(n)])]` -/
def P5653181181910600481.Spec : Prop :=
  ∀ n, P5653181181910600481.a n = A080727 n

end A080727

/-! ## A080727.P13063022031141719423

`∑[A000041(Δ[A003605(n)])]-1`
-/

namespace A080727.P13063022031141719423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A080727.P13063022031141719423

namespace A080727

/-- `∑[A000041(Δ[A003605(n)])]-1` -/
def P13063022031141719423.Spec : Prop :=
  ∀ n, P13063022031141719423.a n = A080727 n

end A080727

/-! ## A080727.P14893871421146554316

`∑[A014963(Δ[A003605(n)])]-1`
-/

namespace A080727.P14893871421146554316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A080727.P14893871421146554316

namespace A080727

/-- `∑[A014963(Δ[A003605(n)])]-1` -/
def P14893871421146554316.Spec : Prop :=
  ∀ n, P14893871421146554316.a n = A080727 n

end A080727

/-! ## A080727.P17845260690087193436

`A006166(n+1)+n`
-/

namespace A080727.P17845260690087193436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 (n + 1) + (n : ℤ)

end

end A080727.P17845260690087193436

namespace A080727

/-- `A006166(n+1)+n` -/
def P17845260690087193436.Spec : Prop :=
  ∀ n, P17845260690087193436.a n = A080727 n

end A080727

/-! ## A080727.P17582188855182969303

`A057428(n+1)+A003605(n+1)`
-/

namespace A080727.P17582188855182969303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A003605 (n + 1)

end

end A080727.P17582188855182969303

namespace A080727

/-- `A057428(n+1)+A003605(n+1)` -/
def P17582188855182969303.Spec : Prop :=
  ∀ n, P17582188855182969303.a n = A080727 n

end A080727

/-! ## A080727.P85975634117690159

`A080722(n+2)-2`
-/

namespace A080727.P85975634117690159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 (n + 2) - 2

end

end A080727.P85975634117690159

namespace A080727

/-- `A080722(n+2)-2` -/
def P85975634117690159.Spec : Prop :=
  ∀ n, P85975634117690159.a n = A080727 n

end A080727

/-! ## A080727.P11079635339231264853

`eq[1, A019427(A330312(2*n+1))]`
-/

namespace A080727.P11079635339231264853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A330312 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080727.P11079635339231264853

namespace A080727

/-- `eq[1, A019427(A330312(2*n+1))]` -/
def P11079635339231264853.Spec : Prop :=
  ∀ n, (P11079635339231264853.a n : ℤ) = A080727 n

end A080727

/-! ## A080727.P15022740189379839916

`eq[A020639(A330312(2*n+1)), A020639(2*(n+1))]`
-/

namespace A080727.P15022740189379839916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A330312 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080727.P15022740189379839916

namespace A080727

/-- `eq[A020639(A330312(2*n+1)), A020639(2*(n+1))]` -/
def P15022740189379839916.Spec : Prop :=
  ∀ n, (P15022740189379839916.a n : ℤ) = A080727 n

end A080727

/-! ## A080727.P234696368999513623

`A023443(A003605(n+1))`
-/

namespace A080727.P234696368999513623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003605 (n + 1)).toNat

end

end A080727.P234696368999513623

namespace A080727

/-- `A023443(A003605(n+1))` -/
def P234696368999513623.Spec : Prop :=
  ∀ n, P234696368999513623.a n = A080727 n

end A080727

/-!
# A080728: a(0) = 3; for n>0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) == 2 mod 3".

The programs for A080728, there is no canonical definition to state claims against.
-/

/-! ## A080728.P8750438754379564523

`∑[A325524(A050030(n+1)+A049029(n+1))]`
-/

namespace A080728.P8750438754379564523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325524 (A050030 (n + 1) + A049029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080728.P8750438754379564523

/-! ## A080728.P10059807226655263328

`lt[A124919(A124909(n+4)), A124917(3*n+1)]`
-/

namespace A080728.P10059807226655263328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124919 (A124909 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124917 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080728.P10059807226655263328

/-!
# A080731: a(1)=1; a(2)=6; for n > 2, a(n) is taken as the smallest positive integer greater than a(n-1) such that the condition "n is a member of the sequence if and only if a(n) is odd" is satisfied.

The programs for A080731, there is no canonical definition to state claims against.
-/

/-! ## A080731.P16583331410430627358

`lt[A000196(n), A000030(A006370(n))]`
-/

namespace A080731.P16583331410430627358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A006370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080731.P16583331410430627358

/-! ## A080731.P17930257177120783205

`lt[A030203(A049618(2*n+1)), A318583(3*n+2)]`
-/

namespace A080731.P17930257177120783205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (A049618 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318583 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080731.P17930257177120783205

/-!
# A080732: Smallest distance from n to a prime power (as defined in A246655).

The programs for A080732, there is no canonical definition to state claims against.
-/

/-! ## A080732.P2971118339711081211

`(A301295(n+1)-1)%(n+1)+1`
-/

namespace A080732.P2971118339711081211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301295 (n + 1) - 1) (n + 1 : ℤ) + 1

end

end A080732.P2971118339711081211

/-! ## A080732.P13120659192396496219

`A301295(n+1)+A000007(n)`
-/

namespace A080732.P13120659192396496219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301295 (n + 1) + A000007 n

end

end A080732.P13120659192396496219

/-! ## A080732.P4405728390270201942

`A301295(n+1)+1-A057427(n)`
-/

namespace A080732.P4405728390270201942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301295 (n + 1) + (1 - A057427 n)

end

end A080732.P4405728390270201942

/-! ## A080732.P15796995335679392294

`A301295(n+1)+A278222(n)%2`
-/

namespace A080732.P15796995335679392294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301295 (n + 1) + Int.tmod (A278222 n) 2

end

end A080732.P15796995335679392294

/-! ## A080732.P14311537520444610455

`A301295(n+1)+char[A053501(n)-1]`
-/

namespace A080732.P14311537520444610455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301295 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080732.P14311537520444610455

/-! ## A080732.P10629205829799899928

`(1-A069513(n+1))*A316190(n+1)`
-/

namespace A080732.P10629205829799899928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A069513 (n + 1)) * A316190 (n + 1)

end

end A080732.P10629205829799899928

/-! ## A080732.P15879459138498094979

`A301295(n+1)+A096500(2*n+1)`
-/

namespace A080732.P15879459138498094979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301295 (n + 1) + A096500 (2 * n + 1)

end

end A080732.P15879459138498094979

/-! ## A080732.P16750206788197828932

`A301295(n+1)+A109578(2*n+1)`
-/

namespace A080732.P16750206788197828932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301295 (n + 1) + A109578 (2 * n + 1)

end

end A080732.P16750206788197828932

/-! ## A080732.P14046008244199042847

`A301295(n+1)+char[A301295(A053501(n))]`
-/

namespace A080732.P14046008244199042847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301295 (A053501 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301295 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080732.P14046008244199042847

/-! ## A080732.P9588893090432505587

`a(A301295(A000015(n)))*A301295(n+1)` with `a(0)=1`
-/

namespace A080732.P9588893090432505587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A301295 (A000015 n).toNat).toNat * A301295 (n + 1)

end

end A080732.P9588893090432505587

/-! ## A080732.P12195026383363322912

`A316190(A069513(n+1)+n+1)-A069513(n+1)`
-/

namespace A080732.P12195026383363322912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316190 (A069513 (n + 1) + (n : ℤ) + 1).toNat - A069513 (n + 1)

end

end A080732.P12195026383363322912

/-! ## A080732.P11795740891521946600

`a(A301295(A000961(n)))*A301295(n+1)` with `a(0)=1`
-/

namespace A080732.P11795740891521946600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A301295 (A000961 n).toNat).toNat * A301295 (n + 1)

end

end A080732.P11795740891521946600

/-! ## A080732.P12532213508414881554

`a(A051699(A000040(n)))*A301295(n+1)` with `a(0)=1`
-/

namespace A080732.P12532213508414881554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A051699 (A000040 n).toNat).toNat * A301295 (n + 1)

end

end A080732.P12532213508414881554

/-!
# A080733: Smallest distance from n to a squarefree number.

The programs for A080733, the canonical program `A080733.P10784600896855129706` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080733 has offset 1).

The definition of A080733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080733.P7290658019987551688

`A173557(A292589(2*(n+2)))%A000005(A003557(n+1)^3)`
-/

namespace A080733.P7290658019987551688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173557 (A292589 (2 * (n + 2))).toNat) (A000005 (A003557 (n + 1) ^ 3).toNat)

end

end A080733.P7290658019987551688

namespace A080733

/-- `A173557(A292589(2*(n+2)))%A000005(A003557(n+1)^3)` -/
def P7290658019987551688.Spec : Prop :=
  ∀ n, P7290658019987551688.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P5020553352437857508

`A294874(A294875(2*(n+2)))%A294895(n+1)`
-/

namespace A080733.P5020553352437857508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294874 (A294875 (2 * (n + 2))).toNat) (A294895 (n + 1))

end

end A080733.P5020553352437857508

namespace A080733

/-- `A294874(A294875(2*(n+2)))%A294895(n+1)` -/
def P5020553352437857508.Spec : Prop :=
  ∀ n, P5020553352437857508.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P10622223012424367382

`A051904(A295417(2*(n+2)))%A003557(n+1)`
-/

namespace A080733.P10622223012424367382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051904 (A295417 (2 * (n + 2))).toNat) (A003557 (n + 1))

end

end A080733.P10622223012424367382

namespace A080733

/-- `A051904(A295417(2*(n+2)))%A003557(n+1)` -/
def P10622223012424367382.Spec : Prop :=
  ∀ n, P10622223012424367382.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P4381286912740606997

`A336736(A336699(2*n+1))%((n+1)/∏{p}[n+1, #])`
-/

namespace A080733.P4381286912740606997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336736 (A336699 (2 * n + 1)).toNat) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))

end

end A080733.P4381286912740606997

namespace A080733

/-- `A336736(A336699(2*n+1))%((n+1)/∏{p}[n+1, #])` -/
def P4381286912740606997.Spec : Prop :=
  ∀ n, P4381286912740606997.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P15443984869364708529

`A249735(A249755(n+2))%A249739(n+1)`
-/

namespace A080733.P15443984869364708529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249735 (A249755 (n + 2)).toNat) (A249739 (n + 1))

end

end A080733.P15443984869364708529

namespace A080733

/-- `A249735(A249755(n+2))%A249739(n+1)` -/
def P15443984869364708529.Spec : Prop :=
  ∀ n, P15443984869364708529.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P5778912128180907639

`A000188(A078320(A007947(n+1)))%A000188(n+1)`
-/

namespace A080733.P5778912128180907639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 (A078320 (A007947 (n + 1)).toNat).toNat) (A000188 (n + 1))

end

end A080733.P5778912128180907639

namespace A080733

/-- `A000188(A078320(A007947(n+1)))%A000188(n+1)` -/
def P5778912128180907639.Spec : Prop :=
  ∀ n, P5778912128180907639.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P11654956646245661922

`A117358(A326842(n))%A082229(A091050(n+1))`
-/

namespace A080733.P11654956646245661922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117358 (A326842 n).toNat) (A082229 (A091050 (n + 1)).toNat)

end

end A080733.P11654956646245661922

namespace A080733

/-- `A117358(A326842(n))%A082229(A091050(n+1))` -/
def P11654956646245661922.Spec : Prop :=
  ∀ n, P11654956646245661922.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P8507496083563506155

`A007318(A178471(n+1))%∏{e}[n+1, #²]`
-/

namespace A080733.P8507496083563506155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A178471 (n + 1)).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2 : ℕ) : ℤ)

end

end A080733.P8507496083563506155

namespace A080733

/-- `A007318(A178471(n+1))%∏{e}[n+1, #²]` -/
def P8507496083563506155.Spec : Prop :=
  ∀ n, P8507496083563506155.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P1582622321390275351

`A007318(A178471(n+1))%A000188(n+1)`
-/

namespace A080733.P1582622321390275351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A178471 (n + 1)).toNat) (A000188 (n + 1))

end

end A080733.P1582622321390275351

namespace A080733

/-- `A007318(A178471(n+1))%A000188(n+1)` -/
def P1582622321390275351.Spec : Prop :=
  ∀ n, P1582622321390275351.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P7716156977626946380

`A094526(A178471(n+1))%A000190(n+1)`
-/

namespace A080733.P7716156977626946380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094526 (A178471 (n + 1)).toNat) (A000190 (n + 1))

end

end A080733.P7716156977626946380

namespace A080733

/-- `A094526(A178471(n+1))%A000190(n+1)` -/
def P7716156977626946380.Spec : Prop :=
  ∀ n, P7716156977626946380.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P12396523465772158376

`A320031(A178471(n+1))%A003557(n+1)`
-/

namespace A080733.P12396523465772158376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320031 (A178471 (n + 1)).toNat) (A003557 (n + 1))

end

end A080733.P12396523465772158376

namespace A080733

/-- `A320031(A178471(n+1))%A003557(n+1)` -/
def P12396523465772158376.Spec : Prop :=
  ∀ n, P12396523465772158376.a n = A080733 (n + 1)

end A080733

/-! ## A080733.P10784600896855129706

`A124333(A002618(n+1))%A003557(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A080733

/-- `A124333(A002618(n+1))%A003557(n+1)` -/
def P10784600896855129706.Spec : Prop :=
  ∀ n, P10784600896855129706.a n = A080733 (n + 1)

theorem P10784600896855129706.correct : P10784600896855129706.Spec := by
  intro n
  simp only [A080733, Nat.add_sub_cancel]

end A080733

/-!
# A080734: a(1)=1, then a(n)=a(n-1)+2 if the final decimal digit of a(n) is 0, a(n)=a(n-1)+3 otherwise.

The programs for A080734, the canonical program `A080734.P13575581058512944786` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080734 has offset 1).

The definition of A080734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080734.P13575581058512944786

`round(20*n/7)+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080734

/-- `round(20*n/7)+1` -/
def P13575581058512944786.Spec : Prop :=
  ∀ n, P13575581058512944786.a n = A080734 (n + 1)

theorem P13575581058512944786.correct : P13575581058512944786.Spec := by
  intro n
  simp only [A080734, Nat.add_sub_cancel]

end A080734

/-! ## A080734.P16295278963787632806

`A057359(4*n+2)`
-/

namespace A080734.P16295278963787632806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (4 * n + 2)

end

end A080734.P16295278963787632806

namespace A080734

/-- `A057359(4*n+2)` -/
def P16295278963787632806.Spec : Prop :=
  ∀ n, P16295278963787632806.a n = A080734 (n + 1)

end A080734

/-! ## A080734.P6066235249653297008

`A225875(A016861(n))`
-/

namespace A080734.P6066235249653297008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225875 (A016861 n).toNat

end

end A080734.P6066235249653297008

namespace A080734

/-- `A225875(A016861(n))` -/
def P6066235249653297008.Spec : Prop :=
  ∀ n, P6066235249653297008.a n = A080734 (n + 1)

end A080734

/-! ## A080734.P18345859303936653097

`A008619(A315734(n))`
-/

namespace A080734.P18345859303936653097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315734 n).toNat

end

end A080734.P18345859303936653097

namespace A080734

/-- `A008619(A315734(n))` -/
def P18345859303936653097.Spec : Prop :=
  ∀ n, P18345859303936653097.a n = A080734 (n + 1)

end A080734

/-! ## A080734.P11455832772202346054

`A092038(A315701(n))`
-/

namespace A080734.P11455832772202346054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A315701 n).toNat

end

end A080734.P11455832772202346054

namespace A080734

/-- `A092038(A315701(n))` -/
def P11455832772202346054.Spec : Prop :=
  ∀ n, P11455832772202346054.a n = A080734 (n + 1)

end A080734

/-! ## A080734.P5369423165940808824

`A057356(5*(2*n+1))`
-/

namespace A080734.P5369423165940808824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (5 * (2 * n + 1))

end

end A080734.P5369423165940808824

namespace A080734

/-- `A057356(5*(2*n+1))` -/
def P5369423165940808824.Spec : Prop :=
  ∀ n, P5369423165940808824.a n = A080734 (n + 1)

end A080734

/-! ## A080734.P12689607779069314927

`A333348(A017317(n))`
-/

namespace A080734.P12689607779069314927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333348 (A017317 n).toNat

end

end A080734.P12689607779069314927

namespace A080734

/-- `A333348(A017317(n))` -/
def P12689607779069314927.Spec : Prop :=
  ∀ n, P12689607779069314927.a n = A080734 (n + 1)

end A080734

/-! ## A080734.P14716134260554654459

`floor(log2(A109220(2*n+1)))`
-/

namespace A080734.P14716134260554654459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A109220 (2 * n + 1)).toNat

end

end A080734.P14716134260554654459

namespace A080734

/-- `floor(log2(A109220(2*n+1)))` -/
def P14716134260554654459.Spec : Prop :=
  ∀ n, (P14716134260554654459.a n : ℤ) = A080734 (n + 1)

end A080734

/-!
# A080735: a(1)=1, then a(n)=2*a(n-1) if a(n-1) is prime, a(n)=a(n-1)+1 otherwise.

The programs for A080735, there is no canonical definition to state claims against.
-/

/-! ## A080735.P8714725328600874509

`A163963(n)+a(n-1)` with `a(0)=1`
-/

namespace A080735.P8714725328600874509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163963 n + a (n - 1)

end

end A080735.P8714725328600874509

/-! ## A080735.P3624255512023373131

`∑[A163963(abs(1-n)+1)]-1`
-/

namespace A080735.P3624255512023373131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A080735.P3624255512023373131

/-! ## A080735.P13376630603312760722

`∑[A163963(A028310(n))]`
-/

namespace A080735.P13376630603312760722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080735.P13376630603312760722

/-! ## A080735.P3618656328346110525

`∑[A163963(A000007(n)+n)]`
-/

namespace A080735.P3618656328346110525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080735.P3618656328346110525

/-! ## A080735.P14198778752329447943

`∑[A163963(A004277(n)-n)]`
-/

namespace A080735.P14198778752329447943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080735.P14198778752329447943

/-! ## A080735.P4779711190580878822

`∑[A163963(gcd(n, A022144(n)))]`
-/

namespace A080735.P4779711190580878822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (Int.gcd (n : ℤ) (A022144 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080735.P4779711190580878822

/-! ## A080735.P6347727975616891233

`∑[A163963(A065190(n+1))]`
-/

namespace A080735.P6347727975616891233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080735.P6347727975616891233

/-! ## A080735.P7456798580434319789

`A014963(C(a(n-1), and(1, n+1)))+a(n-1)` with `a(0)=1`
-/

namespace A080735.P7456798580434319789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (Nat.choose (a (n - 1)).toNat (Nat.land 1 (n + 1))) + a (n - 1)

end

end A080735.P7456798580434319789

/-! ## A080735.P2979069417420201276

`A089026(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A080735.P2979069417420201276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089026 (a (n - 1)).toNat + a (n - 1)

end

end A080735.P2979069417420201276

/-! ## A080735.P1075557521051253496

`A014963(a(n-1))+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A080735.P1075557521051253496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5] fun n a =>
  A014963 (a (n - 1)).toNat + a (n - 1)

end

end A080735.P1075557521051253496

/-!
# A080736: Multiplicative function defined by a(1)=1, a(2)=0, a(2^r) = phi(2^r) (r>1), a(p^r) = phi(p^r) (p odd prime, r>=1), where phi is Euler's function A000010.

The programs for A080736, the canonical program `A080736.P3377769303044766093` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080736 has offset 1).

The definition of A080736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080736.P9589225274029918681

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*char[3*n-lcm(2, n+1)+2]`
-/

namespace A080736.P9589225274029918681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.lcm 2 (n + 1) : ℤ) + 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A080736.P9589225274029918681

namespace A080736

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*char[3*n-lcm(2, n+1)+2]` -/
def P9589225274029918681.Spec : Prop :=
  ∀ n, P9589225274029918681.a n = (A080736 (n + 1) : ℚ)

end A080736

/-! ## A080736.P8961370025814347629

`char[ceil(4*n/3)]*A000010(n+1)`
-/

namespace A080736.P8961370025814347629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * ((n : ℚ) / 3)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000010 (n + 1)

end

end A080736.P8961370025814347629

namespace A080736

/-- `char[ceil(4*n/3)]*A000010(n+1)` -/
def P8961370025814347629.Spec : Prop :=
  ∀ n, P8961370025814347629.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P3377769303044766093

`lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A317528(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080736

/-- `lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A317528(n+1))` -/
def P3377769303044766093.Spec : Prop :=
  ∀ n, (P3377769303044766093.a n : ℤ) = A080736 (n + 1)

theorem P3377769303044766093.correct : P3377769303044766093.Spec := by
  intro n
  simp only [A080736, Nat.add_sub_cancel]

end A080736

/-! ## A080736.P6281791466040050537

`A000034(n)*A326305(n+1)`
-/

namespace A080736.P6281791466040050537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A326305 (n + 1)

end

end A080736.P6281791466040050537

namespace A080736

/-- `A000034(n)*A326305(n+1)` -/
def P6281791466040050537.Spec : Prop :=
  ∀ n, P6281791466040050537.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P12955886509419915758

`A084642(n)*A326305(n+1)`
-/

namespace A080736.P12955886509419915758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n * A326305 (n + 1)

end

end A080736.P12955886509419915758

namespace A080736

/-- `A084642(n)*A326305(n+1)` -/
def P12955886509419915758.Spec : Prop :=
  ∀ n, P12955886509419915758.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P7515435746941669743

`A177704(n)*A326305(n+1)`
-/

namespace A080736.P7515435746941669743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n * A326305 (n + 1)

end

end A080736.P7515435746941669743

namespace A080736

/-- `A177704(n)*A326305(n+1)` -/
def P7515435746941669743.Spec : Prop :=
  ∀ n, P7515435746941669743.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P14362780851733938692

`A326305(n+1)*A375961(n)`
-/

namespace A080736.P14362780851733938692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326305 (n + 1) * A375961 n

end

end A080736.P14362780851733938692

namespace A080736

/-- `A326305(n+1)*A375961(n)` -/
def P14362780851733938692.Spec : Prop :=
  ∀ n, P14362780851733938692.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P7794717602180072349

`lcm(A000010(n+1), A131379(n))`
-/

namespace A080736.P7794717602180072349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (n + 1)) (A131379 n)

end

end A080736.P7794717602180072349

namespace A080736

/-- `lcm(A000010(n+1), A131379(n))` -/
def P7794717602180072349.Spec : Prop :=
  ∀ n, (P7794717602180072349.a n : ℤ) = A080736 (n + 1)

end A080736

/-! ## A080736.P8942283211049810351

`A062570(n+1)-A319998(n+1)`
-/

namespace A080736.P8942283211049810351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) - A319998 (n + 1)

end

end A080736.P8942283211049810351

namespace A080736

/-- `A062570(n+1)-A319998(n+1)` -/
def P8942283211049810351.Spec : Prop :=
  ∀ n, P8942283211049810351.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P12290138705042271838

`A000010(n+1)*A152822(n+1)`
-/

namespace A080736.P12290138705042271838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A152822 (n + 1)

end

end A080736.P12290138705042271838

namespace A080736

/-- `A000010(n+1)*A152822(n+1)` -/
def P12290138705042271838.Spec : Prop :=
  ∀ n, P12290138705042271838.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P3985580923065611993

`A087230(n+1)*A326305(n+1)`
-/

namespace A080736.P3985580923065611993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (n + 1) * A326305 (n + 1)

end

end A080736.P3985580923065611993

namespace A080736

/-- `A087230(n+1)*A326305(n+1)` -/
def P3985580923065611993.Spec : Prop :=
  ∀ n, P3985580923065611993.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P17106306456274129769

`A000010(n+1)*A166486(n+3)`
-/

namespace A080736.P17106306456274129769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A166486 (n + 3)

end

end A080736.P17106306456274129769

namespace A080736

/-- `A000010(n+1)*A166486(n+3)` -/
def P17106306456274129769.Spec : Prop :=
  ∀ n, P17106306456274129769.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P9745413432048279617

`A062771(n+1)%A200905(n+1)`
-/

namespace A080736.P9745413432048279617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062771 (n + 1)) (A200905 (n + 1))

end

end A080736.P9745413432048279617

namespace A080736

/-- `A062771(n+1)%A200905(n+1)` -/
def P9745413432048279617.Spec : Prop :=
  ∀ n, P9745413432048279617.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P9681064323282738648

`lcm(A055035(n+1), A317528(n+1))`
-/

namespace A080736.P9681064323282738648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055035 (n + 1)) (A317528 (n + 1))

end

end A080736.P9681064323282738648

namespace A080736

/-- `lcm(A055035(n+1), A317528(n+1))` -/
def P9681064323282738648.Spec : Prop :=
  ∀ n, (P9681064323282738648.a n : ℤ) = A080736 (n + 1)

end A080736

/-! ## A080736.P1586209200645031996

`lcm(A055034(n+1), A326305(n+1))`
-/

namespace A080736.P1586209200645031996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055034 (n + 1)) (A326305 (n + 1))

end

end A080736.P1586209200645031996

namespace A080736

/-- `lcm(A055034(n+1), A326305(n+1))` -/
def P1586209200645031996.Spec : Prop :=
  ∀ n, (P1586209200645031996.a n : ℤ) = A080736 (n + 1)

end A080736

/-! ## A080736.P5008733113386922365

`lcm(A325596(n+1), A359819(n+1))`
-/

namespace A080736.P5008733113386922365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A325596 (n + 1)) (A359819 (n + 1))

end

end A080736.P5008733113386922365

namespace A080736

/-- `lcm(A325596(n+1), A359819(n+1))` -/
def P5008733113386922365.Spec : Prop :=
  ∀ n, (P5008733113386922365.a n : ℤ) = A080736 (n + 1)

end A080736

/-! ## A080736.P11101987105801982946

`A000010(2*(n+1))-A319998(n+1)`
-/

namespace A080736.P11101987105801982946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) - A319998 (n + 1)

end

end A080736.P11101987105801982946

namespace A080736

/-- `A000010(2*(n+1))-A319998(n+1)` -/
def P11101987105801982946.Spec : Prop :=
  ∀ n, P11101987105801982946.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P2392628468254764692

`∑{d}[n+1, A008683(#)*A384055((n+1)/#)]`
-/

namespace A080736.P2392628468254764692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A384055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A080736.P2392628468254764692

namespace A080736

/-- `∑{d}[n+1, A008683(#)*A384055((n+1)/#)]` -/
def P2392628468254764692.Spec : Prop :=
  ∀ n, P2392628468254764692.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P18372426610225438211

`A000010(n+1)+A000035(n)*A319997(n+1)`
-/

namespace A080736.P18372426610225438211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000035 n * A319997 (n + 1)

end

end A080736.P18372426610225438211

namespace A080736

/-- `A000010(n+1)+A000035(n)*A319997(n+1)` -/
def P18372426610225438211.Spec : Prop :=
  ∀ n, P18372426610225438211.a n = A080736 (n + 1)

end A080736

/-! ## A080736.P1860271647205998648

`A062570(n+1)+A319997(n+1)-A000010(n+1)`
-/

namespace A080736.P1860271647205998648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) + (A319997 (n + 1) - A000010 (n + 1))

end

end A080736.P1860271647205998648

namespace A080736

/-- `A062570(n+1)+A319997(n+1)-A000010(n+1)` -/
def P1860271647205998648.Spec : Prop :=
  ∀ n, P1860271647205998648.a n = A080736 (n + 1)

end A080736

/-!
# A080737: a(1) = a(2) = 0; for n > 2, the least dimension of a lattice possessing a symmetry of order n.

The programs for A080737, the canonical program `A080737.P3206243844003316961` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080737 has offset 1).

The definition of A080737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080737.P8739570527109437810

`and(-2, A152455(n+1))`
-/

namespace A080737.P8739570527109437810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A152455 (n + 1))

end

end A080737.P8739570527109437810

namespace A080737

/-- `and(-2, A152455(n+1))` -/
def P8739570527109437810.Spec : Prop :=
  ∀ n, P8739570527109437810.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P2006199965223311706

`and(char[2]-2, A067240(n+1))`
-/

namespace A080737.P2006199965223311706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 2) (A067240 (n + 1))

end

end A080737.P2006199965223311706

namespace A080737

/-- `and(char[2]-2, A067240(n+1))` -/
def P2006199965223311706.Spec : Prop :=
  ∀ n, P2006199965223311706.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P3206243844003316961

`A052928(A067240(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080737

/-- `A052928(A067240(n+1))` -/
def P3206243844003316961.Spec : Prop :=
  ∀ n, P3206243844003316961.a n = A080737 (n + 1)

theorem P3206243844003316961.correct : P3206243844003316961.Spec := by
  intro n
  simp only [A080737, Nat.add_sub_cancel]

end A080737

/-! ## A080737.P2974714635301779444

`A052928(A152455(n+1))`
-/

namespace A080737.P2974714635301779444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A152455 (n + 1)).toNat

end

end A080737.P2974714635301779444

namespace A080737

/-- `A052928(A152455(n+1))` -/
def P2974714635301779444.Spec : Prop :=
  ∀ n, P2974714635301779444.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P17089811075653114170

`A152455(A060576(n)+n)`
-/

namespace A080737.P17089811075653114170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152455 (A060576 n + (n : ℤ)).toNat

end

end A080737.P17089811075653114170

namespace A080737

/-- `A152455(A060576(n)+n)` -/
def P17089811075653114170.Spec : Prop :=
  ∀ n, P17089811075653114170.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P866548005144591370

`A152455(A159075(n)+1+n)`
-/

namespace A080737.P866548005144591370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152455 (A159075 n + 1 + (n : ℤ)).toNat

end

end A080737.P866548005144591370

namespace A080737

/-- `A152455(A159075(n)+1+n)` -/
def P866548005144591370.Spec : Prop :=
  ∀ n, P866548005144591370.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P12675223116020280060

`A152455(1-A063524(n)+n)`
-/

namespace A080737.P12675223116020280060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152455 (1 - A063524 n + (n : ℤ)).toNat

end

end A080737.P12675223116020280060

namespace A080737

/-- `A152455(1-A063524(n)+n)` -/
def P12675223116020280060.Spec : Prop :=
  ∀ n, P12675223116020280060.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P4064358093533042237

`A152455(1-(A063524(n)-n))`
-/

namespace A080737.P4064358093533042237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152455 (1 - (A063524 n - (n : ℤ))).toNat

end

end A080737.P4064358093533042237

namespace A080737

/-- `A152455(1-(A063524(n)-n))` -/
def P4064358093533042237.Spec : Prop :=
  ∀ n, P4064358093533042237.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P15867996801715694067

`A152455(n+1)*A157928(n)`
-/

namespace A080737.P15867996801715694067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152455 (n + 1) * A157928 n

end

end A080737.P15867996801715694067

namespace A080737

/-- `A152455(n+1)*A157928(n)` -/
def P15867996801715694067.Spec : Prop :=
  ∀ n, P15867996801715694067.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P6192124364473932899

`A152455(lcm(n, A081729(n))+1)`
-/

namespace A080737.P6192124364473932899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152455 (Int.lcm (n : ℤ) (A081729 n) + 1)

end

end A080737.P6192124364473932899

namespace A080737

/-- `A152455(lcm(n, A081729(n))+1)` -/
def P6192124364473932899.Spec : Prop :=
  ∀ n, P6192124364473932899.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P4529223769458891043

`and(A067240(n+1), A113679(n))`
-/

namespace A080737.P4529223769458891043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067240 (n + 1)) (A113679 n)

end

end A080737.P4529223769458891043

namespace A080737

/-- `and(A067240(n+1), A113679(n))` -/
def P4529223769458891043.Spec : Prop :=
  ∀ n, P4529223769458891043.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P17964210956503188053

`A067240(A283971(n+1))`
-/

namespace A080737.P17964210956503188053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067240 (A283971 (n + 1)).toNat

end

end A080737.P17964210956503188053

namespace A080737

/-- `A067240(A283971(n+1))` -/
def P17964210956503188053.Spec : Prop :=
  ∀ n, P17964210956503188053.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P11450792675788626419

`C(A152455(n+1), A014963(A152482(n+1)))`
-/

namespace A080737.P11450792675788626419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A152455 (n + 1)).toNat (A014963 (A152482 (n + 1)).toNat).toNat

end

end A080737.P11450792675788626419

namespace A080737

/-- `C(A152455(n+1), A014963(A152482(n+1)))` -/
def P11450792675788626419.Spec : Prop :=
  ∀ n, (P11450792675788626419.a n : ℤ) = A080737 (n + 1)

end A080737

/-! ## A080737.P8608129523229798771

`and(A067240(n+1), A075427(n))`
-/

namespace A080737.P8608129523229798771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067240 (n + 1)) (A075427 n)

end

end A080737.P8608129523229798771

namespace A080737

/-- `and(A067240(n+1), A075427(n))` -/
def P8608129523229798771.Spec : Prop :=
  ∀ n, P8608129523229798771.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P9562121827405934282

`A152455(n+1)%A000032(n)`
-/

namespace A080737.P9562121827405934282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152455 (n + 1)) (A000032 n)

end

end A080737.P9562121827405934282

namespace A080737

/-- `A152455(n+1)%A000032(n)` -/
def P9562121827405934282.Spec : Prop :=
  ∀ n, P9562121827405934282.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P4347651104506203309

`and(A067240(n+1), A141023(n))`
-/

namespace A080737.P4347651104506203309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067240 (n + 1)) (A141023 n)

end

end A080737.P4347651104506203309

namespace A080737

/-- `and(A067240(n+1), A141023(n))` -/
def P4347651104506203309.Spec : Prop :=
  ∀ n, P4347651104506203309.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P12648417836632408682

`and(A067240(n+1), A095121(n))`
-/

namespace A080737.P12648417836632408682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067240 (n + 1)) (A095121 n)

end

end A080737.P12648417836632408682

namespace A080737

/-- `and(A067240(n+1), A095121(n))` -/
def P12648417836632408682.Spec : Prop :=
  ∀ n, P12648417836632408682.a n = A080737 (n + 1)

end A080737

/-! ## A080737.P10395553908751360919

`and(A067240(n+1), A296965(n+1))`
-/

namespace A080737.P10395553908751360919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067240 (n + 1)) (A296965 (n + 1))

end

end A080737.P10395553908751360919

namespace A080737

/-- `and(A067240(n+1), A296965(n+1))` -/
def P10395553908751360919.Spec : Prop :=
  ∀ n, P10395553908751360919.a n = A080737 (n + 1)

end A080737

/-!
# A080740: a(n) = number of m such that A080737(m) <= 2n.

The programs for A080740, there is no canonical definition to state claims against.
-/

/-! ## A080740.P15930143308761329446

`∑[A080739(n)]`
-/

namespace A080740.P15930143308761329446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080740.P15930143308761329446

/-! ## A080740.P7345640175733729124

`A080739(n)+a(A023443(n))` with `a(0)=2`
-/

namespace A080740.P7345640175733729124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A080739 n + a (A023443 n).toNat

end

end A080740.P7345640175733729124

/-! ## A080740.P4219185964872917739

`a(n-1)-A064179(A000028(n+1))*A080739(n)` with `a(0)=2`
-/

namespace A080740.P4219185964872917739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - A064179 (A000028 (n + 1)).toNat * A080739 n

end

end A080740.P4219185964872917739

/-! ## A080740.P9014846119699237141

`A337722(n+1)+A367214(n)²`
-/

namespace A080740.P9014846119699237141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337722 (n + 1) + A367214 n ^ 2

end

end A080740.P9014846119699237141

/-!
# A080741: Smallest element of n-th row of A080738.

The programs for A080741, there is no canonical definition to state claims against.
-/

/-! ## A080741.P16046115264426291367

`A080738(A080740(n)-A080739(n))`
-/

namespace A080741.P16046115264426291367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080738 (A080740 n - A080739 n).toNat

end

end A080741.P16046115264426291367

/-! ## A080741.P838329252958221527

`A080738(∑[A080739(n)]-A080739(n))`
-/

namespace A080741.P838329252958221527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080738 (∑ j ∈ Finset.range (n + 1), f1 j - A080739 n).toNat

end

end A080741.P838329252958221527

/-!
# A080742: Largest element of n-th row of A080738.

The programs for A080742, there is no canonical definition to state claims against.
-/

/-! ## A080742.P10842976280135401056

`A080738(A080740(n)-1)`
-/

namespace A080742.P10842976280135401056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080738 (A080740 n - 1).toNat

end

end A080742.P10842976280135401056

/-! ## A080742.P8404795652568874066

`A080738(∑[A080739(n)]-1)`
-/

namespace A080742.P8404795652568874066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080738 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A080742.P8404795652568874066

/-! ## A080742.P13926402745405429712

`A005417(A062399(n))`
-/

namespace A080742.P13926402745405429712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005417 (A062399 n).toNat

end

end A080742.P13926402745405429712

/-! ## A080742.P15344687296963137164

`A005417(A120126(n))`
-/

namespace A080742.P15344687296963137164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005417 (A120126 n).toNat

end

end A080742.P15344687296963137164

/-! ## A080742.P3598165384460301449

`A005417(A351870(n))`
-/

namespace A080742.P3598165384460301449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005417 (A351870 n).toNat

end

end A080742.P3598165384460301449

/-!
# A080745: Inverse Aronson transform of Fibonacci numbers 1,2,3,5,8,13,...

The programs for A080745, there is no canonical definition to state claims against.
-/

/-! ## A080745.P11695332599580005781

`∑[A322791(A089028(A061026(n+1)))]`
-/

namespace A080745.P11695332599580005781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322791 (A089028 (A061026 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080745.P11695332599580005781

/-!
# A080746: Inverse Aronson transform of lower Wythoff sequence A000201.

The programs for A080746, the canonical program `A080746.P1652591669284040234` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080746 has offset 1).

The definition of A080746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080746.P8474169765466485986

`comp[abs(2-floor(n*ϕ²))]`
-/

namespace A080746.P8474169765466485986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080746.P8474169765466485986

namespace A080746

/-- `comp[abs(2-floor(n*ϕ²))]` -/
def P8474169765466485986.Spec : Prop :=
  ∀ n, (P8474169765466485986.a n : ℤ) = A080746 (n + 1)

end A080746

/-! ## A080746.P7229055557020311601

`record[floor(ϕ*n)+1-3%(n+1)]`
-/

namespace A080746.P7229055557020311601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1 - ((3 % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080746.P7229055557020311601

namespace A080746

/-- `record[floor(ϕ*n)+1-3%(n+1)]` -/
def P7229055557020311601.Spec : Prop :=
  ∀ n, P7229055557020311601.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P2612903019947254692

`floor(ϕ*(n+3))-(C(2, C(2, n²))+1)`
-/

namespace A080746.P2612903019947254692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 3 : ℝ)⌋ - (Nat.choose 2 (Nat.choose 2 (n ^ 2)) + 1 : ℤ)

end

end A080746.P2612903019947254692

namespace A080746

/-- `floor(ϕ*(n+3))-(C(2, C(2, n²))+1)` -/
def P2612903019947254692.Spec : Prop :=
  ∀ n, P2612903019947254692.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P3831781572785009008

`record[(floor(n*(ϕ+2))+1)%(2*n+3)]`
-/

namespace A080746.P3831781572785009008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * (Real.goldenRatio + 2)⌋ + 1) (2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080746.P3831781572785009008

namespace A080746

/-- `record[(floor(n*(ϕ+2))+1)%(2*n+3)]` -/
def P3831781572785009008.Spec : Prop :=
  ∀ n, P3831781572785009008.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P6716399026656483089

`record[or(floor(ϕ*(n+2))-2, round(cos(4)^n))]`
-/

namespace A080746.P6716399026656483089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 2) (SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080746.P6716399026656483089

namespace A080746

/-- `record[or(floor(ϕ*(n+2))-2, round(cos(4)^n))]` -/
def P6716399026656483089.Spec : Prop :=
  ∀ n, P6716399026656483089.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P2578546771779799542

`record[and(floor(ϕ*(n+2))-2, floor(1/(γ-n)))]`
-/

namespace A080746.P2578546771779799542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 2) ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080746.P2578546771779799542

namespace A080746

/-- `record[and(floor(ϕ*(n+2))-2, floor(1/(γ-n)))]` -/
def P2578546771779799542.Spec : Prop :=
  ∀ n, P2578546771779799542.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P1652591669284040234

`a(n-1)+A059426(n)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080746

/-- `a(n-1)+A059426(n)` -/
def P1652591669284040234.Spec : Prop :=
  ∀ n, P1652591669284040234.a n = A080746 (n + 1)

theorem P1652591669284040234.correct : P1652591669284040234.Spec := by
  intro n
  simp only [A080746, Nat.add_sub_cancel]

end A080746

/-! ## A080746.P7444517670326542072

`floor(ϕ*(n+3)-A000032(C(2, 2*n+1)))`
-/

namespace A080746.P7444517670326542072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 3 : ℝ) - (A000032 (Nat.choose 2 (2 * n + 1)) : ℝ)⌋

end

end A080746.P7444517670326542072

namespace A080746

/-- `floor(ϕ*(n+3)-A000032(C(2, 2*n+1)))` -/
def P7444517670326542072.Spec : Prop :=
  ∀ n, P7444517670326542072.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P4295965112428313250

`A026273(gcd(n+2, C(3, n²)))`
-/

namespace A080746.P4295965112428313250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (Nat.gcd (n + 2) (Nat.choose 3 (n ^ 2)))

end

end A080746.P4295965112428313250

namespace A080746

/-- `A026273(gcd(n+2, C(3, n²)))` -/
def P4295965112428313250.Spec : Prop :=
  ∀ n, P4295965112428313250.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P2197016198834522989

`A026273(A065475(n+1))`
-/

namespace A080746.P2197016198834522989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (A065475 (n + 1)).toNat

end

end A080746.P2197016198834522989

namespace A080746

/-- `A026273(A065475(n+1))` -/
def P2197016198834522989.Spec : Prop :=
  ∀ n, P2197016198834522989.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P7226528495443874856

`A026273(A181440(n+2))`
-/

namespace A080746.P7226528495443874856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (A181440 (n + 2)).toNat

end

end A080746.P7226528495443874856

namespace A080746

/-- `A026273(A181440(n+2))` -/
def P7226528495443874856.Spec : Prop :=
  ∀ n, P7226528495443874856.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P6834760604546442071

`A026273(A184985(n+2))`
-/

namespace A080746.P6834760604546442071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (A184985 (n + 2)).toNat

end

end A080746.P6834760604546442071

namespace A080746

/-- `A026273(A184985(n+2))` -/
def P6834760604546442071.Spec : Prop :=
  ∀ n, P6834760604546442071.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P11879995382955775438

`A065475(A058065(n+1))`
-/

namespace A080746.P11879995382955775438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A058065 (n + 1)).toNat

end

end A080746.P11879995382955775438

namespace A080746

/-- `A065475(A058065(n+1))` -/
def P11879995382955775438.Spec : Prop :=
  ∀ n, P11879995382955775438.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P12375027519755569209

`A171526(A026273(n+2))`
-/

namespace A080746.P12375027519755569209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A026273 (n + 2)).toNat

end

end A080746.P12375027519755569209

namespace A080746

/-- `A171526(A026273(n+2))` -/
def P12375027519755569209.Spec : Prop :=
  ∀ n, P12375027519755569209.a n = A080746 (n + 1)

end A080746

/-! ## A080746.P2355764016751889322

`lt[atan(n), A134409(n+1)]`
-/

namespace A080746.P2355764016751889322
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A080746.P2355764016751889322

namespace A080746

/-- `lt[atan(n), A134409(n+1)]` -/
def P2355764016751889322.Spec : Prop :=
  ∀ n, (P2355764016751889322.a n : ℤ) = A080746 (n + 1)

end A080746

/-! ## A080746.P8242791431957605577

`eq[A185012(n), A239003(n)]`
-/

namespace A080746.P8242791431957605577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080746.P8242791431957605577

namespace A080746

/-- `eq[A185012(n), A239003(n)]` -/
def P8242791431957605577.Spec : Prop :=
  ∀ n, (P8242791431957605577.a n : ℤ) = A080746 (n + 1)

end A080746

/-! ## A080746.P11205111263588245660

`eq[A296135(n), A329684(n)]`
-/

namespace A080746.P11205111263588245660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080746.P11205111263588245660

namespace A080746

/-- `eq[A296135(n), A329684(n)]` -/
def P11205111263588245660.Spec : Prop :=
  ∀ n, (P11205111263588245660.a n : ℤ) = A080746 (n + 1)

end A080746

/-! ## A080746.P16955025191241904621

`eq[A059426(n), A236213(n+1)]`
-/

namespace A080746.P16955025191241904621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080746.P16955025191241904621

namespace A080746

/-- `eq[A059426(n), A236213(n+1)]` -/
def P16955025191241904621.Spec : Prop :=
  ∀ n, (P16955025191241904621.a n : ℤ) = A080746 (n + 1)

end A080746

/-! ## A080746.P15565042949571430226

`eq[A283149(n+1), A296135(n)]`
-/

namespace A080746.P15565042949571430226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080746.P15565042949571430226

namespace A080746

/-- `eq[A283149(n+1), A296135(n)]` -/
def P15565042949571430226.Spec : Prop :=
  ∀ n, (P15565042949571430226.a n : ℤ) = A080746 (n + 1)

end A080746

/-!
# A080747: Sarrus numbers with more than 2 distinct prime factors.

The programs for A080747, there is no canonical definition to state claims against.
-/

/-! ## A080747.P7100162773177194963

`A000027(∪[A112441(n+1), A215672(n+1)])`
-/

namespace A080747.P7100162773177194963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215672 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A080747.P7100162773177194963

/-!
# A080748: Number of distinct prime factors of n-th Fermat pseudoprime to base 2.

The programs for A080748, there is no canonical definition to state claims against.
-/

/-! ## A080748.P4883051669755245154

`∑{e}[A001567(n+1), #]`
-/

namespace A080748.P4883051669755245154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A080748.P4883051669755245154

/-! ## A080748.P15202783859876121911

`∑{e}[record[A001567(A263111(n))], #]`
-/

namespace A080748.P15202783859876121911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A080748.P15202783859876121911

/-! ## A080748.P8475391870137028043

`∑{p}[A001567(n+1), A000035(#)]`
-/

namespace A080748.P8475391870137028043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 p

end

end A080748.P8475391870137028043

/-! ## A080748.P875827747504368713

`∑{p}[A001567(n+1), A000188(#)]`
-/

namespace A080748.P875827747504368713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000188 p

end

end A080748.P875827747504368713

/-! ## A080748.P10423901286227842603

`∑{p}[A001567(n+1), A000189(#)]`
-/

namespace A080748.P10423901286227842603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000189 p

end

end A080748.P10423901286227842603

/-! ## A080748.P7037886973516329112

`∑{p}[A001567(n+1), A000688(#)]`
-/

namespace A080748.P7037886973516329112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000688 p

end

end A080748.P7037886973516329112

/-! ## A080748.P12436783718116846728

`∑{p}[A001567(n+1), A001055(#)]`
-/

namespace A080748.P12436783718116846728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A080748.P12436783718116846728

/-! ## A080748.P4396683334425677840

`∑{p}[A001567(n+1), A001065(#)]`
-/

namespace A080748.P4396683334425677840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001065 p

end

end A080748.P4396683334425677840

/-! ## A080748.P2292335445293349094

`∑{p}[A001567(n+1), A001221(#)]`
-/

namespace A080748.P2292335445293349094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A080748.P2292335445293349094

/-! ## A080748.P6792635784620468292

`∑{p}[A001567(n+1), A001222(#)]`
-/

namespace A080748.P6792635784620468292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A080748.P6792635784620468292

/-! ## A080748.P10296564242704227253

`∑{p}[A001567(n+1), A001511(#)]`
-/

namespace A080748.P10296564242704227253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001511 p

end

end A080748.P10296564242704227253

/-! ## A080748.P1277196103281515338

`∑{p}[A001567(n+1), A010051(#)]`
-/

namespace A080748.P1277196103281515338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A080748.P1277196103281515338

/-! ## A080748.P11562174915264679262

`∑{p}[A001567(n+1), A028234(#)]`
-/

namespace A080748.P11562174915264679262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A028234 p

end

end A080748.P11562174915264679262

/-! ## A080748.P265624371612550959

`∑{p}[A001567(n+1), A062173(#)]`
-/

namespace A080748.P265624371612550959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A062173 p

end

end A080748.P265624371612550959

/-! ## A080748.P14434634585223350388

`∑{p}[A001567(n+1), A071974(#)]`
-/

namespace A080748.P14434634585223350388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A071974 p

end

end A080748.P14434634585223350388

/-! ## A080748.P15227868134105333721

`∑{p}[A001567(n+1), A323154(#)]`
-/

namespace A080748.P15227868134105333721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A323154 p

end

end A080748.P15227868134105333721

/-! ## A080748.P1635369953785273079

`∑{p}[A001567(n+1), abs(A008683(#))]`
-/

namespace A080748.P1635369953785273079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, |A008683 p|

end

end A080748.P1635369953785273079

/-! ## A080748.P5599886091450693833

`log2(∏{p}[A001567(n+1), A000005(#)])`
-/

namespace A080748.P5599886091450693833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p : ℤ) : ℝ)

end

end A080748.P5599886091450693833

/-! ## A080748.P550780711477099525

`log2(∏{e}[A001567(n+1), A000040(#)])`
-/

namespace A080748.P550780711477099525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℝ)

end

end A080748.P550780711477099525

/-! ## A080748.P9412660865239252378

`A001222(∏{e}[A001567(n+1), #+1])`
-/

namespace A080748.P9412660865239252378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A080748.P9412660865239252378

/-!
# A080750: a(n) = largest number greater than a(n-1) such that the first n terms of the sequence contain a total of a(n) base-10 digits.

The programs for A080750, there is no canonical definition to state claims against.
-/

/-! ## A080750.P1043501455965148265

`A080676(n+2)-1`
-/

namespace A080750.P1043501455965148265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080676 (n + 2) - 1

end

end A080750.P1043501455965148265

/-! ## A080750.P13765515968049901611

`A228050(Δ[A080676(n+1)])+A080676(n+1)`
-/

namespace A080750.P13765515968049901611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228050 (f1 (n + 1) - f1 n).toNat + A080676 (n + 1)

end

end A080750.P13765515968049901611

/-! ## A080750.P16225266058182136249

`A064223(n+3)-2`
-/

namespace A080750.P16225266058182136249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064223 (n + 3) - 2

end

end A080750.P16225266058182136249

/-! ## A080750.P13372268002925554749

`A088235(n+3)-2`
-/

namespace A080750.P13372268002925554749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088235 (n + 3) - 2

end

end A080750.P13372268002925554749

/-! ## A080750.P18091902398715353644

`A023443(A080676(n+2))`
-/

namespace A080750.P18091902398715353644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080676 (n + 2)).toNat

end

end A080750.P18091902398715353644

/-! ## A080750.P9737474475068074004

`∑[A048766(2*A048766(n²))]+1`
-/

namespace A080750.P9737474475068074004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * A048766 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080750.P9737474475068074004

/-! ## A080750.P2769655983977719662

`record[and(n+1, -A276502(n+2))]`
-/

namespace A080750.P2769655983977719662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-A276502 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080750.P2769655983977719662

/-! ## A080750.P14635876745666007095

`record[(n+1)%(9*A014963(A020639(n+1)+9))]`
-/

namespace A080750.P14635876745666007095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (9 * A014963 (A020639 (n + 1) + 9).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080750.P14635876745666007095

/-!
# A080751: a(n) is smallest number such that the sequence contains a total of a(n) base 10 digits + commas through n terms (assuming one comma between each pair of terms).

The programs for A080751, the canonical program `A080751.P1467773457644653466` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080751 has offset 1).

The definition of A080751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080751.P1467773457644653466

`A130174(n+2)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080751

/-- `A130174(n+2)-1` -/
def P1467773457644653466.Spec : Prop :=
  ∀ n, P1467773457644653466.a n = A080751 (n + 1)

theorem P1467773457644653466.correct : P1467773457644653466.Spec := by
  intro n
  simp only [A080751, Nat.add_sub_cancel]

end A080751

/-! ## A080751.P638956517888562303

`A337843(a(n-1)+1)` with `a(0)=1`
-/

namespace A080751.P638956517888562303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337843 (a (n - 1) + 1).toNat

end

end A080751.P638956517888562303

namespace A080751

/-- `A337843(a(n-1)+1)` -/
def P638956517888562303.Spec : Prop :=
  ∀ n, P638956517888562303.a n = A080751 (n + 1)

end A080751

/-! ## A080751.P17249972381392868371

`A337843(A130174(n+1))`
-/

namespace A080751.P17249972381392868371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 (A130174 (n + 1)).toNat

end

end A080751.P17249972381392868371

namespace A080751

/-- `A337843(A130174(n+1))` -/
def P17249972381392868371.Spec : Prop :=
  ∀ n, P17249972381392868371.a n = A080751 (n + 1)

end A080751

/-! ## A080751.P7125038341773635778

`A057717(a(n-1)+1)` with `a(0)=1`
-/

namespace A080751.P7125038341773635778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057717 (a (n - 1) + 1).toNat

end

end A080751.P7125038341773635778

namespace A080751

/-- `A057717(a(n-1)+1)` -/
def P7125038341773635778.Spec : Prop :=
  ∀ n, P7125038341773635778.a n = A080751 (n + 1)

end A080751

/-! ## A080751.P13132974021469910992

`A023443(A130174(n+2))`
-/

namespace A080751.P13132974021469910992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A130174 (n + 2)).toNat

end

end A080751.P13132974021469910992

namespace A080751

/-- `A023443(A130174(n+2))` -/
def P13132974021469910992.Spec : Prop :=
  ∀ n, P13132974021469910992.a n = A080751 (n + 1)

end A080751

/-! ## A080751.P4587624069836220734

`∑[floor(A194882(n)/ϕ)]`
-/

namespace A080751.P4587624069836220734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194882 n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080751.P4587624069836220734

namespace A080751

/-- `∑[floor(A194882(n)/ϕ)]` -/
def P4587624069836220734.Spec : Prop :=
  ∀ n, P4587624069836220734.a n = A080751 (n + 1)

end A080751

/-! ## A080751.P7716499276866457724

`∑[ceil(sqrt(A349983(n+1)))]`
-/

namespace A080751.P7716499276866457724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A349983 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080751.P7716499276866457724

namespace A080751

/-- `∑[ceil(sqrt(A349983(n+1)))]` -/
def P7716499276866457724.Spec : Prop :=
  ∀ n, P7716499276866457724.a n = A080751 (n + 1)

end A080751

/-! ## A080751.P1329503709779837828

`A318919(n+2)-2`
-/

namespace A080751.P1329503709779837828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318919 (n + 2) - 2

end

end A080751.P1329503709779837828

namespace A080751

/-- `A318919(n+2)-2` -/
def P1329503709779837828.Spec : Prop :=
  ∀ n, P1329503709779837828.a n = A080751 (n + 1)

end A080751

/-! ## A080751.P11801439966180109566

`A023444(A318919(n+2))`
-/

namespace A080751.P11801439966180109566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A318919 (n + 2)).toNat

end

end A080751.P11801439966180109566

namespace A080751

/-- `A023444(A318919(n+2))` -/
def P11801439966180109566.Spec : Prop :=
  ∀ n, P11801439966180109566.a n = A080751 (n + 1)

end A080751

/-!
# A080752: a(1)=1; a(2)=8; for n > 2, a(n) is smallest integer greater than a(n-1) that satisfies the condition "n is in the sequence if and only if a(n) is odd.".

The programs for A080752, there is no canonical definition to state claims against.
-/

/-! ## A080752.P17686235680057312220

`eq[n, n^A276797(A025822(n))]`
-/

namespace A080752.P17686235680057312220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A276797 (A025822 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A080752.P17686235680057312220

/-! ## A080752.P13631208527528523078

`eq[A060576(n), A276797(A025822(n))]`
-/

namespace A080752.P13631208527528523078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A025822 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080752.P13631208527528523078

/-! ## A080752.P8672383064685031333

`eq[A060576(n), A287867(A047247(n+1))]`
-/

namespace A080752.P8672383064685031333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287867 (A047247 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080752.P8672383064685031333

/-!
# A080753: a(1)=2; for n > 1, a is the second-smallest positive integer greater than a(n-1) such that the condition "n is in the sequence if and only if a(n) is odd" is satisfied.

The programs for A080753, there is no canonical definition to state claims against.
-/

/-! ## A080753.P15651169503392981771

`A284941(n+1)+2*n`
-/

namespace A080753.P15651169503392981771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284941 (n + 1) + (2 * n : ℤ)

end

end A080753.P15651169503392981771

/-! ## A080753.P3545826168959242740

`A080038(n)+a(n-1)` with `a(0)=2`
-/

namespace A080753.P3545826168959242740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A080038 n + a (n - 1)

end

end A080753.P3545826168959242740

/-! ## A080753.P11805107238458900536

`A285375(n+1)+Δ[n²]`
-/

namespace A080753.P11805107238458900536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285375 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A080753.P11805107238458900536

/-! ## A080753.P14824359958133385279

`comp[A080580(n+1)-1]+2*n+1`
-/

namespace A080753.P14824359958133385279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (2 * n + 1)

end

end A080753.P14824359958133385279

/-! ## A080753.P17360020784250830774

`comp[A285374(n+1)-1]+n+n+2`
-/

namespace A080753.P17360020784250830774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285374 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n + (n + 2)

end

end A080753.P17360020784250830774

/-! ## A080753.P3404742197783525903

`A285376(A285375(n+1))+n`
-/

namespace A080753.P3404742197783525903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285376 (A285375 (n + 1)).toNat + (n : ℤ)

end

end A080753.P3404742197783525903

/-! ## A080753.P7671147293201541834

`2*n+record[2*A284939(n+2)+n]`
-/

namespace A080753.P7671147293201541834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284939 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080753.P7671147293201541834

/-! ## A080753.P544933427245402166

`A001951(A284941(n+1)+n)`
-/

namespace A080753.P544933427245402166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A284941 (n + 1) + (n : ℤ)).toNat

end

end A080753.P544933427245402166

/-! ## A080753.P17467089293923380865

`A284895(A285375(n+1)+n)`
-/

namespace A080753.P17467089293923380865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (A285375 (n + 1) + (n : ℤ)).toNat

end

end A080753.P17467089293923380865

/-! ## A080753.P18098711189502903675

`A001951(A285375(n+1)+1+n)`
-/

namespace A080753.P18098711189502903675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A285375 (n + 1) + 1 + (n : ℤ)).toNat

end

end A080753.P18098711189502903675

/-! ## A080753.P10812978537513983155

`A285360(A285375(n+1)+1+n)`
-/

namespace A080753.P10812978537513983155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285360 (A285375 (n + 1) + 1 + (n : ℤ)).toNat

end

end A080753.P10812978537513983155

/-!
# A080754: a(n) = ceiling(n*(1+sqrt(2))).

The programs for A080754, the canonical program `A080754.P17678673926272776166` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080754 has offset 1).

The definition of A080754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*(1+sqrt(2)))` (program `A080754.P17678673926272776166`, by `A080754.P17678673926272776166.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080754.P17678673926272776166

`ceil((n+1)*(1+sqrt(2)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080754

/-- `ceil((n+1)*(1+sqrt(2)))` -/
def P17678673926272776166.Spec : Prop :=
  ∀ n, P17678673926272776166.a n = A080754 (n + 1)

theorem P17678673926272776166.correct : P17678673926272776166.Spec := by
  intro n
  simp only [A080754, Nat.add_sub_cancel]

end A080754

/-! ## A080754.P13831958046782861748

`∑[A097509(n)]`
-/

namespace A080754.P13831958046782861748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080754.P13831958046782861748

namespace A080754

/-- `∑[A097509(n)]` -/
def P13831958046782861748.Spec : Prop :=
  ∀ n, P13831958046782861748.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P7835981230133540720

`∑[3-A144611(n)]`
-/

namespace A080754.P7835981230133540720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A144611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080754.P7835981230133540720

namespace A080754

/-- `∑[3-A144611(n)]` -/
def P7835981230133540720.Spec : Prop :=
  ∀ n, P7835981230133540720.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P7206097248953286533

`A003151(n+1)+1`
-/

namespace A080754.P7206097248953286533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) + 1

end

end A080754.P7206097248953286533

namespace A080754

/-- `A003151(n+1)+1` -/
def P7206097248953286533.Spec : Prop :=
  ∀ n, P7206097248953286533.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P11091847958262025330

`A286666(n+1)+2`
-/

namespace A080754.P11091847958262025330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) + 2

end

end A080754.P11091847958262025330

namespace A080754

/-- `A286666(n+1)+2` -/
def P11091847958262025330.Spec : Prop :=
  ∀ n, P11091847958262025330.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P5869883791040821028

`A001952(n+1)-n`
-/

namespace A080754.P5869883791040821028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - (n : ℤ)

end

end A080754.P5869883791040821028

namespace A080754

/-- `A001952(n+1)-n` -/
def P5869883791040821028.Spec : Prop :=
  ∀ n, P5869883791040821028.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P609893125952578905

`∑[A276864(n+1)]-n`
-/

namespace A080754.P609893125952578905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A080754.P609893125952578905

namespace A080754

/-- `∑[A276864(n+1)]-n` -/
def P609893125952578905.Spec : Prop :=
  ∀ n, P609893125952578905.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P12289865789273731742

`A022804(n+1)/2+1`
-/

namespace A080754.P12289865789273731742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022804 (n + 1) : ℚ) / 2 + 1

end

end A080754.P12289865789273731742

namespace A080754

/-- `A022804(n+1)/2+1` -/
def P12289865789273731742.Spec : Prop :=
  ∀ n, P12289865789273731742.a n = (A080754 (n + 1) : ℚ)

end A080754

/-! ## A080754.P13352459887274178240

`A087057(n+1)+1+n`
-/

namespace A080754.P13352459887274178240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) + 1 + (n : ℤ)

end

end A080754.P13352459887274178240

namespace A080754

/-- `A087057(n+1)+1+n` -/
def P13352459887274178240.Spec : Prop :=
  ∀ n, P13352459887274178240.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P144276835223471954

`A001951(n+1)+2+n`
-/

namespace A080754.P144276835223471954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + 2 + (n : ℤ)

end

end A080754.P144276835223471954

namespace A080754

/-- `A001951(n+1)+2+n` -/
def P144276835223471954.Spec : Prop :=
  ∀ n, P144276835223471954.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P13217614564740401706

`A184922(n+1)+1-n`
-/

namespace A080754.P13217614564740401706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) + (1 - (n : ℤ))

end

end A080754.P13217614564740401706

namespace A080754

/-- `A184922(n+1)+1-n` -/
def P13217614564740401706.Spec : Prop :=
  ∀ n, P13217614564740401706.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P12187965959814591155

`A395101(n+1)+3+n`
-/

namespace A080754.P12187965959814591155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1) + 3 + (n : ℤ)

end

end A080754.P12187965959814591155

namespace A080754

/-- `A395101(n+1)+3+n` -/
def P12187965959814591155.Spec : Prop :=
  ∀ n, P12187965959814591155.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P16226802460378882355

`A286923(n+1)-2*n`
-/

namespace A080754.P16226802460378882355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286923 (n + 1) - (2 * n : ℤ)

end

end A080754.P16226802460378882355

namespace A080754

/-- `A286923(n+1)-2*n` -/
def P16226802460378882355.Spec : Prop :=
  ∀ n, P16226802460378882355.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P17492226675019657245

`∑[3-char[A003152(n+1)]]`
-/

namespace A080754.P17492226675019657245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080754.P17492226675019657245

namespace A080754

/-- `∑[3-char[A003152(n+1)]]` -/
def P17492226675019657245.Spec : Prop :=
  ∀ n, P17492226675019657245.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P10666766025305769513

`A187338(n+1)-(2*n+1)`
-/

namespace A080754.P10666766025305769513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (n + 1) - (2 * n + 1 : ℤ)

end

end A080754.P10666766025305769513

namespace A080754

/-- `A187338(n+1)-(2*n+1)` -/
def P10666766025305769513.Spec : Prop :=
  ∀ n, P10666766025305769513.a n = A080754 (n + 1)

end A080754

/-! ## A080754.P11628785239749411475

`(A188302(n+1)-(n+1))/3`
-/

namespace A080754.P11628785239749411475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188302 (n + 1) - (n + 1 : ℤ) : ℚ) / 3

end

end A080754.P11628785239749411475

namespace A080754

/-- `(A188302(n+1)-(n+1))/3` -/
def P11628785239749411475.Spec : Prop :=
  ∀ n, P11628785239749411475.a n = (A080754 (n + 1) : ℚ)

end A080754

/-!
# A080755: a(n) = ceiling(n*(1+1/sqrt(2))).

The programs for A080755, the canonical program `A080755.P3034099768414115057` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080755 has offset 1).

The definition of A080755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*(1+1/sqrt(2)))` (program `A080755.P3034099768414115057`, by `A080755.P3034099768414115057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080755.P3034099768414115057

`ceil((n+1)*(1+1/sqrt(2)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080755

/-- `ceil((n+1)*(1+1/sqrt(2)))` -/
def P3034099768414115057.Spec : Prop :=
  ∀ n, P3034099768414115057.a n = A080755 (n + 1)

theorem P3034099768414115057.correct : P3034099768414115057.Spec := by
  intro n
  simp only [A080755, Nat.add_sub_cancel]

end A080755

/-! ## A080755.P1266103893860687810

`ceil(sqrt(∑[or(1, n)]))+n+1`
-/

namespace A080755.P1266103893860687810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + (n + 1 : ℤ)

end

end A080755.P1266103893860687810

namespace A080755

/-- `ceil(sqrt(∑[or(1, n)]))+n+1` -/
def P1266103893860687810.Spec : Prop :=
  ∀ n, P1266103893860687810.a n = A080755 (n + 1)

end A080755

/-! ## A080755.P1852667068486394824

`A003152(n+1)+1`
-/

namespace A080755.P1852667068486394824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + 1

end

end A080755.P1852667068486394824

namespace A080755

/-- `A003152(n+1)+1` -/
def P1852667068486394824.Spec : Prop :=
  ∀ n, P1852667068486394824.a n = A080755 (n + 1)

end A080755

/-! ## A080755.P11793328062963423726

`A182769(n+1)-n`
-/

namespace A080755.P11793328062963423726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182769 (n + 1) - (n : ℤ)

end

end A080755.P11793328062963423726

namespace A080755

/-- `A182769(n+1)-n` -/
def P11793328062963423726.Spec : Prop :=
  ∀ n, P11793328062963423726.a n = A080755 (n + 1)

end A080755

/-! ## A080755.P1132237743855890330

`∑[Δ[A049474(n)]+1]`
-/

namespace A080755.P1132237743855890330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080755.P1132237743855890330

namespace A080755

/-- `∑[Δ[A049474(n)]+1]` -/
def P1132237743855890330.Spec : Prop :=
  ∀ n, P1132237743855890330.a n = A080755 (n + 1)

end A080755

/-! ## A080755.P7919701113466913042

`∑[char[A001951(n)]+1]`
-/

namespace A080755.P7919701113466913042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080755.P7919701113466913042

namespace A080755

/-- `∑[char[A001951(n)]+1]` -/
def P7919701113466913042.Spec : Prop :=
  ∀ n, (P7919701113466913042.a n : ℤ) = A080755 (n + 1)

end A080755

/-! ## A080755.P14113285712565329170

`comp[A286666(n+1)]+2`
-/

namespace A080755.P14113285712565329170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A080755.P14113285712565329170

namespace A080755

/-- `comp[A286666(n+1)]+2` -/
def P14113285712565329170.Spec : Prop :=
  ∀ n, (P14113285712565329170.a n : ℤ) = A080755 (n + 1)

end A080755

/-! ## A080755.P687268556003112225

`∑[A276869(n+1)]-n`
-/

namespace A080755.P687268556003112225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A080755.P687268556003112225

namespace A080755

/-- `∑[A276869(n+1)]-n` -/
def P687268556003112225.Spec : Prop :=
  ∀ n, P687268556003112225.a n = A080755 (n + 1)

end A080755

/-! ## A080755.P14936832599916331625

`A049474(n+1)+1+n`
-/

namespace A080755.P14936832599916331625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (n + 1) + 1 + (n : ℤ)

end

end A080755.P14936832599916331625

namespace A080755

/-- `A049474(n+1)+1+n` -/
def P14936832599916331625.Spec : Prop :=
  ∀ n, P14936832599916331625.a n = A080755 (n + 1)

end A080755

/-! ## A080755.P11576136428580529713

`A049472(n+1)+2+n`
-/

namespace A080755.P11576136428580529713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) + 2 + (n : ℤ)

end

end A080755.P11576136428580529713

namespace A080755

/-- `A049472(n+1)+2+n` -/
def P11576136428580529713.Spec : Prop :=
  ∀ n, P11576136428580529713.a n = A080755 (n + 1)

end A080755

/-! ## A080755.P2764816368170323206

`∑[2-char[A001952(n+1)]]`
-/

namespace A080755.P2764816368170323206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080755.P2764816368170323206

namespace A080755

/-- `∑[2-char[A001952(n+1)]]` -/
def P2764816368170323206.Spec : Prop :=
  ∀ n, P2764816368170323206.a n = A080755 (n + 1)

end A080755

/-! ## A080755.P16781222125052190911

`∑[A188295(n+1)+1]+1`
-/

namespace A080755.P16781222125052190911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080755.P16781222125052190911

namespace A080755

/-- `∑[A188295(n+1)+1]+1` -/
def P16781222125052190911.Spec : Prop :=
  ∀ n, P16781222125052190911.a n = A080755 (n + 1)

end A080755

/-! ## A080755.P15472358828634810433

`A099188(n+1)/2+n+1`
-/

namespace A080755.P15472358828634810433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099188 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A080755.P15472358828634810433

namespace A080755

/-- `A099188(n+1)/2+n+1` -/
def P15472358828634810433.Spec : Prop :=
  ∀ n, P15472358828634810433.a n = (A080755 (n + 1) : ℚ)

end A080755

/-! ## A080755.P10549516918515819638

`2*(n+1)-A183138(n+1)`
-/

namespace A080755.P10549516918515819638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A183138 (n + 1)

end

end A080755.P10549516918515819638

namespace A080755

/-- `2*(n+1)-A183138(n+1)` -/
def P10549516918515819638.Spec : Prop :=
  ∀ n, P10549516918515819638.a n = A080755 (n + 1)

end A080755

/-! ## A080755.P11288254686669966764

`(A188299(n+1)+n+1)/2`
-/

namespace A080755.P11288254686669966764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188299 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A080755.P11288254686669966764

namespace A080755

/-- `(A188299(n+1)+n+1)/2` -/
def P11288254686669966764.Spec : Prop :=
  ∀ n, P11288254686669966764.a n = (A080755 (n + 1) : ℚ)

end A080755

/-!
# A080756: Numbers k such that there are infinitely many multiples of k that have exactly k divisors.

The programs for A080756, the canonical program `A080756.P4272015836434097147` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080756 has offset 1).

The definition of A080756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080756.P4272015836434097147

`A013929(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080756

/-- `A013929(n+2)` -/
def P4272015836434097147.Spec : Prop :=
  ∀ n, P4272015836434097147.a n = A080756 (n + 1)

theorem P4272015836434097147.correct : P4272015836434097147.Spec := by
  intro n
  simp only [A080756, Nat.add_sub_cancel]

end A080756

/-! ## A080756.P4175287802285875807

`Δ[A329472(n+1)]`
-/

namespace A080756.P4175287802285875807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080756.P4175287802285875807

namespace A080756

/-- `Δ[A329472(n+1)]` -/
def P4175287802285875807.Spec : Prop :=
  ∀ n, P4175287802285875807.a n = A080756 (n + 1)

end A080756

/-! ## A080756.P15357024293518519686

`∑[A078147(n+1)]+4`
-/

namespace A080756.P15357024293518519686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A080756.P15357024293518519686

namespace A080756

/-- `∑[A078147(n+1)]+4` -/
def P15357024293518519686.Spec : Prop :=
  ∀ n, P15357024293518519686.a n = A080756 (n + 1)

end A080756

/-! ## A080756.P12071005559765797100

`A329472(n+2)-A329472(n+1)`
-/

namespace A080756.P12071005559765797100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329472 (n + 2) - A329472 (n + 1)

end

end A080756.P12071005559765797100

namespace A080756

/-- `A329472(n+2)-A329472(n+1)` -/
def P12071005559765797100.Spec : Prop :=
  ∀ n, P12071005559765797100.a n = A080756 (n + 1)

end A080756

/-! ## A080756.P8751121440020224174

`∪[A034046(n+1), A049199(n+1)]`
-/

namespace A080756.P8751121440020224174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080756.P8751121440020224174

namespace A080756

/-- `∪[A034046(n+1), A049199(n+1)]` -/
def P8751121440020224174.Spec : Prop :=
  ∀ n, (P8751121440020224174.a n : ℤ) = A080756 (n + 1)

end A080756

/-! ## A080756.P2075795032734034850

`∪[A038838(n+1), A049199(n+1)]`
-/

namespace A080756.P2075795032734034850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080756.P2075795032734034850

namespace A080756

/-- `∪[A038838(n+1), A049199(n+1)]` -/
def P2075795032734034850.Spec : Prop :=
  ∀ n, (P2075795032734034850.a n : ℤ) = A080756 (n + 1)

end A080756

/-! ## A080756.P1391666612695125437

`∪[A046790(n+1), A049199(n+1)]`
-/

namespace A080756.P1391666612695125437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080756.P1391666612695125437

namespace A080756

/-- `∪[A046790(n+1), A049199(n+1)]` -/
def P1391666612695125437.Spec : Prop :=
  ∀ n, (P1391666612695125437.a n : ℤ) = A080756 (n + 1)

end A080756

/-! ## A080756.P16792245512842399676

`∪[A046790(n+1), A051144(n+1)]`
-/

namespace A080756.P16792245512842399676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080756.P16792245512842399676

namespace A080756

/-- `∪[A046790(n+1), A051144(n+1)]` -/
def P16792245512842399676.Spec : Prop :=
  ∀ n, (P16792245512842399676.a n : ℤ) = A080756 (n + 1)

end A080756

/-! ## A080756.P12044055993996662981

`∪[A046790(n+1), A059404(n+1)]`
-/

namespace A080756.P12044055993996662981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080756.P12044055993996662981

namespace A080756

/-- `∪[A046790(n+1), A059404(n+1)]` -/
def P12044055993996662981.Spec : Prop :=
  ∀ n, (P12044055993996662981.a n : ℤ) = A080756 (n + 1)

end A080756

/-! ## A080756.P11180985018592237967

`∪[A049199(n+1), A057111(n+1)]`
-/

namespace A080756.P11180985018592237967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080756.P11180985018592237967

namespace A080756

/-- `∪[A049199(n+1), A057111(n+1)]` -/
def P11180985018592237967.Spec : Prop :=
  ∀ n, (P11180985018592237967.a n : ℤ) = A080756 (n + 1)

end A080756

/-! ## A080756.P11577628540629934053

`∪[A070011(n+1), A046790(n+1)]`
-/

namespace A080756.P11577628540629934053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080756.P11577628540629934053

namespace A080756

/-- `∪[A070011(n+1), A046790(n+1)]` -/
def P11577628540629934053.Spec : Prop :=
  ∀ n, (P11577628540629934053.a n : ℤ) = A080756 (n + 1)

end A080756

/-! ## A080756.P3647922220595400583

`∪[A046790(n+1), A112769(n+1)]`
-/

namespace A080756.P3647922220595400583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080756.P3647922220595400583

namespace A080756

/-- `∪[A046790(n+1), A112769(n+1)]` -/
def P3647922220595400583.Spec : Prop :=
  ∀ n, (P3647922220595400583.a n : ℤ) = A080756 (n + 1)

end A080756

/-! ## A080756.P13707162995019305769

`sqrt(A062320(n+2))`
-/

namespace A080756.P13707162995019305769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062320 (n + 2) : ℝ)

end

end A080756.P13707162995019305769

namespace A080756

/-- `sqrt(A062320(n+2))` -/
def P13707162995019305769.Spec : Prop :=
  ∀ n, P13707162995019305769.a n = (A080756 (n + 1) : ℝ)

end A080756

/-! ## A080756.P1933959498026237337

`A162966(n+3)`
-/

namespace A080756.P1933959498026237337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 3)

end

end A080756.P1933959498026237337

namespace A080756

/-- `A162966(n+3)` -/
def P1933959498026237337.Spec : Prop :=
  ∀ n, P1933959498026237337.a n = A080756 (n + 1)

end A080756

/-! ## A080756.P6737210027951385974

`filter[A387184(n+1), A087049(#)]`
-/

namespace A080756.P6737210027951385974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A080756.P6737210027951385974

namespace A080756

/-- `filter[A387184(n+1), A087049(#)]` -/
def P6737210027951385974.Spec : Prop :=
  ∀ n, P6737210027951385974.a n = A080756 (n + 1)

end A080756

/-! ## A080756.P3212359032145487775

`filter[A389462(n+2), A087049(#)]`
-/

namespace A080756.P3212359032145487775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A080756.P3212359032145487775

namespace A080756

/-- `filter[A389462(n+2), A087049(#)]` -/
def P3212359032145487775.Spec : Prop :=
  ∀ n, P3212359032145487775.a n = A080756 (n + 1)

end A080756

/-! ## A080756.P6760222048354863365

`filter[A002808(n+2), A087049(#)]`
-/

namespace A080756.P6760222048354863365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A080756.P6760222048354863365

namespace A080756

/-- `filter[A002808(n+2), A087049(#)]` -/
def P6760222048354863365.Spec : Prop :=
  ∀ n, P6760222048354863365.a n = A080756 (n + 1)

end A080756

/-! ## A080756.P11035529499076250178

`∩[A363597(n+1), A387184(n+1)]`
-/

namespace A080756.P11035529499076250178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080756.P11035529499076250178

namespace A080756

/-- `∩[A363597(n+1), A387184(n+1)]` -/
def P11035529499076250178.Spec : Prop :=
  ∀ n, (P11035529499076250178.a n : ℤ) = A080756 (n + 1)

end A080756

/-! ## A080756.P16532125898316614633

`filter[A366288(n+3), A087049(#)]`
-/

namespace A080756.P16532125898316614633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A080756.P16532125898316614633

namespace A080756

/-- `filter[A366288(n+3), A087049(#)]` -/
def P16532125898316614633.Spec : Prop :=
  ∀ n, P16532125898316614633.a n = A080756 (n + 1)

end A080756

/-! ## A080756.P12725889846298410823

`lt[∏{p}[n+2, #], n]+2`
-/

namespace A080756.P12725889846298410823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 2

end

end A080756.P12725889846298410823

namespace A080756

/-- `lt[∏{p}[n+2, #], n]+2` -/
def P12725889846298410823.Spec : Prop :=
  ∀ n, (P12725889846298410823.a n : ℤ) = A080756 (n + 1)

end A080756

/-!
# A080757: First differences of Beatty sequence A022838(n) = floor(n sqrt(3)).

The programs for A080757, the canonical program `A080757.P8773996114739454746` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080757 has offset 0).

The definition of A080757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080757.P8773996114739454746

`A007538(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080757

/-- `A007538(n+1)-1` -/
def P8773996114739454746.Spec : Prop :=
  ∀ n, P8773996114739454746.a n = A080757 n

theorem P8773996114739454746.correct : P8773996114739454746.Spec := by
  intro n
  simp only [A080757]

end A080757

/-! ## A080757.P18183173814874039588

`Δ[floor(n*sqrt(3))]`
-/

namespace A080757.P18183173814874039588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080757.P18183173814874039588

namespace A080757

/-- `Δ[floor(n*sqrt(3))]` -/
def P18183173814874039588.Spec : Prop :=
  ∀ n, P18183173814874039588.a n = A080757 n

end A080757

/-! ## A080757.P9215492753229964654

`2-Δ[A195120(n)]`
-/

namespace A080757.P9215492753229964654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A080757.P9215492753229964654

namespace A080757

/-- `2-Δ[A195120(n)]` -/
def P9215492753229964654.Spec : Prop :=
  ∀ n, P9215492753229964654.a n = A080757 n

end A080757

/-! ## A080757.P7869468629421097033

`A188068(n+1)+1`
-/

namespace A080757.P7869468629421097033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1) + 1

end

end A080757.P7869468629421097033

namespace A080757

/-- `A188068(n+1)+1` -/
def P7869468629421097033.Spec : Prop :=
  ∀ n, P7869468629421097033.a n = A080757 n

theorem P7869468629421097033.correct : P7869468629421097033.Spec := by
  intro n
  simp only [A080757, Nat.add_sub_cancel, A080757.P7869468629421097033.a, A080757.P8773996114739454746.a, A007538, A007538.P444732654204593279.a, A188068, A188068.P12204074435986584008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A080757

/-! ## A080757.P5625361424163405586

`A276865(n+1)-2`
-/

namespace A080757.P5625361424163405586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1) - 2

end

end A080757.P5625361424163405586

namespace A080757

/-- `A276865(n+1)-2` -/
def P5625361424163405586.Spec : Prop :=
  ∀ n, P5625361424163405586.a n = A080757 n

end A080757

/-! ## A080757.P4337888704040714135

`char[A003511(n+1)]+1`
-/

namespace A080757.P4337888704040714135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A080757.P4337888704040714135

namespace A080757

/-- `char[A003511(n+1)]+1` -/
def P4337888704040714135.Spec : Prop :=
  ∀ n, (P4337888704040714135.a n : ℤ) = A080757 n

end A080757

/-! ## A080757.P13902648431458199821

`A000032(Δ[A195120(n)])`
-/

namespace A080757.P13902648431458199821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A080757.P13902648431458199821

namespace A080757

/-- `A000032(Δ[A195120(n)])` -/
def P13902648431458199821.Spec : Prop :=
  ∀ n, P13902648431458199821.a n = A080757 n

end A080757

/-! ## A080757.P10596167112325501748

`A267272(Δ[A195120(n)])+1`
-/

namespace A080757.P10596167112325501748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 (f1 (n + 1) - f1 n).toNat + 1

end

end A080757.P10596167112325501748

namespace A080757

/-- `A267272(Δ[A195120(n)])+1` -/
def P10596167112325501748.Spec : Prop :=
  ∀ n, P10596167112325501748.a n = A080757 n

end A080757

/-! ## A080757.P16224573281747971371

`A001513(n)%A007538(n+1)`
-/

namespace A080757.P16224573281747971371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A007538 (n + 1))

end

end A080757.P16224573281747971371

namespace A080757

/-- `A001513(n)%A007538(n+1)` -/
def P16224573281747971371.Spec : Prop :=
  ∀ n, P16224573281747971371.a n = A080757 n

end A080757

/-! ## A080757.P16375042407699480149

`A001538(n)%A007538(n+1)`
-/

namespace A080757.P16375042407699480149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A007538 (n + 1))

end

end A080757.P16375042407699480149

namespace A080757

/-- `A001538(n)%A007538(n+1)` -/
def P16375042407699480149.Spec : Prop :=
  ∀ n, P16375042407699480149.a n = A080757 n

end A080757

/-! ## A080757.P12491001659235227822

`A002148(n)%A007538(n+1)`
-/

namespace A080757.P12491001659235227822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A007538 (n + 1))

end

end A080757.P12491001659235227822

namespace A080757

/-- `A002148(n)%A007538(n+1)` -/
def P12491001659235227822.Spec : Prop :=
  ∀ n, P12491001659235227822.a n = A080757 n

end A080757

/-! ## A080757.P12130028135577648809

`A016969(n)%A007538(n+1)`
-/

namespace A080757.P12130028135577648809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A007538 (n + 1))

end

end A080757.P12130028135577648809

namespace A080757

/-- `A016969(n)%A007538(n+1)` -/
def P12130028135577648809.Spec : Prop :=
  ∀ n, P12130028135577648809.a n = A080757 n

end A080757

/-! ## A080757.P4832389730065281506

`A016971(n)%A007538(n+1)`
-/

namespace A080757.P4832389730065281506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A007538 (n + 1))

end

end A080757.P4832389730065281506

namespace A080757

/-- `A016971(n)%A007538(n+1)` -/
def P4832389730065281506.Spec : Prop :=
  ∀ n, P4832389730065281506.a n = A080757 n

end A080757

/-! ## A080757.P13181976260205092208

`A016973(n)%A007538(n+1)`
-/

namespace A080757.P13181976260205092208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A007538 (n + 1))

end

end A080757.P13181976260205092208

namespace A080757

/-- `A016973(n)%A007538(n+1)` -/
def P13181976260205092208.Spec : Prop :=
  ∀ n, P13181976260205092208.a n = A080757 n

end A080757

/-! ## A080757.P13409342963359360786

`A016975(n)%A007538(n+1)`
-/

namespace A080757.P13409342963359360786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A007538 (n + 1))

end

end A080757.P13409342963359360786

namespace A080757

/-- `A016975(n)%A007538(n+1)` -/
def P13409342963359360786.Spec : Prop :=
  ∀ n, P13409342963359360786.a n = A080757 n

end A080757

/-! ## A080757.P5897940308434356347

`A017581(n)%A007538(n+1)`
-/

namespace A080757.P5897940308434356347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A007538 (n + 1))

end

end A080757.P5897940308434356347

namespace A080757

/-- `A017581(n)%A007538(n+1)` -/
def P5897940308434356347.Spec : Prop :=
  ∀ n, P5897940308434356347.a n = A080757 n

end A080757

/-! ## A080757.P1611088428181833936

`A017583(n)%A007538(n+1)`
-/

namespace A080757.P1611088428181833936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017583 n) (A007538 (n + 1))

end

end A080757.P1611088428181833936

namespace A080757

/-- `A017583(n)%A007538(n+1)` -/
def P1611088428181833936.Spec : Prop :=
  ∀ n, P1611088428181833936.a n = A080757 n

end A080757

/-! ## A080757.P608689481967990926

`A017585(n)%A007538(n+1)`
-/

namespace A080757.P608689481967990926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017585 n) (A007538 (n + 1))

end

end A080757.P608689481967990926

namespace A080757

/-- `A017585(n)%A007538(n+1)` -/
def P608689481967990926.Spec : Prop :=
  ∀ n, P608689481967990926.a n = A080757 n

end A080757

/-! ## A080757.P17950797765099691610

`A017653(n)%A007538(n+1)`
-/

namespace A080757.P17950797765099691610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A007538 (n + 1))

end

end A080757.P17950797765099691610

namespace A080757

/-- `A017653(n)%A007538(n+1)` -/
def P17950797765099691610.Spec : Prop :=
  ∀ n, P17950797765099691610.a n = A080757 n

end A080757

/-!
# A080758: Number of steps needed to reach a prime starting with n and iterating x-->floor(3x/2).

The programs for A080758, there is no canonical definition to state claims against.
-/

/-! ## A080758.P15240620753039577564

`A073538(ceil((n+5)/2)+n)+1`
-/

namespace A080758.P15240620753039577564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073538 (⌈(n + 5 : ℚ) / 2⌉ + (n : ℤ)).toNat + 1

end

end A080758.P15240620753039577564

/-!
# A080759: Inverse Aronson transform of primes.

The programs for A080759, the canonical program `A080759.P78527280457839002` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080759 has offset 1).

The definition of A080759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080759.P78527280457839002

`eq[A005171(n+2), A005171(A000720(n+1)+1)]+2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080759

/-- `eq[A005171(n+2), A005171(A000720(n+1)+1)]+2` -/
def P78527280457839002.Spec : Prop :=
  ∀ n, (P78527280457839002.a n : ℤ) = A080759 (n + 1)

theorem P78527280457839002.correct : P78527280457839002.Spec := by
  intro n
  simp only [A080759, Nat.add_sub_cancel]

end A080759

/-! ## A080759.P11314832653578193661

`eq[A010051(n+2), A010051(A000720(n+1)+1)]+2`
-/

namespace A080759.P11314832653578193661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A080759.P11314832653578193661

namespace A080759

/-- `eq[A010051(n+2), A010051(A000720(n+1)+1)]+2` -/
def P11314832653578193661.Spec : Prop :=
  ∀ n, (P11314832653578193661.a n : ℤ) = A080759 (n + 1)

end A080759

/-!
# A080760: Aronson transform of lower Wythoff sequence A000201.

The programs for A080760, there is no canonical definition to state claims against.
-/

/-! ## A080760.P7895306411551016786

`lt[A346698(A270208(n)), A002487(3*n)]`
-/

namespace A080760.P7895306411551016786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A270208 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080760.P7895306411551016786

/-! ## A080760.P11541009943822354012

`lt[A153641(3*n), A322841(A092269(n+1))]`
-/

namespace A080760.P11541009943822354012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153641 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322841 (A092269 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080760.P11541009943822354012

/-! ## A080760.P9907393770853389235

`lt[A153641(3*n), A164116(A133638(2*(n+1)))]`
-/

namespace A080760.P9907393770853389235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153641 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164116 (A133638 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080760.P9907393770853389235

/-! ## A080760.P9439649396663393203

`lt[A153641(3*n), A179751(A131198(2*(n+1)))]`
-/

namespace A080760.P9439649396663393203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153641 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (A131198 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080760.P9439649396663393203

/-! ## A080760.P17746927815049516362

`lt[A226513(2*n+1), A126744(A359101(3*n+4))]`
-/

namespace A080760.P17746927815049516362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126744 (A359101 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080760.P17746927815049516362

/-!
# A080761: Positive numbers of the form y^2 - x^3, x and y >= 1.

The programs for A080761, there is no canonical definition to state claims against.
-/

/-! ## A080761.P15048443608694027289

`lt[A045634(n), A134108(A028310(n))^n]`
-/

namespace A080761.P15048443608694027289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A028310 n).toNat ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080761.P15048443608694027289

/-! ## A080761.P16902123295092380395

`eq[char[A080762(n+1)], A151933(n)]`
-/

namespace A080761.P16902123295092380395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080762 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080761.P16902123295092380395

/-! ## A080761.P15775702223871848304

`eq[char[A080762(n+1)], A151622(n)]`
-/

namespace A080761.P15775702223871848304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080762 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080761.P15775702223871848304

/-!
# A080762: Positive numbers not of the form y^2 - x^3, x and y >= 1.

The programs for A080762, there is no canonical definition to state claims against.
-/

/-! ## A080762.P15011596720492994019

`∩[comp[A080761(n+1)], A165291(n+1)]`
-/

namespace A080762.P15011596720492994019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080761 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A080762.P15011596720492994019

/-! ## A080762.P11168773724118005419

`eq[char[A080761(n+1)], A151933(n)]`
-/

namespace A080762.P11168773724118005419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080761 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080762.P11168773724118005419

/-! ## A080762.P11027282013384207407

`A165291(A043320(n+1))`
-/

namespace A080762.P11027282013384207407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165291 (A043320 (n + 1)).toNat

end

end A080762.P11027282013384207407

/-! ## A080762.P12189784790836841308

`A165291(A044917(n+1))`
-/

namespace A080762.P12189784790836841308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165291 (A044917 (n + 1)).toNat

end

end A080762.P12189784790836841308

/-! ## A080762.P4437266998252680028

`A165291(A055645(n+1))`
-/

namespace A080762.P4437266998252680028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165291 (A055645 (n + 1)).toNat

end

end A080762.P4437266998252680028

/-!
# A080763: Exchange 1's and 2's in the eta-sequence A006337.

The programs for A080763, the canonical program `A080763.P7533574351288554750` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080763 has offset 1).

The definition of A080763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080763.P15651811996734215795

`3-Δ[floor((n+1)*sqrt(2))]`
-/

namespace A080763.P15651811996734215795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A080763.P15651811996734215795

namespace A080763

/-- `3-Δ[floor((n+1)*sqrt(2))]` -/
def P15651811996734215795.Spec : Prop :=
  ∀ n, P15651811996734215795.a n = A080763 (n + 1)

end A080763

/-! ## A080763.P12567502788197365902

`C(2, Δ[floor((n+1)*sqrt(2))])`
-/

namespace A080763.P12567502788197365902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A080763.P12567502788197365902

namespace A080763

/-- `C(2, Δ[floor((n+1)*sqrt(2))])` -/
def P12567502788197365902.Spec : Prop :=
  ∀ n, (P12567502788197365902.a n : ℤ) = A080763 (n + 1)

end A080763

/-! ## A080763.P12224085849054893685

`xor(3, Δ[floor((n+1)*sqrt(2))])`
-/

namespace A080763.P12224085849054893685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (f1 (n + 1) - f1 n)

end

end A080763.P12224085849054893685

namespace A080763

/-- `xor(3, Δ[floor((n+1)*sqrt(2))])` -/
def P12224085849054893685.Spec : Prop :=
  ∀ n, P12224085849054893685.a n = A080763 (n + 1)

end A080763

/-! ## A080763.P15071848899753836334

`(2/Δ[floor((n+1)*sqrt(2))])!`
-/

namespace A080763.P15071848899753836334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A080763.P15071848899753836334

namespace A080763

/-- `(2/Δ[floor((n+1)*sqrt(2))])!` -/
def P15071848899753836334.Spec : Prop :=
  ∀ n, (P15071848899753836334.a n : ℤ) = A080763 (n + 1)

end A080763

/-! ## A080763.P15376939771373533740

`2/dr(Δ[floor((n+1)*sqrt(2))])`
-/

namespace A080763.P15376939771373533740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) : ℚ)

end

end A080763.P15376939771373533740

namespace A080763

/-- `2/dr(Δ[floor((n+1)*sqrt(2))])` -/
def P15376939771373533740.Spec : Prop :=
  ∀ n, P15376939771373533740.a n = (A080763 (n + 1) : ℚ)

end A080763

/-! ## A080763.P5583102179386950878

`(2*Δ[floor((n+1)*sqrt(2))])%3`
-/

namespace A080763.P5583102179386950878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (f1 (n + 1) - f1 n)) 3

end

end A080763.P5583102179386950878

namespace A080763

/-- `(2*Δ[floor((n+1)*sqrt(2))])%3` -/
def P5583102179386950878.Spec : Prop :=
  ∀ n, P5583102179386950878.a n = A080763 (n + 1)

end A080763

/-! ## A080763.P16498588935384003342

`gcd(2, A317204(n))`
-/

namespace A080763.P16498588935384003342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A317204 n)

end

end A080763.P16498588935384003342

namespace A080763

/-- `gcd(2, A317204(n))` -/
def P16498588935384003342.Spec : Prop :=
  ∀ n, (P16498588935384003342.a n : ℤ) = A080763 (n + 1)

end A080763

/-! ## A080763.P7533574351288554750

`abs(2-A159684(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080763

/-- `abs(2-A159684(n))` -/
def P7533574351288554750.Spec : Prop :=
  ∀ n, P7533574351288554750.a n = A080763 (n + 1)

theorem P7533574351288554750.correct : P7533574351288554750.Spec := by
  intro n
  simp only [A080763, Nat.add_sub_cancel]

end A080763

/-! ## A080763.P10703595677098952704

`2/A006337(n+1)`
-/

namespace A080763.P10703595677098952704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A006337 (n + 1) : ℚ)

end

end A080763.P10703595677098952704

namespace A080763

/-- `2/A006337(n+1)` -/
def P10703595677098952704.Spec : Prop :=
  ∀ n, P10703595677098952704.a n = (A080763 (n + 1) : ℚ)

end A080763

/-! ## A080763.P5059270939788419207

`2/ceil(ratio[A097509(n)])`
-/

namespace A080763.P5059270939788419207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ : ℚ)

end

end A080763.P5059270939788419207

namespace A080763

/-- `2/ceil(ratio[A097509(n)])` -/
def P5059270939788419207.Spec : Prop :=
  ∀ n, P5059270939788419207.a n = (A080763 (n + 1) : ℚ)

end A080763

/-! ## A080763.P16539161785450854403

`2/(A097509(n+1)-1)`
-/

namespace A080763.P16539161785450854403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A097509 (n + 1) - 1 : ℚ)

end

end A080763.P16539161785450854403

namespace A080763

/-- `2/(A097509(n+1)-1)` -/
def P16539161785450854403.Spec : Prop :=
  ∀ n, P16539161785450854403.a n = (A080763 (n + 1) : ℚ)

end A080763

/-! ## A080763.P8880954473669225753

`2/(A276862(n+1)-1)`
-/

namespace A080763.P8880954473669225753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A276862 (n + 1) - 1 : ℚ)

end

end A080763.P8880954473669225753

namespace A080763

/-- `2/(A276862(n+1)-1)` -/
def P8880954473669225753.Spec : Prop :=
  ∀ n, P8880954473669225753.a n = (A080763 (n + 1) : ℚ)

end A080763

/-! ## A080763.P15009168696565693714

`A000032(log2(Δ[floor((n+1)*sqrt(2))]))`
-/

namespace A080763.P15009168696565693714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A080763.P15009168696565693714

namespace A080763

/-- `A000032(log2(Δ[floor((n+1)*sqrt(2))]))` -/
def P15009168696565693714.Spec : Prop :=
  ∀ n, P15009168696565693714.a n = A080763 (n + 1)

end A080763

/-! ## A080763.P3777808692654239930

`A001222(Δ[floor((sqrt(2)+3)*(n+1))])`
-/

namespace A080763.P3777808692654239930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 : ℝ) + 3) * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A080763.P3777808692654239930

namespace A080763

/-- `A001222(Δ[floor((sqrt(2)+3)*(n+1))])` -/
def P3777808692654239930.Spec : Prop :=
  ∀ n, P3777808692654239930.a n = A080763 (n + 1)

end A080763

/-! ## A080763.P6639515970335692520

`A007318(Δ[floor((sqrt(2)+3)*(n+1))])`
-/

namespace A080763.P6639515970335692520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 : ℝ) + 3) * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat

end

end A080763.P6639515970335692520

namespace A080763

/-- `A007318(Δ[floor((sqrt(2)+3)*(n+1))])` -/
def P6639515970335692520.Spec : Prop :=
  ∀ n, P6639515970335692520.a n = A080763 (n + 1)

end A080763

/-! ## A080763.P11323106620070979681

`A000005(2/Δ[floor((n+1)*sqrt(2))])`
-/

namespace A080763.P11323106620070979681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A080763.P11323106620070979681

namespace A080763

/-- `A000005(2/Δ[floor((n+1)*sqrt(2))])` -/
def P11323106620070979681.Spec : Prop :=
  ∀ n, P11323106620070979681.a n = A080763 (n + 1)

end A080763

/-! ## A080763.P17492166797496680765

`2/A000041(Δ[floor((n+1)*sqrt(2))])`
-/

namespace A080763.P17492166797496680765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000041 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A080763.P17492166797496680765

namespace A080763

/-- `2/A000041(Δ[floor((n+1)*sqrt(2))])` -/
def P17492166797496680765.Spec : Prop :=
  ∀ n, P17492166797496680765.a n = (A080763 (n + 1) : ℚ)

end A080763

/-! ## A080763.P13596264914790772200

`gcd(A001504(n), A276862(n+1))`
-/

namespace A080763.P13596264914790772200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001504 n) (A276862 (n + 1))

end

end A080763.P13596264914790772200

namespace A080763

/-- `gcd(A001504(n), A276862(n+1))` -/
def P13596264914790772200.Spec : Prop :=
  ∀ n, (P13596264914790772200.a n : ℤ) = A080763 (n + 1)

end A080763

/-!
# A080764: First differences of A049472, floor(n/sqrt(2)).

The programs for A080764, the canonical program `A080764.P14301132771463561424` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080764 has offset 0).

The definition of A080764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080764.P14301132771463561424

`floor((n+2)*sqrt(2)/2)-floor((n+1)*sqrt(2)/2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080764

/-- `floor((n+2)*sqrt(2)/2)-floor((n+1)*sqrt(2)/2)` -/
def P14301132771463561424.Spec : Prop :=
  ∀ n, P14301132771463561424.a n = A080764 n

theorem P14301132771463561424.correct : P14301132771463561424.Spec := by
  intro n
  simp only [A080764]

end A080764

/-! ## A080764.P4541384586530991089

`A188295(n+2)`
-/

namespace A080764.P4541384586530991089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 2)

end

end A080764.P4541384586530991089

namespace A080764

/-- `A188295(n+2)` -/
def P4541384586530991089.Spec : Prop :=
  ∀ n, P4541384586530991089.a n = A080764 n

end A080764

/-! ## A080764.P7715690764562854865

`(2*n+3-Δ[ceil((n+1)/(2-sqrt(2)))])%2`
-/

namespace A080764.P7715690764562854865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (2 - Real.sqrt (2 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 3 : ℤ) - (f1 (n + 1) - f1 n)) 2

end

end A080764.P7715690764562854865

namespace A080764

/-- `(2*n+3-Δ[ceil((n+1)/(2-sqrt(2)))])%2` -/
def P7715690764562854865.Spec : Prop :=
  ∀ n, P7715690764562854865.a n = A080764 n

end A080764

/-! ## A080764.P16835624851071107824

`and(1, 2*n+3-Δ[ceil((n+1)/(2-sqrt(2)))])`
-/

namespace A080764.P16835624851071107824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (2 - Real.sqrt (2 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((2 * n + 3 : ℤ) - (f1 (n + 1) - f1 n))

end

end A080764.P16835624851071107824

namespace A080764

/-- `and(1, 2*n+3-Δ[ceil((n+1)/(2-sqrt(2)))])` -/
def P16835624851071107824.Spec : Prop :=
  ∀ n, P16835624851071107824.a n = A080764 n

end A080764

/-! ## A080764.P6690793566726926811

`char[A395101(n+1)]`
-/

namespace A080764.P6690793566726926811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080764.P6690793566726926811

namespace A080764

/-- `char[A395101(n+1)]` -/
def P6690793566726926811.Spec : Prop :=
  ∀ n, (P6690793566726926811.a n : ℤ) = A080764 n

end A080764

/-! ## A080764.P2106090002545075492

`char[A001951(n)-1]`
-/

namespace A080764.P2106090002545075492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080764.P2106090002545075492

namespace A080764

/-- `char[A001951(n)-1]` -/
def P2106090002545075492.Spec : Prop :=
  ∀ n, (P2106090002545075492.a n : ℤ) = A080764 n

end A080764

/-! ## A080764.P2380403966412695881

`char[A087057(n+1)-2]`
-/

namespace A080764.P2380403966412695881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080764.P2380403966412695881

namespace A080764

/-- `char[A087057(n+1)-2]` -/
def P2380403966412695881.Spec : Prop :=
  ∀ n, (P2380403966412695881.a n : ℤ) = A080764 n

end A080764

/-! ## A080764.P2539312338665799338

`A144611(A061288(n+1))`
-/

namespace A080764.P2539312338665799338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A061288 (n + 1)).toNat

end

end A080764.P2539312338665799338

namespace A080764

/-- `A144611(A061288(n+1))` -/
def P2539312338665799338.Spec : Prop :=
  ∀ n, P2539312338665799338.a n = A080764 n

end A080764

/-! ## A080764.P11072350166037272397

`Δ[A049472(n+1)]`
-/

namespace A080764.P11072350166037272397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080764.P11072350166037272397

namespace A080764

/-- `Δ[A049472(n+1)]` -/
def P11072350166037272397.Spec : Prop :=
  ∀ n, P11072350166037272397.a n = A080764 n

end A080764

/-! ## A080764.P1909715119591018015

`Δ[A049474(n+1)]`
-/

namespace A080764.P1909715119591018015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080764.P1909715119591018015

namespace A080764

/-- `Δ[A049474(n+1)]` -/
def P1909715119591018015.Spec : Prop :=
  ∀ n, P1909715119591018015.a n = A080764 n

end A080764

/-! ## A080764.P14874545838724430942

`log2(Δ[A003152(n+1)])`
-/

namespace A080764.P14874545838724430942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A080764.P14874545838724430942

namespace A080764

/-- `log2(Δ[A003152(n+1)])` -/
def P14874545838724430942.Spec : Prop :=
  ∀ n, P14874545838724430942.a n = (A080764 n : ℝ)

end A080764

/-! ## A080764.P13129955707755236681

`log2(Δ[A080755(n+1)])`
-/

namespace A080764.P13129955707755236681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A080764.P13129955707755236681

namespace A080764

/-- `log2(Δ[A080755(n+1)])` -/
def P13129955707755236681.Spec : Prop :=
  ∀ n, P13129955707755236681.a n = (A080764 n : ℝ)

end A080764

/-! ## A080764.P1641071883750271429

`floor(ratio[A276869(n+1)])`
-/

namespace A080764.P1641071883750271429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A080764.P1641071883750271429

namespace A080764

/-- `floor(ratio[A276869(n+1)])` -/
def P1641071883750271429.Spec : Prop :=
  ∀ n, P1641071883750271429.a n = A080764 n

end A080764

/-! ## A080764.P12831980457680054886

`log2(Δ[A083088(n+1)])`
-/

namespace A080764.P12831980457680054886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A080764.P12831980457680054886

namespace A080764

/-- `log2(Δ[A083088(n+1)])` -/
def P12831980457680054886.Spec : Prop :=
  ∀ n, P12831980457680054886.a n = (A080764 n : ℝ)

end A080764

/-! ## A080764.P10673021429329926134

`Δ[Δ[A022776(n+1)]]`
-/

namespace A080764.P10673021429329926134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080764.P10673021429329926134

namespace A080764

/-- `Δ[Δ[A022776(n+1)]]` -/
def P10673021429329926134.Spec : Prop :=
  ∀ n, P10673021429329926134.a n = A080764 n

end A080764

/-! ## A080764.P2278485140003731507

`A286922(A187328(n+1))`
-/

namespace A080764.P2278485140003731507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286922 (A187328 (n + 1)).toNat

end

end A080764.P2278485140003731507

namespace A080764

/-- `A286922(A187328(n+1))` -/
def P2278485140003731507.Spec : Prop :=
  ∀ n, P2278485140003731507.a n = A080764 n

end A080764

/-! ## A080764.P7731565838237984322

`A286903(A286924(n+1))`
-/

namespace A080764.P7731565838237984322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286903 (A286924 (n + 1)).toNat

end

end A080764.P7731565838237984322

namespace A080764

/-- `A286903(A286924(n+1))` -/
def P7731565838237984322.Spec : Prop :=
  ∀ n, P7731565838237984322.a n = A080764 n

end A080764

/-! ## A080764.P8931315380531349427

`A000035(A138494(n+1))`
-/

namespace A080764.P8931315380531349427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A138494 (n + 1)).toNat

end

end A080764.P8931315380531349427

namespace A080764

/-- `A000035(A138494(n+1))` -/
def P8931315380531349427.Spec : Prop :=
  ∀ n, P8931315380531349427.a n = A080764 n

end A080764

/-! ## A080764.P17218441202037493880

`A159684(A003152(n+1))`
-/

namespace A080764.P17218441202037493880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A003152 (n + 1)).toNat

end

end A080764.P17218441202037493880

namespace A080764

/-- `A159684(A003152(n+1))` -/
def P17218441202037493880.Spec : Prop :=
  ∀ n, P17218441202037493880.a n = A080764 n

end A080764

/-!
# A080765: Integers m such that m+1 divides lcm(1 through m).

The programs for A080765, the canonical program `A080765.P11390877915773879858` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080765 has offset 1).

The definition of A080765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080765.P15140115237184937858

`∑[A375708(n+1)]`
-/

namespace A080765.P15140115237184937858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080765.P15140115237184937858

namespace A080765

/-- `∑[A375708(n+1)]` -/
def P15140115237184937858.Spec : Prop :=
  ∀ n, P15140115237184937858.a n = A080765 (n + 1)

end A080765

/-! ## A080765.P14215611173670208512

`comp[A181062(n+1)]`
-/

namespace A080765.P14215611173670208512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080765.P14215611173670208512

namespace A080765

/-- `comp[A181062(n+1)]` -/
def P14215611173670208512.Spec : Prop :=
  ∀ n, (P14215611173670208512.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P14498049054627029650

`A024619(n+1)-1`
-/

namespace A080765.P14498049054627029650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1) - 1

end

end A080765.P14498049054627029650

namespace A080765

/-- `A024619(n+1)-1` -/
def P14498049054627029650.Spec : Prop :=
  ∀ n, P14498049054627029650.a n = A080765 (n + 1)

theorem P14498049054627029650.correct : P14498049054627029650.Spec := by
  intro n
  simp only [A080765, Nat.add_sub_cancel, A080765.P14498049054627029650.a, A080765.P11390877915773879858.f1, A080765.P11390877915773879858.f2, A080765.P11390877915773879858.a, A024619, A024619.P14596117423334191378.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080765

/-! ## A080765.P12004790774690141129

`lt[0, A035321(n+1)]`
-/

namespace A080765.P12004790774690141129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P12004790774690141129

namespace A080765

/-- `lt[0, A035321(n+1)]` -/
def P12004790774690141129.Spec : Prop :=
  ∀ n, (P12004790774690141129.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P11390877915773879858

`lt[0, A074591(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080765

/-- `lt[0, A074591(n+1)]` -/
def P11390877915773879858.Spec : Prop :=
  ∀ n, (P11390877915773879858.a n : ℤ) = A080765 (n + 1)

theorem P11390877915773879858.correct : P11390877915773879858.Spec := by
  intro n
  simp only [A080765, Nat.add_sub_cancel]

end A080765

/-! ## A080765.P4553713455585235118

`lt[0, A081805(n+1)]`
-/

namespace A080765.P4553713455585235118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P4553713455585235118

namespace A080765

/-- `lt[0, A081805(n+1)]` -/
def P4553713455585235118.Spec : Prop :=
  ∀ n, (P4553713455585235118.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P7572470313250093589

`lt[0, A097106(n+1)]`
-/

namespace A080765.P7572470313250093589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097106 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P7572470313250093589

namespace A080765

/-- `lt[0, A097106(n+1)]` -/
def P7572470313250093589.Spec : Prop :=
  ∀ n, (P7572470313250093589.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P11083747386141348836

`lt[0, A178921(n+1)]`
-/

namespace A080765.P11083747386141348836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178921 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P11083747386141348836

namespace A080765

/-- `lt[0, A178921(n+1)]` -/
def P11083747386141348836.Spec : Prop :=
  ∀ n, (P11083747386141348836.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P5487883814965989171

`lt[0, A281116(n+1)]`
-/

namespace A080765.P5487883814965989171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P5487883814965989171

namespace A080765

/-- `lt[0, A281116(n+1)]` -/
def P5487883814965989171.Spec : Prop :=
  ∀ n, (P5487883814965989171.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P9739387930594233358

`lt[0, A297173(n+1)]`
-/

namespace A080765.P9739387930594233358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P9739387930594233358

namespace A080765

/-- `lt[0, A297173(n+1)]` -/
def P9739387930594233358.Spec : Prop :=
  ∀ n, (P9739387930594233358.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P9101405021392961465

`lt[0, A326844(n+1)]`
-/

namespace A080765.P9101405021392961465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P9101405021392961465

namespace A080765

/-- `lt[0, A326844(n+1)]` -/
def P9101405021392961465.Spec : Prop :=
  ∀ n, (P9101405021392961465.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P12616560711966844492

`lt[1, A001221(n+1)]`
-/

namespace A080765.P12616560711966844492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P12616560711966844492

namespace A080765

/-- `lt[1, A001221(n+1)]` -/
def P12616560711966844492.Spec : Prop :=
  ∀ n, (P12616560711966844492.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P18077355568547012236

`lt[1, A034460(n+1)]`
-/

namespace A080765.P18077355568547012236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P18077355568547012236

namespace A080765

/-- `lt[1, A034460(n+1)]` -/
def P18077355568547012236.Spec : Prop :=
  ∀ n, (P18077355568547012236.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P3498639705421606955

`lt[1, A052125(n+1)]`
-/

namespace A080765.P3498639705421606955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P3498639705421606955

namespace A080765

/-- `lt[1, A052125(n+1)]` -/
def P3498639705421606955.Spec : Prop :=
  ∀ n, (P3498639705421606955.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P1378807463581544465

`lt[1, A063919(n+1)]`
-/

namespace A080765.P1378807463581544465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P1378807463581544465

namespace A080765

/-- `lt[1, A063919(n+1)]` -/
def P1378807463581544465.Spec : Prop :=
  ∀ n, (P1378807463581544465.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P2539127668558753063

`lt[1, A076511(n+1)]`
-/

namespace A080765.P2539127668558753063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P2539127668558753063

namespace A080765

/-- `lt[1, A076511(n+1)]` -/
def P2539127668558753063.Spec : Prop :=
  ∀ n, (P2539127668558753063.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P12125011901901776759

`lt[1, A080214(n+1)]`
-/

namespace A080765.P12125011901901776759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080214 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P12125011901901776759

namespace A080765

/-- `lt[1, A080214(n+1)]` -/
def P12125011901901776759.Spec : Prop :=
  ∀ n, (P12125011901901776759.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P11402958967756219519

`eq[3, A287841(n+1)]`
-/

namespace A080765.P11402958967756219519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080765.P11402958967756219519

namespace A080765

/-- `eq[3, A287841(n+1)]` -/
def P11402958967756219519.Spec : Prop :=
  ∀ n, (P11402958967756219519.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P6298426063876699066

`lt[A011772(n+1), n]`
-/

namespace A080765.P6298426063876699066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080765.P6298426063876699066

namespace A080765

/-- `lt[A011772(n+1), n]` -/
def P6298426063876699066.Spec : Prop :=
  ∀ n, (P6298426063876699066.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P11345016952089388491

`lt[A034699(n+1), n]`
-/

namespace A080765.P11345016952089388491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080765.P11345016952089388491

namespace A080765

/-- `lt[A034699(n+1), n]` -/
def P11345016952089388491.Spec : Prop :=
  ∀ n, (P11345016952089388491.a n : ℤ) = A080765 (n + 1)

end A080765

/-! ## A080765.P18129706861076428019

`lt[2, ∑{p}[n+1, atan(#)]]`
-/

namespace A080765.P18129706861076428019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Real.arctan (p : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A080765.P18129706861076428019

namespace A080765

/-- `lt[2, ∑{p}[n+1, atan(#)]]` -/
def P18129706861076428019.Spec : Prop :=
  ∀ n, (P18129706861076428019.a n : ℤ) = A080765 (n + 1)

end A080765

/-!
# A080766: A unitary phi reciprocal amicable number: consider two different numbers r, s which satisfy the following equation for some integer k: uphi(r) = uphi(s) = (1/k) * r * s / (r-s); or equivalently, 1/uphi(r) = 1/uphi(s) = k * (1/s - 1/r); sequence gives r numbers.

The programs for A080766, there is no canonical definition to state claims against.
-/

/-! ## A080766.P2287836549631555899

`A178858(A055560(n+2))`
-/

namespace A080766.P2287836549631555899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (A055560 (n + 2)).toNat

end

end A080766.P2287836549631555899

/-!
# A080767: A unitary phi reciprocal amicable number: consider two different numbers r, s which satisfy the following equation for some integer k: uphi(r) = uphi(s) = (1/k) * r * s / (r-s); or equivalently, 1/uphi(r) = 1/uphi(s) = k * (1/s - 1/r); sequence gives s numbers.

The programs for A080767, there is no canonical definition to state claims against.
-/

/-! ## A080767.P10514477089155884256

`A078911(A007317(n+2))`
-/

namespace A080767.P10514477089155884256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078911 (A007317 (n + 2)).toNat

end

end A080767.P10514477089155884256

/-! ## A080767.P13172897600290511186

`A082907(A357301(3*n+1))*A325879(2*n+1)`
-/

namespace A080767.P13172897600290511186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082907 (A357301 (3 * n + 1)).toNat * A325879 (2 * n + 1)

end

end A080767.P13172897600290511186

/-!
# A080769: Number of primes between consecutive integer powers with exponent > 1.

The programs for A080769, there is no canonical definition to state claims against.
-/

/-! ## A080769.P13613477558552000842

`A000720(A001597(n+2))-A000720(A001597(n+1))`
-/

namespace A080769.P13613477558552000842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001597 (n + 2)).toNat - A000720 (A001597 (n + 1)).toNat

end

end A080769.P13613477558552000842

/-! ## A080769.P1078570546801198363

`Δ[A378356(n+1)]`
-/

namespace A080769.P1078570546801198363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P1078570546801198363

/-! ## A080769.P4091592656855131972

`A378356(n+2)-A378356(n+1)`
-/

namespace A080769.P4091592656855131972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (n + 2) - A378356 (n + 1)

end

end A080769.P4091592656855131972

/-! ## A080769.P283933656495350973

`Δ[A000720(A001597(n+1))]`
-/

namespace A080769.P283933656495350973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P283933656495350973

/-! ## A080769.P14537326914322419028

`Δ[A000720(abs(A157985(n+1)))]`
-/

namespace A080769.P14537326914322419028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |A157985 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P14537326914322419028

/-! ## A080769.P5957201055885190194

`Δ[A000720(sqrt(A340588(n+1)))]`
-/

namespace A080769.P5957201055885190194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P5957201055885190194

/-! ## A080769.P10649337435085855514

`Δ[A000720(∪[(n+1)², A076467(n+1)])]`
-/

namespace A080769.P10649337435085855514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P10649337435085855514

/-! ## A080769.P13922126470981994783

`Δ[A000720(A075146(n+1)+A000040(n+1))]`
-/

namespace A080769.P13922126470981994783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A075146 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P13922126470981994783

/-! ## A080769.P14312743784198187798

`Δ[A000720(A045542(n+1)+1-A053289(n+1))]`
-/

namespace A080769.P14312743784198187798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045542 (n + 1) + (1 - A053289 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P14312743784198187798

/-! ## A080769.P6666774840818965236

`Δ[A036234(abs(A157985(n+1)))]`
-/

namespace A080769.P6666774840818965236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 |A157985 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P6666774840818965236

/-! ## A080769.P1698253700161811943

`Δ[A036234(A001597(A000027(n+1)))]`
-/

namespace A080769.P1698253700161811943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A001597 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P1698253700161811943

/-! ## A080769.P11604171690147091295

`A118759(Δ[A036234(A001597(n+1))])`
-/

namespace A080769.P11604171690147091295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A001597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (n + 1) - f1 n).toNat

end

end A080769.P11604171690147091295

/-! ## A080769.P7045363281358418548

`Δ[A036234(A001597(n+1)%A304726(n))]`
-/

namespace A080769.P7045363281358418548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.tmod (A001597 (n + 1)) (A304726 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P7045363281358418548

/-! ## A080769.P16801604619714017616

`Δ[A036234(A001597(n+1))%A046308(n+1)]`
-/

namespace A080769.P16801604619714017616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036234 (A001597 (n + 1)).toNat) (A046308 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080769.P16801604619714017616

/-! ## A080769.P13692190393988451730

`Δ[A036234(A001597(n+1))]%A000040(n+2)`
-/

namespace A080769.P13692190393988451730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A001597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 2))

end

end A080769.P13692190393988451730

/-!
# A080770: a(n) = floor(e*(n+3)!) - (n+3)*(n+2)*(n+1)*n*floor(e*(n-1)!).

The programs for A080770, the canonical program `A080770.P10295298791737218394` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080770 has offset 1).

The definition of A080770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(e*(n+4)!)-(n+4)*(n+3)*(n+2)*(n+1)*floor(e*n!)` (program `A080770.P10295298791737218394`, by `A080770.P10295298791737218394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080770.P10295298791737218394

`floor(e*(n+4)!)-(n+4)*(n+3)*(n+2)*(n+1)*floor(e*n!)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080770

/-- `floor(e*(n+4)!)-(n+4)*(n+3)*(n+2)*(n+1)*floor(e*n!)` -/
def P10295298791737218394.Spec : Prop :=
  ∀ n, P10295298791737218394.a n = A080770 (n + 1)

theorem P10295298791737218394.correct : P10295298791737218394.Spec := by
  intro n
  simp only [A080770, Nat.add_sub_cancel]

end A080770

/-! ## A080770.P12478988291535600979

`(A053698(n+3)+1)%A007531(2*(n+2))`
-/

namespace A080770.P12478988291535600979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053698 (n + 3) + 1) (A007531 (2 * (n + 2)))

end

end A080770.P12478988291535600979

namespace A080770

/-- `(A053698(n+3)+1)%A007531(2*(n+2))` -/
def P12478988291535600979.Spec : Prop :=
  ∀ n, P12478988291535600979.a n = A080770 (n + 1)

end A080770

/-! ## A080770.P1077599146457820642

`A188947(n+4)%A042110(n)`
-/

namespace A080770.P1077599146457820642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188947 (n + 4)) (A042110 n)

end

end A080770.P1077599146457820642

namespace A080770

/-- `A188947(n+4)%A042110(n)` -/
def P1077599146457820642.Spec : Prop :=
  ∀ n, P1077599146457820642.a n = A080770 (n + 1)

end A080770

/-! ## A080770.P16855059619801909000

`A376559(A027444(n+3))+A027444(n+3)`
-/

namespace A080770.P16855059619801909000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376559 (A027444 (n + 3)).toNat + A027444 (n + 3)

end

end A080770.P16855059619801909000

namespace A080770

/-- `A376559(A027444(n+3))+A027444(n+3)` -/
def P16855059619801909000.Spec : Prop :=
  ∀ n, P16855059619801909000.a n = A080770 (n + 1)

end A080770

/-!
# A080772: Numbers of numbers <= n having prime factors <= k, triangular array read by rows.

The programs for A080772, there is no canonical definition to state claims against.
-/

/-! ## A080772.P8594733322239550103

`A002260(n+1)+A002260(n+1)%A020639(A202687(n))`
-/

namespace A080772.P8594733322239550103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + Int.tmod (A002260 (n + 1)) (A020639 (A202687 n).toNat)

end

end A080772.P8594733322239550103

/-! ## A080772.P16383328514483440950

`A040001(A269955(n))+A002262(n)`
-/

namespace A080772.P16383328514483440950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A269955 n).toNat + A002262 n

end

end A080772.P16383328514483440950

/-! ## A080772.P1607625432946098936

`A040001(A269955(n))+A025668(n+1)`
-/

namespace A080772.P1607625432946098936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A269955 n).toNat + A025668 (n + 1)

end

end A080772.P1607625432946098936

/-! ## A080772.P6439581975022968678

`A002260(n+1)+A040001(A269955(n))-1`
-/

namespace A080772.P6439581975022968678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A040001 (A269955 n).toNat - 1)

end

end A080772.P6439581975022968678

/-!
# A080773: In binary representation: sum of number of 1's in prime factors of n (with repetition).

The programs for A080773, the canonical program `A080773.P16474482558350524650` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080773 has offset 1).

The definition of A080773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080773.P16474482558350524650

`∑{p}[n+1, val(n+1, #)*A000120(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080773

/-- `∑{p}[n+1, val(n+1, #)*A000120(#)]` -/
def P16474482558350524650.Spec : Prop :=
  ∀ n, P16474482558350524650.a n = A080773 (n + 1)

theorem P16474482558350524650.correct : P16474482558350524650.Spec := by
  intro n
  simp only [A080773, Nat.add_sub_cancel]

end A080773

/-! ## A080773.P7684635005734901851

`∑{d}[n+1, A035531(A014963(#))]`
-/

namespace A080773.P7684635005734901851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035531 (A014963 d).toNat

end

end A080773.P7684635005734901851

namespace A080773

/-- `∑{d}[n+1, A035531(A014963(#))]` -/
def P7684635005734901851.Spec : Prop :=
  ∀ n, P7684635005734901851.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P11524046580355207319

`∑{d}[n+1, A000120(A120007(#))]`
-/

namespace A080773.P11524046580355207319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 (A120007 d).toNat

end

end A080773.P11524046580355207319

namespace A080773

/-- `∑{d}[n+1, A000120(A120007(#))]` -/
def P11524046580355207319.Spec : Prop :=
  ∀ n, P11524046580355207319.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P8632674517052808656

`A325121(A064988(n+1))`
-/

namespace A080773.P8632674517052808656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (A064988 (n + 1)).toNat

end

end A080773.P8632674517052808656

namespace A080773

/-- `A325121(A064988(n+1))` -/
def P8632674517052808656.Spec : Prop :=
  ∀ n, P8632674517052808656.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P14476029025912262730

`A000120(A048985(n+1))%(n+1)`
-/

namespace A080773.P14476029025912262730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A048985 (n + 1)).toNat) (n + 1 : ℤ)

end

end A080773.P14476029025912262730

namespace A080773

/-- `A000120(A048985(n+1))%(n+1)` -/
def P14476029025912262730.Spec : Prop :=
  ∀ n, P14476029025912262730.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P12876211207119727768

`A000120(A112417(n+1))%(n+1)`
-/

namespace A080773.P12876211207119727768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A112417 (n + 1)).toNat) (n + 1 : ℤ)

end

end A080773.P12876211207119727768

namespace A080773

/-- `A000120(A112417(n+1))%(n+1)` -/
def P12876211207119727768.Spec : Prop :=
  ∀ n, P12876211207119727768.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P536849903696431340

`A000120(A048985(n+1)-C(2, n+2))`
-/

namespace A080773.P536849903696431340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048985 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A080773.P536849903696431340

namespace A080773

/-- `A000120(A048985(n+1)-C(2, n+2))` -/
def P536849903696431340.Spec : Prop :=
  ∀ n, P536849903696431340.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P9756824946829439486

`A000120(xor(C(2, n+2), A048985(n+1)))`
-/

namespace A080773.P9756824946829439486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (Nat.choose 2 (n + 2) : ℤ) (A048985 (n + 1))).toNat

end

end A080773.P9756824946829439486

namespace A080773

/-- `A000120(xor(C(2, n+2), A048985(n+1)))` -/
def P9756824946829439486.Spec : Prop :=
  ∀ n, P9756824946829439486.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P12888988090604773184

`A000120(A048985(n+1)-A000007(n))`
-/

namespace A080773.P12888988090604773184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048985 (n + 1) - A000007 n).toNat

end

end A080773.P12888988090604773184

namespace A080773

/-- `A000120(A048985(n+1)-A000007(n))` -/
def P12888988090604773184.Spec : Prop :=
  ∀ n, P12888988090604773184.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P3173325221973814521

`A000120(A048985(n+1)-A036987(n))`
-/

namespace A080773.P3173325221973814521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048985 (n + 1) - A036987 n).toNat

end

end A080773.P3173325221973814521

namespace A080773

/-- `A000120(A048985(n+1)-A036987(n))` -/
def P3173325221973814521.Spec : Prop :=
  ∀ n, P3173325221973814521.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P6495723518722721572

`A000120(A048985(n+1)%A000145(n))`
-/

namespace A080773.P6495723518722721572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A048985 (n + 1)) (A000145 n)).toNat

end

end A080773.P6495723518722721572

namespace A080773

/-- `A000120(A048985(n+1)%A000145(n))` -/
def P6495723518722721572.Spec : Prop :=
  ∀ n, P6495723518722721572.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P13707597302240437124

`A000120(xor(A000007(n), A048985(n+1)))`
-/

namespace A080773.P13707597302240437124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A000007 n) (A048985 (n + 1))).toNat

end

end A080773.P13707597302240437124

namespace A080773

/-- `A000120(xor(A000007(n), A048985(n+1)))` -/
def P13707597302240437124.Spec : Prop :=
  ∀ n, P13707597302240437124.a n = A080773 (n + 1)

end A080773

/-! ## A080773.P9779892849811342108

`A000120(A048985(n+1)-A340991(∑[n]))`
-/

namespace A080773.P9779892849811342108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048985 (n + 1) - A340991 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A080773.P9779892849811342108

namespace A080773

/-- `A000120(A048985(n+1)-A340991(∑[n]))` -/
def P9779892849811342108.Spec : Prop :=
  ∀ n, P9779892849811342108.a n = A080773 (n + 1)

end A080773

/-!
# A080774: Numbers with two prime factors: (4*i+1)*(4*j+3).

The programs for A080774, the canonical program `A080774.P6216594566217040255` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080774 has offset 1).

The definition of A080774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6052 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080774.P13151376928340040821

`filter[A360110(n+1), A374128(#)]`
-/

namespace A080774.P13151376928340040821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A080774.P13151376928340040821

namespace A080774

/-- `filter[A360110(n+1), A374128(#)]` -/
def P13151376928340040821.Spec : Prop :=
  ∀ n, P13151376928340040821.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P11568275292157051365

`∩[4*n-1, A001358(n+1)]`
-/

namespace A080774.P11568275292157051365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080774.P11568275292157051365

namespace A080774

/-- `∩[4*n-1, A001358(n+1)]` -/
def P11568275292157051365.Spec : Prop :=
  ∀ n, (P11568275292157051365.a n : ℤ) = A080774 (n + 1)

end A080774

/-! ## A080774.P14774756649277591610

`filter[2*n+1, A353479(#)]`
-/

namespace A080774.P14774756649277591610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353479 (f1 j) = 1) n)

end

end A080774.P14774756649277591610

namespace A080774

/-- `filter[2*n+1, A353479(#)]` -/
def P14774756649277591610.Spec : Prop :=
  ∀ n, (P14774756649277591610.a n : ℤ) = A080774 (n + 1)

end A080774

/-! ## A080774.P17366523076543508062

`filter[A202237(n+1), A064911(#)]`
-/

namespace A080774.P17366523076543508062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A080774.P17366523076543508062

namespace A080774

/-- `filter[A202237(n+1), A064911(#)]` -/
def P17366523076543508062.Spec : Prop :=
  ∀ n, P17366523076543508062.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P17231933347482872119

`filter[A202237(n+1), A101040(#)]`
-/

namespace A080774.P17231933347482872119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A080774.P17231933347482872119

namespace A080774

/-- `filter[A202237(n+1), A101040(#)]` -/
def P17231933347482872119.Spec : Prop :=
  ∀ n, P17231933347482872119.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P4083289133006990552

`filter[A359163(n+1), A064911(#)]`
-/

namespace A080774.P4083289133006990552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A080774.P4083289133006990552

namespace A080774

/-- `filter[A359163(n+1), A064911(#)]` -/
def P4083289133006990552.Spec : Prop :=
  ∀ n, P4083289133006990552.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P15052900891004044776

`filter[A360110(n+1), A064911(#)]`
-/

namespace A080774.P15052900891004044776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A080774.P15052900891004044776

namespace A080774

/-- `filter[A360110(n+1), A064911(#)]` -/
def P15052900891004044776.Spec : Prop :=
  ∀ n, P15052900891004044776.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P6642065987704415263

`filter[A359163(n+1), A101040(#)]`
-/

namespace A080774.P6642065987704415263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A080774.P6642065987704415263

namespace A080774

/-- `filter[A359163(n+1), A101040(#)]` -/
def P6642065987704415263.Spec : Prop :=
  ∀ n, P6642065987704415263.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P4221619219071463378

`filter[A360110(n+1), A101040(#)]`
-/

namespace A080774.P4221619219071463378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A080774.P4221619219071463378

namespace A080774

/-- `filter[A360110(n+1), A101040(#)]` -/
def P4221619219071463378.Spec : Prop :=
  ∀ n, P4221619219071463378.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P5818100121541503068

`filter[A202237(n+1), A280710(#)]`
-/

namespace A080774.P5818100121541503068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A080774.P5818100121541503068

namespace A080774

/-- `filter[A202237(n+1), A280710(#)]` -/
def P5818100121541503068.Spec : Prop :=
  ∀ n, P5818100121541503068.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P3157562002081225644

`filter[A359163(n+1), A123927(#)]`
-/

namespace A080774.P3157562002081225644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A080774.P3157562002081225644

namespace A080774

/-- `filter[A359163(n+1), A123927(#)]` -/
def P3157562002081225644.Spec : Prop :=
  ∀ n, P3157562002081225644.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P12124409377805598757

`filter[A202237(n+1), A340370(#)]`
-/

namespace A080774.P12124409377805598757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A080774.P12124409377805598757

namespace A080774

/-- `filter[A202237(n+1), A340370(#)]` -/
def P12124409377805598757.Spec : Prop :=
  ∀ n, P12124409377805598757.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P17224445314916006254

`filter[A351048(n+1), A280710(#)]`
-/

namespace A080774.P17224445314916006254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A080774.P17224445314916006254

namespace A080774

/-- `filter[A351048(n+1), A280710(#)]` -/
def P17224445314916006254.Spec : Prop :=
  ∀ n, P17224445314916006254.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P1634234538698496264

`filter[A359163(n+1), A280710(#)]`
-/

namespace A080774.P1634234538698496264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A080774.P1634234538698496264

namespace A080774

/-- `filter[A359163(n+1), A280710(#)]` -/
def P1634234538698496264.Spec : Prop :=
  ∀ n, P1634234538698496264.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P9013087156946913071

`filter[A360110(n+1), A280710(#)]`
-/

namespace A080774.P9013087156946913071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A080774.P9013087156946913071

namespace A080774

/-- `filter[A360110(n+1), A280710(#)]` -/
def P9013087156946913071.Spec : Prop :=
  ∀ n, P9013087156946913071.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P6216594566217040255

`filter[A359163(n+1), A340369(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A080774

/-- `filter[A359163(n+1), A340369(#)]` -/
def P6216594566217040255.Spec : Prop :=
  ∀ n, P6216594566217040255.a n = A080774 (n + 1)

theorem P6216594566217040255.correct : P6216594566217040255.Spec := by
  intro n
  simp only [A080774, Nat.add_sub_cancel]

end A080774

/-! ## A080774.P13783073442277516066

`filter[A359163(n+1), A340370(#)]`
-/

namespace A080774.P13783073442277516066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A080774.P13783073442277516066

namespace A080774

/-- `filter[A359163(n+1), A340370(#)]` -/
def P13783073442277516066.Spec : Prop :=
  ∀ n, P13783073442277516066.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P12872301310221173701

`filter[A360110(n+1), A340370(#)]`
-/

namespace A080774.P12872301310221173701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A080774.P12872301310221173701

namespace A080774

/-- `filter[A360110(n+1), A340370(#)]` -/
def P12872301310221173701.Spec : Prop :=
  ∀ n, P12872301310221173701.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P16217832062271312808

`filter[A351048(n+1), A353471(#)]`
-/

namespace A080774.P16217832062271312808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A080774.P16217832062271312808

namespace A080774

/-- `filter[A351048(n+1), A353471(#)]` -/
def P16217832062271312808.Spec : Prop :=
  ∀ n, P16217832062271312808.a n = A080774 (n + 1)

end A080774

/-! ## A080774.P13516754952981580756

`∩[A202237(n+1), A374129(n+1)]`
-/

namespace A080774.P13516754952981580756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080774.P13516754952981580756

namespace A080774

/-- `∩[A202237(n+1), A374129(n+1)]` -/
def P13516754952981580756.Spec : Prop :=
  ∀ n, (P13516754952981580756.a n : ℤ) = A080774 (n + 1)

end A080774

/-!
# A080775: Number of n X n monomial matrices whose nonzero entries are unit Hurwitz quaternions.

The programs for A080775, the canonical program `A080775.P3241504026597259139` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080775 has offset 0).

The definition of A080775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080775.P3241504026597259139

`24^n*n!`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080775

/-- `24^n*n!` -/
def P3241504026597259139.Spec : Prop :=
  ∀ n, (P3241504026597259139.a n : ℤ) = A080775 n

theorem P3241504026597259139.correct : P3241504026597259139.Spec := by
  intro n
  simp only [A080775]

end A080775

/-! ## A080775.P15306794155226208438

`∏[floor(acot(n))+24*n]`
-/

namespace A080775.P15306794155226208438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (24 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080775.P15306794155226208438

namespace A080775

/-- `∏[floor(acot(n))+24*n]` -/
def P15306794155226208438.Spec : Prop :=
  ∀ n, P15306794155226208438.a n = A080775 n

end A080775

/-! ## A080775.P15113993798193389774

`∏[gcd(24*n, floor(acot(n)))]`
-/

namespace A080775.P15113993798193389774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (24 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080775.P15113993798193389774

namespace A080775

/-- `∏[gcd(24*n, floor(acot(n)))]` -/
def P15113993798193389774.Spec : Prop :=
  ∀ n, (P15113993798193389774.a n : ℤ) = A080775 n

end A080775

/-! ## A080775.P11698863377056380934

`∏[or(24*n, floor(acot(n)))]`
-/

namespace A080775.P11698863377056380934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (24 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080775.P11698863377056380934

namespace A080775

/-- `∏[or(24*n, floor(acot(n)))]` -/
def P11698863377056380934.Spec : Prop :=
  ∀ n, P11698863377056380934.a n = A080775 n

end A080775

/-! ## A080775.P3366172859069018124

`∏[xor(24*n, floor(acot(n)))]`
-/

namespace A080775.P3366172859069018124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (24 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080775.P3366172859069018124

namespace A080775

/-- `∏[xor(24*n, floor(acot(n)))]` -/
def P3366172859069018124.Spec : Prop :=
  ∀ n, P3366172859069018124.a n = A080775 n

end A080775

/-!
# A080779: Triangle read by rows: n-th row gives expansion of the series for HarmonicNumber(n, -r).

The programs for A080779, there is no canonical definition to state claims against.
-/

/-! ## A080779.P6260115947699367373

`A048998(n)/A140756(n+1)`
-/

namespace A080779.P6260115947699367373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048998 n : ℚ) / (A140756 (n + 1) : ℚ)

end

end A080779.P6260115947699367373

/-! ## A080779.P5460387452567776256

`A048999(∑[char[∑[n]]]²-(n+1))/A140756(n+1)`
-/

namespace A080779.P5460387452567776256
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048999 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1)) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A080779.P5460387452567776256

/-! ## A080779.P11395232991684346714

`(A048999(A061579(n))+A000007(n+1))/A140756(n+1)`
-/

namespace A080779.P11395232991684346714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048999 (A061579 n).toNat + A000007 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A080779.P11395232991684346714

/-! ## A080779.P9491676747170375779

`(A048999(A061579(n))+(n+1)%A006530(n+1))/A140756(n+1)`
-/

namespace A080779.P9491676747170375779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048999 (A061579 n).toNat + Int.tmod (n + 1 : ℤ) (A006530 (n + 1)) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A080779.P9491676747170375779

/-! ## A080779.P15563885850862490115

`A048999(A061579(n))%A131269(n+1)/A140756(n+1)`
-/

namespace A080779.P15563885850862490115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A048999 (A061579 n).toNat) (A131269 (n + 1)) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A080779.P15563885850862490115

/-! ## A080779.P2801386387330392197

`A335823(∑[char[∑[n]]]²-n)`
-/

namespace A080779.P2801386387330392197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335823 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A080779.P2801386387330392197

/-! ## A080779.P3854055886681247229

`A137777(n)/(2*A140756(n+1))`
-/

namespace A080779.P3854055886681247229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137777 n : ℚ) / (2 * A140756 (n + 1) : ℚ)

end

end A080779.P3854055886681247229

/-! ## A080779.P13079412202667443207

`A137524(n+1)/(A003057(n+2)*A140756(n+1))`
-/

namespace A080779.P13079412202667443207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137524 (n + 1) : ℚ) / (A003057 (n + 2) * A140756 (n + 1) : ℚ)

end

end A080779.P13079412202667443207

/-!
# A080782: a(1)=1, a(n)=a(n-1)-1 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

The programs for A080782, the canonical program `A080782.P13114139355558380856` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080782 has offset 1).

The definition of A080782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080782.P12479224883871531254

`n+(n+1)%3`
-/

namespace A080782.P12479224883871531254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (n + 1) % 3

end

end A080782.P12479224883871531254

namespace A080782

/-- `n+(n+1)%3` -/
def P12479224883871531254.Spec : Prop :=
  ∀ n, (P12479224883871531254.a n : ℤ) = A080782 (n + 1)

end A080782

/-! ## A080782.P13114139355558380856

`a(n-3)+3` with `a(0)=1, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080782

/-- `a(n-3)+3` -/
def P13114139355558380856.Spec : Prop :=
  ∀ n, (P13114139355558380856.a n : ℤ) = A080782 (n + 1)

theorem P13114139355558380856.correct : P13114139355558380856.Spec := by
  intro n
  simp only [A080782, Nat.add_sub_cancel]

end A080782

/-! ## A080782.P8181212060558391021

`ogf((1+2x-x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A080782.P8181212060558391021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, 1] [1, -1, 0, -1, 1] n

end

end A080782.P8181212060558391021

namespace A080782

/-- `ogf((1+2x-x^2+x^3)/(1-x-x^3+x^4))` -/
def P8181212060558391021.Spec : Prop :=
  ∀ n, P8181212060558391021.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P9759703332413968667

`n+1+2/sqrt(3)*sin(2*(n+3)*π/3)`
-/

namespace A080782.P9759703332413968667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) + 2 / Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 3) : ℝ) * Real.pi / 3)

end

end A080782.P9759703332413968667

namespace A080782

/-- `n+1+2/sqrt(3)*sin(2*(n+3)*π/3)` -/
def P9759703332413968667.Spec : Prop :=
  ∀ n, P9759703332413968667.a n = (A080782 (n + 1) : ℝ)

end A080782

/-! ## A080782.P12864465159907950452

`A064429(n)+1`
-/

namespace A080782.P12864465159907950452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n + 1

end

end A080782.P12864465159907950452

namespace A080782

/-- `A064429(n)+1` -/
def P12864465159907950452.Spec : Prop :=
  ∀ n, P12864465159907950452.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P14518352329975601306

`(n+1)%3+n`
-/

namespace A080782.P14518352329975601306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3 + n

end

end A080782.P14518352329975601306

namespace A080782

/-- `(n+1)%3+n` -/
def P14518352329975601306.Spec : Prop :=
  ∀ n, (P14518352329975601306.a n : ℤ) = A080782 (n + 1)

end A080782

/-! ## A080782.P3225750594381910018

`abs(xor(n, -1)%3-n)`
-/

namespace A080782.P3225750594381910018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.xor (n : ℤ) (-1)) 3 - (n : ℤ)|

end

end A080782.P3225750594381910018

namespace A080782

/-- `abs(xor(n, -1)%3-n)` -/
def P3225750594381910018.Spec : Prop :=
  ∀ n, P3225750594381910018.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P10439224590193810403

`∑[ceil(atan(Δ[n*n%3]))]`
-/

namespace A080782.P10439224590193810403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080782.P10439224590193810403

namespace A080782

/-- `∑[ceil(atan(Δ[n*n%3]))]` -/
def P10439224590193810403.Spec : Prop :=
  ∀ n, P10439224590193810403.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P16156118175609263170

`dr(n^3+2)+n-1`
-/

namespace A080782.P16156118175609263170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n ^ 3 + 2 : ℤ) : ℤ) + ((n : ℤ) - 1)

end

end A080782.P16156118175609263170

namespace A080782

/-- `dr(n^3+2)+n-1` -/
def P16156118175609263170.Spec : Prop :=
  ∀ n, P16156118175609263170.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P14459603546063843104

`∑[ogf((1+2x)/(1+x+x^2))]+n`
-/

namespace A080782.P14459603546063843104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A080782.P14459603546063843104

namespace A080782

/-- `∑[ogf((1+2x)/(1+x+x^2))]+n` -/
def P14459603546063843104.Spec : Prop :=
  ∀ n, P14459603546063843104.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P8516362140402878988

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=-1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A080782.P8516362140402878988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080782.P8516362140402878988

namespace A080782

/-- `∑[floor(a(n-3))]` -/
def P8516362140402878988.Spec : Prop :=
  ∀ n, P8516362140402878988.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P13921414615323567871

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=-1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A080782.P13921414615323567871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080782.P13921414615323567871

namespace A080782

/-- `∑[ceil(a(n-3))]` -/
def P13921414615323567871.Spec : Prop :=
  ∀ n, P13921414615323567871.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P7331058196913448544

`3-floor(-a(n-3))` with `a(0)=1, a(1)=3, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A080782.P7331058196913448544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  3 - (-a (n - 3))

end

end A080782.P7331058196913448544

namespace A080782

/-- `3-floor(-a(n-3))` -/
def P7331058196913448544.Spec : Prop :=
  ∀ n, P7331058196913448544.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P10032299505808968307

`3-ceil(-a(n-3))` with `a(0)=1, a(1)=3, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A080782.P10032299505808968307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  3 - (-a (n - 3))

end

end A080782.P10032299505808968307

namespace A080782

/-- `3-ceil(-a(n-3))` -/
def P10032299505808968307.Spec : Prop :=
  ∀ n, P10032299505808968307.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P7306630304695900296

`3-round(-a(n-3))` with `a(0)=1, a(1)=3, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A080782.P7306630304695900296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  3 - (-a (n - 3))

end

end A080782.P7306630304695900296

namespace A080782

/-- `3-round(-a(n-3))` -/
def P7306630304695900296.Spec : Prop :=
  ∀ n, P7306630304695900296.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P8991060986082702178

`dr(3*(n+2))/3+n-1`
-/

namespace A080782.P8991060986082702178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 * (n + 2) : ℤ) : ℚ) / 3 + ((n : ℤ) - 1 : ℚ)

end

end A080782.P8991060986082702178

namespace A080782

/-- `dr(3*(n+2))/3+n-1` -/
def P8991060986082702178.Spec : Prop :=
  ∀ n, P8991060986082702178.a n = (A080782 (n + 1) : ℚ)

end A080782

/-! ## A080782.P17548024870024799809

`2*n+1-3*round(n/3)`
-/

namespace A080782.P17548024870024799809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - 3 * SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A080782.P17548024870024799809

namespace A080782

/-- `2*n+1-3*round(n/3)` -/
def P17548024870024799809.Spec : Prop :=
  ∀ n, P17548024870024799809.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P17597149423164492422

`∑[a(n-3)²-2]` with `a(0)=1, a(1)=2, a(2)=-1, a(3)=2`
-/

namespace A080782.P17597149423164492422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1, 2] fun n f1 =>
  f1 (n - 3) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080782.P17597149423164492422

namespace A080782

/-- `∑[a(n-3)²-2]` -/
def P17597149423164492422.Spec : Prop :=
  ∀ n, P17597149423164492422.a n = A080782 (n + 1)

end A080782

/-! ## A080782.P5874144599516570689

`∑[2/(a(n-3)-1)]` with `a(0)=1, a(1)=2, a(2)=-1, a(3)=2`
-/

namespace A080782.P5874144599516570689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, -1, 2] fun n f1 =>
  2 / (f1 (n - 3) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080782.P5874144599516570689

namespace A080782

/-- `∑[2/(a(n-3)-1)]` -/
def P5874144599516570689.Spec : Prop :=
  ∀ n, P5874144599516570689.a n = (A080782 (n + 1) : ℚ)

end A080782

/-! ## A080782.P17998736041819291548

`floor(3*n-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A080782.P17998736041819291548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (3 * n : ℤ) - a (n - 1) - a (n - 2)

end

end A080782.P17998736041819291548

namespace A080782

/-- `floor(3*n-a(n-1)-a(n-2))` -/
def P17998736041819291548.Spec : Prop :=
  ∀ n, P17998736041819291548.a n = A080782 (n + 1)

end A080782

/-!
# A080783: a(1)=1, a(n)=a(n-1)-1 if n is already in the sequence, a(n)=a(n-1)+5 otherwise.

The programs for A080783, there is no canonical definition to state claims against.
-/

/-! ## A080783.P2636413669531120057

`(A028899(2*n)+A016777(n))%Δ[A259808(n+1)]`
-/

namespace A080783.P2636413669531120057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028899 (2 * n) + A016777 n) (f1 (n + 1) - f1 n)

end

end A080783.P2636413669531120057

/-! ## A080783.P15823464051297691595

`(A028899(2*n)+A016777(n))*A010121(A049853(n))`
-/

namespace A080783.P15823464051297691595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028899 (2 * n) + A016777 n) * A010121 (A049853 n).toNat

end

end A080783.P15823464051297691595

/-! ## A080783.P10341087759325645122

`(A081595(2*n)+A016777(n))*A028310(A151838(n))`
-/

namespace A080783.P10341087759325645122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081595 (2 * n) + A016777 n) * A028310 (A151838 n).toNat

end

end A080783.P10341087759325645122

/-! ## A080783.P10816585825045915410

`A000007(A000045(n+2))+A028899(2*n)+A016777(n)`
-/

namespace A080783.P10816585825045915410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000045 (n + 2)).toNat + (A028899 (2 * n) + A016777 n)

end

end A080783.P10816585825045915410

/-! ## A080783.P960781234814214944

`A080900(A187829(n+1))+A002266(n)`
-/

namespace A080783.P960781234814214944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (A187829 (n + 1)).toNat + A002266 n

end

end A080783.P960781234814214944

/-!
# A080786: Triangle T(n,k) = number of k-smooth numbers <= n, read by rows.

The programs for A080786, there is no canonical definition to state claims against.
-/

/-! ## A080786.P8848370740901894698

`A181948(n+2)-A010060(A181985(n+1))`
-/

namespace A080786.P8848370740901894698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181948 (n + 2) - A010060 (A181985 (n + 1)).toNat

end

end A080786.P8848370740901894698

/-! ## A080786.P4768120990907338053

`A110591(A046860(n+1)%A036565(n))`
-/

namespace A080786.P4768120990907338053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (Int.tmod (A046860 (n + 1)) (A036565 n)).toNat

end

end A080786.P4768120990907338053

/-! ## A080786.P14577817827391711703

`A001221(2*A193633(n))`
-/

namespace A080786.P14577817827391711703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A193633 n).toNat

end

end A080786.P14577817827391711703

/-! ## A080786.P13762201250506509588

`A001221(lcm(2, A193633(n)))`
-/

namespace A080786.P13762201250506509588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 2 (A193633 n))

end

end A080786.P13762201250506509588

/-! ## A080786.P17459957163236029984

`A001221(lcm(3, A157405(n)))`
-/

namespace A080786.P17459957163236029984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 3 (A157405 n))

end

end A080786.P17459957163236029984

/-!
# A080787: a(1)=a(2)=1; a(n) = a(n-1) + last decimal digit of a(n-2).

The programs for A080787, the canonical program `A080787.P941358569508073016` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080787 has offset 1).

The definition of A080787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080787.P941358569508073016

`a(n-1)+a(n-2)%10` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080787

/-- `a(n-1)+a(n-2)%10` -/
def P941358569508073016.Spec : Prop :=
  ∀ n, (P941358569508073016.a n : ℤ) = A080787 (n + 1)

theorem P941358569508073016.correct : P941358569508073016.Spec := by
  intro n
  simp only [A080787, Nat.add_sub_cancel]

end A080787

/-! ## A080787.P16682464955733010844

`a(n-1)--a(n-2)%10` with `a(0)=1, a(1)=1`
-/

namespace A080787.P16682464955733010844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - Int.tmod (-a (n - 2)) 10

end

end A080787.P16682464955733010844

namespace A080787

/-- `a(n-1)--a(n-2)%10` -/
def P16682464955733010844.Spec : Prop :=
  ∀ n, P16682464955733010844.a n = A080787 (n + 1)

end A080787

/-! ## A080787.P1464289909399550297

`∑[(a(n-1)-(char[1]-a(n-2)))%10]` with `a(0)=1, a(1)=0`
-/

namespace A080787.P1464289909399550297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Int.tmod (f1 (n - 1) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 2))) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080787.P1464289909399550297

namespace A080787

/-- `∑[(a(n-1)-(char[1]-a(n-2)))%10]` -/
def P1464289909399550297.Spec : Prop :=
  ∀ n, P1464289909399550297.a n = A080787 (n + 1)

end A080787

/-! ## A080787.P4054035942614783010

`∑[A003893(abs(1-n))]`
-/

namespace A080787.P4054035942614783010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080787.P4054035942614783010

namespace A080787

/-- `∑[A003893(abs(1-n))]` -/
def P4054035942614783010.Spec : Prop :=
  ∀ n, P4054035942614783010.a n = A080787 (n + 1)

end A080787

/-! ## A080787.P17129631612275665352

`a(n-1)+A010879(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A080787.P17129631612275665352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A010879 (a (n - 2)).toNat

end

end A080787.P17129631612275665352

namespace A080787

/-- `a(n-1)+A010879(a(n-2))` -/
def P17129631612275665352.Spec : Prop :=
  ∀ n, P17129631612275665352.a n = A080787 (n + 1)

end A080787

/-! ## A080787.P17840260170580136584

`∑[(∑[a(n-1)-(1-a(n-2))]-n)%10]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A080787.P17840260170580136584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  f2 (n - 1) - (1 - f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080787.P17840260170580136584

namespace A080787

/-- `∑[(∑[a(n-1)-(1-a(n-2))]-n)%10]` -/
def P17840260170580136584.Spec : Prop :=
  ∀ n, P17840260170580136584.a n = A080787 (n + 1)

end A080787

/-! ## A080787.P6450854412890524847

`∑[A212804(n)%10]`
-/

namespace A080787.P6450854412890524847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080787.P6450854412890524847

namespace A080787

/-- `∑[A212804(n)%10]` -/
def P6450854412890524847.Spec : Prop :=
  ∀ n, P6450854412890524847.a n = A080787 (n + 1)

end A080787

/-! ## A080787.P14069689940365774044

`∑[A000045(abs(1-n))%10]`
-/

namespace A080787.P14069689940365774044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 |1 - (n : ℤ)|.toNat) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080787.P14069689940365774044

namespace A080787

/-- `∑[A000045(abs(1-n))%10]` -/
def P14069689940365774044.Spec : Prop :=
  ∀ n, P14069689940365774044.a n = A080787 (n + 1)

end A080787

/-! ## A080787.P14100208768157361009

`a(n-1)+A000045(n-1)%10` with `a(0)=1`
-/

namespace A080787.P14100208768157361009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A000045 (n - 1)) 10

end

end A080787.P14100208768157361009

namespace A080787

/-- `a(n-1)+A000045(n-1)%10` -/
def P14100208768157361009.Spec : Prop :=
  ∀ n, P14100208768157361009.a n = A080787 (n + 1)

end A080787

/-! ## A080787.P1618625907078200643

`∑[Δ[A000045(n)]%10]`
-/

namespace A080787.P1618625907078200643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080787.P1618625907078200643

namespace A080787

/-- `∑[Δ[A000045(n)]%10]` -/
def P1618625907078200643.Spec : Prop :=
  ∀ n, P1618625907078200643.a n = A080787 (n + 1)

end A080787

/-! ## A080787.P2934964898222493580

`∑[A022100(n)%10]`
-/

namespace A080787.P2934964898222493580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022100 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080787.P2934964898222493580

namespace A080787

/-- `∑[A022100(n)%10]` -/
def P2934964898222493580.Spec : Prop :=
  ∀ n, P2934964898222493580.a n = A080787 (n + 1)

end A080787

/-!
# A080788: Primes that are still primes when turned upside down.

The programs for A080788, there is no canonical definition to state claims against.
-/

/-! ## A080788.P3794999552120428411

`∩[A057770(n+1), A178316(n+1)]`
-/

namespace A080788.P3794999552120428411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P3794999552120428411

/-! ## A080788.P17028486651434714238

`∩[A057770(n+1), A080789(n+1)]`
-/

namespace A080788.P17028486651434714238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P17028486651434714238

/-! ## A080788.P16748857113184582423

`∩[A080789(n+1), A178316(n+1)]`
-/

namespace A080788.P16748857113184582423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P16748857113184582423

/-! ## A080788.P8890391265747638500

`∪[A007597(n+1), A048890(n+1)]`
-/

namespace A080788.P8890391265747638500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P8890391265747638500

/-! ## A080788.P14669266108704543415

`∩[A034844(n+1), A080789(n+1)]`
-/

namespace A080788.P14669266108704543415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P14669266108704543415

/-! ## A080788.P17174571450840223679

`∩[A034844(n+1), A178316(n+1)]`
-/

namespace A080788.P17174571450840223679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P17174571450840223679

/-! ## A080788.P5346669158029593293

`∩[A038611(n+1), A080789(n+1)]`
-/

namespace A080788.P5346669158029593293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P5346669158029593293

/-! ## A080788.P13467018105448096213

`∩[A080789(n+1), A152312(n+1)]`
-/

namespace A080788.P13467018105448096213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P13467018105448096213

/-! ## A080788.P16895530524545131177

`∩[A080789(n+1), A342961(n+1)]`
-/

namespace A080788.P16895530524545131177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P16895530524545131177

/-! ## A080788.P64072217347757340

`∩[A038604(n+1), A080789(n+1)]`
-/

namespace A080788.P64072217347757340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P64072217347757340

/-! ## A080788.P11865690153647483403

`p?[A080789(n+1)]`
-/

namespace A080788.P11865690153647483403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080788.P11865690153647483403

/-! ## A080788.P1099531994112776463

`∩[A178316(n+1), A054047(n)]`
-/

namespace A080788.P1099531994112776463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P1099531994112776463

/-! ## A080788.P10810697621295385070

`p?[n%2*A080789(A008619(n))]`
-/

namespace A080788.P10810697621295385070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A080789 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080788.P10810697621295385070

/-! ## A080788.P6707071364121857625

`∩[A045574(n+1), A178316(n+1)]`
-/

namespace A080788.P6707071364121857625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P6707071364121857625

/-! ## A080788.P8057522871534340860

`∩[A080789(n+1), A386342(n+1)]`
-/

namespace A080788.P8057522871534340860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P8057522871534340860

/-! ## A080788.P11448574657348929933

`p?[A000035(n)*A080789(A008619(n))]`
-/

namespace A080788.P11448574657348929933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A080789 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080788.P11448574657348929933

/-! ## A080788.P9633502794262366438

`p?[A033999(n)*A080789(A008619(n))]`
-/

namespace A080788.P9633502794262366438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A080789 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080788.P9633502794262366438

/-! ## A080788.P12747707145704567976

`p?[A080789(A008619(n))*A254651(2*n)]`
-/

namespace A080788.P12747707145704567976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (A008619 n).toNat * A254651 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080788.P12747707145704567976

/-! ## A080788.P13537880193612936753

`p?[(A004442(n)-n)*A080789(A008619(n))]`
-/

namespace A080788.P13537880193612936753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A080789 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080788.P13537880193612936753

/-! ## A080788.P3539661561802033898

`∩[A038615(n+1), A080789(n+1)]`
-/

namespace A080788.P3539661561802033898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080788.P3539661561802033898

/-!
# A080789: Numbers that are primes when turned upside down.

The programs for A080789, there is no canonical definition to state claims against.
-/

/-! ## A080789.P4678231435923083508

`A249370(A249344(2*(n+2))+A160124(2*(n+2)))`
-/

namespace A080789.P4678231435923083508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249370 (A249344 (2 * (n + 2)) + A160124 (2 * (n + 2))).toNat

end

end A080789.P4678231435923083508

/-!
# A080790: Binary emirps, primes whose binary reversal is a different prime.

The programs for A080790, the canonical program `A080790.P12928423801354137828` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080790 has offset 1).

The definition of A080790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080790.P6295281390544005570

`∩[A074832(n+1), A207039(n+1)]`
-/

namespace A080790.P6295281390544005570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P6295281390544005570

namespace A080790

/-- `∩[A074832(n+1), A207039(n+1)]` -/
def P6295281390544005570.Spec : Prop :=
  ∀ n, (P6295281390544005570.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P6883891800228846570

`filter[A074832(n+1), A178226(#)]`
-/

namespace A080790.P6883891800228846570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A080790.P6883891800228846570

namespace A080790

/-- `filter[A074832(n+1), A178226(#)]` -/
def P6883891800228846570.Spec : Prop :=
  ∀ n, P6883891800228846570.a n = A080790 (n + 1)

end A080790

/-! ## A080790.P12928423801354137828

`p?[A377421(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A080790

/-- `p?[A377421(n+1)]` -/
def P12928423801354137828.Spec : Prop :=
  ∀ n, P12928423801354137828.a n = A080790 (n + 1)

theorem P12928423801354137828.correct : P12928423801354137828.Spec := by
  intro n
  simp only [A080790, Nat.add_sub_cancel]

end A080790

/-! ## A080790.P13583418252501837078

`filter[A377421(n+1), A010051(#)]`
-/

namespace A080790.P13583418252501837078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A080790.P13583418252501837078

namespace A080790

/-- `filter[A377421(n+1), A010051(#)]` -/
def P13583418252501837078.Spec : Prop :=
  ∀ n, P13583418252501837078.a n = A080790 (n + 1)

end A080790

/-! ## A080790.P18381645434021648750

`∩[A000040(n+1), A377421(n+1)]`
-/

namespace A080790.P18381645434021648750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P18381645434021648750

namespace A080790

/-- `∩[A000040(n+1), A377421(n+1)]` -/
def P18381645434021648750.Spec : Prop :=
  ∀ n, (P18381645434021648750.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P12448763835205067850

`∩[A004139(n+1), A377421(n+1)]`
-/

namespace A080790.P12448763835205067850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P12448763835205067850

namespace A080790

/-- `∩[A004139(n+1), A377421(n+1)]` -/
def P12448763835205067850.Spec : Prop :=
  ∀ n, (P12448763835205067850.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P8333638124029188309

`∩[A006005(n+1), A377421(n+1)]`
-/

namespace A080790.P8333638124029188309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P8333638124029188309

namespace A080790

/-- `∩[A006005(n+1), A377421(n+1)]` -/
def P8333638124029188309.Spec : Prop :=
  ∀ n, (P8333638124029188309.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P6381766417286177613

`∩[A008578(n+1), A377421(n+1)]`
-/

namespace A080790.P6381766417286177613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P6381766417286177613

namespace A080790

/-- `∩[A008578(n+1), A377421(n+1)]` -/
def P6381766417286177613.Spec : Prop :=
  ∀ n, (P6381766417286177613.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P11305429968791108897

`∩[A045319(n+1), A377421(n+1)]`
-/

namespace A080790.P11305429968791108897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P11305429968791108897

namespace A080790

/-- `∩[A045319(n+1), A377421(n+1)]` -/
def P11305429968791108897.Spec : Prop :=
  ∀ n, (P11305429968791108897.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P12791001296350365113

`∩[A045344(n+1), A377421(n+1)]`
-/

namespace A080790.P12791001296350365113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P12791001296350365113

namespace A080790

/-- `∩[A045344(n+1), A377421(n+1)]` -/
def P12791001296350365113.Spec : Prop :=
  ∀ n, (P12791001296350365113.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P2950113690597454296

`∩[A046022(n+1), A377421(n+1)]`
-/

namespace A080790.P2950113690597454296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P2950113690597454296

namespace A080790

/-- `∩[A046022(n+1), A377421(n+1)]` -/
def P2950113690597454296.Spec : Prop :=
  ∀ n, (P2950113690597454296.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P11849709350865479510

`∩[A062972(n+1), A377421(n+1)]`
-/

namespace A080790.P11849709350865479510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P11849709350865479510

namespace A080790

/-- `∩[A062972(n+1), A377421(n+1)]` -/
def P11849709350865479510.Spec : Prop :=
  ∀ n, (P11849709350865479510.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P11021225024114088723

`∩[A065091(n+1), A377421(n+1)]`
-/

namespace A080790.P11021225024114088723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P11021225024114088723

namespace A080790

/-- `∩[A065091(n+1), A377421(n+1)]` -/
def P11021225024114088723.Spec : Prop :=
  ∀ n, (P11021225024114088723.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P3271608308134408381

`∩[A066542(n+1), A377421(n+1)]`
-/

namespace A080790.P3271608308134408381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P3271608308134408381

namespace A080790

/-- `∩[A066542(n+1), A377421(n+1)]` -/
def P3271608308134408381.Spec : Prop :=
  ∀ n, (P3271608308134408381.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P2574497752401279933

`∩[A067126(n+1), A377421(n+1)]`
-/

namespace A080790.P2574497752401279933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P2574497752401279933

namespace A080790

/-- `∩[A067126(n+1), A377421(n+1)]` -/
def P2574497752401279933.Spec : Prop :=
  ∀ n, (P2574497752401279933.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P3585525562327952363

`∩[A174090(n+1), A377421(n+1)]`
-/

namespace A080790.P3585525562327952363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P3585525562327952363

namespace A080790

/-- `∩[A174090(n+1), A377421(n+1)]` -/
def P3585525562327952363.Spec : Prop :=
  ∀ n, (P3585525562327952363.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P5940589960447985658

`∩[A335402(n+1), A377421(n+1)]`
-/

namespace A080790.P5940589960447985658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P5940589960447985658

namespace A080790

/-- `∩[A335402(n+1), A377421(n+1)]` -/
def P5940589960447985658.Spec : Prop :=
  ∀ n, (P5940589960447985658.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P270269616886827692

`∩[A074832(n+1), A318206(n+1)]`
-/

namespace A080790.P270269616886827692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P270269616886827692

namespace A080790

/-- `∩[A074832(n+1), A318206(n+1)]` -/
def P270269616886827692.Spec : Prop :=
  ∀ n, (P270269616886827692.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P8303478404913194763

`∩[A074832(n+1), A164861(n+1)]`
-/

namespace A080790.P8303478404913194763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P8303478404913194763

namespace A080790

/-- `∩[A074832(n+1), A164861(n+1)]` -/
def P8303478404913194763.Spec : Prop :=
  ∀ n, (P8303478404913194763.a n : ℤ) = A080790 (n + 1)

end A080790

/-! ## A080790.P9755164372499305000

`∩[A074832(n+1), A161607(n+1)]`
-/

namespace A080790.P9755164372499305000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080790.P9755164372499305000

namespace A080790

/-- `∩[A074832(n+1), A161607(n+1)]` -/
def P9755164372499305000.Spec : Prop :=
  ∀ n, (P9755164372499305000.a n : ℤ) = A080790 (n + 1)

end A080790

/-!
# A080791: Number of nonleading 0's in binary expansion of n.

The programs for A080791, the canonical program `A080791.P6131873509789506769` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080791 has offset 0).

The definition of A080791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080791.P3760684703877613039

`A029837(n+1)-A000120(n)`
-/

namespace A080791.P3760684703877613039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A000120 n

end

end A080791.P3760684703877613039

namespace A080791

/-- `A029837(n+1)-A000120(n)` -/
def P3760684703877613039.Spec : Prop :=
  ∀ n, P3760684703877613039.a n = A080791 n

end A080791

/-! ## A080791.P6131873509789506769

`a(n-1)+A007814(n)+A036987(n-1)-1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080791

/-- `a(n-1)+A007814(n)+A036987(n-1)-1` -/
def P6131873509789506769.Spec : Prop :=
  ∀ n, P6131873509789506769.a n = A080791 n

theorem P6131873509789506769.correct : P6131873509789506769.Spec := by
  intro n
  simp only [A080791]

end A080791

/-! ## A080791.P14270987492189828354

`a(floor(n/2))+log2(gcd(2, n))` with `a(0)=0`
-/

namespace A080791.P14270987492189828354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A080791.P14270987492189828354

namespace A080791

/-- `a(floor(n/2))+log2(gcd(2, n))` -/
def P14270987492189828354.Spec : Prop :=
  ∀ n, P14270987492189828354.a n = (A080791 n : ℝ)

end A080791

/-! ## A080791.P4817206366114957686

`a(floor(n/2))+(n+1)%2` with `a(0)=0`
-/

namespace A080791.P4817206366114957686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n + 1) % 2

end

end A080791.P4817206366114957686

namespace A080791

/-- `a(floor(n/2))+(n+1)%2` -/
def P4817206366114957686.Spec : Prop :=
  ∀ n, (P4817206366114957686.a n : ℤ) = A080791 n

end A080791

/-! ## A080791.P16828825043327425744

`1-(n%2-a(floor(n/2)))` with `a(0)=0`
-/

namespace A080791.P16828825043327425744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A080791.P16828825043327425744

namespace A080791

/-- `1-(n%2-a(floor(n/2)))` -/
def P16828825043327425744.Spec : Prop :=
  ∀ n, P16828825043327425744.a n = A080791 n

end A080791

/-! ## A080791.P7339422696259238795

`a(floor(n/2))+and(1, n+1)` with `a(0)=0`
-/

namespace A080791.P7339422696259238795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 (n + 1)

end

end A080791.P7339422696259238795

namespace A080791

/-- `a(floor(n/2))+and(1, n+1)` -/
def P7339422696259238795.Spec : Prop :=
  ∀ n, (P7339422696259238795.a n : ℤ) = A080791 n

end A080791

/-! ## A080791.P511746931614835962

`a(floor(n/2))+val(n²+2, 2)` with `a(0)=0`
-/

namespace A080791.P511746931614835962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + SequenceMachineLib.valuation (n ^ 2 + 2) 2

end

end A080791.P511746931614835962

namespace A080791

/-- `a(floor(n/2))+val(n²+2, 2)` -/
def P511746931614835962.Spec : Prop :=
  ∀ n, (P511746931614835962.a n : ℤ) = A080791 n

end A080791

/-! ## A080791.P15164051131532054346

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A080791.P15164051131532054346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080791.P15164051131532054346

namespace A080791

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P15164051131532054346.Spec : Prop :=
  ∀ n, P15164051131532054346.a n = A080791 n

end A080791

/-! ## A080791.P10980059610723517321

`log2(A080100(n))`
-/

namespace A080791.P10980059610723517321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A080100 n : ℝ)

end

end A080791.P10980059610723517321

namespace A080791

/-- `log2(A080100(n))` -/
def P10980059610723517321.Spec : Prop :=
  ∀ n, P10980059610723517321.a n = (A080791 n : ℝ)

end A080791

/-! ## A080791.P15164850723710156592

`∑[A089263(n)]`
-/

namespace A080791.P15164850723710156592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080791.P15164850723710156592

namespace A080791

/-- `∑[A089263(n)]` -/
def P15164850723710156592.Spec : Prop :=
  ∀ n, P15164850723710156592.a n = A080791 n

end A080791

/-! ## A080791.P4732992743985572238

`val(A309057(n), 3)`
-/

namespace A080791.P4732992743985572238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A309057 n).toNat 3

end

end A080791.P4732992743985572238

namespace A080791

/-- `val(A309057(n), 3)` -/
def P4732992743985572238.Spec : Prop :=
  ∀ n, (P4732992743985572238.a n : ℤ) = A080791 n

end A080791

/-! ## A080791.P922945412463961458

`val(A309074(n), 4)`
-/

namespace A080791.P922945412463961458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A309074 n).toNat 4

end

end A080791.P922945412463961458

namespace A080791

/-- `val(A309074(n), 4)` -/
def P922945412463961458.Spec : Prop :=
  ∀ n, (P922945412463961458.a n : ℤ) = A080791 n

end A080791

/-! ## A080791.P3159900731347358227

`A008687(n+1)-1`
-/

namespace A080791.P3159900731347358227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1) - 1

end

end A080791.P3159900731347358227

namespace A080791

/-- `A008687(n+1)-1` -/
def P3159900731347358227.Spec : Prop :=
  ∀ n, P3159900731347358227.a n = A080791 n

end A080791

/-! ## A080791.P12851076737634470827

`A233272(n)-(n+1)`
-/

namespace A080791.P12851076737634470827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n - (n + 1 : ℤ)

end

end A080791.P12851076737634470827

namespace A080791

/-- `A233272(n)-(n+1)` -/
def P12851076737634470827.Spec : Prop :=
  ∀ n, P12851076737634470827.a n = A080791 n

end A080791

/-! ## A080791.P17577594475333088128

`A023416(n)%(n+1)`
-/

namespace A080791.P17577594475333088128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 n) (n + 1 : ℤ)

end

end A080791.P17577594475333088128

namespace A080791

/-- `A023416(n)%(n+1)` -/
def P17577594475333088128.Spec : Prop :=
  ∀ n, P17577594475333088128.a n = A080791 n

end A080791

/-! ## A080791.P6355663860277612326

`A233273(n)%(n+1)`
-/

namespace A080791.P6355663860277612326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233273 n) (n + 1 : ℤ)

end

end A080791.P6355663860277612326

namespace A080791

/-- `A233273(n)%(n+1)` -/
def P6355663860277612326.Spec : Prop :=
  ∀ n, P6355663860277612326.a n = A080791 n

end A080791

/-! ## A080791.P5056139783518637657

`Δ[A059015(abs(1-n))]`
-/

namespace A080791.P5056139783518637657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080791.P5056139783518637657

namespace A080791

/-- `Δ[A059015(abs(1-n))]` -/
def P5056139783518637657.Spec : Prop :=
  ∀ n, P5056139783518637657.a n = A080791 n

end A080791

/-! ## A080791.P9865792572444426298

`Δ[A181132(abs(1-n))]`
-/

namespace A080791.P9865792572444426298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181132 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080791.P9865792572444426298

namespace A080791

/-- `Δ[A181132(abs(1-n))]` -/
def P9865792572444426298.Spec : Prop :=
  ∀ n, P9865792572444426298.a n = A080791 n

end A080791

/-! ## A080791.P2634153509271559080

`A290251(Δ[n²])-1`
-/

namespace A080791.P2634153509271559080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A080791.P2634153509271559080

namespace A080791

/-- `A290251(Δ[n²])-1` -/
def P2634153509271559080.Spec : Prop :=
  ∀ n, P2634153509271559080.a n = A080791 n

end A080791

/-! ## A080791.P7190542570862759771

`∑{e}[A365425(n+1), #]`
-/

namespace A080791.P7190542570862759771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A080791.P7190542570862759771

namespace A080791

/-- `∑{e}[A365425(n+1), #]` -/
def P7190542570862759771.Spec : Prop :=
  ∀ n, (P7190542570862759771.a n : ℤ) = A080791 n

end A080791

/-!
# A080793: Starting with a(0) = 1, smallest number k > a(n-1) such that, for all a(m) with m < n, k + a(m) is not squarefree.

The programs for A080793, there is no canonical definition to state claims against.
-/

/-! ## A080793.P3623378823700560552

`record[xor(5, A344516(n+2))]`
-/

namespace A080793.P3623378823700560552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A344516 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080793.P3623378823700560552

/-!
# A080794: Numbers k whose digits are all contained, in any order, within the digits of prime(k).

The programs for A080794, there is no canonical definition to state claims against.
-/

/-! ## A080794.P12535479808353168047

`A000720(A365678(n+1))`
-/

namespace A080794.P12535479808353168047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A365678 (n + 1)).toNat

end

end A080794.P12535479808353168047

/-! ## A080794.P11607673831061394018

`A055396(A365678(n+1))%A186482(n+1)`
-/

namespace A080794.P11607673831061394018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A365678 (n + 1)).toNat) (A186482 (n + 1))

end

end A080794.P11607673831061394018

/-! ## A080794.P11280149684405014896

`A055396(A365678(n+1)%A234497(n+1))`
-/

namespace A080794.P11280149684405014896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A365678 (n + 1)) (A234497 (n + 1))).toNat

end

end A080794.P11280149684405014896

/-! ## A080794.P4538207297997812956

`A055396(A365678(n+1)*A365685(n+1))`
-/

namespace A080794.P4538207297997812956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A365678 (n + 1) * A365685 (n + 1)).toNat

end

end A080794.P4538207297997812956

/-! ## A080794.P4099153013319636604

`A055396(C(A365678(n+1), A365685(n+1)))`
-/

namespace A080794.P4099153013319636604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Nat.choose (A365678 (n + 1)).toNat (A365685 (n + 1)).toNat)

end

end A080794.P4099153013319636604

/-!
# A080795: Number of minimax trees on n nodes.

The programs for A080795, there is no canonical definition to state claims against.
-/

/-! ## A080795.P15872578279581163318

`ceil(2^(n-1))*A131178(round(sqrt(n²+1)))`
-/

namespace A080795.P15872578279581163318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A131178 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A080795.P15872578279581163318

/-! ## A080795.P17438599831915634681

`A185420(C(n, 2)+1)`
-/

namespace A080795.P17438599831915634681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185420 (Nat.choose n 2 + 1)

end

end A080795.P17438599831915634681

/-! ## A080795.P12633758723409648358

`A185420(∑[abs(1-n)])`
-/

namespace A080795.P12633758723409648358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185420 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080795.P12633758723409648358

/-!
# A080798: Largest prime factor of 3^n-2.

The programs for A080798, the canonical program `A080798.P8062325364738387648` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080798 has offset 2).

The definition of A080798 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080798.P8062325364738387648

`A006530(A058481(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A080798

/-- `A006530(A058481(n+2))` -/
def P8062325364738387648.Spec : Prop :=
  ∀ n, P8062325364738387648.a n = A080798 (n + 2)

theorem P8062325364738387648.correct : P8062325364738387648.Spec := by
  intro n
  simp only [A080798, Nat.add_sub_cancel]

end A080798

/-! ## A080798.P218308671265017947

`A392240(∑[3^n])`
-/

namespace A080798.P218308671265017947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392240 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080798.P218308671265017947

namespace A080798

/-- `A392240(∑[3^n])` -/
def P218308671265017947.Spec : Prop :=
  ∀ n, P218308671265017947.a n = A080798 (n + 2)

end A080798

/-! ## A080798.P11722516436986091774

`A006530(3^(n+2)-2)`
-/

namespace A080798.P11722516436986091774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 ^ (n + 2) - 2)

end

end A080798.P11722516436986091774

namespace A080798

/-- `A006530(3^(n+2)-2)` -/
def P11722516436986091774.Spec : Prop :=
  ∀ n, P11722516436986091774.a n = A080798 (n + 2)

end A080798

/-! ## A080798.P1008506413904726308

`A088387(A000244(n+2)-2)`
-/

namespace A080798.P1008506413904726308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A000244 (n + 2) - 2).toNat

end

end A080798.P1008506413904726308

namespace A080798

/-- `A088387(A000244(n+2)-2)` -/
def P1008506413904726308.Spec : Prop :=
  ∀ n, P1008506413904726308.a n = A080798 (n + 2)

end A080798

/-!
# A080799: Number of divide by 2 and add 1 operations required to reach ...,7,8,4,2,1 when started at n.

The programs for A080799, the canonical program `A080799.P10496779856946822596` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080799 has offset 1).

The definition of A080799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080799.P10496779856946822596

`A023416(n+2)+floor(log2(n+2))+4`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080799

/-- `A023416(n+2)+floor(log2(n+2))+4` -/
def P10496779856946822596.Spec : Prop :=
  ∀ n, P10496779856946822596.a n = A080799 (n + 1)

theorem P10496779856946822596.correct : P10496779856946822596.Spec := by
  intro n
  simp only [A080799, Nat.add_sub_cancel]

end A080799

/-! ## A080799.P8651944002541566511

`a(floor(n/2)-1)+gcd(2, n)` with `a(0)=6, a(1)=5`
-/

namespace A080799.P8651944002541566511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 5] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 1).toNat + Nat.gcd 2 n

end

end A080799.P8651944002541566511

namespace A080799

/-- `a(floor(n/2)-1)+gcd(2, n)` -/
def P8651944002541566511.Spec : Prop :=
  ∀ n, (P8651944002541566511.a n : ℤ) = A080799 (n + 1)

end A080799

/-! ## A080799.P14707889761338509461

`A080801(n+1)+A080800(n+1)`
-/

namespace A080799.P14707889761338509461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080801 (n + 1) + A080800 (n + 1)

end

end A080799.P14707889761338509461

namespace A080799

/-- `A080801(n+1)+A080800(n+1)` -/
def P14707889761338509461.Spec : Prop :=
  ∀ n, P14707889761338509461.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P9992051253425606079

`A290251(n+2)+A080800(n+1)`
-/

namespace A080799.P9992051253425606079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (n + 2) + A080800 (n + 1)

end

end A080799.P9992051253425606079

namespace A080799

/-- `A290251(n+2)+A080800(n+1)` -/
def P9992051253425606079.Spec : Prop :=
  ∀ n, P9992051253425606079.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P17204716576619896169

`A119477(n+3)+2`
-/

namespace A080799.P17204716576619896169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 3) + 2

end

end A080799.P17204716576619896169

namespace A080799

/-- `A119477(n+3)+2` -/
def P17204716576619896169.Spec : Prop :=
  ∀ n, P17204716576619896169.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P17955368229106061760

`A061313(n+3)+3`
-/

namespace A080799.P17955368229106061760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (n + 3) + 3

end

end A080799.P17955368229106061760

namespace A080799

/-- `A061313(n+3)+3` -/
def P17955368229106061760.Spec : Prop :=
  ∀ n, P17955368229106061760.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P9569480793520280942

`A119477(A020735(n+1))`
-/

namespace A080799.P9569480793520280942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (A020735 (n + 1)).toNat

end

end A080799.P9569480793520280942

namespace A080799

/-- `A119477(A020735(n+1))` -/
def P9569480793520280942.Spec : Prop :=
  ∀ n, P9569480793520280942.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P5681252395610122070

`A119477(A062545(n+1))`
-/

namespace A080799.P5681252395610122070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (A062545 (n + 1)).toNat

end

end A080799.P5681252395610122070

namespace A080799

/-- `A119477(A062545(n+1))` -/
def P5681252395610122070.Spec : Prop :=
  ∀ n, P5681252395610122070.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P18147107236987912770

`A119477(A144396(n+2))`
-/

namespace A080799.P18147107236987912770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (A144396 (n + 2)).toNat

end

end A080799.P18147107236987912770

namespace A080799

/-- `A119477(A144396(n+2))` -/
def P18147107236987912770.Spec : Prop :=
  ∀ n, P18147107236987912770.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P13041866805611816063

`A061313(Δ[A139576(n)])`
-/

namespace A080799.P13041866805611816063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (f1 (n + 1) - f1 n).toNat

end

end A080799.P13041866805611816063

namespace A080799

/-- `A061313(Δ[A139576(n)])` -/
def P13041866805611816063.Spec : Prop :=
  ∀ n, P13041866805611816063.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P5453507578904054607

`A061313(Δ[A161532(n)])`
-/

namespace A080799.P5453507578904054607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (f1 (n + 1) - f1 n).toNat

end

end A080799.P5453507578904054607

namespace A080799

/-- `A061313(Δ[A161532(n)])` -/
def P5453507578904054607.Spec : Prop :=
  ∀ n, P5453507578904054607.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P6143946819005459491

`A061313(Δ[A268581(n)])`
-/

namespace A080799.P6143946819005459491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (f1 (n + 1) - f1 n).toNat

end

end A080799.P6143946819005459491

namespace A080799

/-- `A061313(Δ[A268581(n)])` -/
def P6143946819005459491.Spec : Prop :=
  ∀ n, P6143946819005459491.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P14604409611758434857

`A061313(A073760(n+2))`
-/

namespace A080799.P14604409611758434857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (A073760 (n + 2)).toNat

end

end A080799.P14604409611758434857

namespace A080799

/-- `A061313(A073760(n+2))` -/
def P14604409611758434857.Spec : Prop :=
  ∀ n, P14604409611758434857.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P4714257324454425321

`A119477(A192544(n+2))`
-/

namespace A080799.P4714257324454425321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (A192544 (n + 2)).toNat

end

end A080799.P4714257324454425321

namespace A080799

/-- `A119477(A192544(n+2))` -/
def P4714257324454425321.Spec : Prop :=
  ∀ n, P4714257324454425321.a n = A080799 (n + 1)

end A080799

/-! ## A080799.P17951238593176408429

`A061313(A022803(n+1))`
-/

namespace A080799.P17951238593176408429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (A022803 (n + 1)).toNat

end

end A080799.P17951238593176408429

namespace A080799

/-- `A061313(A022803(n+1))` -/
def P17951238593176408429.Spec : Prop :=
  ∀ n, P17951238593176408429.a n = A080799 (n + 1)

end A080799

