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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A055400: Cube excess: difference between n and largest cube <= n.

The programs for A055400, the canonical program `A055400.P15767128832904926749` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055400 has offset 0).

The definition of A055400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055400.P15767128832904926749

`n-floor(n^(1/3))^3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055400

/-- `n-floor(n^(1/3))^3` -/
def P15767128832904926749.Spec : Prop :=
  ∀ n, P15767128832904926749.a n = A055400 n

theorem P15767128832904926749.correct : P15767128832904926749.Spec := by
  intro n
  simp only [A055400]

end A055400

/-! ## A055400.P2698977749378432611

`abs(A048762(n)-n)`
-/

namespace A055400.P2698977749378432611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048762 n - (n : ℤ)|

end

end A055400.P2698977749378432611

namespace A055400

/-- `abs(A048762(n)-n)` -/
def P2698977749378432611.Spec : Prop :=
  ∀ n, P2698977749378432611.a n = A055400 n

end A055400

/-! ## A055400.P10011683348310625430

`abs(n-A000578(A048766(n)))`
-/

namespace A055400.P10011683348310625430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A000578 (A048766 n).toNat|

end

end A055400.P10011683348310625430

namespace A055400

/-- `abs(n-A000578(A048766(n)))` -/
def P10011683348310625430.Spec : Prop :=
  ∀ n, P10011683348310625430.a n = A055400 n

end A055400

/-! ## A055400.P11107097190000599282

`A000578(A064524(n))%A028310(n)`
-/

namespace A055400.P11107097190000599282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A064524 n).toNat) (A028310 n)

end

end A055400.P11107097190000599282

namespace A055400

/-- `A000578(A064524(n))%A028310(n)` -/
def P11107097190000599282.Spec : Prop :=
  ∀ n, P11107097190000599282.a n = A055400 n

end A055400

/-! ## A055400.P1947553742992189463

`abs(n-A048760(A048766(n)²)*A048766(n))`
-/

namespace A055400.P1947553742992189463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A048760 (A048766 n ^ 2).toNat * A048766 n|

end

end A055400.P1947553742992189463

namespace A055400

/-- `abs(n-A048760(A048766(n)²)*A048766(n))` -/
def P1947553742992189463.Spec : Prop :=
  ∀ n, P1947553742992189463.a n = A055400 n

end A055400

/-!
# A055401: Number of positive cubes needed to sum to n using the greedy algorithm.

The programs for A055401, the canonical program `A055401.P8525785156040280502` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055401 has offset 0).

The definition of A055401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055401.P5049227974194131033

`1+a(n-floor(n^(1/3))^3)` with `a(0)=0`
-/

namespace A055401.P5049227974194131033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3).toNat

end

end A055401.P5049227974194131033

namespace A055401

/-- `1+a(n-floor(n^(1/3))^3)` -/
def P5049227974194131033.Spec : Prop :=
  ∀ n, (P5049227974194131033.a n : ℤ) = A055401 n

theorem P5049227974194131033.correct : P5049227974194131033.Spec := by
  intro n
  simp only [A055401, Nat.add_sub_cancel, A055401.P5049227974194131033.a, A055401.P8525785156040280502.a, A055400, A055400.P15767128832904926749.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055401

/-! ## A055401.P8525785156040280502

`a(A055400(n))+1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055401

/-- `a(A055400(n))+1` -/
def P8525785156040280502.Spec : Prop :=
  ∀ n, (P8525785156040280502.a n : ℤ) = A055401 n

theorem P8525785156040280502.correct : P8525785156040280502.Spec := by
  intro n
  simp only [A055401]

end A055401

/-! ## A055401.P15474797508656240134

`a(n-A048762(n))+1` with `a(0)=0`
-/

namespace A055401.P15474797508656240134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A048762 n).toNat + 1

end

end A055401.P15474797508656240134

namespace A055401

/-- `a(n-A048762(n))+1` -/
def P15474797508656240134.Spec : Prop :=
  ∀ n, (P15474797508656240134.a n : ℤ) = A055401 n

theorem P15474797508656240134.correct : P15474797508656240134.Spec := by
  intro n
  simp only [A055401, Nat.add_sub_cancel, A055401.P15474797508656240134.a, A055401.P8525785156040280502.a, A048762, A048762.P2021550469671049707.a, A055400, A055400.P15767128832904926749.a, A048766, A048766.P11393263195670548898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055401

/-! ## A055401.P13215711162509253439

`n-A261225(n)`
-/

namespace A055401.P13215711162509253439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261225 n

end

end A055401.P13215711162509253439

namespace A055401

/-- `n-A261225(n)` -/
def P13215711162509253439.Spec : Prop :=
  ∀ n, P13215711162509253439.a n = A055401 n

theorem P13215711162509253439.correct : P13215711162509253439.Spec := by
  intro n
  simp only [A055401, Nat.add_sub_cancel, A055401.P13215711162509253439.a, A055401.P8525785156040280502.a, A055400, A055400.P15767128832904926749.a, A261225, A261225.P9013570553216359185.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055401

/-! ## A055401.P10316945601716387081

`∑{digits}[A000433(n), #]`
-/

namespace A055401.P10316945601716387081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A055401.P10316945601716387081

namespace A055401

/-- `∑{digits}[A000433(n), #]` -/
def P10316945601716387081.Spec : Prop :=
  ∀ n, (P10316945601716387081.a n : ℤ) = A055401 n

end A055401

/-! ## A055401.P7128758416403374035

`A348553(a(A055400(n)))` with `a(0)=0`
-/

namespace A055401.P7128758416403374035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A348553 (a (A055400 n).toNat).toNat

end

end A055401.P7128758416403374035

namespace A055401

/-- `A348553(a(A055400(n)))` -/
def P7128758416403374035.Spec : Prop :=
  ∀ n, P7128758416403374035.a n = A055401 n

end A055401

/-! ## A055401.P4775951361535214253

`A055999(n)%(A261225(n)+A027379(n))`
-/

namespace A055401.P4775951361535214253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055999 n) (A261225 n + A027379 n)

end

end A055401.P4775951361535214253

namespace A055401

/-- `A055999(n)%(A261225(n)+A027379(n))` -/
def P4775951361535214253.Spec : Prop :=
  ∀ n, P4775951361535214253.a n = A055401 n

end A055401

/-! ## A055401.P5405223669865653383

`(A261229(n+1)+n)%(A261229(n+1)+A261225(n))`
-/

namespace A055401.P5405223669865653383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261229 (n + 1) + (n : ℤ)) (A261229 (n + 1) + A261225 n)

end

end A055401.P5405223669865653383

namespace A055401

/-- `(A261229(n+1)+n)%(A261229(n+1)+A261225(n))` -/
def P5405223669865653383.Spec : Prop :=
  ∀ n, P5405223669865653383.a n = A055401 n

end A055401

/-! ## A055401.P11451499240083870274

`A007953(A000433(n))`
-/

namespace A055401.P11451499240083870274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000433 n).toNat

end

end A055401.P11451499240083870274

namespace A055401

/-- `A007953(A000433(n))` -/
def P11451499240083870274.Spec : Prop :=
  ∀ n, P11451499240083870274.a n = A055401 n

end A055401

/-!
# A055402: Least number represented as the sum of n cubes with greedy algorithm.

The programs for A055402, the canonical program `A055402.P10173280648068419007` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055402 has offset 1).

The definition of A055402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055402.P10173280648068419007

`a(n-1)+ceil(sqrt(a(n-1)/3+1/4)-1/2)^3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055402

/-- `a(n-1)+ceil(sqrt(a(n-1)/3+1/4)-1/2)^3` -/
def P10173280648068419007.Spec : Prop :=
  ∀ n, P10173280648068419007.a n = A055402 (n + 1)

theorem P10173280648068419007.correct : P10173280648068419007.Spec := by
  intro n
  simp only [A055402, Nat.add_sub_cancel]

end A055402

/-! ## A055402.P271083916984516912

`∑[A043537(A309415(n))^3]`
-/

namespace A055402.P271083916984516912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A309415 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055402.P271083916984516912

namespace A055402

/-- `∑[A043537(A309415(n))^3]` -/
def P271083916984516912.Spec : Prop :=
  ∀ n, P271083916984516912.a n = A055402 (n + 1)

end A055402

/-! ## A055402.P5597358166309139820

`∑[A055642(A146695(2*n+1))^3]`
-/

namespace A055402.P5597358166309139820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A146695 (2 * n + 1)).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055402.P5597358166309139820

namespace A055402

/-- `∑[A055642(A146695(2*n+1))^3]` -/
def P5597358166309139820.Spec : Prop :=
  ∀ n, P5597358166309139820.a n = A055402 (n + 1)

end A055402

/-! ## A055402.P8942621078878348761

`∑[A164306(A078631(n))]`
-/

namespace A055402.P8942621078878348761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A078631 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055402.P8942621078878348761

namespace A055402

/-- `∑[A164306(A078631(n))]` -/
def P8942621078878348761.Spec : Prop :=
  ∀ n, P8942621078878348761.a n = A055402 (n + 1)

end A055402

/-! ## A055402.P9435581084966406292

`∑[A048762(A293607(n))]`
-/

namespace A055402.P9435581084966406292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (A293607 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055402.P9435581084966406292

namespace A055402

/-- `∑[A048762(A293607(n))]` -/
def P9435581084966406292.Spec : Prop :=
  ∀ n, P9435581084966406292.a n = A055402 (n + 1)

end A055402

/-!
# A055403: Number of points in N^4 of norm <= n.

The programs for A055403, the canonical program `A055403.P1314852680772873316` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055403 has offset 0).

The definition of A055403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055403.P1314852680772873316

`A224213(n²)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055403

/-- `A224213(n²)` -/
def P1314852680772873316.Spec : Prop :=
  ∀ n, P1314852680772873316.a n = A055403 n

theorem P1314852680772873316.correct : P1314852680772873316.Spec := by
  intro n
  simp only [A055403]

end A055403

/-! ## A055403.P11306343779567336736

`record[A224213(A123596(n))]`
-/

namespace A055403.P11306343779567336736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224213 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055403.P11306343779567336736

namespace A055403

/-- `record[A224213(A123596(n))]` -/
def P11306343779567336736.Spec : Prop :=
  ∀ n, P11306343779567336736.a n = A055403 n

end A055403

/-! ## A055403.P10904873017178754766

`and(-1, A224213(A000290(n)))`
-/

namespace A055403.P10904873017178754766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224213 (A000290 n).toNat)

end

end A055403.P10904873017178754766

namespace A055403

/-- `and(-1, A224213(A000290(n)))` -/
def P10904873017178754766.Spec : Prop :=
  ∀ n, P10904873017178754766.a n = A055403 n

end A055403

/-! ## A055403.P13455175847435744133

`A224213(A000290(n))%A002755(n)`
-/

namespace A055403.P13455175847435744133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224213 (A000290 n).toNat) (A002755 n)

end

end A055403.P13455175847435744133

namespace A055403

/-- `A224213(A000290(n))%A002755(n)` -/
def P13455175847435744133.Spec : Prop :=
  ∀ n, P13455175847435744133.a n = A055403 n

end A055403

/-! ## A055403.P7278207696671774891

`gcd(A000038(n), A224213(A000290(n)))`
-/

namespace A055403.P7278207696671774891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224213 (A000290 n).toNat)

end

end A055403.P7278207696671774891

namespace A055403

/-- `gcd(A000038(n), A224213(A000290(n)))` -/
def P7278207696671774891.Spec : Prop :=
  ∀ n, (P7278207696671774891.a n : ℤ) = A055403 n

end A055403

/-! ## A055403.P3351605421283542336

`A054977(n+1)*A224213(A000290(n))`
-/

namespace A055403.P3351605421283542336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A224213 (A000290 n).toNat

end

end A055403.P3351605421283542336

namespace A055403

/-- `A054977(n+1)*A224213(A000290(n))` -/
def P3351605421283542336.Spec : Prop :=
  ∀ n, P3351605421283542336.a n = A055403 n

end A055403

/-! ## A055403.P10136800977259884247

`lcm(A105812(n+2), A224213(A000290(n)))`
-/

namespace A055403.P10136800977259884247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 (n + 2)) (A224213 (A000290 n).toNat)

end

end A055403.P10136800977259884247

namespace A055403

/-- `lcm(A105812(n+2), A224213(A000290(n)))` -/
def P10136800977259884247.Spec : Prop :=
  ∀ n, (P10136800977259884247.a n : ℤ) = A055403 n

end A055403

/-! ## A055403.P3613116677509361808

`A224213(A000290(n))+val(A000005(n+1), 30)`
-/

namespace A055403.P3613116677509361808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224213 (A000290 n).toNat + (SequenceMachineLib.valuation (A000005 (n + 1)).toNat 30 : ℤ)

end

end A055403.P3613116677509361808

namespace A055403

/-- `A224213(A000290(n))+val(A000005(n+1), 30)` -/
def P3613116677509361808.Spec : Prop :=
  ∀ n, P3613116677509361808.a n = A055403 n

end A055403

/-!
# A055404: Number of points in N^5 of norm <= n.

The programs for A055404, there is no canonical definition to state claims against.
-/

/-! ## A055404.P8721239636465234542

`A341400(n²)`
-/

namespace A055404.P8721239636465234542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341400 (n ^ 2)

end

end A055404.P8721239636465234542

/-! ## A055404.P15916561004401227259

`record[A341400(A123596(n))]`
-/

namespace A055404.P15916561004401227259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341400 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055404.P15916561004401227259

/-! ## A055404.P5227510575611436232

`and(-1, A341400(A000290(n)))`
-/

namespace A055404.P5227510575611436232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A341400 (A000290 n).toNat)

end

end A055404.P5227510575611436232

/-! ## A055404.P7353808233986961249

`record[A341400(A115881(n+1))]`
-/

namespace A055404.P7353808233986961249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341400 (A115881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055404.P7353808233986961249

/-! ## A055404.P18397215780920928333

`record[A341400(A289506(n+1))]`
-/

namespace A055404.P18397215780920928333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341400 (A289506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055404.P18397215780920928333

/-! ## A055404.P7572107226149998104

`A341400(A000290(n))%A017500(n)`
-/

namespace A055404.P7572107226149998104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341400 (A000290 n).toNat) (A017500 n)

end

end A055404.P7572107226149998104

/-! ## A055404.P2565052867621029765

`gcd(A000038(n), A341400(A000290(n)))`
-/

namespace A055404.P2565052867621029765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A341400 (A000290 n).toNat)

end

end A055404.P2565052867621029765

/-! ## A055404.P17248588188473960266

`lcm(A008836(n+1), A341400(A000290(n)))`
-/

namespace A055404.P17248588188473960266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A341400 (A000290 n).toNat)

end

end A055404.P17248588188473960266

/-! ## A055404.P6773016931444491633

`A007318(C(2, n))*A341400(A000290(n))`
-/

namespace A055404.P6773016931444491633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A341400 (A000290 n).toNat

end

end A055404.P6773016931444491633

/-! ## A055404.P18150203329659116676

`A341400(A000290(n))/A007318(C(6, n))`
-/

namespace A055404.P18150203329659116676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341400 (A000290 n).toNat : ℚ) / (A007318 (Nat.choose 6 n) : ℚ)

end

end A055404.P18150203329659116676

/-! ## A055404.P12935229447262281950

`(A000041(n)%2)!*A341400(A000290(n))`
-/

namespace A055404.P12935229447262281950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A341400 (A000290 n).toNat

end

end A055404.P12935229447262281950

/-! ## A055404.P3184312631192629608

`A000010(C(2, n)!)*A341400(A000290(n))`
-/

namespace A055404.P3184312631192629608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A341400 (A000290 n).toNat

end

end A055404.P3184312631192629608

/-! ## A055404.P5792247600644075831

`A341400(A000290(n))+A008683(12*(n+1))`
-/

namespace A055404.P5792247600644075831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341400 (A000290 n).toNat + A008683 (12 * (n + 1))

end

end A055404.P5792247600644075831

/-! ## A055404.P14798593722807384492

`A014963(10*(n+1))*A341400(A000290(n))`
-/

namespace A055404.P14798593722807384492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A341400 (A000290 n).toNat

end

end A055404.P14798593722807384492

/-! ## A055404.P8678553431029519233

`A000108(C(2, 2*n))*A341400(A000290(n))`
-/

namespace A055404.P8678553431029519233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (2 * n)) * A341400 (A000290 n).toNat

end

end A055404.P8678553431029519233

/-! ## A055404.P2351733060042903768

`A341400(A000290(n))+A001222(gcd(n, n+1))`
-/

namespace A055404.P2351733060042903768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341400 (A000290 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A055404.P2351733060042903768

/-! ## A055404.P12381639077323543950

`A000005((-1)^(2*n))*A341400(A000290(n))`
-/

namespace A055404.P12381639077323543950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((-1) ^ (2 * n)).toNat * A341400 (A000290 n).toNat

end

end A055404.P12381639077323543950

/-! ## A055404.P2895127924219324558

`A341400(A000290(n))+A000007(A000124(n))`
-/

namespace A055404.P2895127924219324558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341400 (A000290 n).toNat + A000007 (A000124 n).toNat

end

end A055404.P2895127924219324558

/-! ## A055404.P6596019019190766163

`A341400(A000290(n))+A000007(A001316(n))`
-/

namespace A055404.P6596019019190766163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341400 (A000290 n).toNat + A000007 (A001316 n).toNat

end

end A055404.P6596019019190766163

/-! ## A055404.P5098195782368018315

`A341400(A000290(n))+A000007(A193739(n))`
-/

namespace A055404.P5098195782368018315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341400 (A000290 n).toNat + A000007 (A193739 n).toNat

end

end A055404.P5098195782368018315

/-!
# A055405: Number of points in N^6 of norm <= n.

The programs for A055405, there is no canonical definition to state claims against.
-/

/-! ## A055405.P13691839316574797756

`A341401(n²)`
-/

namespace A055405.P13691839316574797756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341401 (n ^ 2)

end

end A055405.P13691839316574797756

/-! ## A055405.P13218658770893206636

`record[A341401(A123596(n))]`
-/

namespace A055405.P13218658770893206636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341401 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055405.P13218658770893206636

/-! ## A055405.P15279545168511120996

`and(-1, A341401(A000290(n)))`
-/

namespace A055405.P15279545168511120996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A341401 (A000290 n).toNat)

end

end A055405.P15279545168511120996

/-! ## A055405.P303971495259038604

`A341401(A000290(n))%A083102(n+2)`
-/

namespace A055405.P303971495259038604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341401 (A000290 n).toNat) (A083102 (n + 2))

end

end A055405.P303971495259038604

/-! ## A055405.P5221649623402387422

`A302998(A046691(n+5)-3)`
-/

namespace A055405.P5221649623402387422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A046691 (n + 5) - 3).toNat

end

end A055405.P5221649623402387422

/-!
# A055406: Number of points in N^7 of norm <= n.

The programs for A055406, there is no canonical definition to state claims against.
-/

/-! ## A055406.P6466955412022011911

`A341402(n²)`
-/

namespace A055406.P6466955412022011911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341402 (n ^ 2)

end

end A055406.P6466955412022011911

/-! ## A055406.P9399014503712326454

`record[A341402(A123596(n))]`
-/

namespace A055406.P9399014503712326454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341402 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055406.P9399014503712326454

/-! ## A055406.P5050185382714812349

`and(-1, A341402(A000290(n)))`
-/

namespace A055406.P5050185382714812349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A341402 (A000290 n).toNat)

end

end A055406.P5050185382714812349

/-! ## A055406.P6594414863493221850

`record[A010052(n)*A341402(n)]`
-/

namespace A055406.P6594414863493221850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n * A341402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055406.P6594414863493221850

/-! ## A055406.P12100020575028294343

`A341402(A000290(n))%A346861(n)`
-/

namespace A055406.P12100020575028294343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341402 (A000290 n).toNat) (A346861 n)

end

end A055406.P12100020575028294343

/-! ## A055406.P13356211989406906739

`A341402(A000290(n))+A000122(3*n+2)`
-/

namespace A055406.P13356211989406906739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341402 (A000290 n).toNat + A000122 (3 * n + 2)

end

end A055406.P13356211989406906739

/-!
# A055407: Number of points in N^8 of norm <= n.

The programs for A055407, the canonical program `A055407.P12747787059939045885` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055407 has offset 0).

The definition of A055407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055407.P12747787059939045885

`A341403(n²)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A055407

/-- `A341403(n²)` -/
def P12747787059939045885.Spec : Prop :=
  ∀ n, P12747787059939045885.a n = A055407 n

theorem P12747787059939045885.correct : P12747787059939045885.Spec := by
  intro n
  simp only [A055407]

end A055407

/-! ## A055407.P13271695685293326815

`record[A341403(A123596(n))]`
-/

namespace A055407.P13271695685293326815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341403 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055407.P13271695685293326815

namespace A055407

/-- `record[A341403(A123596(n))]` -/
def P13271695685293326815.Spec : Prop :=
  ∀ n, P13271695685293326815.a n = A055407 n

end A055407

/-! ## A055407.P11588348397450796510

`record[A341403(A095831(n+1))]`
-/

namespace A055407.P11588348397450796510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341403 (A095831 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055407.P11588348397450796510

namespace A055407

/-- `record[A341403(A095831(n+1))]` -/
def P11588348397450796510.Spec : Prop :=
  ∀ n, P11588348397450796510.a n = A055407 n

end A055407

/-! ## A055407.P7070914874684746569

`record[A341403(A115881(n+1))]`
-/

namespace A055407.P7070914874684746569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341403 (A115881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055407.P7070914874684746569

namespace A055407

/-- `record[A341403(A115881(n+1))]` -/
def P7070914874684746569.Spec : Prop :=
  ∀ n, P7070914874684746569.a n = A055407 n

end A055407

/-! ## A055407.P4661208717601908909

`record[A341403(A289506(n+1))]`
-/

namespace A055407.P4661208717601908909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341403 (A289506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055407.P4661208717601908909

namespace A055407

/-- `record[A341403(A289506(n+1))]` -/
def P4661208717601908909.Spec : Prop :=
  ∀ n, P4661208717601908909.a n = A055407 n

end A055407

/-!
# A055408: Number of points in N^9 of norm <= n.

The programs for A055408, there is no canonical definition to state claims against.
-/

/-! ## A055408.P16739252744088070867

`A341404(n²)`
-/

namespace A055408.P16739252744088070867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341404 (n ^ 2)

end

end A055408.P16739252744088070867

/-! ## A055408.P16034046160322708380

`record[A341404(A123596(n))]`
-/

namespace A055408.P16034046160322708380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341404 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055408.P16034046160322708380

/-! ## A055408.P8891712912475968628

`record[A341404(A289506(n+1))]`
-/

namespace A055408.P8891712912475968628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341404 (A289506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055408.P8891712912475968628

/-! ## A055408.P4644628992228339506

`or(char[2], A341404(A000290(n)))`
-/

namespace A055408.P4644628992228339506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A341404 (A000290 n).toNat)

end

end A055408.P4644628992228339506

/-! ## A055408.P2712074472815048937

`∑{#}[n², A045851(#)]`
-/

namespace A055408.P2712074472815048937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A045851 k

end

end A055408.P2712074472815048937

/-!
# A055409: Number of points in N^10 of norm <= n.

The programs for A055409, there is no canonical definition to state claims against.
-/

/-! ## A055409.P18431397476633076360

`A341405(n²)`
-/

namespace A055409.P18431397476633076360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341405 (n ^ 2)

end

end A055409.P18431397476633076360

/-! ## A055409.P14599437240149516776

`record[A341405(A123596(n))]`
-/

namespace A055409.P14599437240149516776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341405 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055409.P14599437240149516776

/-! ## A055409.P5524964237150262358

`and(-1, A341405(A000290(n)))`
-/

namespace A055409.P5524964237150262358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A341405 (A000290 n).toNat)

end

end A055409.P5524964237150262358

/-! ## A055409.P13379981763206725040

`record[A341405(A115881(n+1))]`
-/

namespace A055409.P13379981763206725040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341405 (A115881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055409.P13379981763206725040

/-! ## A055409.P4788809845133998084

`record[A341405(A289506(n+1))]`
-/

namespace A055409.P4788809845133998084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341405 (A289506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055409.P4788809845133998084

/-!
# A055410: Number of points in Z^4 of norm <= n.

The programs for A055410, there is no canonical definition to state claims against.
-/

/-! ## A055410.P13682873475410496600

`A046895(n²)`
-/

namespace A055410.P13682873475410496600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (n ^ 2)

end

end A055410.P13682873475410496600

/-! ## A055410.P11055325631999032687

`or(1, A046895(n^2))`
-/

namespace A055410.P11055325631999032687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046895 (n ^ 2))

end

end A055410.P11055325631999032687

/-! ## A055410.P17110700876238860681

`record[A046895(A123596(n))]`
-/

namespace A055410.P17110700876238860681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055410.P17110700876238860681

/-! ## A055410.P17841833401334409850

`and(-1, A046895(A000290(n)))`
-/

namespace A055410.P17841833401334409850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A046895 (A000290 n).toNat)

end

end A055410.P17841833401334409850

/-! ## A055410.P7735672751422324183

`A046895(n^2)+A000007(n+1)`
-/

namespace A055410.P7735672751422324183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (n ^ 2) + A000007 (n + 1)

end

end A055410.P7735672751422324183

/-! ## A055410.P9873169019757882080

`A046895(n^2)-and(2, A000007(n))`
-/

namespace A055410.P9873169019757882080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (n ^ 2) - Int.land 2 (A000007 n)

end

end A055410.P9873169019757882080

/-! ## A055410.P2615640896030197643

`A007318(C(2, n))*A046895(n^2)`
-/

namespace A055410.P2615640896030197643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A046895 (n ^ 2)

end

end A055410.P2615640896030197643

/-! ## A055410.P547325293126070991

`A046895(n^2)/A007318(C(3, n))`
-/

namespace A055410.P547325293126070991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046895 (n ^ 2) : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A055410.P547325293126070991

/-! ## A055410.P5037069410454687842

`A046895(n^2)*A122141(∑[n]+1)`
-/

namespace A055410.P5037069410454687842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (n ^ 2) * A122141 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055410.P5037069410454687842

/-! ## A055410.P15733475855546163792

`A046895(n^2)+A008683(4*(n+1))`
-/

namespace A055410.P15733475855546163792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (n ^ 2) + A008683 (4 * (n + 1))

end

end A055410.P15733475855546163792

/-! ## A055410.P14228539395203659678

`A046895(n^2)+val(A006530(n+2), 4)`
-/

namespace A055410.P14228539395203659678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (n ^ 2) + (SequenceMachineLib.valuation (A006530 (n + 2)).toNat 4 : ℤ)

end

end A055410.P14228539395203659678

/-! ## A055410.P4644679629376264695

`A000108(C(2, n+2))*A046895(n^2)`
-/

namespace A055410.P4644679629376264695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A046895 (n ^ 2)

end

end A055410.P4644679629376264695

/-! ## A055410.P17273840861551962235

`A046895(n^2)^gcd(5, A001221(n+1))`
-/

namespace A055410.P17273840861551962235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (n ^ 2) ^ Int.gcd 5 (A001221 (n + 1))

end

end A055410.P17273840861551962235

/-! ## A055410.P10004346548959873465

`gcd(A000045(C(2, 3*n)), A046895(n^2))`
-/

namespace A055410.P10004346548959873465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (Nat.choose 2 (3 * n))) (A046895 (n ^ 2))

end

end A055410.P10004346548959873465

/-! ## A055410.P12988792393375842574

`A046895(n^2)/A122141(∑[n+1]+1)`
-/

namespace A055410.P12988792393375842574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046895 (n ^ 2) : ℚ) / (A122141 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A055410.P12988792393375842574

/-! ## A055410.P17016270606302094227

`A007318(ceil(n/(n+1)))*A046895(n^2)`
-/

namespace A055410.P17016270606302094227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A046895 (n ^ 2)

end

end A055410.P17016270606302094227

/-! ## A055410.P16232416796998871765

`A024359(A000040(n+5))*A046895(n^2)`
-/

namespace A055410.P16232416796998871765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A000040 (n + 5)).toNat * A046895 (n ^ 2)

end

end A055410.P16232416796998871765

/-! ## A055410.P4504397461616211596

`A001221(xor(n, n+1)+1)*A046895(A000290(n))`
-/

namespace A055410.P4504397461616211596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.xor n (n + 1) + 1) * A046895 (A000290 n).toNat

end

end A055410.P4504397461616211596

/-!
# A055411: Number of points in Z^5 of norm <= n.

The programs for A055411, there is no canonical definition to state claims against.
-/

/-! ## A055411.P4804585100317975703

`A175360(n²)`
-/

namespace A055411.P4804585100317975703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175360 (n ^ 2)

end

end A055411.P4804585100317975703

/-! ## A055411.P10014703118850032778

`or(1, A175360(A000290(n)))`
-/

namespace A055411.P10014703118850032778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A175360 (A000290 n).toNat)

end

end A055411.P10014703118850032778

/-! ## A055411.P9133110047130792020

`record[A175360(A289506(n+1))]`
-/

namespace A055411.P9133110047130792020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175360 (A289506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055411.P9133110047130792020

/-! ## A055411.P9051107050680285112

`A007318(∑[n])*A175360(A000290(n))`
-/

namespace A055411.P9051107050680285112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A175360 (A000290 n).toNat

end

end A055411.P9051107050680285112

/-! ## A055411.P10548369622244224252

`A175360(A000290(n))+A000007(n+3)`
-/

namespace A055411.P10548369622244224252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175360 (A000290 n).toNat + A000007 (n + 3)

end

end A055411.P10548369622244224252

/-! ## A055411.P5421788127843701389

`A175360(A000290(n))+A070109(2*n+1)`
-/

namespace A055411.P5421788127843701389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175360 (A000290 n).toNat + A070109 (2 * n + 1)

end

end A055411.P5421788127843701389

/-! ## A055411.P9131570102116928098

`A175360(A000290(n))+A008683(4*(n+1))`
-/

namespace A055411.P9131570102116928098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175360 (A000290 n).toNat + A008683 (4 * (n + 1))

end

end A055411.P9131570102116928098

/-! ## A055411.P7030536044320438871

`A014963(6*(n+1))*A175360(A000290(n))`
-/

namespace A055411.P7030536044320438871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A175360 (A000290 n).toNat

end

end A055411.P7030536044320438871

/-! ## A055411.P12547420249893708099

`A175360(A000290(n))+(2*A000041(n))%2`
-/

namespace A055411.P12547420249893708099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175360 (A000290 n).toNat + Int.tmod (2 * A000041 n) 2

end

end A055411.P12547420249893708099

/-! ## A055411.P14014472327512571467

`A175360(A000290(n))^A007318(C(2, n+2))`
-/

namespace A055411.P14014472327512571467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175360 (A000290 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n + 2)) : ℤ)

end

end A055411.P14014472327512571467

/-!
# A055412: Number of points in Z^6 of norm <= n.

The programs for A055412, there is no canonical definition to state claims against.
-/

/-! ## A055412.P6394670586745528522

`A175361(n²)`
-/

namespace A055412.P6394670586745528522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175361 (n ^ 2)

end

end A055412.P6394670586745528522

/-! ## A055412.P14159278306194022740

`record[A175361(round(lcm(n, n+2)/4))]`
-/

namespace A055412.P14159278306194022740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175361 (SequenceMachineLib.roundAway ((Nat.lcm n (n + 2) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055412.P14159278306194022740

/-! ## A055412.P5654567194665115747

`record[A175361(A123596(n))]`
-/

namespace A055412.P5654567194665115747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175361 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055412.P5654567194665115747

/-! ## A055412.P14595866673927977478

`or(1, A175361(A000290(n)))`
-/

namespace A055412.P14595866673927977478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A175361 (A000290 n).toNat)

end

end A055412.P14595866673927977478

/-! ## A055412.P13104136642955105511

`record[A175361(A289506(n+1))]`
-/

namespace A055412.P13104136642955105511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175361 (A289506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055412.P13104136642955105511

/-! ## A055412.P2641539127185960038

`gcd(A000038(n), A175361(A000290(n)))`
-/

namespace A055412.P2641539127185960038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A175361 (A000290 n).toNat)

end

end A055412.P2641539127185960038

/-! ## A055412.P13015015641146364434

`A175361(A000290(n))^A019433(2*n)`
-/

namespace A055412.P13015015641146364434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175361 (A000290 n).toNat : ℚ) ^ (A019433 (2 * n) : ℤ)

end

end A055412.P13015015641146364434

/-! ## A055412.P1054135538915913931

`A007318(C(2, n))*A175361(A000290(n))`
-/

namespace A055412.P1054135538915913931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A175361 (A000290 n).toNat

end

end A055412.P1054135538915913931

/-! ## A055412.P15152421733191145789

`A175361(A000290(n))+(2*A000041(n))%2`
-/

namespace A055412.P15152421733191145789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175361 (A000290 n).toNat + Int.tmod (2 * A000041 n) 2

end

end A055412.P15152421733191145789

/-! ## A055412.P16682217177733911028

`A000041(C(2, n+2))*A175361(A000290(n))`
-/

namespace A055412.P16682217177733911028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A175361 (A000290 n).toNat

end

end A055412.P16682217177733911028

/-! ## A055412.P5195788077096606161

`A000108(C(2, n+2))*A175361(A000290(n))`
-/

namespace A055412.P5195788077096606161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A175361 (A000290 n).toNat

end

end A055412.P5195788077096606161

/-! ## A055412.P15586788585799533101

`A175361(A000290(n))+A008683(lcm(32, n+1))`
-/

namespace A055412.P15586788585799533101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175361 (A000290 n).toNat + A008683 (Nat.lcm 32 (n + 1))

end

end A055412.P15586788585799533101

/-! ## A055412.P18151127790636035115

`A000041(val(n+1, 40))*A175361(A000290(n))`
-/

namespace A055412.P18151127790636035115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 40) * A175361 (A000290 n).toNat

end

end A055412.P18151127790636035115

/-! ## A055412.P17328627189432524475

`abs(A008683(n+1))!*A175361(A000290(n))`
-/

namespace A055412.P17328627189432524475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |A008683 (n + 1)|.toNat : ℤ) * A175361 (A000290 n).toNat

end

end A055412.P17328627189432524475

/-! ## A055412.P437859777666961389

`A175361(A000290(n))/A014963(A008458(n))`
-/

namespace A055412.P437859777666961389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175361 (A000290 n).toNat : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A055412.P437859777666961389

/-! ## A055412.P529037882592351470

`A001222(A062718(n+1))*A175361(A000290(n))`
-/

namespace A055412.P529037882592351470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062718 (n + 1)).toNat * A175361 (A000290 n).toNat

end

end A055412.P529037882592351470

/-! ## A055412.P13725247851629316032

`A007318(A020639(3*(n+2)))*A175361(A000290(n))`
-/

namespace A055412.P13725247851629316032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (3 * (n + 2))).toNat * A175361 (A000290 n).toNat

end

end A055412.P13725247851629316032

/-!
# A055413: Number of points in Z^7 of norm <= n.

The programs for A055413, there is no canonical definition to state claims against.
-/

/-! ## A055413.P6776699640822845266

`A341396(n²)`
-/

namespace A055413.P6776699640822845266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341396 (n ^ 2)

end

end A055413.P6776699640822845266

/-! ## A055413.P16452061626075310390

`A341396(A000290(n))*A347523(3*n)`
-/

namespace A055413.P16452061626075310390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341396 (A000290 n).toNat * A347523 (3 * n)

end

end A055413.P16452061626075310390

/-! ## A055413.P9131692713985549412

`A302997(eq[7, A025581(n)])`
-/

namespace A055413.P9131692713985549412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055413.P9131692713985549412

/-! ## A055413.P364036534802597313

`A302997(A052905(n+5)-3)`
-/

namespace A055413.P364036534802597313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A052905 (n + 5) - 3).toNat

end

end A055413.P364036534802597313

/-! ## A055413.P1069259432611376533

`A302997(A000096(n+7)-7)`
-/

namespace A055413.P1069259432611376533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000096 (n + 7) - 7).toNat

end

end A055413.P1069259432611376533

/-!
# A055414: Number of points in Z^8 of norm <= n.

The programs for A055414, there is no canonical definition to state claims against.
-/

/-! ## A055414.P9396867777890782974

`A341397(n²)`
-/

namespace A055414.P9396867777890782974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341397 (n ^ 2)

end

end A055414.P9396867777890782974

/-! ## A055414.P13436710016016030368

`or(1, A341397(A000290(n)))`
-/

namespace A055414.P13436710016016030368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341397 (A000290 n).toNat)

end

end A055414.P13436710016016030368

/-! ## A055414.P4389726657593289148

`gcd(A000038(n), A341397(A000290(n)))`
-/

namespace A055414.P4389726657593289148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A341397 (A000290 n).toNat)

end

end A055414.P4389726657593289148

/-! ## A055414.P8097722824846007884

`abs(A033999(n)*A341397(A000290(n)))`
-/

namespace A055414.P8097722824846007884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A341397 (A000290 n).toNat|

end

end A055414.P8097722824846007884

/-! ## A055414.P8569936659083787328

`A006519(A015913(n+1))*A341397(A000290(n))`
-/

namespace A055414.P8569936659083787328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A015913 (n + 1)).toNat * A341397 (A000290 n).toNat

end

end A055414.P8569936659083787328

/-! ## A055414.P15439649834654844541

`A341397(A000290(n))^A000034(A072839(n))`
-/

namespace A055414.P15439649834654844541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341397 (A000290 n).toNat : ℚ) ^ (A000034 (A072839 n).toNat : ℤ)

end

end A055414.P15439649834654844541

/-!
# A055415: Number of points in Z^9 of norm <= n.

The programs for A055415, there is no canonical definition to state claims against.
-/

/-! ## A055415.P6718113242011826779

`A341398(n²)`
-/

namespace A055415.P6718113242011826779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341398 (n ^ 2)

end

end A055415.P6718113242011826779

/-! ## A055415.P9661915775738832876

`A054977(n+1)*A341398(A000290(n))`
-/

namespace A055415.P9661915775738832876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A341398 (A000290 n).toNat

end

end A055415.P9661915775738832876

/-! ## A055415.P9967601575314754462

`A060680(2*n+2)*A341398(A000290(n))`
-/

namespace A055415.P9967601575314754462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (2 * n + 2) * A341398 (A000290 n).toNat

end

end A055415.P9967601575314754462

/-! ## A055415.P13187950110262372712

`or(A060680(n+2+n), A341398(A000290(n)))`
-/

namespace A055415.P13187950110262372712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060680 (n + 2 + n)) (A341398 (A000290 n).toNat)

end

end A055415.P13187950110262372712

/-! ## A055415.P399479932393424608

`A302997(A055999(n+7)-4)`
-/

namespace A055415.P399479932393424608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A055999 (n + 7) - 4).toNat

end

end A055415.P399479932393424608

/-!
# A055416: Number of points in Z^10 of norm <= n.

The programs for A055416, there is no canonical definition to state claims against.
-/

/-! ## A055416.P10876065238043669814

`A341399(n²)`
-/

namespace A055416.P10876065238043669814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341399 (n ^ 2)

end

end A055416.P10876065238043669814

/-! ## A055416.P6271583934008550938

`record[A341399(A123596(n))]`
-/

namespace A055416.P6271583934008550938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341399 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055416.P6271583934008550938

/-! ## A055416.P13972940528998681748

`or(1, A341399(A000290(n)))`
-/

namespace A055416.P13972940528998681748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341399 (A000290 n).toNat)

end

end A055416.P13972940528998681748

/-! ## A055416.P9598399461869678208

`A302997(A000217(n+11)-11)`
-/

namespace A055416.P9598399461869678208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000217 (n + 11) - 11).toNat

end

end A055416.P9598399461869678208

/-! ## A055416.P13794352674379541794

`A302997(A008593(n+5)+∑[n])`
-/

namespace A055416.P13794352674379541794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A008593 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A055416.P13794352674379541794

/-!
# A055417: Number of points in N^n of norm <= 2.

The programs for A055417, the canonical program `A055417.P16799381053937575519` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055417 has offset 0).

The definition of A055417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055417.P10869917561508972710

`ogf((1-2x+x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A055417.P10869917561508972710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 1] [1, -5, 10, -10, 5, -1] n

end

end A055417.P10869917561508972710

namespace A055417

/-- `ogf((1-2x+x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10869917561508972710.Spec : Prop :=
  ∀ n, P10869917561508972710.a n = A055417 n

end A055417

/-! ## A055417.P16799381053937575519

`1+n+n+C(n, 2)+C(n, 3)+C(n, 4)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055417

/-- `1+n+n+C(n, 2)+C(n, 3)+C(n, 4)` -/
def P16799381053937575519.Spec : Prop :=
  ∀ n, (P16799381053937575519.a n : ℤ) = A055417 n

theorem P16799381053937575519.correct : P16799381053937575519.Spec := by
  intro n
  simp only [A055417]

end A055417

/-! ## A055417.P8149194608239946916

`(n^3-3*n²+14*n+24)*(n+1)/24`
-/

namespace A055417.P8149194608239946916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (14 * n : ℤ) + 24) * (n + 1 : ℤ) : ℚ) / 24

end

end A055417.P8149194608239946916

namespace A055417

/-- `(n^3-3*n²+14*n+24)*(n+1)/24` -/
def P8149194608239946916.Spec : Prop :=
  ∀ n, P8149194608239946916.a n = (A055417 n : ℚ)

theorem P8149194608239946916.correct : P8149194608239946916.Spec := by
  intro n
  simp only [A055417, Nat.add_sub_cancel, A055417.P8149194608239946916.a, A055417.P16799381053937575519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055417

/-! ## A055417.P5725741598070400154

`∑[1+C(n, 3)+n]`
-/

namespace A055417.P5725741598070400154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (Nat.choose n 3 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055417.P5725741598070400154

namespace A055417

/-- `∑[1+C(n, 3)+n]` -/
def P5725741598070400154.Spec : Prop :=
  ∀ n, (P5725741598070400154.a n : ℤ) = A055417 n

end A055417

/-! ## A055417.P5034811047092239408

`C(n+1, 4)+C(n+2, 2)`
-/

namespace A055417.P5034811047092239408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4 + Nat.choose (n + 2) 2

end

end A055417.P5034811047092239408

namespace A055417

/-- `C(n+1, 4)+C(n+2, 2)` -/
def P5034811047092239408.Spec : Prop :=
  ∀ n, (P5034811047092239408.a n : ℤ) = A055417 n

theorem P5034811047092239408.correct : P5034811047092239408.Spec := by
  intro n
  simp only [A055417, Nat.add_sub_cancel, A055417.P5034811047092239408.a, A055417.P16799381053937575519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055417

/-! ## A055417.P10784756055596349734

`∑[n-∑[n-1-C(n, 2)]]`
-/

namespace A055417.P10784756055596349734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (Nat.choose n 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055417.P10784756055596349734

namespace A055417

/-- `∑[n-∑[n-1-C(n, 2)]]` -/
def P10784756055596349734.Spec : Prop :=
  ∀ n, P10784756055596349734.a n = A055417 n

end A055417

/-! ## A055417.P7954580480233129191

`∑[∑[a(n-1)-2+n]]` with `a(0)=1, a(1)=1`
-/

namespace A055417.P7954580480233129191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) - 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055417.P7954580480233129191

namespace A055417

/-- `∑[∑[a(n-1)-2+n]]` -/
def P7954580480233129191.Spec : Prop :=
  ∀ n, P7954580480233129191.a n = A055417 n

end A055417

/-! ## A055417.P12701380488152696911

`∑[∑[a(n-1)-(2-n)]]` with `a(0)=1, a(1)=1`
-/

namespace A055417.P12701380488152696911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) - (2 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055417.P12701380488152696911

namespace A055417

/-- `∑[∑[a(n-1)-(2-n)]]` -/
def P12701380488152696911.Spec : Prop :=
  ∀ n, P12701380488152696911.a n = A055417 n

end A055417

/-! ## A055417.P3787299460423571383

`Δ[A006261(n)]+n`
-/

namespace A055417.P3787299460423571383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A055417.P3787299460423571383

namespace A055417

/-- `Δ[A006261(n)]+n` -/
def P3787299460423571383.Spec : Prop :=
  ∀ n, P3787299460423571383.a n = A055417 n

end A055417

/-! ## A055417.P5482385500160598717

`A000127(n+1)+n`
-/

namespace A055417.P5482385500160598717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) + (n : ℤ)

end

end A055417.P5482385500160598717

namespace A055417

/-- `A000127(n+1)+n` -/
def P5482385500160598717.Spec : Prop :=
  ∀ n, P5482385500160598717.a n = A055417 n

end A055417

/-! ## A055417.P12551388668796276393

`A014626(n+1)+∑[n]`
-/

namespace A055417.P12551388668796276393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A055417.P12551388668796276393

namespace A055417

/-- `A014626(n+1)+∑[n]` -/
def P12551388668796276393.Spec : Prop :=
  ∀ n, P12551388668796276393.a n = A055417 n

end A055417

/-! ## A055417.P14386129601934164681

`A055795(n+1)+1+n`
-/

namespace A055417.P14386129601934164681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 1) + 1 + (n : ℤ)

end

end A055417.P14386129601934164681

namespace A055417

/-- `A055795(n+1)+1+n` -/
def P14386129601934164681.Spec : Prop :=
  ∀ n, P14386129601934164681.a n = A055417 n

theorem P14386129601934164681.correct : P14386129601934164681.Spec := by
  intro n
  simp only [A055417, Nat.add_sub_cancel, A055417.P14386129601934164681.a, A055417.P16799381053937575519.a, A055795, A055795.P17285801603062217731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055417

/-! ## A055417.P2374828460511385341

`A059173(n+1)/2+n`
-/

namespace A055417.P2374828460511385341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059173 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A055417.P2374828460511385341

namespace A055417

/-- `A059173(n+1)/2+n` -/
def P2374828460511385341.Spec : Prop :=
  ∀ n, P2374828460511385341.a n = (A055417 n : ℚ)

end A055417

/-! ## A055417.P8265567031169881381

`A011826(n)+a(n-1)` with `a(0)=1`
-/

namespace A055417.P8265567031169881381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011826 n + a (n - 1)

end

end A055417.P8265567031169881381

namespace A055417

/-- `A011826(n)+a(n-1)` -/
def P8265567031169881381.Spec : Prop :=
  ∀ n, P8265567031169881381.a n = A055417 n

end A055417

/-! ## A055417.P6168200238214674373

`A227161(n)-A005581(n)`
-/

namespace A055417.P6168200238214674373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227161 n - A005581 n

end

end A055417.P6168200238214674373

namespace A055417

/-- `A227161(n)-A005581(n)` -/
def P6168200238214674373.Spec : Prop :=
  ∀ n, P6168200238214674373.a n = A055417 n

end A055417

/-! ## A055417.P11846877111497413503

`A223718(n)-A051925(n)`
-/

namespace A055417.P11846877111497413503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 n - A051925 n

end

end A055417.P11846877111497413503

namespace A055417

/-- `A223718(n)-A051925(n)` -/
def P11846877111497413503.Spec : Prop :=
  ∀ n, P11846877111497413503.a n = A055417 n

end A055417

/-! ## A055417.P11845764729669825046

`A014820(n)-A338996(n)`
-/

namespace A055417.P11845764729669825046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n - A338996 n

end

end A055417.P11845764729669825046

namespace A055417

/-- `A014820(n)-A338996(n)` -/
def P11845764729669825046.Spec : Prop :=
  ∀ n, P11845764729669825046.a n = A055417 n

end A055417

/-! ## A055417.P7618500718171586835

`A110427(n+1)+A005582(n)`
-/

namespace A055417.P7618500718171586835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110427 (n + 1) + A005582 n

end

end A055417.P7618500718171586835

namespace A055417

/-- `A110427(n+1)+A005582(n)` -/
def P7618500718171586835.Spec : Prop :=
  ∀ n, P7618500718171586835.a n = A055417 n

end A055417

/-! ## A055417.P7369285778049225515

`A180415(n+1)+A000332(n)`
-/

namespace A055417.P7369285778049225515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + A000332 n

end

end A055417.P7369285778049225515

namespace A055417

/-- `A180415(n+1)+A000332(n)` -/
def P7369285778049225515.Spec : Prop :=
  ∀ n, P7369285778049225515.a n = A055417 n

theorem P7369285778049225515.correct : P7369285778049225515.Spec := by
  intro n
  simp only [A055417, Nat.add_sub_cancel, A055417.P7369285778049225515.a, A055417.P16799381053937575519.a, A000332, A000332.P5946310388023661265.a, A180415, A180415.P16486081952933200476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055417

/-! ## A055417.P400980150378322401

`A051743(n+1)-A006000(n)`
-/

namespace A055417.P400980150378322401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051743 (n + 1) - A006000 n

end

end A055417.P400980150378322401

namespace A055417

/-- `A051743(n+1)-A006000(n)` -/
def P400980150378322401.Spec : Prop :=
  ∀ n, P400980150378322401.a n = A055417 n

end A055417

/-!
# A055418: Number of points in N^n of norm <= 3.

The programs for A055418, there is no canonical definition to state claims against.
-/

/-! ## A055418.P4747694431256110046

`A302998(A167614(n+2))`
-/

namespace A055418.P4747694431256110046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A167614 (n + 2)).toNat

end

end A055418.P4747694431256110046

/-! ## A055418.P15049387681283198899

`A302998(A052905(n)+8)`
-/

namespace A055418.P15049387681283198899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A052905 n + 8).toNat

end

end A055418.P15049387681283198899

/-! ## A055418.P716903160354893229

`A302998(A055999(n)+9)`
-/

namespace A055418.P716903160354893229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A055999 n + 9).toNat

end

end A055418.P716903160354893229

/-! ## A055418.P10544676946605078194

`A302998(eq[2, A141169(n)])`
-/

namespace A055418.P10544676946605078194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055418.P10544676946605078194

/-! ## A055418.P5461116377748511003

`A302998(eq[3, A002262(n)])`
-/

namespace A055418.P5461116377748511003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055418.P5461116377748511003

/-!
# A055419: Number of points in N^n of norm <= 4.

The programs for A055419, there is no canonical definition to state claims against.
-/

/-! ## A055419.P8713521944914668891

`A302998(A155212(n)+12)`
-/

namespace A055419.P8713521944914668891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A155212 n + 12).toNat

end

end A055419.P8713521944914668891

/-! ## A055419.P9832791003405233399

`A302998(A056000(n)+14)`
-/

namespace A055419.P9832791003405233399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A056000 n + 14).toNat

end

end A055419.P9832791003405233399

/-! ## A055419.P14265913202730560571

`A302998(eq[3, A141169(n)])`
-/

namespace A055419.P14265913202730560571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055419.P14265913202730560571

/-! ## A055419.P1172774565054475921

`A302998(eq[4, A002262(n)])`
-/

namespace A055419.P1172774565054475921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055419.P1172774565054475921

/-! ## A055419.P4104204973494013428

`A302998(eq[16, A059268(n)])`
-/

namespace A055419.P4104204973494013428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055419.P4104204973494013428

/-!
# A055420: Number of points in N^n of norm <= 5.

The programs for A055420, there is no canonical definition to state claims against.
-/

/-! ## A055420.P5559346879328779750

`A302998(A167499(n+4))`
-/

namespace A055420.P5559346879328779750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A167499 (n + 4)).toNat

end

end A055420.P5559346879328779750

/-! ## A055420.P11306538149500829046

`A302998(A077169(n+6))`
-/

namespace A055420.P11306538149500829046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A077169 (n + 6)).toNat

end

end A055420.P11306538149500829046

/-! ## A055420.P14879542324949319730

`A302998(A112355(n+3)+5)`
-/

namespace A055420.P14879542324949319730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A112355 (n + 3) + 5).toNat

end

end A055420.P14879542324949319730

/-! ## A055420.P7944853245387316887

`A302998(A000096(n+4)+6)`
-/

namespace A055420.P7944853245387316887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000096 (n + 4) + 6).toNat

end

end A055420.P7944853245387316887

/-! ## A055420.P9845483898501475369

`A302998(A000217(n+5)+5)`
-/

namespace A055420.P9845483898501475369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000217 (n + 5) + 5).toNat

end

end A055420.P9845483898501475369

/-!
# A055421: Number of points in N^n of norm <= 6.

The programs for A055421, there is no canonical definition to state claims against.
-/

/-! ## A055421.P595971522629206580

`A302998(A167499(n+5)+1)`
-/

namespace A055421.P595971522629206580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A167499 (n + 5) + 1).toNat

end

end A055421.P595971522629206580

/-! ## A055421.P12487620405204159641

`A302998(A000124(n+6)+5)`
-/

namespace A055421.P12487620405204159641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000124 (n + 6) + 5).toNat

end

end A055421.P12487620405204159641

/-! ## A055421.P12067829085560545849

`A302998(A000096(n+5)+7)`
-/

namespace A055421.P12067829085560545849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000096 (n + 5) + 7).toNat

end

end A055421.P12067829085560545849

/-! ## A055421.P18439076053951938085

`A302998(A000217(n+6)+6)`
-/

namespace A055421.P18439076053951938085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000217 (n + 6) + 6).toNat

end

end A055421.P18439076053951938085

/-! ## A055421.P3994343984551903346

`A302998(A112355(n+14)-A017377(n+10))`
-/

namespace A055421.P3994343984551903346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A112355 (n + 14) - A017377 (n + 10)).toNat

end

end A055421.P3994343984551903346

/-!
# A055422: Number of points in N^n of norm <= 7.

The programs for A055422, there is no canonical definition to state claims against.
-/

/-! ## A055422.P6516112724669636027

`A302998(A167499(n+6)+2)`
-/

namespace A055422.P6516112724669636027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A167499 (n + 6) + 2).toNat

end

end A055422.P6516112724669636027

/-! ## A055422.P16025118492348242560

`A302998(A000096(n+6)+8)`
-/

namespace A055422.P16025118492348242560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000096 (n + 6) + 8).toNat

end

end A055422.P16025118492348242560

/-! ## A055422.P6162496506938981484

`A302998(n+13+A000124(n+6))`
-/

namespace A055422.P6162496506938981484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 ((n + 13 : ℤ) + A000124 (n + 6)).toNat

end

end A055422.P6162496506938981484

/-! ## A055422.P11403680920805096771

`A302998(A000217(n+9)-A103517(n+4))`
-/

namespace A055422.P11403680920805096771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000217 (n + 9) - A103517 (n + 4)).toNat

end

end A055422.P11403680920805096771

/-! ## A055422.P12986903269879400804

`A302998(A000217(n+9)-A005843(n+5))`
-/

namespace A055422.P12986903269879400804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000217 (n + 9) - A005843 (n + 5)).toNat

end

end A055422.P12986903269879400804

/-!
# A055423: Number of points in N^n of norm <= 8.

The programs for A055423, there is no canonical definition to state claims against.
-/

/-! ## A055423.P17354223873437434489

`A302998(A166136(n+7)+2)`
-/

namespace A055423.P17354223873437434489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A166136 (n + 7) + 2).toNat

end

end A055423.P17354223873437434489

/-! ## A055423.P12909622143393827436

`A302998(A167499(n+7)+3)`
-/

namespace A055423.P12909622143393827436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A167499 (n + 7) + 3).toNat

end

end A055423.P12909622143393827436

/-! ## A055423.P10803916653519332273

`A302998(A133263(n+8)+6)`
-/

namespace A055423.P10803916653519332273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A133263 (n + 8) + 6).toNat

end

end A055423.P10803916653519332273

/-! ## A055423.P2666829926591792708

`A302998(A000096(n+7)+9)`
-/

namespace A055423.P2666829926591792708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000096 (n + 7) + 9).toNat

end

end A055423.P2666829926591792708

/-! ## A055423.P13360158942003319318

`A302998(A000217(n+8)+8)`
-/

namespace A055423.P13360158942003319318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000217 (n + 8) + 8).toNat

end

end A055423.P13360158942003319318

/-!
# A055424: Number of points in N^n of norm <= 9.

The programs for A055424, there is no canonical definition to state claims against.
-/

/-! ## A055424.P8963503075529374384

`A302998(eq[9, A002262(n)])`
-/

namespace A055424.P8963503075529374384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055424.P8963503075529374384

/-! ## A055424.P4341795435858482059

`A302998(A167499(n+8)+4)`
-/

namespace A055424.P4341795435858482059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A167499 (n + 8) + 4).toNat

end

end A055424.P4341795435858482059

/-! ## A055424.P9889009913593859520

`A302998(A000096(n+8)+10)`
-/

namespace A055424.P9889009913593859520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000096 (n + 8) + 10).toNat

end

end A055424.P9889009913593859520

/-! ## A055424.P8728084067275386304

`A302998(A000217(n+9)+9)`
-/

namespace A055424.P8728084067275386304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000217 (n + 9) + 9).toNat

end

end A055424.P8728084067275386304

/-! ## A055424.P16438027639974740106

`A302998(A112355(n+9)-A005843(n+6))`
-/

namespace A055424.P16438027639974740106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A112355 (n + 9) - A005843 (n + 6)).toNat

end

end A055424.P16438027639974740106

/-!
# A055425: Number of points in N^n of norm <= 10.

The programs for A055425, there is no canonical definition to state claims against.
-/

/-! ## A055425.P3137656252970310580

`A302998(A166136(n+9)+4)`
-/

namespace A055425.P3137656252970310580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A166136 (n + 9) + 4).toNat

end

end A055425.P3137656252970310580

/-! ## A055425.P10462826152818716734

`A302998(A167499(n+9)+5)`
-/

namespace A055425.P10462826152818716734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A167499 (n + 9) + 5).toNat

end

end A055425.P10462826152818716734

/-! ## A055425.P12955977758256883680

`A302998(A000217(n+10)+10)`
-/

namespace A055425.P12955977758256883680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000217 (n + 10) + 10).toNat

end

end A055425.P12955977758256883680

/-! ## A055425.P14045451811213584896

`A302998(A000124(n+11)-(n+2))`
-/

namespace A055425.P14045451811213584896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A055425.P14045451811213584896

/-! ## A055425.P13294951565393564820

`A302998(A167614(n+10)-(n+4))`
-/

namespace A055425.P13294951565393564820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A167614 (n + 10) - (n + 4 : ℤ)).toNat

end

end A055425.P13294951565393564820

/-!
# A055426: Number of points in Z^n of norm <= 2.

The programs for A055426, the canonical program `A055426.P4144347635558891198` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055426 has offset 0).

The definition of A055426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055426.P13356402297790335713

`ogf((1-2x^2+8x^3+9x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A055426.P13356402297790335713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 8, 9] [1, -5, 10, -10, 5, -1] n

end

end A055426.P13356402297790335713

namespace A055426

/-- `ogf((1-2x^2+8x^3+9x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13356402297790335713.Spec : Prop :=
  ∀ n, P13356402297790335713.a n = A055426 n

end A055426

/-! ## A055426.P338259536089823625

`(3+2*n+16*n²-8*n^3+2*n^4)/3`
-/

namespace A055426.P338259536089823625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * n + 16 * n ^ 2 : ℤ) - (8 * n ^ 3 : ℤ) + (2 * n ^ 4 : ℤ) : ℚ) / 3

end

end A055426.P338259536089823625

namespace A055426

/-- `(3+2*n+16*n²-8*n^3+2*n^4)/3` -/
def P338259536089823625.Spec : Prop :=
  ∀ n, P338259536089823625.a n = (A055426 n : ℚ)

theorem P338259536089823625.correct : P338259536089823625.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A055426, Nat.add_sub_cancel, A055426.P338259536089823625.a, A055426.P4144347635558891198.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A055426, Nat.add_sub_cancel, A055426.P338259536089823625.a, A055426.P4144347635558891198.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A055426

/-! ## A055426.P4144347635558891198

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=33, a(4)=89`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055426

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4144347635558891198.Spec : Prop :=
  ∀ n, P4144347635558891198.a n = A055426 n

theorem P4144347635558891198.correct : P4144347635558891198.Spec := by
  intro n
  simp only [A055426]

end A055426

/-! ## A055426.P17379210683610653837

`A389545(n)+2*n`
-/

namespace A055426.P17379210683610653837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389545 n + (2 * n : ℤ)

end

end A055426.P17379210683610653837

namespace A055426

/-- `A389545(n)+2*n` -/
def P17379210683610653837.Spec : Prop :=
  ∀ n, P17379210683610653837.a n = A055426 n

end A055426

/-! ## A055426.P9895980938816646659

`A319575(n)+A161712(n)`
-/

namespace A055426.P9895980938816646659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319575 n + A161712 n

end

end A055426.P9895980938816646659

namespace A055426

/-- `A319575(n)+A161712(n)` -/
def P9895980938816646659.Spec : Prop :=
  ∀ n, P9895980938816646659.a n = A055426 n

end A055426

/-! ## A055426.P1042065842001809338

`∑[2*A161703(n)]-A161703(n)`
-/

namespace A055426.P1042065842001809338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161703 n

end

end A055426.P1042065842001809338

namespace A055426

/-- `∑[2*A161703(n)]-A161703(n)` -/
def P1042065842001809338.Spec : Prop :=
  ∀ n, P1042065842001809338.a n = A055426 n

end A055426

/-! ## A055426.P11921159876536003728

`∑[A008574(n)]+A004275(n)*A007290(n)`
-/

namespace A055426.P11921159876536003728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A004275 n * A007290 n

end

end A055426.P11921159876536003728

namespace A055426

/-- `∑[A008574(n)]+A004275(n)*A007290(n)` -/
def P11921159876536003728.Spec : Prop :=
  ∀ n, P11921159876536003728.a n = A055426 n

end A055426

/-! ## A055426.P11680369075856613202

`∑[A008574(n)+A007290(A004275(n))]`
-/

namespace A055426.P11680369075856613202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A007290 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055426.P11680369075856613202

namespace A055426

/-- `∑[A008574(n)+A007290(A004275(n))]` -/
def P11680369075856613202.Spec : Prop :=
  ∀ n, P11680369075856613202.a n = A055426 n

end A055426

/-!
# A055427: Number of points in Z^n of norm <= 3.

The programs for A055427, there is no canonical definition to state claims against.
-/

/-! ## A055427.P3667045181324313175

`A302997(A167614(n+2))`
-/

namespace A055427.P3667045181324313175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A167614 (n + 2)).toNat

end

end A055427.P3667045181324313175

/-! ## A055427.P15222340087514136702

`A302997(A052905(n)+8)`
-/

namespace A055427.P15222340087514136702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A052905 n + 8).toNat

end

end A055427.P15222340087514136702

/-! ## A055427.P2793486481133461124

`A302997(A055999(n)+9)`
-/

namespace A055427.P2793486481133461124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A055999 n + 9).toNat

end

end A055427.P2793486481133461124

/-! ## A055427.P9188597818838376553

`A302997(eq[3, A002262(n)])`
-/

namespace A055427.P9188597818838376553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055427.P9188597818838376553

/-! ## A055427.P12930454148594869733

`A302997(A166136(n+2)-3)`
-/

namespace A055427.P12930454148594869733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A166136 (n + 2) - 3).toNat

end

end A055427.P12930454148594869733

/-!
# A055428: Number of points in Z^n of norm <= 4.

The programs for A055428, there is no canonical definition to state claims against.
-/

/-! ## A055428.P6049458054502421218

`A302997(A155212(n)+12)`
-/

namespace A055428.P6049458054502421218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A155212 n + 12).toNat

end

end A055428.P6049458054502421218

/-! ## A055428.P104148351273784345

`A302997(eq[16, A059268(n)])`
-/

namespace A055428.P104148351273784345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055428.P104148351273784345

/-! ## A055428.P11116868583314512131

`A302997(A000124(n+4)+3)`
-/

namespace A055428.P11116868583314512131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000124 (n + 4) + 3).toNat

end

end A055428.P11116868583314512131

/-! ## A055428.P539498511810122335

`A302997(A000096(n+3)+5)`
-/

namespace A055428.P539498511810122335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000096 (n + 3) + 5).toNat

end

end A055428.P539498511810122335

/-! ## A055428.P5122131799887364334

`A302997(A000217(n+4)+4)`
-/

namespace A055428.P5122131799887364334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000217 (n + 4) + 4).toNat

end

end A055428.P5122131799887364334

/-!
# A055429: Number of points in Z^n of norm <= 5.

The programs for A055429, there is no canonical definition to state claims against.
-/

/-! ## A055429.P14087933882595459628

`A302997(eq[5, A002262(n)])`
-/

namespace A055429.P14087933882595459628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055429.P14087933882595459628

/-! ## A055429.P17566180091010900618

`A302997(A000096(n+4)+6)`
-/

namespace A055429.P17566180091010900618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000096 (n + 4) + 6).toNat

end

end A055429.P17566180091010900618

/-! ## A055429.P2911488017842704727

`A302997(A000217(n+5)+5)`
-/

namespace A055429.P2911488017842704727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000217 (n + 5) + 5).toNat

end

end A055429.P2911488017842704727

/-! ## A055429.P6087879259698516207

`A302997(A056000(n+1)+15)`
-/

namespace A055429.P6087879259698516207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A056000 (n + 1) + 15).toNat

end

end A055429.P6087879259698516207

/-! ## A055429.P15186757025926944754

`A302997(A000124(n+6)-(n+2))`
-/

namespace A055429.P15186757025926944754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A055429.P15186757025926944754

/-!
# A055430: Number of points in Z^n of norm <= 6.

The programs for A055430, there is no canonical definition to state claims against.
-/

/-! ## A055430.P10521056669364139982

`A302997(A166136(n+5))`
-/

namespace A055430.P10521056669364139982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A166136 (n + 5)).toNat

end

end A055430.P10521056669364139982

/-! ## A055430.P15709322976627991129

`A302997(eq[64, A059268(n)])`
-/

namespace A055430.P15709322976627991129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055430.P15709322976627991129

/-! ## A055430.P18206890345617073847

`A302997(A000096(n+5)+7)`
-/

namespace A055430.P18206890345617073847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000096 (n + 5) + 7).toNat

end

end A055430.P18206890345617073847

/-! ## A055430.P4325240450762065869

`A302997(A000217(n+6)+6)`
-/

namespace A055430.P4325240450762065869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000217 (n + 6) + 6).toNat

end

end A055430.P4325240450762065869

/-! ## A055430.P1251586103963242443

`A302997(eq[7, A002260(n+1)])`
-/

namespace A055430.P1251586103963242443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055430.P1251586103963242443

/-!
# A055431: Number of points in Z^n of norm <= 7.

The programs for A055431, there is no canonical definition to state claims against.
-/

/-! ## A055431.P2762153750500905406

`A302997(eq[7, A002262(n)])`
-/

namespace A055431.P2762153750500905406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055431.P2762153750500905406

/-! ## A055431.P9714582160703405010

`A302997(A167499(n+6)+2)`
-/

namespace A055431.P9714582160703405010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A167499 (n + 6) + 2).toNat

end

end A055431.P9714582160703405010

/-! ## A055431.P3058229092781628367

`A302997(A000096(n+6)+8)`
-/

namespace A055431.P3058229092781628367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000096 (n + 6) + 8).toNat

end

end A055431.P3058229092781628367

/-! ## A055431.P10744811589280576551

`A302997(A000217(n+7)+7)`
-/

namespace A055431.P10744811589280576551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000217 (n + 7) + 7).toNat

end

end A055431.P10744811589280576551

/-! ## A055431.P11297343565797907818

`A302997(eq[8, A002260(n+1)])`
-/

namespace A055431.P11297343565797907818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055431.P11297343565797907818

/-!
# A055432: Number of points in Z^n of norm <= 8.

The programs for A055432, there is no canonical definition to state claims against.
-/

/-! ## A055432.P14494652828841916282

`A302997(A056126(n)+44)`
-/

namespace A055432.P14494652828841916282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A056126 n + 44).toNat

end

end A055432.P14494652828841916282

/-! ## A055432.P13909042947727241648

`A302997(A167499(n+7)+3)`
-/

namespace A055432.P13909042947727241648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A167499 (n + 7) + 3).toNat

end

end A055432.P13909042947727241648

/-! ## A055432.P8799553170850630286

`A302997(A000096(n+7)+9)`
-/

namespace A055432.P8799553170850630286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000096 (n + 7) + 9).toNat

end

end A055432.P8799553170850630286

/-! ## A055432.P16248528166555189348

`A302997(A000217(n+9)-(n+1))`
-/

namespace A055432.P16248528166555189348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A055432.P16248528166555189348

/-! ## A055432.P11816790189712177738

`A302997(A055999(n+7)-A005408(n+2))`
-/

namespace A055432.P11816790189712177738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A055999 (n + 7) - A005408 (n + 2)).toNat

end

end A055432.P11816790189712177738

/-!
# A055433: Number of points in Z^n of norm <= 9.

The programs for A055433, there is no canonical definition to state claims against.
-/

/-! ## A055433.P12743668161916829997

`A302997(A167499(n+8)+4)`
-/

namespace A055433.P12743668161916829997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A167499 (n + 8) + 4).toNat

end

end A055433.P12743668161916829997

/-! ## A055433.P472825358849050903

`A302997(A000096(n+8)+10)`
-/

namespace A055433.P472825358849050903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000096 (n + 8) + 10).toNat

end

end A055433.P472825358849050903

/-! ## A055433.P12657220430766259188

`A302997(A000217(n+10)-(n+1))`
-/

namespace A055433.P12657220430766259188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A055433.P12657220430766259188

/-! ## A055433.P15876253528816705722

`A302997(A105340(n+10)-(n+1))`
-/

namespace A055433.P15876253528816705722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A105340 (n + 10) - (n + 1 : ℤ)).toNat

end

end A055433.P15876253528816705722

/-! ## A055433.P17359577668049808844

`A302997(A008458(n+8)+A000217(n+3))`
-/

namespace A055433.P17359577668049808844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A008458 (n + 8) + A000217 (n + 3)).toNat

end

end A055433.P17359577668049808844

/-!
# A055434: Number of points in Z^n of norm <= 10.

The programs for A055434, there is no canonical definition to state claims against.
-/

/-! ## A055434.P3825933667613091645

`A302997(A000124(n+10)+9)`
-/

namespace A055434.P3825933667613091645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000124 (n + 10) + 9).toNat

end

end A055434.P3825933667613091645

/-! ## A055434.P8116122866412726385

`A302997(A000096(n+9)+11)`
-/

namespace A055434.P8116122866412726385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A000096 (n + 9) + 11).toNat

end

end A055434.P8116122866412726385

/-! ## A055434.P13590700922998596152

`A302997(A055999(n+7)+16)`
-/

namespace A055434.P13590700922998596152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A055999 (n + 7) + 16).toNat

end

end A055434.P13590700922998596152

/-! ## A055434.P5491807801862900637

`A302997(eq[11, A002260(n+1)])`
-/

namespace A055434.P5491807801862900637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055434.P5491807801862900637

/-! ## A055434.P8549711157731550695

`A302997(A046691(n+12)-A008586(n+9))`
-/

namespace A055434.P8549711157731550695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A046691 (n + 12) - A008586 (n + 9)).toNat

end

end A055434.P8549711157731550695

/-!
# A055435: (1/18)*Difference between concatenation of n and n^2 and concatenation of n^2 and n.

The programs for A055435, the canonical program `A055435.P11643938149336222448` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055435 has offset 1).

The definition of A055435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053061, A055436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055435.P11643938149336222448

`(A053061(n+1)-A055436(n+1))/18`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055435

/-- `(A053061(n+1)-A055436(n+1))/18` -/
def P11643938149336222448.Spec : Prop :=
  ∀ n, P11643938149336222448.a n = (A055435 (n + 1) : ℚ)

end A055435

/-!
# A055436: a(n) = concatenation of n^2 and n.

The programs for A055436, the canonical program `A055436.P5718012716904594171` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055436 has offset 1).

The definition of A055436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055436.P5718012716904594171

`(n+1)*(A020338(n+1)-n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055436

/-- `(n+1)*(A020338(n+1)-n)` -/
def P5718012716904594171.Spec : Prop :=
  ∀ n, P5718012716904594171.a n = A055436 (n + 1)

theorem P5718012716904594171.correct : P5718012716904594171.Spec := by
  intro n
  simp only [A055436, Nat.add_sub_cancel]

end A055436

/-! ## A055436.P2108493817907680750

`lcm(A020338(n+1)-n, A028310(n+1))`
-/

namespace A055436.P2108493817907680750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020338 (n + 1) - (n : ℤ)) (A028310 (n + 1))

end

end A055436.P2108493817907680750

namespace A055436

/-- `lcm(A020338(n+1)-n, A028310(n+1))` -/
def P2108493817907680750.Spec : Prop :=
  ∀ n, (P2108493817907680750.a n : ℤ) = A055436 (n + 1)

end A055436

/-! ## A055436.P3877371239012448243

`(A020338(n+1)+A001057(2*n))*(n+1)`
-/

namespace A055436.P3877371239012448243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) + A001057 (2 * n)) * (n + 1 : ℤ)

end

end A055436.P3877371239012448243

namespace A055436

/-- `(A020338(n+1)+A001057(2*n))*(n+1)` -/
def P3877371239012448243.Spec : Prop :=
  ∀ n, P3877371239012448243.a n = A055436 (n + 1)

end A055436

/-! ## A055436.P11329189305793519572

`A239462(n+1)+n`
-/

namespace A055436.P11329189305793519572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239462 (n + 1) + (n : ℤ)

end

end A055436.P11329189305793519572

namespace A055436

/-- `A239462(n+1)+n` -/
def P11329189305793519572.Spec : Prop :=
  ∀ n, P11329189305793519572.a n = A055436 (n + 1)

theorem P11329189305793519572.correct : P11329189305793519572.Spec := by
  intro n
  simp only [A055436, Nat.add_sub_cancel, A055436.P11329189305793519572.a, A055436.P5718012716904594171.a, A020338, A020338.P4106658568687796505.a, A239462, A239462.P29377133976315736.a, A004216, A004216.P11701108540860389608.a, A005563, A005563.P13300161655551567421.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055436

/-! ## A055436.P4614912631727014077

`A239459(n+1)/(n+1)+n`
-/

namespace A055436.P4614912631727014077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239459 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A055436.P4614912631727014077

namespace A055436

/-- `A239459(n+1)/(n+1)+n` -/
def P4614912631727014077.Spec : Prop :=
  ∀ n, P4614912631727014077.a n = (A055436 (n + 1) : ℚ)

theorem P4614912631727014077.correct : P4614912631727014077.Spec := by
  intro n
  simp only [A055436, Nat.add_sub_cancel, A055436.P4614912631727014077.a, A055436.P5718012716904594171.a, A020338, A020338.P4106658568687796505.a, A239459, A239459.P5241054701522062125.a, A004216, A004216.P11701108540860389608.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055436

/-! ## A055436.P7598750687806733321

`record[A239462(A008619(n))-A001057(n)]`
-/

namespace A055436.P7598750687806733321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239462 (A008619 n).toNat - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055436.P7598750687806733321

namespace A055436

/-- `record[A239462(A008619(n))-A001057(n)]` -/
def P7598750687806733321.Spec : Prop :=
  ∀ n, P7598750687806733321.a n = A055436 (n + 1)

end A055436

/-! ## A055436.P5347677498268128237

`record[A239459(A008619(n))/A080513(n)]+n`
-/

namespace A055436.P5347677498268128237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239459 (A008619 n).toNat : ℚ) / (A080513 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℚ)

end

end A055436.P5347677498268128237

namespace A055436

/-- `record[A239459(A008619(n))/A080513(n)]+n` -/
def P5347677498268128237.Spec : Prop :=
  ∀ n, P5347677498268128237.a n = (A055436 (n + 1) : ℚ)

end A055436

/-! ## A055436.P5287958228625806788

`(n+1)*(A084854(∑[n+1])-n)`
-/

namespace A055436.P5287958228625806788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A084854 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ))

end

end A055436.P5287958228625806788

namespace A055436

/-- `(n+1)*(A084854(∑[n+1])-n)` -/
def P5287958228625806788.Spec : Prop :=
  ∀ n, P5287958228625806788.a n = A055436 (n + 1)

end A055436

/-! ## A055436.P13756135468266048938

`lcm(n+1, A000265(A020338(n+1)-n))`
-/

namespace A055436.P13756135468266048938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000265 (A020338 (n + 1) - (n : ℤ)).toNat)

end

end A055436.P13756135468266048938

namespace A055436

/-- `lcm(n+1, A000265(A020338(n+1)-n))` -/
def P13756135468266048938.Spec : Prop :=
  ∀ n, (P13756135468266048938.a n : ℤ) = A055436 (n + 1)

end A055436

/-!
# A055437: a(n) = 10*n^2+n.

The programs for A055437, the canonical program `A055437.P16755880590362993193` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055437 has offset 1).

The definition of A055437 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(n+1)²+n+1` (program `A055437.P16755880590362993193`, by `A055437.P16755880590362993193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055437.P18380767515748714377

`ogf((11+9x)/(1-3x+3x^2-x^3))`
-/

namespace A055437.P18380767515748714377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 9] [1, -3, 3, -1] n

end

end A055437.P18380767515748714377

namespace A055437

/-- `ogf((11+9x)/(1-3x+3x^2-x^3))` -/
def P18380767515748714377.Spec : Prop :=
  ∀ n, P18380767515748714377.a n = A055437 (n + 1)

end A055437

/-! ## A055437.P16755880590362993193

`10*(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055437

/-- `10*(n+1)²+n+1` -/
def P16755880590362993193.Spec : Prop :=
  ∀ n, (P16755880590362993193.a n : ℤ) = A055437 (n + 1)

theorem P16755880590362993193.correct : P16755880590362993193.Spec := by
  intro n
  simp only [A055437, Nat.add_sub_cancel]

end A055437

/-! ## A055437.P12717106195533299277

`1/5*∑{#}[10*(n+1), #]`
-/

namespace A055437.P12717106195533299277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * ((∑ k ∈ Finset.range (f1 n + 1), k : ℕ) : ℚ)

end

end A055437.P12717106195533299277

namespace A055437

/-- `1/5*∑{#}[10*(n+1), #]` -/
def P12717106195533299277.Spec : Prop :=
  ∀ n, P12717106195533299277.a n = (A055437 (n + 1) : ℚ)

end A055437

/-! ## A055437.P9816231671834150024

`∑[a(n-1)+20]` with `a(0)=11`
-/

namespace A055437.P9816231671834150024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055437.P9816231671834150024

namespace A055437

/-- `∑[a(n-1)+20]` -/
def P9816231671834150024.Spec : Prop :=
  ∀ n, (P9816231671834150024.a n : ℤ) = A055437 (n + 1)

end A055437

/-! ## A055437.P10213763742664700861

`∑[ogf((11+9x)/(1-2x+x^2))]`
-/

namespace A055437.P10213763742664700861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055437.P10213763742664700861

namespace A055437

/-- `∑[ogf((11+9x)/(1-2x+x^2))]` -/
def P10213763742664700861.Spec : Prop :=
  ∀ n, P10213763742664700861.a n = A055437 (n + 1)

end A055437

/-! ## A055437.P1525744090133981344

`lcm(10*n+11, n+1)`
-/

namespace A055437.P1525744090133981344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (10 * n + 11) (n + 1)

end

end A055437.P1525744090133981344

namespace A055437

/-- `lcm(10*n+11, n+1)` -/
def P1525744090133981344.Spec : Prop :=
  ∀ n, (P1525744090133981344.a n : ℤ) = A055437 (n + 1)

end A055437

/-! ## A055437.P10115137565280034785

`(n+1)*or(1, 10*(n+1))`
-/

namespace A055437.P10115137565280034785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.lor 1 (10 * (n + 1))

end

end A055437.P10115137565280034785

namespace A055437

/-- `(n+1)*or(1, 10*(n+1))` -/
def P10115137565280034785.Spec : Prop :=
  ∀ n, (P10115137565280034785.a n : ℤ) = A055437 (n + 1)

end A055437

/-! ## A055437.P5110868264489766212

`(n+1)*xor(1, 10*(n+1))`
-/

namespace A055437.P5110868264489766212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 1 (10 * (n + 1))

end

end A055437.P5110868264489766212

namespace A055437

/-- `(n+1)*xor(1, 10*(n+1))` -/
def P5110868264489766212.Spec : Prop :=
  ∀ n, (P5110868264489766212.a n : ℤ) = A055437 (n + 1)

end A055437

/-! ## A055437.P3526788804530655616

`∑[A290781(n)-4]`
-/

namespace A055437.P3526788804530655616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290781 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055437.P3526788804530655616

namespace A055437

/-- `∑[A290781(n)-4]` -/
def P3526788804530655616.Spec : Prop :=
  ∀ n, P3526788804530655616.a n = A055437 (n + 1)

end A055437

/-! ## A055437.P9720616400613248658

`∑[A305074(n+1)-1]`
-/

namespace A055437.P9720616400613248658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305074 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055437.P9720616400613248658

namespace A055437

/-- `∑[A305074(n+1)-1]` -/
def P9720616400613248658.Spec : Prop :=
  ∀ n, P9720616400613248658.a n = A055437 (n + 1)

end A055437

/-! ## A055437.P9885964188191759149

`(n+1)*(A017377(n)+2)`
-/

namespace A055437.P9885964188191759149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A017377 n + 2)

end

end A055437.P9885964188191759149

namespace A055437

/-- `(n+1)*(A017377(n)+2)` -/
def P9885964188191759149.Spec : Prop :=
  ∀ n, P9885964188191759149.a n = A055437 (n + 1)

theorem P9885964188191759149.correct : P9885964188191759149.Spec := by
  intro n
  simp only [A055437, Nat.add_sub_cancel, A055437.P9885964188191759149.a, A055437.P16755880590362993193.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055437

/-! ## A055437.P11635381942379838040

`(n+1)*(A017365(n)+3)`
-/

namespace A055437.P11635381942379838040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A017365 n + 3)

end

end A055437.P11635381942379838040

namespace A055437

/-- `(n+1)*(A017365(n)+3)` -/
def P11635381942379838040.Spec : Prop :=
  ∀ n, P11635381942379838040.a n = A055437 (n + 1)

theorem P11635381942379838040.correct : P11635381942379838040.Spec := by
  intro n
  simp only [A055437, Nat.add_sub_cancel, A055437.P11635381942379838040.a, A055437.P16755880590362993193.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055437

/-! ## A055437.P5130719652789691897

`A269621(n+1)%A061222(n)`
-/

namespace A055437.P5130719652789691897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269621 (n + 1)) (A061222 n)

end

end A055437.P5130719652789691897

namespace A055437

/-- `A269621(n+1)%A061222(n)` -/
def P5130719652789691897.Spec : Prop :=
  ∀ n, P5130719652789691897.a n = A055437 (n + 1)

end A055437

/-! ## A055437.P12061901710954273416

`A156856(n+1)%A165798(n+1)`
-/

namespace A055437.P12061901710954273416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156856 (n + 1)) (A165798 (n + 1))

end

end A055437.P12061901710954273416

namespace A055437

/-- `A156856(n+1)%A165798(n+1)` -/
def P12061901710954273416.Spec : Prop :=
  ∀ n, P12061901710954273416.a n = A055437 (n + 1)

end A055437

/-! ## A055437.P12815613938122796354

`(n+1)*A017281(n+1)`
-/

namespace A055437.P12815613938122796354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017281 (n + 1)

end

end A055437.P12815613938122796354

namespace A055437

/-- `(n+1)*A017281(n+1)` -/
def P12815613938122796354.Spec : Prop :=
  ∀ n, P12815613938122796354.a n = A055437 (n + 1)

theorem P12815613938122796354.correct : P12815613938122796354.Spec := by
  intro n
  simp only [A055437, Nat.add_sub_cancel, A055437.P12815613938122796354.a, A055437.P16755880590362993193.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055437

/-! ## A055437.P1909973601557605167

`Δ[A220084(n)-(n+1)²]`
-/

namespace A055437.P1909973601557605167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055437.P1909973601557605167

namespace A055437

/-- `Δ[A220084(n)-(n+1)²]` -/
def P1909973601557605167.Spec : Prop :=
  ∀ n, P1909973601557605167.a n = A055437 (n + 1)

end A055437

/-! ## A055437.P4041100797198281465

`(n+1)*(A017317(n+1)-3)`
-/

namespace A055437.P4041100797198281465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A017317 (n + 1) - 3)

end

end A055437.P4041100797198281465

namespace A055437

/-- `(n+1)*(A017317(n+1)-3)` -/
def P4041100797198281465.Spec : Prop :=
  ∀ n, P4041100797198281465.a n = A055437 (n + 1)

theorem P4041100797198281465.correct : P4041100797198281465.Spec := by
  intro n
  simp only [A055437, Nat.add_sub_cancel, A055437.P4041100797198281465.a, A055437.P16755880590362993193.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055437

/-! ## A055437.P8703972324152672558

`(n+1)*Δ[A051624(n+1)]`
-/

namespace A055437.P8703972324152672558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A055437.P8703972324152672558

namespace A055437

/-- `(n+1)*Δ[A051624(n+1)]` -/
def P8703972324152672558.Spec : Prop :=
  ∀ n, P8703972324152672558.a n = A055437 (n + 1)

theorem P8703972324152672558.correct : P8703972324152672558.Spec := by
  intro n
  simp only [A055437, Nat.add_sub_cancel, A055437.P8703972324152672558.f1, A055437.P8703972324152672558.a, A055437.P16755880590362993193.a, A051624, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055437

/-! ## A055437.P14535681161856799420

`∑[A017281(2*n+1)]`
-/

namespace A055437.P14535681161856799420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055437.P14535681161856799420

namespace A055437

/-- `∑[A017281(2*n+1)]` -/
def P14535681161856799420.Spec : Prop :=
  ∀ n, P14535681161856799420.a n = A055437 (n + 1)

end A055437

/-! ## A055437.P5756923826108151369

`∑[sqrt(A017282(2*n+1))]`
-/

namespace A055437.P5756923826108151369
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017282 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055437.P5756923826108151369

namespace A055437

/-- `∑[sqrt(A017282(2*n+1))]` -/
def P5756923826108151369.Spec : Prop :=
  ∀ n, P5756923826108151369.a n = (A055437 (n + 1) : ℝ)

end A055437

/-!
# A055438: a(n) = 100*n^2 + n.

The programs for A055438, the canonical program `A055438.P9723371937741257450` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055438 has offset 1).

The definition of A055438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100*(n+1)²+n+1` (program `A055438.P9723371937741257450`, by `A055438.P9723371937741257450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055438.P9041110910368607817

`ogf((101+99x)/(1-3x+3x^2-x^3))`
-/

namespace A055438.P9041110910368607817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [101, 99] [1, -3, 3, -1] n

end

end A055438.P9041110910368607817

namespace A055438

/-- `ogf((101+99x)/(1-3x+3x^2-x^3))` -/
def P9041110910368607817.Spec : Prop :=
  ∀ n, P9041110910368607817.a n = A055438 (n + 1)

end A055438

/-! ## A055438.P9723371937741257450

`100*(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055438

/-- `100*(n+1)²+n+1` -/
def P9723371937741257450.Spec : Prop :=
  ∀ n, (P9723371937741257450.a n : ℤ) = A055438 (n + 1)

theorem P9723371937741257450.correct : P9723371937741257450.Spec := by
  intro n
  simp only [A055438, Nat.add_sub_cancel]

end A055438

/-! ## A055438.P8534226109604202405

`A158128(1+n)*(n+1)`
-/

namespace A055438.P8534226109604202405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (1 + n) * (n + 1 : ℤ)

end

end A055438.P8534226109604202405

namespace A055438

/-- `A158128(1+n)*(n+1)` -/
def P8534226109604202405.Spec : Prop :=
  ∀ n, P8534226109604202405.a n = A055438 (n + 1)

end A055438

/-! ## A055438.P7455956354318502202

`lcm(A000027(n+1), A158128(n+1))`
-/

namespace A055438.P7455956354318502202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158128 (n + 1))

end

end A055438.P7455956354318502202

namespace A055438

/-- `lcm(A000027(n+1), A158128(n+1))` -/
def P7455956354318502202.Spec : Prop :=
  ∀ n, (P7455956354318502202.a n : ℤ) = A055438 (n + 1)

end A055438

/-! ## A055438.P10459907245151484545

`∑[Δ[A008592(n)²]+1]`
-/

namespace A055438.P10459907245151484545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055438.P10459907245151484545

namespace A055438

/-- `∑[Δ[A008592(n)²]+1]` -/
def P10459907245151484545.Spec : Prop :=
  ∀ n, P10459907245151484545.a n = A055438 (n + 1)

end A055438

/-! ## A055438.P672594565067608497

`(n+1)*(A102439(n+1)-3)`
-/

namespace A055438.P672594565067608497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A102439 (n + 1) - 3)

end

end A055438.P672594565067608497

namespace A055438

/-- `(n+1)*(A102439(n+1)-3)` -/
def P672594565067608497.Spec : Prop :=
  ∀ n, P672594565067608497.a n = A055438 (n + 1)

theorem P672594565067608497.correct : P672594565067608497.Spec := by
  intro n
  simp only [A055438, Nat.add_sub_cancel, A055438.P672594565067608497.a, A055438.P9723371937741257450.a, A102439, A102439.P10344858111576924215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055438

/-! ## A055438.P4862460881693904226

`(n+1)*(A172178(n+1)+n+1)`
-/

namespace A055438.P4862460881693904226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A172178 (n + 1) + (n + 1 : ℤ))

end

end A055438.P4862460881693904226

namespace A055438

/-- `(n+1)*(A172178(n+1)+n+1)` -/
def P4862460881693904226.Spec : Prop :=
  ∀ n, P4862460881693904226.a n = A055438 (n + 1)

theorem P4862460881693904226.correct : P4862460881693904226.Spec := by
  intro n
  simp only [A055438, Nat.add_sub_cancel, A055438.P4862460881693904226.a, A055438.P9723371937741257450.a, A172178, A172178.P7308245242728204060.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055438

/-! ## A055438.P17076152399017047953

`(n+1)*(A078787(n+1)-(n+1))`
-/

namespace A055438.P17076152399017047953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A078787 (n + 1) - (n + 1 : ℤ))

end

end A055438.P17076152399017047953

namespace A055438

/-- `(n+1)*(A078787(n+1)-(n+1))` -/
def P17076152399017047953.Spec : Prop :=
  ∀ n, P17076152399017047953.a n = A055438 (n + 1)

theorem P17076152399017047953.correct : P17076152399017047953.Spec := by
  intro n
  simp only [A055438, Nat.add_sub_cancel, A055438.P17076152399017047953.a, A055438.P9723371937741257450.a, A078787, A078787.P12578493435956342852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055438

/-! ## A055438.P3394782996435307666

`∑[A158128(2*n+1)]`
-/

namespace A055438.P3394782996435307666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055438.P3394782996435307666

namespace A055438

/-- `∑[A158128(2*n+1)]` -/
def P3394782996435307666.Spec : Prop :=
  ∀ n, P3394782996435307666.a n = A055438 (n + 1)

end A055438

/-! ## A055438.P14827083213951822777

`A158127(2*(n+1))/4`
-/

namespace A055438.P14827083213951822777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158127 (2 * (n + 1)) : ℚ) / 4

end

end A055438.P14827083213951822777

namespace A055438

/-- `A158127(2*(n+1))/4` -/
def P14827083213951822777.Spec : Prop :=
  ∀ n, P14827083213951822777.a n = (A055438 (n + 1) : ℚ)

end A055438

/-! ## A055438.P9550359647432339870

`(n+1)*A017281(10*(n+1))`
-/

namespace A055438.P9550359647432339870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017281 (10 * (n + 1))

end

end A055438.P9550359647432339870

namespace A055438

/-- `(n+1)*A017281(10*(n+1))` -/
def P9550359647432339870.Spec : Prop :=
  ∀ n, P9550359647432339870.a n = A055438 (n + 1)

theorem P9550359647432339870.correct : P9550359647432339870.Spec := by
  intro n
  simp only [A055438, Nat.add_sub_cancel, A055438.P9550359647432339870.a, A055438.P9723371937741257450.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055438

/-! ## A055438.P7843982526297901549

`(n+1)*A016813(A008587(A008587(n+1)))`
-/

namespace A055438.P7843982526297901549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016813 (A008587 (A008587 (n + 1)).toNat).toNat

end

end A055438.P7843982526297901549

namespace A055438

/-- `(n+1)*A016813(A008587(A008587(n+1)))` -/
def P7843982526297901549.Spec : Prop :=
  ∀ n, P7843982526297901549.a n = A055438 (n + 1)

end A055438

/-!
# A055440: Distribution of first digit of mantissa following Benford's law, using d'Hondt method.

The programs for A055440, there is no canonical definition to state claims against.
-/

/-! ## A055440.P15269890434857475190

`A395154(n+1)%A395162(2*(n+1))`
-/

namespace A055440.P15269890434857475190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395154 (n + 1)) (A395162 (2 * (n + 1)))

end

end A055440.P15269890434857475190

/-! ## A055440.P3958433399223483474

`A395154(n+1)^A144150(A008290(n))`
-/

namespace A055440.P3958433399223483474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395154 (n + 1) : ℚ) ^ (A144150 (A008290 n).toNat : ℤ)

end

end A055440.P3958433399223483474

/-! ## A055440.P5088921149551114226

`A395154(n+1)%A008259(A008293(n))`
-/

namespace A055440.P5088921149551114226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395154 (n + 1)) (A008259 (A008293 n).toNat)

end

end A055440.P5088921149551114226

/-! ## A055440.P3235439316229923105

`A395154(n+1)^A144150(A008313(n+4))`
-/

namespace A055440.P3235439316229923105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395154 (n + 1) : ℚ) ^ (A144150 (A008313 (n + 4)).toNat : ℤ)

end

end A055440.P3235439316229923105

/-! ## A055440.P10460876094293994768

`A395154(n+1)+A339846(A002496(2*n+3))`
-/

namespace A055440.P10460876094293994768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395154 (n + 1) + A339846 (A002496 (2 * n + 3)).toNat

end

end A055440.P10460876094293994768

/-!
# A055442: Distribution of first digit of mantissa following Benford's law, using largest remainder method with Droop quotas.

The programs for A055442, there is no canonical definition to state claims against.
-/

/-! ## A055442.P6280601326867399830

`A055449(∑[A287384(n)])`
-/

namespace A055442.P6280601326867399830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055442.P6280601326867399830

/-! ## A055442.P7157502546279342378

`A055449(A287384(n)+n)`
-/

namespace A055442.P7157502546279342378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (A287384 n + (n : ℤ)).toNat

end

end A055442.P7157502546279342378

/-! ## A055442.P10527739358604742271

`A055449(A000120(∑[2^n]))`
-/

namespace A055442.P10527739358604742271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (A000120 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055442.P10527739358604742271

/-! ## A055442.P3675650929725244803

`A055449(A077168(n+1)-1)`
-/

namespace A055442.P3675650929725244803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (A077168 (n + 1) - 1).toNat

end

end A055442.P3675650929725244803

/-! ## A055442.P16229570090244315917

`A055449(C(A055471(n+1), n))`
-/

namespace A055442.P16229570090244315917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (Nat.choose (A055471 (n + 1)).toNat n)

end

end A055442.P16229570090244315917

/-!
# A055443: Base 3 distribution of first digit of mantissa following Benford's Law, to minimize chi-squared statistic.

The programs for A055443, the canonical program `A055443.P17112843327039390121` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055443 has offset 1).

The definition of A055443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055443.P17112843327039390121

`2-Δ[round(n/log2(3))]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055443

/-- `2-Δ[round(n/log2(3))]` -/
def P17112843327039390121.Spec : Prop :=
  ∀ n, P17112843327039390121.a n = A055443 (n + 1)

theorem P17112843327039390121.correct : P17112843327039390121.Spec := by
  intro n
  simp only [A055443, Nat.add_sub_cancel]

end A055443

/-!
# A055444: Base 4 distribution of first digit of mantissa following Benford's Law, to minimize chi-squared statistic.

The programs for A055444, there is no canonical definition to state claims against.
-/

/-! ## A055444.P15743694485846266238

`A055439(lt[A055439(n+1), 4]+1)`
-/

namespace A055444.P15743694485846266238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055439 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055439 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A055444.P15743694485846266238

/-!
# A055445: Base 5 distribution of first digit of mantissa following Benford's Law, to minimize chi-squared statistic.

The programs for A055445, there is no canonical definition to state claims against.
-/

/-! ## A055445.P1355028552839908202

`A055449(lt[A055449(n+1), 5]+1)`
-/

namespace A055445.P1355028552839908202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A055445.P1355028552839908202

/-! ## A055445.P13040118746072815945

`A055439(lt[A055439(n+1), 5]+1)`
-/

namespace A055445.P13040118746072815945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055439 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055439 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A055445.P13040118746072815945

/-! ## A055445.P14922063040472871943

`A156077(Δ[A102451(A008574(n))])`
-/

namespace A055445.P14922063040472871943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102451 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (f1 (n + 1) - f1 n).toNat

end

end A055445.P14922063040472871943

/-! ## A055445.P11360758381058517904

`ceil(p?[A001840(A221642(n+1))]/2)`
-/

namespace A055445.P11360758381058517904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A221642 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A055445.P11360758381058517904

/-! ## A055445.P14966280185817264616

`A029922(p?[A001840(A221642(n+1))])`
-/

namespace A055445.P14966280185817264616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A221642 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A055445.P14966280185817264616

/-!
# A055446: Base 6 distribution of first digit of mantissa following Benford's Law, to minimize chi-squared statistic.

The programs for A055446, there is no canonical definition to state claims against.
-/

/-! ## A055446.P7422302333113615762

`A055447(∑[runs[A055458(n+4)]])`
-/

namespace A055446.P7422302333113615762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055458 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055446.P7422302333113615762

/-! ## A055446.P11839243480433573353

`A156262(p?[A000041(A210959(n+1))])`
-/

namespace A055446.P11839243480433573353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A210959 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A055446.P11839243480433573353

/-! ## A055446.P16332196474046382393

`A178047(p?[A000041(A210959(n+1))])`
-/

namespace A055446.P16332196474046382393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A210959 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178047 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A055446.P16332196474046382393

/-! ## A055446.P1973343394816474214

`A178047(p?[A000041(A221642(n+1))])`
-/

namespace A055446.P1973343394816474214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A221642 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178047 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A055446.P1973343394816474214

/-! ## A055446.P3433088319728954727

`A326619(p?[A000041(A221642(n+1))])`
-/

namespace A055446.P3433088319728954727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A221642 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A055446.P3433088319728954727

/-!
# A055447: Base 7 distribution of first digit of mantissa following Benford's Law, to minimize chi-squared statistic.

The programs for A055447, there is no canonical definition to state claims against.
-/

/-! ## A055447.P16000606143630687087

`A055448(∑[runs[A055458(n+1)]])`
-/

namespace A055447.P16000606143630687087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055458 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055447.P16000606143630687087

/-!
# A055448: Base 8 distribution of first digit of mantissa following Benford's Law, to minimize chi-squared statistic.

The programs for A055448, there is no canonical definition to state claims against.
-/

/-! ## A055448.P9465593948609332576

`A055449(∑[A138904(A266420(n+1))])`
-/

namespace A055448.P9465593948609332576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A266420 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055448.P9465593948609332576

/-! ## A055448.P4863425271618364862

`A055449(floor(log(A199937(n+1))))`
-/

namespace A055448.P4863425271618364862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 ⌊Real.log (A199937 (n + 1) : ℝ)⌋.toNat

end

end A055448.P4863425271618364862

/-! ## A055448.P2989723291597714907

`A055449(∑[A258280(A321991(n))])`
-/

namespace A055448.P2989723291597714907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (A321991 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055448.P2989723291597714907

/-! ## A055448.P8220674088801543490

`A055449(A020753(n+1))`
-/

namespace A055448.P8220674088801543490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (A020753 (n + 1)).toNat

end

end A055448.P8220674088801543490

/-!
# A055449: Base 9 distribution of first digit of mantissa following Benford's Law, to minimize chi-squared statistic.

The programs for A055449, there is no canonical definition to state claims against.
-/

/-! ## A055449.P3832355332223183284

`A055439(ceil(log(A316696(n+2))))`
-/

namespace A055449.P3832355332223183284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055439 ⌈Real.log (A316696 (n + 2) : ℝ)⌉.toNat

end

end A055449.P3832355332223183284

/-! ## A055449.P7210348641955156983

`A055442(A004437(n+1)%A024779(n+1))`
-/

namespace A055449.P7210348641955156983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055442 (Int.tmod (A004437 (n + 1)) (A024779 (n + 1))).toNat

end

end A055449.P7210348641955156983

/-! ## A055449.P3892674364955266837

`A055439(lt[A323524(3*n+4), A250120(n)])`
-/

namespace A055449.P3892674364955266837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323524 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055439 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A055449.P3892674364955266837

/-! ## A055449.P1654922387732677932

`A055439(A325328(n+1)%A095751(2*n+1))`
-/

namespace A055449.P1654922387732677932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055439 (Int.tmod (A325328 (n + 1)) (A095751 (2 * n + 1))).toNat

end

end A055449.P1654922387732677932

/-! ## A055449.P11396814185040946212

`A055439(lt[A323524(3*n+4), A003961(n+1)])`
-/

namespace A055449.P11396814185040946212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323524 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055439 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A055449.P11396814185040946212

/-!
# A055451: Row sums of array in A055450.

The programs for A055451, there is no canonical definition to state claims against.
-/

/-! ## A055451.P16310944622847400067

`∑{#}[n, A055450(C(n+1, 2)+#)]`
-/

namespace A055451.P16310944622847400067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A055450 (Nat.choose (n + 1) 2 + k)

end

end A055451.P16310944622847400067

/-! ## A055451.P7934893397788458656

`A325863(A006252(n))+A005320(n)`
-/

namespace A055451.P7934893397788458656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325863 (A006252 n).toNat + A005320 n

end

end A055451.P7934893397788458656

/-!
# A055452: a(n) = T(n,n-2), array T as in A055450.

The programs for A055452, there is no canonical definition to state claims against.
-/

/-! ## A055452.P7147768820178852085

`char[1]+record[A277969(n)]`
-/

namespace A055452.P7147768820178852085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A055452.P7147768820178852085

/-! ## A055452.P16125301163459587860

`record[A277969(n)]-A159075(n)`
-/

namespace A055452.P16125301163459587860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A159075 n

end

end A055452.P16125301163459587860

/-! ## A055452.P7826874388170593193

`or(record[A277969(n)], A063524(n))`
-/

namespace A055452.P7826874388170593193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A063524 n)

end

end A055452.P7826874388170593193

/-! ## A055452.P13694279033343543870

`record[A277969(n)]+A048852(n)%2`
-/

namespace A055452.P13694279033343543870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Int.tmod (A048852 n) 2

end

end A055452.P13694279033343543870

/-! ## A055452.P6547065601264799973

`or(record[A277969(n)], A019590(n+1))`
-/

namespace A055452.P6547065601264799973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A019590 (n + 1))

end

end A055452.P6547065601264799973

/-! ## A055452.P8427685437159718305

`A055450(∑[n+3])`
-/

namespace A055452.P8427685437159718305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055452.P8427685437159718305

/-!
# A055453: a(n) = T(n,n-3), array T as in A055450.

The programs for A055453, there is no canonical definition to state claims against.
-/

/-! ## A055453.P13627616882315562761

`A055450(∑[n+4]+2)`
-/

namespace A055453.P13627616882315562761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A055453.P13627616882315562761

/-! ## A055453.P4336393113501032240

`A020928(n)%A020898(Δ[floor(3^(n-1))])`
-/

namespace A055453.P4336393113501032240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020928 n) (A020898 (f1 (n + 1) - f1 n).toNat)

end

end A055453.P4336393113501032240

/-!
# A055454: a(n) = A055450(n, n-4).

The programs for A055454, there is no canonical definition to state claims against.
-/

/-! ## A055454.P12908173784914382146

`A055450(C(n+5, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055454.P12908173784914382146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (Nat.choose (n + 5) 2 + n)

end

end A055454.P12908173784914382146

/-! ## A055454.P7537541152886434880

`A055450(A052905(n+2))`
-/

namespace A055454.P7537541152886434880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A052905 (n + 2)).toNat

end

end A055454.P7537541152886434880

/-! ## A055454.P9368201877110553712

`A055450(eq[4, A025581(n)])`
-/

namespace A055454.P9368201877110553712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055454.P9368201877110553712

/-! ## A055454.P1962904994034592980

`A055450(A000217(n+5)-5)`
-/

namespace A055454.P1962904994034592980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A000217 (n + 5) - 5).toNat

end

end A055454.P1962904994034592980

/-! ## A055454.P16883001404221897142

`A055450(A000124(n+5)-6)`
-/

namespace A055454.P16883001404221897142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A000124 (n + 5) - 6).toNat

end

end A055454.P16883001404221897142

/-! ## A055454.P235289032840128522

`A055450(eq[5, A004736(n+1)])`
-/

namespace A055454.P235289032840128522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055454.P235289032840128522

/-! ## A055454.P3126156824672413310

`A055450(A060577(n+3)+n+4)`
-/

namespace A055454.P3126156824672413310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A060577 (n + 3) + (n + 4 : ℤ)).toNat

end

end A055454.P3126156824672413310

/-!
# A055455: a(n) = A055450(n, n-5).

The programs for A055455, there is no canonical definition to state claims against.
-/

/-! ## A055455.P15182960888646492403

`A055450(C(n+6, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055455.P15182960888646492403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (Nat.choose (n + 6) 2 + n)

end

end A055455.P15182960888646492403

/-! ## A055455.P13319916243621491223

`A055450(eq[5, A025581(n)])`
-/

namespace A055455.P13319916243621491223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055455.P13319916243621491223

/-! ## A055455.P551188544403848966

`A055450(A027379(n+4)-3)`
-/

namespace A055455.P551188544403848966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A027379 (n + 4) - 3).toNat

end

end A055455.P551188544403848966

/-! ## A055455.P1365837901836922719

`A055450(A000217(n+6)-6)`
-/

namespace A055455.P1365837901836922719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A000217 (n + 6) - 6).toNat

end

end A055455.P1365837901836922719

/-! ## A055455.P8605535168179667673

`A055450(eq[6, A004736(n+1)])`
-/

namespace A055455.P8605535168179667673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055455.P8605535168179667673

/-! ## A055455.P11092996708387126774

`A055450(A000124(n+5)-(1-n))`
-/

namespace A055455.P11092996708387126774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A000124 (n + 5) - (1 - (n : ℤ))).toNat

end

end A055455.P11092996708387126774

/-!
# A055456: a(n) is the smallest number which is not the sum of exactly 1 or of n earlier terms.

The programs for A055456, there is no canonical definition to state claims against.
-/

/-! ## A055456.P373623101302558241

`C(gcd(A016825(3*(n+1)), A172031(n+4)), n²)+n`
-/

namespace A055456.P373623101302558241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (A016825 (3 * (n + 1))) (A172031 (n + 4))) (n ^ 2) + n

end

end A055456.P373623101302558241

/-!
# A055457: 5^a(n) exactly divides 5n. Or, 5-adic valuation of 5n.

The programs for A055457, the canonical program `A055457.P3896145850230682422` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055457 has offset 1).

The definition of A055457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055457.P2367810063473580594

`val(5*(n+1), 5)`
-/

namespace A055457.P2367810063473580594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (5 * (n + 1)) 5

end

end A055457.P2367810063473580594

namespace A055457

/-- `val(5*(n+1), 5)` -/
def P2367810063473580594.Spec : Prop :=
  ∀ n, (P2367810063473580594.a n : ℤ) = A055457 (n + 1)

end A055457

/-! ## A055457.P3896145850230682422

`A112765(n+1)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055457

/-- `A112765(n+1)+1` -/
def P3896145850230682422.Spec : Prop :=
  ∀ n, P3896145850230682422.a n = A055457 (n + 1)

theorem P3896145850230682422.correct : P3896145850230682422.Spec := by
  intro n
  simp only [A055457, Nat.add_sub_cancel]

end A055457

/-! ## A055457.P15356636284070814541

`1+val(1+n, 5)`
-/

namespace A055457.P15356636284070814541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.valuation (1 + n) 5

end

end A055457.P15356636284070814541

namespace A055457

/-- `1+val(1+n, 5)` -/
def P15356636284070814541.Spec : Prop :=
  ∀ n, (P15356636284070814541.a n : ℤ) = A055457 (n + 1)

theorem P15356636284070814541.correct : P15356636284070814541.Spec := by
  intro n
  simp only [A055457, Nat.add_sub_cancel, A055457.P15356636284070814541.a, A055457.P3896145850230682422.a, A112765, A112765.P4892120039852414895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055457

/-! ## A055457.P6218879528940321062

`Δ[a(floor(n/5))+n]` with `a(0)=0`
-/

namespace A055457.P6218879528940321062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 5⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A055457.P6218879528940321062

namespace A055457

/-- `Δ[a(floor(n/5))+n]` -/
def P6218879528940321062.Spec : Prop :=
  ∀ n, P6218879528940321062.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P7457914184837884275

`dr(val(5*(2*n-(n-1)), 5))`
-/

namespace A055457.P7457914184837884275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (5 * ((2 * n : ℤ) - ((n : ℤ) - 1))).toNat 5 : ℤ)

end

end A055457.P7457914184837884275

namespace A055457

/-- `dr(val(5*(2*n-(n-1)), 5))` -/
def P7457914184837884275.Spec : Prop :=
  ∀ n, (P7457914184837884275.a n : ℤ) = A055457 (n + 1)

end A055457

/-! ## A055457.P9996227294834876578

`ceil(ratio[A277873(n)])`
-/

namespace A055457.P9996227294834876578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A055457.P9996227294834876578

namespace A055457

/-- `ceil(ratio[A277873(n)])` -/
def P9996227294834876578.Spec : Prop :=
  ∀ n, P9996227294834876578.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P11807046892745440513

`ceil(ratio[A303828(n)])`
-/

namespace A055457.P11807046892745440513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A055457.P11807046892745440513

namespace A055457

/-- `ceil(ratio[A303828(n)])` -/
def P11807046892745440513.Spec : Prop :=
  ∀ n, P11807046892745440513.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P3138228109923241057

`Δ[A027868(n)]+1`
-/

namespace A055457.P3138228109923241057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A055457.P3138228109923241057

namespace A055457

/-- `Δ[A027868(n)]+1` -/
def P3138228109923241057.Spec : Prop :=
  ∀ n, P3138228109923241057.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P2274144681412004138

`A364223(n+1)/(n+1)`
-/

namespace A055457.P2274144681412004138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364223 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A055457.P2274144681412004138

namespace A055457

/-- `A364223(n+1)/(n+1)` -/
def P2274144681412004138.Spec : Prop :=
  ∀ n, P2274144681412004138.a n = (A055457 (n + 1) : ℚ)

end A055457

/-! ## A055457.P5852122980512400266

`A051064(A064989(n+1))`
-/

namespace A055457.P5852122980512400266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A064989 (n + 1)).toNat

end

end A055457.P5852122980512400266

namespace A055457

/-- `A051064(A064989(n+1))` -/
def P5852122980512400266.Spec : Prop :=
  ∀ n, P5852122980512400266.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P16093388295833995396

`A051064(A079707(n+1))`
-/

namespace A055457.P16093388295833995396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A079707 (n + 1)).toNat

end

end A055457.P16093388295833995396

namespace A055457

/-- `A051064(A079707(n+1))` -/
def P16093388295833995396.Spec : Prop :=
  ∀ n, P16093388295833995396.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P682014777493673270

`A001227(A132741(n+1))`
-/

namespace A055457.P682014777493673270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A132741 (n + 1)).toNat

end

end A055457.P682014777493673270

namespace A055457

/-- `A001227(A132741(n+1))` -/
def P682014777493673270.Spec : Prop :=
  ∀ n, P682014777493673270.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P5067904249424620876

`A355583(A343431(n+1))`
-/

namespace A055457.P5067904249424620876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355583 (A343431 (n + 1)).toNat

end

end A055457.P5067904249424620876

namespace A055457

/-- `A355583(A343431(n+1))` -/
def P5067904249424620876.Spec : Prop :=
  ∀ n, P5067904249424620876.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P14249347450941732429

`A051628(A000265(n+1))+1`
-/

namespace A055457.P14249347450941732429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A000265 (n + 1)).toNat + 1

end

end A055457.P14249347450941732429

namespace A055457

/-- `A051628(A000265(n+1))+1` -/
def P14249347450941732429.Spec : Prop :=
  ∀ n, P14249347450941732429.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P7528678180432773906

`A051628(A065330(n+1))+1`
-/

namespace A055457.P7528678180432773906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A065330 (n + 1)).toNat + 1

end

end A055457.P7528678180432773906

namespace A055457

/-- `A051628(A065330(n+1))+1` -/
def P7528678180432773906.Spec : Prop :=
  ∀ n, P7528678180432773906.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P17998807206972787291

`A051628(A072963(n+1))+1`
-/

namespace A055457.P17998807206972787291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A072963 (n + 1)).toNat + 1

end

end A055457.P17998807206972787291

namespace A055457

/-- `A051628(A072963(n+1))+1` -/
def P17998807206972787291.Spec : Prop :=
  ∀ n, P17998807206972787291.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P15908381891257476699

`A007949(A319521(n+1))+1`
-/

namespace A055457.P15908381891257476699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A319521 (n + 1)).toNat + 1

end

end A055457.P15908381891257476699

namespace A055457

/-- `A007949(A319521(n+1))+1` -/
def P15908381891257476699.Spec : Prop :=
  ∀ n, P15908381891257476699.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P5651148147121291541

`A022333(A379004(n+1))+1`
-/

namespace A055457.P5651148147121291541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022333 (A379004 (n + 1)).toNat + 1

end

end A055457.P5651148147121291541

namespace A055457

/-- `A022333(A379004(n+1))+1` -/
def P5651148147121291541.Spec : Prop :=
  ∀ n, P5651148147121291541.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P11554868483038427806

`A106799(A355582(n+1))+1`
-/

namespace A055457.P11554868483038427806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A355582 (n + 1)).toNat + 1

end

end A055457.P11554868483038427806

namespace A055457

/-- `A106799(A355582(n+1))+1` -/
def P11554868483038427806.Spec : Prop :=
  ∀ n, P11554868483038427806.a n = A055457 (n + 1)

end A055457

/-! ## A055457.P3913934564682145144

`A000005(n+1)/A035207(n+1)`
-/

namespace A055457.P3913934564682145144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A035207 (n + 1) : ℚ)

end

end A055457.P3913934564682145144

namespace A055457

/-- `A000005(n+1)/A035207(n+1)` -/
def P3913934564682145144.Spec : Prop :=
  ∀ n, P3913934564682145144.a n = (A055457 (n + 1) : ℚ)

end A055457

/-!
# A055460: Number of primes with odd exponents in the prime power factorization of n!.

The programs for A055460, the canonical program `A055460.P2633110437439138135` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055460 has offset 1).

The definition of A055460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055460.P16385326134232910078

`A000720(n+1)-A348841(n+1)`
-/

namespace A055460.P16385326134232910078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A348841 (n + 1)

end

end A055460.P16385326134232910078

namespace A055460

/-- `A000720(n+1)-A348841(n+1)` -/
def P16385326134232910078.Spec : Prop :=
  ∀ n, P16385326134232910078.a n = A055460 (n + 1)

theorem P16385326134232910078.correct : P16385326134232910078.Spec := by
  intro n
  simp only [A055460, Nat.add_sub_cancel, A055460.P16385326134232910078.a, A055460.P2633110437439138135.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A055204, A055204.P17370574123234970740.a, A348841, A348841.P490662357377440860.a, A055071, A055071.P16321007213921378376.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055460

/-! ## A055460.P2633110437439138135

`A001221(A055204(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055460

/-- `A001221(A055204(n+1))` -/
def P2633110437439138135.Spec : Prop :=
  ∀ n, P2633110437439138135.a n = A055460 (n + 1)

theorem P2633110437439138135.correct : P2633110437439138135.Spec := by
  intro n
  simp only [A055460, Nat.add_sub_cancel]

end A055460

/-! ## A055460.P11496787203561521341

`∑[A010051(n+1)]-A348841(n+1)`
-/

namespace A055460.P11496787203561521341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A348841 (n + 1)

end

end A055460.P11496787203561521341

namespace A055460

/-- `∑[A010051(n+1)]-A348841(n+1)` -/
def P11496787203561521341.Spec : Prop :=
  ∀ n, P11496787203561521341.a n = A055460 (n + 1)

end A055460

/-! ## A055460.P17144337494280700683

`A056172(2*(n+1))-A348841(n+1)`
-/

namespace A055460.P17144337494280700683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 1)) - A348841 (n + 1)

end

end A055460.P17144337494280700683

namespace A055460

/-- `A056172(2*(n+1))-A348841(n+1)` -/
def P17144337494280700683.Spec : Prop :=
  ∀ n, P17144337494280700683.a n = A055460 (n + 1)

end A055460

/-! ## A055460.P10694420572239638524

`log2(A055077(n+1))`
-/

namespace A055460.P10694420572239638524
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A055077 (n + 1) : ℝ)

end

end A055460.P10694420572239638524

namespace A055460

/-- `log2(A055077(n+1))` -/
def P10694420572239638524.Spec : Prop :=
  ∀ n, P10694420572239638524.a n = (A055460 (n + 1) : ℝ)

end A055460

/-! ## A055460.P578663802666191247

`val(A055077(n+1), A000038(n)+2)`
-/

namespace A055460.P578663802666191247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055077 (n + 1)).toNat (A000038 n + 2).toNat

end

end A055460.P578663802666191247

namespace A055460

/-- `val(A055077(n+1), A000038(n)+2)` -/
def P578663802666191247.Spec : Prop :=
  ∀ n, (P578663802666191247.a n : ℤ) = A055460 (n + 1)

end A055460

/-! ## A055460.P14662332569369199655

`val(A055077(n+1), A001222(A001358(n+1)))`
-/

namespace A055460.P14662332569369199655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055077 (n + 1)).toNat (A001222 (A001358 (n + 1)).toNat).toNat

end

end A055460.P14662332569369199655

namespace A055460

/-- `val(A055077(n+1), A001222(A001358(n+1)))` -/
def P14662332569369199655.Spec : Prop :=
  ∀ n, (P14662332569369199655.a n : ℤ) = A055460 (n + 1)

end A055460

/-! ## A055460.P7921854748640675398

`val(A055077(n+1), A001222(A001748(n+1)))`
-/

namespace A055460.P7921854748640675398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055077 (n + 1)).toNat (A001222 (A001748 (n + 1)).toNat).toNat

end

end A055460.P7921854748640675398

namespace A055460

/-- `val(A055077(n+1), A001222(A001748(n+1)))` -/
def P7921854748640675398.Spec : Prop :=
  ∀ n, (P7921854748640675398.a n : ℤ) = A055460 (n + 1)

end A055460

/-! ## A055460.P17526917452028479205

`val(A055077(n+1), A020639(A001043(n+1)))`
-/

namespace A055460.P17526917452028479205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055077 (n + 1)).toNat (A020639 (A001043 (n + 1)).toNat).toNat

end

end A055460.P17526917452028479205

namespace A055460

/-- `val(A055077(n+1), A020639(A001043(n+1)))` -/
def P17526917452028479205.Spec : Prop :=
  ∀ n, (P17526917452028479205.a n : ℤ) = A055460 (n + 1)

end A055460

/-! ## A055460.P9056386633774121890

`val(A055077(n+1), A000005(A083370(n+1)))`
-/

namespace A055460.P9056386633774121890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055077 (n + 1)).toNat (A000005 (A083370 (n + 1)).toNat).toNat

end

end A055460.P9056386633774121890

namespace A055460

/-- `val(A055077(n+1), A000005(A083370(n+1)))` -/
def P9056386633774121890.Spec : Prop :=
  ∀ n, (P9056386633774121890.a n : ℤ) = A055460 (n + 1)

end A055460

/-! ## A055460.P5052772782385007208

`val(A055077(n+1), A020639(2*A020639(n+1)))`
-/

namespace A055460.P5052772782385007208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055077 (n + 1)).toNat (A020639 (2 * A020639 (n + 1)).toNat).toNat

end

end A055460.P5052772782385007208

namespace A055460

/-- `val(A055077(n+1), A020639(2*A020639(n+1)))` -/
def P5052772782385007208.Spec : Prop :=
  ∀ n, (P5052772782385007208.a n : ℤ) = A055460 (n + 1)

end A055460

/-! ## A055460.P9904530652167147794

`val(A047078(n+1)*A055077(n+1), 2)`
-/

namespace A055460.P9904530652167147794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A047078 (n + 1) * A055077 (n + 1)).toNat 2

end

end A055460.P9904530652167147794

namespace A055460

/-- `val(A047078(n+1)*A055077(n+1), 2)` -/
def P9904530652167147794.Spec : Prop :=
  ∀ n, (P9904530652167147794.a n : ℤ) = A055460 (n + 1)

end A055460

/-! ## A055460.P6943893425999574960

`val(A055077(n+1), A025426(A025285(n+1)))`
-/

namespace A055460.P6943893425999574960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055077 (n + 1)).toNat (A025426 (A025285 (n + 1)).toNat).toNat

end

end A055460.P6943893425999574960

namespace A055460

/-- `val(A055077(n+1), A025426(A025285(n+1)))` -/
def P6943893425999574960.Spec : Prop :=
  ∀ n, (P6943893425999574960.a n : ℤ) = A055460 (n + 1)

end A055460

/-! ## A055460.P11202547450434670654

`val(A055077(n+1), A020639(A023036(n)))`
-/

namespace A055460.P11202547450434670654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055077 (n + 1)).toNat (A020639 (A023036 n).toNat).toNat

end

end A055460.P11202547450434670654

namespace A055460

/-- `val(A055077(n+1), A020639(A023036(n)))` -/
def P11202547450434670654.Spec : Prop :=
  ∀ n, (P11202547450434670654.a n : ℤ) = A055460 (n + 1)

end A055460

/-! ## A055460.P2440275608153211821

`val(A055077(n+1), A000005(A047078(n+1)))`
-/

namespace A055460.P2440275608153211821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055077 (n + 1)).toNat (A000005 (A047078 (n + 1)).toNat).toNat

end

end A055460.P2440275608153211821

namespace A055460

/-- `val(A055077(n+1), A000005(A047078(n+1)))` -/
def P2440275608153211821.Spec : Prop :=
  ∀ n, (P2440275608153211821.a n : ℤ) = A055460 (n + 1)

end A055460

/-!
# A055461: Square decrescendo subsequences: triangle T(n,k) = (n-k)^2, n >= 1, 0 <= k < n.

The programs for A055461, the canonical program `A055461.P13333228572909301680` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055461 has offset 1).

The definition of A055461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-col(n))²` (program `A055461.P13333228572909301680`, by `A055461.P13333228572909301680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055461.P13333228572909301680

`(row(n)+1-col(n))²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055461

/-- `(row(n)+1-col(n))²` -/
def P13333228572909301680.Spec : Prop :=
  ∀ n, P13333228572909301680.a n = A055461 (n + 1)

theorem P13333228572909301680.correct : P13333228572909301680.Spec := by
  intro n
  simp only [A055461, Nat.add_sub_cancel]

end A055461

/-! ## A055461.P3025188043753293136

`A004736(n+1)²`
-/

namespace A055461.P3025188043753293136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2

end

end A055461.P3025188043753293136

namespace A055461

/-- `A004736(n+1)²` -/
def P3025188043753293136.Spec : Prop :=
  ∀ n, P3025188043753293136.a n = A055461 (n + 1)

end A055461

/-! ## A055461.P11790662768965135798

`(sqrt(T(n-1,k))+1)²` with `a(0)=1`
-/

namespace A055461.P11790662768965135798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (Real.sqrt (SequenceMachineLib.triUp a n) + 1) ^ 2

end

end A055461.P11790662768965135798

namespace A055461

/-- `(sqrt(T(n-1,k))+1)²` -/
def P11790662768965135798.Spec : Prop :=
  ∀ n, P11790662768965135798.a n = (A055461 (n + 1) : ℝ)

end A055461

/-! ## A055461.P1540256361248671095

`(∑[char[∑[n]]]-col(n))²`
-/

namespace A055461.P1540256361248671095
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2

end

end A055461.P1540256361248671095

namespace A055461

/-- `(∑[char[∑[n]]]-col(n))²` -/
def P1540256361248671095.Spec : Prop :=
  ∀ n, P1540256361248671095.a n = A055461 (n + 1)

end A055461

/-! ## A055461.P2108499772750284768

`(1-col(n)+row(n))²`
-/

namespace A055461.P2108499772750284768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ)) ^ 2

end

end A055461.P2108499772750284768

namespace A055461

/-- `(1-col(n)+row(n))²` -/
def P2108499772750284768.Spec : Prop :=
  ∀ n, P2108499772750284768.a n = A055461 (n + 1)

theorem P2108499772750284768.correct : P2108499772750284768.Spec := by
  intro n
  simp only [A055461, Nat.add_sub_cancel, A055461.P2108499772750284768.a, A055461.P13333228572909301680.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055461

/-! ## A055461.P2943782918113893863

`(col(n)-row(n)-1)²`
-/

namespace A055461.P2943782918113893863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) - 1) ^ 2

end

end A055461.P2943782918113893863

namespace A055461

/-- `(col(n)-row(n)-1)²` -/
def P2943782918113893863.Spec : Prop :=
  ∀ n, P2943782918113893863.a n = A055461 (n + 1)

theorem P2943782918113893863.correct : P2943782918113893863.Spec := by
  intro n
  simp only [A055461, Nat.add_sub_cancel, A055461.P2943782918113893863.a, A055461.P13333228572909301680.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055461

/-! ## A055461.P5330262151299567391

`(col(n)-(row(n)+1))^2`
-/

namespace A055461.P5330262151299567391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ)) ^ 2

end

end A055461.P5330262151299567391

namespace A055461

/-- `(col(n)-(row(n)+1))^2` -/
def P5330262151299567391.Spec : Prop :=
  ∀ n, P5330262151299567391.a n = A055461 (n + 1)

theorem P5330262151299567391.correct : P5330262151299567391.Spec := by
  intro n
  simp only [A055461, Nat.add_sub_cancel, A055461.P5330262151299567391.a, A055461.P13333228572909301680.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055461

/-! ## A055461.P14487210438422820609

`(n-C(comp[∑[n]]-n, 2))²`
-/

namespace A055461.P14487210438422820609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2

end

end A055461.P14487210438422820609

namespace A055461

/-- `(n-C(comp[∑[n]]-n, 2))²` -/
def P14487210438422820609.Spec : Prop :=
  ∀ n, P14487210438422820609.a n = A055461 (n + 1)

end A055461

/-! ## A055461.P16039877672527833812

`(C(comp[C(n, 2)]-n, 2)-n)²`
-/

namespace A055461.P16039877672527833812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2

end

end A055461.P16039877672527833812

namespace A055461

/-- `(C(comp[C(n, 2)]-n, 2)-n)²` -/
def P16039877672527833812.Spec : Prop :=
  ∀ n, P16039877672527833812.a n = A055461 (n + 1)

end A055461

/-! ## A055461.P11046240832689053657

`(C(comp[∑[n]]-n, 2)-n)^2`
-/

namespace A055461.P11046240832689053657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2

end

end A055461.P11046240832689053657

namespace A055461

/-- `(C(comp[∑[n]]-n, 2)-n)^2` -/
def P11046240832689053657.Spec : Prop :=
  ∀ n, P11046240832689053657.a n = A055461 (n + 1)

end A055461

/-! ## A055461.P10247118822690267758

`T(n-1,k)+2*(row(n)-col(n))+1` with `a(0)=1`
-/

namespace A055461.P10247118822690267758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1)

end

end A055461.P10247118822690267758

namespace A055461

/-- `T(n-1,k)+2*(row(n)-col(n))+1` -/
def P10247118822690267758.Spec : Prop :=
  ∀ n, P10247118822690267758.a n = A055461 (n + 1)

end A055461

/-! ## A055461.P16520069939337496425

`2*(T(n-1,k)+1)-(T(T(n-1,k+1), T(n-1,k))+T(n-1,k+1))` with `a(0)=1`
-/

namespace A055461.P16520069939337496425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triUp a n + 1) - (SequenceMachineLib.triAt a (SequenceMachineLib.triUpRight a n) (SequenceMachineLib.triUp a n) + SequenceMachineLib.triUpRight a n)

end

end A055461.P16520069939337496425

namespace A055461

/-- `2*(T(n-1,k)+1)-(T(T(n-1,k+1), T(n-1,k))+T(n-1,k+1))` -/
def P16520069939337496425.Spec : Prop :=
  ∀ n, P16520069939337496425.a n = A055461 (n + 1)

end A055461

/-! ## A055461.P6134069117594170803

`(C(∑[char[∑[n+1]]]+2, 2)-n)²`
-/

namespace A055461.P6134069117594170803
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 : ℤ) - (n : ℤ)) ^ 2

end

end A055461.P6134069117594170803

namespace A055461

/-- `(C(∑[char[∑[n+1]]]+2, 2)-n)²` -/
def P6134069117594170803.Spec : Prop :=
  ∀ n, P6134069117594170803.a n = A055461 (n + 1)

end A055461

/-! ## A055461.P2118168463485885800

`(1+row(n)-col(n))*(1+row(n)-col(n))`
-/

namespace A055461.P2118168463485885800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)))

end

end A055461.P2118168463485885800

namespace A055461

/-- `(1+row(n)-col(n))*(1+row(n)-col(n))` -/
def P2118168463485885800.Spec : Prop :=
  ∀ n, P2118168463485885800.a n = A055461 (n + 1)

theorem P2118168463485885800.correct : P2118168463485885800.Spec := by
  intro n
  simp only [A055461, Nat.add_sub_cancel, A055461.P2118168463485885800.a, A055461.P13333228572909301680.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055461

/-! ## A055461.P7232232069632790083

`(A025581(n)+1)²`
-/

namespace A055461.P7232232069632790083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) ^ 2

end

end A055461.P7232232069632790083

namespace A055461

/-- `(A025581(n)+1)²` -/
def P7232232069632790083.Spec : Prop :=
  ∀ n, P7232232069632790083.a n = A055461 (n + 1)

theorem P7232232069632790083.correct : P7232232069632790083.Spec := by
  intro n
  simp only [A055461, Nat.add_sub_cancel, A055461.P7232232069632790083.a, A055461.P13333228572909301680.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055461

/-! ## A055461.P6088786499818136836

`log2(A090988(n+1))²`
-/

namespace A055461.P6088786499818136836
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ) ^ 2

end

end A055461.P6088786499818136836

namespace A055461

/-- `log2(A090988(n+1))²` -/
def P6088786499818136836.Spec : Prop :=
  ∀ n, P6088786499818136836.a n = (A055461 (n + 1) : ℝ)

end A055461

/-! ## A055461.P11635117291166295538

`(log2(A130321(n))+1)²`
-/

namespace A055461.P11635117291166295538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A130321 n : ℝ) + 1) ^ 2

end

end A055461.P11635117291166295538

namespace A055461

/-- `(log2(A130321(n))+1)²` -/
def P11635117291166295538.Spec : Prop :=
  ∀ n, P11635117291166295538.a n = (A055461 (n + 1) : ℝ)

end A055461

/-! ## A055461.P13122436081535996380

`log2(A130330(n)+1)²`
-/

namespace A055461.P13122436081535996380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130330 n + 1 : ℝ) ^ 2

end

end A055461.P13122436081535996380

namespace A055461

/-- `log2(A130330(n)+1)²` -/
def P13122436081535996380.Spec : Prop :=
  ∀ n, P13122436081535996380.a n = (A055461 (n + 1) : ℝ)

end A055461

/-! ## A055461.P690972172454481245

`ceil(A099375(n)/2)²`
-/

namespace A055461.P690972172454481245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉ ^ 2

end

end A055461.P690972172454481245

namespace A055461

/-- `ceil(A099375(n)/2)²` -/
def P690972172454481245.Spec : Prop :=
  ∀ n, P690972172454481245.a n = A055461 (n + 1)

end A055461

/-! ## A055461.P9461125350040634579

`(1-∑[A167407(n)])²`
-/

namespace A055461.P9461125350040634579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A055461.P9461125350040634579

namespace A055461

/-- `(1-∑[A167407(n)])²` -/
def P9461125350040634579.Spec : Prop :=
  ∀ n, P9461125350040634579.a n = A055461 (n + 1)

end A055461

/-!
# A055462: Superduperfactorials: product of first n superfactorials.

The programs for A055462, the canonical program `A055462.P3276456326602178946` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055462 has offset 0).

The definition of A055462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055462.P3276456326602178946

`a(n-1)*A000178(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055462

/-- `a(n-1)*A000178(n)` -/
def P3276456326602178946.Spec : Prop :=
  ∀ n, P3276456326602178946.a n = A055462 n

theorem P3276456326602178946.correct : P3276456326602178946.Spec := by
  intro n
  simp only [A055462]

end A055462

/-! ## A055462.P7569256252615696159

`∏[∏[n!]]`
-/

namespace A055462.P7569256252615696159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055462.P7569256252615696159

namespace A055462

/-- `∏[∏[n!]]` -/
def P7569256252615696159.Spec : Prop :=
  ∀ n, (P7569256252615696159.a n : ℤ) = A055462 n

end A055462

/-! ## A055462.P15191750697649312086

`exp(∑[∑[log(n!)]])`
-/

namespace A055462.P15191750697649312086
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.factorial n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055462.P15191750697649312086

namespace A055462

/-- `exp(∑[∑[log(n!)]])` -/
def P15191750697649312086.Spec : Prop :=
  ∀ n, P15191750697649312086.a n = (A055462 n : ℝ)

end A055462

/-! ## A055462.P5682312417253241910

`2^∑[∑[log2(n!)]]`
-/

namespace A055462.P5682312417253241910
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055462.P5682312417253241910

namespace A055462

/-- `2^∑[∑[log2(n!)]]` -/
def P5682312417253241910.Spec : Prop :=
  ∀ n, P5682312417253241910.a n = (A055462 n : ℝ)

end A055462

/-! ## A055462.P9811805518255583570

`∏[∏[a(n-1)*n]]` with `a(0)=1`
-/

namespace A055462.P9811805518255583570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055462.P9811805518255583570

namespace A055462

/-- `∏[∏[a(n-1)*n]]` -/
def P9811805518255583570.Spec : Prop :=
  ∀ n, (P9811805518255583570.a n : ℤ) = A055462 n

end A055462

/-!
# A055463: a(n) = 2*a(n-1)*a(n-2) - 3*a(n-3), with a(0) = 0, a(1) = 1, a(2) = 2.

The programs for A055463, the canonical program `A055463.P13824149236665170395` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055463 has offset 0).

The definition of A055463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)-3*a(n-3)` (program `A055463.P13824149236665170395`, by `A055463.P13824149236665170395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055463.P13824149236665170395

`2*a(n-1)*a(n-2)-3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055463

/-- `2*a(n-1)*a(n-2)-3*a(n-3)` -/
def P13824149236665170395.Spec : Prop :=
  ∀ n, P13824149236665170395.a n = A055463 n

theorem P13824149236665170395.correct : P13824149236665170395.Spec := by
  intro n
  simp only [A055463]

end A055463

/-!
# A055464: Numbers n such that sum of EulerPhi and DivisorSum is an integer multiple of the number of divisors.

The programs for A055464, there is no canonical definition to state claims against.
-/

/-! ## A055464.P2816898400612922354

`∪[A003277(n+1), A055465(n+1)]`
-/

namespace A055464.P2816898400612922354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P2816898400612922354

/-! ## A055464.P11599566114825040540

`∪[A008578(n+1), A055465(n+1)]`
-/

namespace A055464.P11599566114825040540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P11599566114825040540

/-! ## A055464.P13190899581786434525

`∪[A015919(n+1), A055465(n+1)]`
-/

namespace A055464.P13190899581786434525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P13190899581786434525

/-! ## A055464.P11433625554225859495

`∪[A046022(n+1), A055465(n+1)]`
-/

namespace A055464.P11433625554225859495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P11433625554225859495

/-! ## A055464.P3992608242687010501

`∪[A055465(n+1), A097605(n+1)]`
-/

namespace A055464.P3992608242687010501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P3992608242687010501

/-! ## A055464.P10933360831908450807

`∪[A055465(n+1), A143578(n+1)]`
-/

namespace A055464.P10933360831908450807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P10933360831908450807

/-! ## A055464.P12979004497281224657

`∪[A055465(n+1), A187731(n+1)]`
-/

namespace A055464.P12979004497281224657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P12979004497281224657

/-! ## A055464.P14204473284070562564

`∪[A324050(n+1), A055465(n+1)]`
-/

namespace A055464.P14204473284070562564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P14204473284070562564

/-! ## A055464.P7832404751067094182

`∪[A055465(n+1), A326715(n+1)]`
-/

namespace A055464.P7832404751067094182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P7832404751067094182

/-! ## A055464.P8680630659588403282

`∪[A055465(n+1), A106317(n+1)]`
-/

namespace A055464.P8680630659588403282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P8680630659588403282

/-! ## A055464.P9444119333846535553

`∪[A055465(n+1), A318719(n+1)]`
-/

namespace A055464.P9444119333846535553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055464.P9444119333846535553

/-!
# A055465: Composite numbers k for which phi(k) + sigma(k) is an integer multiple of the number of divisors of k.

The programs for A055465, there is no canonical definition to state claims against.
-/

/-! ## A055465.P2234872588099944151

`filter[A055464(1+n), A066247(#)]`
-/

namespace A055465.P2234872588099944151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055464 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A055465.P2234872588099944151

/-! ## A055465.P10143588783638133457

`filter[A055464(n+2), A005171(#)]`
-/

namespace A055465.P10143588783638133457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A055465.P10143588783638133457

/-! ## A055465.P10402947113457269232

`∩[A002808(n+1), A055464(n+1)]`
-/

namespace A055465.P10402947113457269232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055465.P10402947113457269232

/-! ## A055465.P10526371881667186141

`∩[A055464(n+1), A018252(n+2)]`
-/

namespace A055465.P10526371881667186141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055465.P10526371881667186141

/-! ## A055465.P685229689743573049

`∩[comp[A008578(n+1)], A055464(n+1)]`
-/

namespace A055465.P685229689743573049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A055465.P685229689743573049

/-!
# A055469: Primes of the form k(k+1)/2+1 (i.e., central polygonal numbers, or one more than triangular numbers).

The programs for A055469, there is no canonical definition to state claims against.
-/

/-! ## A055469.P8371573295595707108

`(A110873(n+1)+7)/8`
-/

namespace A055469.P8371573295595707108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110873 (n + 1) + 7 : ℚ) / 8

end

end A055469.P8371573295595707108

/-! ## A055469.P3690019446636039

`A000124(A067186(n+1))`
-/

namespace A055469.P3690019446636039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A067186 (n + 1)).toNat

end

end A055469.P3690019446636039

/-! ## A055469.P4318264298341134845

`A129545(n+1)+1`
-/

namespace A055469.P4318264298341134845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129545 (n + 1) + 1

end

end A055469.P4318264298341134845

/-! ## A055469.P15114360364382651591

`∪[A188382(n+1), A285790(n+1)]`
-/

namespace A055469.P15114360364382651591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055469.P15114360364382651591

/-! ## A055469.P11279263394485461600

`record[A118680(n+1)]`
-/

namespace A055469.P11279263394485461600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055469.P11279263394485461600

/-! ## A055469.P9437248831130656294

`record[A271322(n+3)-A000122(n)]`
-/

namespace A055469.P9437248831130656294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271322 (n + 3) - A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055469.P9437248831130656294

/-! ## A055469.P10520788811830469935

`A036406(A110872(n+1))`
-/

namespace A055469.P10520788811830469935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 (A110872 (n + 1)).toNat

end

end A055469.P10520788811830469935

/-! ## A055469.P2395154578072787525

`∩[A077128(n+1), A000124(n)]`
-/

namespace A055469.P2395154578072787525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055469.P2395154578072787525

/-! ## A055469.P8396381283845359641

`∩[A077128(n+1), A134519(n+1)]`
-/

namespace A055469.P8396381283845359641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055469.P8396381283845359641

/-! ## A055469.P6909178210842025256

`∩[A077128(n+1), A360944(n+1)]`
-/

namespace A055469.P6909178210842025256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055469.P6909178210842025256

/-! ## A055469.P7978605961455261850

`p?[∑[n]+1]`
-/

namespace A055469.P7978605961455261850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A055469.P7978605961455261850

/-! ## A055469.P3081176543992559389

`∑{d}[p?[C(n, 2)+1], #]-1`
-/

namespace A055469.P3081176543992559389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1

end

end A055469.P3081176543992559389

/-! ## A055469.P17203656939565456437

`record[p?[A241807(n)]]`
-/

namespace A055469.P17203656939565456437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241807 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055469.P17203656939565456437

/-! ## A055469.P17558507712062152051

`record[p?[A008795(n)+1]]`
-/

namespace A055469.P17558507712062152051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055469.P17558507712062152051

/-! ## A055469.P13255714711824598467

`record[p?[A226089(n+1)]]`
-/

namespace A055469.P13255714711824598467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226089 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055469.P13255714711824598467

/-! ## A055469.P13517546260086498145

`record[p?[A347629(n+1)]]`
-/

namespace A055469.P13517546260086498145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347629 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055469.P13517546260086498145

/-! ## A055469.P9290271226058329386

`record[p?[A246276(n+3)]]`
-/

namespace A055469.P9290271226058329386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055469.P9290271226058329386

/-! ## A055469.P10847836293336528345

`record[p?[A249742(n+3)]]`
-/

namespace A055469.P10847836293336528345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055469.P10847836293336528345

/-! ## A055469.P2581130374459679699

`record[p?[A254052(n+3)]]`
-/

namespace A055469.P2581130374459679699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254052 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055469.P2581130374459679699

/-! ## A055469.P3652242259421290182

`record[p?[A267104(n+3)]]`
-/

namespace A055469.P3652242259421290182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267104 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055469.P3652242259421290182

/-!
# A055470: Smallest number x > 1 such that phi(x) + sigma(x) = k*d(x)^n, i.e., the left-hand side is divisible by the n-th power of the number of divisors.

The programs for A055470, there is no canonical definition to state claims against.
-/

/-! ## A055470.P17128875989031336101

`11*A098621(a(n-3))` with `a(0)=2, a(1)=2, a(2)=95`
-/

namespace A055470.P17128875989031336101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 95] fun n a =>
  11 * A098621 (a (n - 3)).toNat

end

end A055470.P17128875989031336101

/-!
# A055471: Numbers that are divisible by the product of their nonzero digits.

The programs for A055471, there is no canonical definition to state claims against.
-/

/-! ## A055471.P6659148330593294464

`∪[A007602(n+1), A398422(n+1)]`
-/

namespace A055471.P6659148330593294464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055471.P6659148330593294464

/-! ## A055471.P16961451252425835673

`record[gcd(n+1, (n+1)%A051801(n+1))]`
-/

namespace A055471.P16961451252425835673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A051801 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055471.P16961451252425835673

/-! ## A055471.P8524256432829635493

`eq[n%A051801(n), A000038(n)]`
-/

namespace A055471.P8524256432829635493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055471.P8524256432829635493

/-! ## A055471.P4490446744933572328

`record[n+1-(n+1)²%A230101(n+1)]`
-/

namespace A055471.P4490446744933572328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod ((n + 1) ^ 2 : ℤ) (A230101 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055471.P4490446744933572328

/-! ## A055471.P3708105780441044055

`eq[n%A051801(n), A000007(n)]`
-/

namespace A055471.P3708105780441044055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055471.P3708105780441044055

/-!
# A055472: Primes of the form k(k+1)/2+2 (i.e., two more than a triangular number).

The programs for A055472, there is no canonical definition to state claims against.
-/

/-! ## A055472.P7570433781867737019

`∪[A095697(n+1), A249606(n+1)]`
-/

namespace A055472.P7570433781867737019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055472.P7570433781867737019

/-! ## A055472.P2568419339446560703

`A171570(A028310(n))+A040000(n)`
-/

namespace A055472.P2568419339446560703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (A028310 n).toNat + A040000 n

end

end A055472.P2568419339446560703

/-! ## A055472.P17965899519319590009

`A171570(A065033(2*n))+A040000(n)`
-/

namespace A055472.P17965899519319590009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (A065033 (2 * n)).toNat + A040000 n

end

end A055472.P17965899519319590009

/-! ## A055472.P17866914272345593817

`A171570(A065033(2*n))+A020639(A020647(n))`
-/

namespace A055472.P17866914272345593817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (A065033 (2 * n)).toNat + A020639 (A020647 n).toNat

end

end A055472.P17866914272345593817

/-! ## A055472.P8310053435112488060

`A171570(A065033(2*n))+A000005(A008578(n+1))`
-/

namespace A055472.P8310053435112488060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (A065033 (2 * n)).toNat + A000005 (A008578 (n + 1)).toNat

end

end A055472.P8310053435112488060

/-! ## A055472.P1131880473070405548

`A171570(A065033(2*n))+A020639(A006093(n+1))`
-/

namespace A055472.P1131880473070405548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (A065033 (2 * n)).toNat + A020639 (A006093 (n + 1)).toNat

end

end A055472.P1131880473070405548

/-! ## A055472.P8671478932795815587

`A171570(A065033(2*n))+A020639(A000010(n+2))`
-/

namespace A055472.P8671478932795815587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (A065033 (2 * n)).toNat + A020639 (A000010 (n + 2)).toNat

end

end A055472.P8671478932795815587

/-! ## A055472.P18189167273826541954

`A171570(A065033(2*n))+A020639(A000040(n+1)-1)`
-/

namespace A055472.P18189167273826541954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (A065033 (2 * n)).toNat + A020639 (A000040 (n + 1) - 1).toNat

end

end A055472.P18189167273826541954

/-! ## A055472.P5459158642196360744

`p?[∑[n]+2]`
-/

namespace A055472.P5459158642196360744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A055472.P5459158642196360744

/-! ## A055472.P5830384960905949078

`record[∑{p}[∑[n]+2, #]]`
-/

namespace A055472.P5830384960905949078
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055472.P5830384960905949078

/-! ## A055472.P2177462548300140258

`record[p?[A008795(n+1)-n]]`
-/

namespace A055472.P2177462548300140258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055472.P2177462548300140258

/-! ## A055472.P14515921363853463543

`∩[A089071(n+1), A106859(n+1)]`
-/

namespace A055472.P14515921363853463543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055472.P14515921363853463543

/-!
# A055473: Powers of ten written in base 2.

The programs for A055473, the canonical program `A055473.P15962732397737186787` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055473 has offset 0).

The definition of A055473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055473.P15962732397737186787

`A007088(A011557(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055473

/-- `A007088(A011557(n))` -/
def P15962732397737186787.Spec : Prop :=
  ∀ n, P15962732397737186787.a n = A055473 n

theorem P15962732397737186787.correct : P15962732397737186787.Spec := by
  intro n
  simp only [A055473]

end A055473

/-! ## A055473.P17653493140245641105

`A071998(2^n)`
-/

namespace A055473.P17653493140245641105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071998 (2 ^ n)

end

end A055473.P17653493140245641105

namespace A055473

/-- `A071998(2^n)` -/
def P17653493140245641105.Spec : Prop :=
  ∀ n, P17653493140245641105.a n = A055473 n

end A055473

/-! ## A055473.P2026069303365644979

`A007088(5^n)*A290623(n)`
-/

namespace A055473.P2026069303365644979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (5 ^ n) * A290623 n

end

end A055473.P2026069303365644979

namespace A055473

/-- `A007088(5^n)*A290623(n)` -/
def P2026069303365644979.Spec : Prop :=
  ∀ n, P2026069303365644979.a n = A055473 n

end A055473

/-!
# A055474: Powers of ten written in base 3.

The programs for A055474, there is no canonical definition to state claims against.
-/

/-! ## A055474.P4706874899737547524

`A007089(10^n)`
-/

namespace A055474.P4706874899737547524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (10 ^ n)

end

end A055474.P4706874899737547524

/-!
# A055475: Powers of ten written in base 4.

The programs for A055475, there is no canonical definition to state claims against.
-/

/-! ## A055475.P13894895377042572430

`A007090(10^n)`
-/

namespace A055475.P13894895377042572430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (10 ^ n)

end

end A055475.P13894895377042572430

/-!
# A055476: Powers of ten written in base 5.

The programs for A055476, there is no canonical definition to state claims against.
-/

/-! ## A055476.P17007185025144945999

`A000866(n)*A011557(n)`
-/

namespace A055476.P17007185025144945999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000866 n * A011557 n

end

end A055476.P17007185025144945999

/-! ## A055476.P3529777074653499654

`Δ[A002275(n)]*A000866(n)`
-/

namespace A055476.P3529777074653499654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000866 n

end

end A055476.P3529777074653499654

/-! ## A055476.P15063823119931363282

`A000866(n)*A004643(2*n)`
-/

namespace A055476.P15063823119931363282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000866 n * A004643 (2 * n)

end

end A055476.P15063823119931363282

/-! ## A055476.P7687672429628120994

`A000866(n)*A004663(2*n)`
-/

namespace A055476.P7687672429628120994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000866 n * A004663 (2 * n)

end

end A055476.P7687672429628120994

/-! ## A055476.P13719782743504608040

`A000866(n)*A007088(A000079(n))`
-/

namespace A055476.P13719782743504608040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000866 n * A007088 (A000079 n).toNat

end

end A055476.P13719782743504608040

/-!
# A055477: Powers of ten written in base 6.

The programs for A055477, there is no canonical definition to state claims against.
-/

/-! ## A055477.P16288527631379551083

`A001729(10^n)`
-/

namespace A055477.P16288527631379551083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (10 ^ n)

end

end A055477.P16288527631379551083

/-!
# A055478: Powers of ten written in base 7.

The programs for A055478, there is no canonical definition to state claims against.
-/

/-! ## A055478.P12707304381224562044

`A007093(10^n)`
-/

namespace A055478.P12707304381224562044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (10 ^ n)

end

end A055478.P12707304381224562044

/-!
# A055479: Powers of ten written in base 9.

The programs for A055479, there is no canonical definition to state claims against.
-/

/-! ## A055479.P12276064821960340008

`10*A353148(n)+1`
-/

namespace A055479.P12276064821960340008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A353148 n + 1

end

end A055479.P12276064821960340008

/-! ## A055479.P2453842230234169779

`or(10*A353148(n), or(1, A010054(n)))`
-/

namespace A055479.P2453842230234169779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (10 * A353148 n) (Int.lor 1 (A010054 n))

end

end A055479.P2453842230234169779

/-! ## A055479.P8647236968495992866

`or(10*A353148(n), or(1, A304002(n)))`
-/

namespace A055479.P8647236968495992866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (10 * A353148 n) (Int.lor 1 (A304002 n))

end

end A055479.P8647236968495992866

/-! ## A055479.P2305857585795801782

`xor(10*A353148(n), A015089(n)%2)`
-/

namespace A055479.P2305857585795801782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (10 * A353148 n) (Int.tmod (A015089 n) 2)

end

end A055479.P2305857585795801782

/-!
# A055480: Energetic numbers.

The programs for A055480, there is no canonical definition to state claims against.
-/

/-! ## A055480.P8867576221329999253

`A072096(n+1)%A029813(n)`
-/

namespace A055480.P8867576221329999253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072096 (n + 1)) (A029813 n)

end

end A055480.P8867576221329999253

/-! ## A055480.P16663695500614979086

`A072096(n+1)^A007318(A185044(n))`
-/

namespace A055480.P16663695500614979086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072096 (n + 1) : ℚ) ^ (A007318 (A185044 n).toNat : ℤ)

end

end A055480.P16663695500614979086

/-! ## A055480.P15954368579024692143

`A072096(n+1)+A000007(A072098(n+1))`
-/

namespace A055480.P15954368579024692143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072096 (n + 1) + A000007 (A072098 (n + 1)).toNat

end

end A055480.P15954368579024692143

/-! ## A055480.P2422913299250364484

`A072096(n+1)+A000007(A128395(n+1))`
-/

namespace A055480.P2422913299250364484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072096 (n + 1) + A000007 (A128395 (n + 1)).toNat

end

end A055480.P2422913299250364484

/-! ## A055480.P2927833778927363057

`A072096(n+1)+A010051(A208728(n+1))`
-/

namespace A055480.P2927833778927363057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072096 (n + 1) + A010051 (A208728 (n + 1)).toNat

end

end A055480.P2927833778927363057

/-!
# A055482: There exists some k>0 such that n is the product of (k + digits of n).

The programs for A055482, there is no canonical definition to state claims against.
-/

/-! ## A055482.P9462374656555742806

`A113756(A363246(n+2))`
-/

namespace A055482.P9462374656555742806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113756 (A363246 (n + 2)).toNat

end

end A055482.P9462374656555742806

/-! ## A055482.P13028042556274062309

`∩[A113756(n+1), A247250(n+1)]`
-/

namespace A055482.P13028042556274062309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055482.P13028042556274062309

/-! ## A055482.P6405768075518533454

`A113756(A029804(n+2))`
-/

namespace A055482.P6405768075518533454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113756 (A029804 (n + 2)).toNat

end

end A055482.P6405768075518533454

/-! ## A055482.P18337829664001284501

`∩[A099649(n+1), A113756(n+1)]`
-/

namespace A055482.P18337829664001284501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055482.P18337829664001284501

/-!
# A055483: a(n) is the GCD of n and the reverse of n.

The programs for A055483, there is no canonical definition to state claims against.
-/

/-! ## A055483.P12168165816414021273

`gcd(n+1, A004086(n+1))`
-/

namespace A055483.P12168165816414021273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A004086 (n + 1))

end

end A055483.P12168165816414021273

/-! ## A055483.P13119576490875199831

`(n+1)/A337927(n+1)`
-/

namespace A055483.P13119576490875199831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A337927 (n + 1) : ℚ)

end

end A055483.P13119576490875199831

/-! ## A055483.P17403581210816401253

`gcd(A004086(1+n), n+1)`
-/

namespace A055483.P17403581210816401253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004086 (1 + n)) (n + 1 : ℤ)

end

end A055483.P17403581210816401253

/-! ## A055483.P5519318157580350827

`gcd(∑[n+1]-∑[n], A056965(n+1))`
-/

namespace A055483.P5519318157580350827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) (A056965 (n + 1))

end

end A055483.P5519318157580350827

/-! ## A055483.P17816040934483054752

`A061205(n+1)/A068634(n+1)`
-/

namespace A055483.P17816040934483054752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 (n + 1) : ℚ) / (A068634 (n + 1) : ℚ)

end

end A055483.P17816040934483054752

/-! ## A055483.P16491057881540985695

`A068634(n+1)/A070246(n+1)`
-/

namespace A055483.P16491057881540985695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068634 (n + 1) : ℚ) / (A070246 (n + 1) : ℚ)

end

end A055483.P16491057881540985695

/-! ## A055483.P9844908412856704139

`gcd(A000027(n+1), A056524(n+1))`
-/

namespace A055483.P9844908412856704139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A056524 (n + 1))

end

end A055483.P9844908412856704139

/-! ## A055483.P5496947337461157941

`gcd(A068636(n+1), A068637(n+1))`
-/

namespace A055483.P5496947337461157941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068636 (n + 1)) (A068637 (n + 1))

end

end A055483.P5496947337461157941

/-! ## A055483.P17305546782202679902

`gcd(1-A000027(n+2), A056964(n+1))`
-/

namespace A055483.P17305546782202679902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A000027 (n + 2)) (A056964 (n + 1))

end

end A055483.P17305546782202679902

/-! ## A055483.P6809852303247359144

`A068636(n+1)/A068634(n+1)*A068637(n+1)`
-/

namespace A055483.P6809852303247359144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068636 (n + 1) : ℚ) / (A068634 (n + 1) : ℚ) * (A068637 (n + 1) : ℚ)

end

end A055483.P6809852303247359144

/-! ## A055483.P13304582792269422366

`gcd(n+1, A135020(A103517(n)))`
-/

namespace A055483.P13304582792269422366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A135020 (A103517 n).toNat)

end

end A055483.P13304582792269422366

/-! ## A055483.P16715205921592692986

`gcd(A135020(2*n+1), A135020(2*(n+1)))`
-/

namespace A055483.P16715205921592692986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135020 (2 * n + 1)) (A135020 (2 * (n + 1)))

end

end A055483.P16715205921592692986

/-! ## A055483.P6428250732287293527

`(n+1)/A367825(∑[n+1])`
-/

namespace A055483.P6428250732287293527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367825 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A055483.P6428250732287293527

/-! ## A055483.P16996605323846291559

`A069652(n+1)*A069652(A069691(n))`
-/

namespace A055483.P16996605323846291559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069652 (n + 1) * A069652 (A069691 n).toNat

end

end A055483.P16996605323846291559

/-!
# A055484: Number of unlabeled 3-element intersecting families (with not necessarily distinct sets) of an n-element set.

The programs for A055484, the canonical program `A055484.P5672920962749672130` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055484 has offset 1).

The definition of A055484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055484.P5672920962749672130

`ogf((1+2x^2+x^3+2x^4+x^5-x^7+x^8-x^9)/(1-4x+4x^2+2x^3-2x^4-4x^5-3x^6+12x^7-3x^8-4x^9-2x^10+2x^11+4x^12-4x^13+x^14))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055484

/-- `ogf((1+2x^2+x^3+2x^4+x^5-x^7+x^8-x^9)/(1-4x+4x^2+2x^3-2x^4-4x^5-3x^6+12x^7-3x^8-4x^9-2x^10+2x^11+4x^12-4x^13+x^14))` -/
def P5672920962749672130.Spec : Prop :=
  ∀ n, P5672920962749672130.a n = A055484 (n + 1)

theorem P5672920962749672130.correct : P5672920962749672130.Spec := by
  intro n
  simp only [A055484, Nat.add_sub_cancel]

end A055484

/-! ## A055484.P17306358119715163510

`A056782(n+1)+A002727(n)-A056778(n)`
-/

namespace A055484.P17306358119715163510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056782 (n + 1) + (A002727 n - A056778 n)

end

end A055484.P17306358119715163510

namespace A055484

/-- `A056782(n+1)+A002727(n)-A056778(n)` -/
def P17306358119715163510.Spec : Prop :=
  ∀ n, P17306358119715163510.a n = A055484 (n + 1)

end A055484

/-! ## A055484.P403336975306185125

`A332280(3*n+1)-A086072(A129323(n))`
-/

namespace A055484.P403336975306185125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 (3 * n + 1) - A086072 (A129323 n).toNat

end

end A055484.P403336975306185125

namespace A055484

/-- `A332280(3*n+1)-A086072(A129323(n))` -/
def P403336975306185125.Spec : Prop :=
  ∀ n, P403336975306185125.a n = A055484 (n + 1)

end A055484

/-!
# A055485: Number of unlabeled 3-element intersecting families (with distinct sets) of an n-element set.

The programs for A055485, the canonical program `A055485.P7979850583730549713` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055485 has offset 3).

The definition of A055485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055485.P7979850583730549713

`ogf((4+3x+x^2-3x^3-x^4+x^5+3x^6-x^7-x^8)/(1-4x+4x^2+2x^3-2x^4-4x^5-3x^6+12x^7-3x^8-4x^9-2x^10+2x^11+4x^12-4x^13+x^14))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055485

/-- `ogf((4+3x+x^2-3x^3-x^4+x^5+3x^6-x^7-x^8)/(1-4x+4x^2+2x^3-2x^4-4x^5-3x^6+12x^7-3x^8-4x^9-2x^10+2x^11+4x^12-4x^13+x^14))` -/
def P7979850583730549713.Spec : Prop :=
  ∀ n, P7979850583730549713.a n = A055485 (n + 3)

theorem P7979850583730549713.correct : P7979850583730549713.Spec := by
  intro n
  simp only [A055485, Nat.add_sub_cancel]

end A055485

/-! ## A055485.P28527827585103714

`A055194(n+2)+A005783(n)`
-/

namespace A055485.P28527827585103714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055194 (n + 2) + A005783 n

end

end A055485.P28527827585103714

namespace A055485

/-- `A055194(n+2)+A005783(n)` -/
def P28527827585103714.Spec : Prop :=
  ∀ n, P28527827585103714.a n = A055485 (n + 3)

end A055485

/-! ## A055485.P1214650249118177170

`A055194(n+2)+∑[A050531(n)]`
-/

namespace A055485.P1214650249118177170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055194 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055485.P1214650249118177170

namespace A055485

/-- `A055194(n+2)+∑[A050531(n)]` -/
def P1214650249118177170.Spec : Prop :=
  ∀ n, P1214650249118177170.a n = A055485 (n + 3)

end A055485

/-! ## A055485.P11663197646987470092

`A055609(n+1)+A055194(n+2)-A327728(n+1)`
-/

namespace A055485.P11663197646987470092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 1) + (A055194 (n + 2) - A327728 (n + 1))

end

end A055485.P11663197646987470092

namespace A055485

/-- `A055609(n+1)+A055194(n+2)-A327728(n+1)` -/
def P11663197646987470092.Spec : Prop :=
  ∀ n, P11663197646987470092.a n = A055485 (n + 3)

end A055485

/-! ## A055485.P6973122207506206988

`∑[A050531(n)]+A005745(n+2)-Δ[A001752(n)]`
-/

namespace A055485.P6973122207506206988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A005745 (n + 2) - (f2 (n + 1) - f2 n))

end

end A055485.P6973122207506206988

namespace A055485

/-- `∑[A050531(n)]+A005745(n+2)-Δ[A001752(n)]` -/
def P6973122207506206988.Spec : Prop :=
  ∀ n, P6973122207506206988.a n = A055485 (n + 3)

end A055485

/-! ## A055485.P485901856714869539

`∑[A050531(n)]+A005745(n+2)-A002623(n+1)`
-/

namespace A055485.P485901856714869539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A005745 (n + 2) - A002623 (n + 1))

end

end A055485.P485901856714869539

namespace A055485

/-- `∑[A050531(n)]+A005745(n+2)-A002623(n+1)` -/
def P485901856714869539.Spec : Prop :=
  ∀ n, P485901856714869539.a n = A055485 (n + 3)

end A055485

/-! ## A055485.P642118221007856325

`∑[A050531(n)]+A002727(n+2)-A000292(n+3)`
-/

namespace A055485.P642118221007856325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002727 (n + 2) - A000292 (n + 3))

end

end A055485.P642118221007856325

namespace A055485

/-- `∑[A050531(n)]+A002727(n+2)-A000292(n+3)` -/
def P642118221007856325.Spec : Prop :=
  ∀ n, P642118221007856325.a n = A055485 (n + 3)

end A055485

/-! ## A055485.P18153127083716258238

`A055194(n+2)+∑[A089353(A167614(n+1))]`
-/

namespace A055485.P18153127083716258238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055194 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055485.P18153127083716258238

namespace A055485

/-- `A055194(n+2)+∑[A089353(A167614(n+1))]` -/
def P18153127083716258238.Spec : Prop :=
  ∀ n, P18153127083716258238.a n = A055485 (n + 3)

end A055485

/-!
# A055486: Number of solutions to sigma(x) = n!.

The programs for A055486, there is no canonical definition to state claims against.
-/

/-! ## A055486.P1118729431465889613

`A165190(xor(A003946(n), A025579(n+1)))`
-/

namespace A055486.P1118729431465889613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (Int.xor (A003946 n) (A025579 (n + 1))).toNat

end

end A055486.P1118729431465889613

/-! ## A055486.P8378975156493565687

`xor(A000105(n), A056560(A189851(n+1)))`
-/

namespace A055486.P8378975156493565687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000105 n) (A056560 (A189851 (n + 1)).toNat)

end

end A055486.P8378975156493565687

/-! ## A055486.P9403935949707411453

`A307057(A102338(n+1)%A196211(n+1))`
-/

namespace A055486.P9403935949707411453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307057 (Int.tmod (A102338 (n + 1)) (A196211 (n + 1))).toNat

end

end A055486.P9403935949707411453

/-!
# A055487: Least m such that phi(m) = n!.

The programs for A055487, there is no canonical definition to state claims against.
-/

/-! ## A055487.P7219181007415968818

`A049283((n+1)!)`
-/

namespace A055487.P7219181007415968818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (Nat.factorial (n + 1))

end

end A055487.P7219181007415968818

/-! ## A055487.P3111666917622318117

`A061026((n+1)!)`
-/

namespace A055487.P3111666917622318117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (Nat.factorial (n + 1))

end

end A055487.P3111666917622318117

/-! ## A055487.P4723106683948946204

`A061026(record[A066459(n)])`
-/

namespace A055487.P4723106683948946204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A055487.P4723106683948946204

/-!
# A055488: Smallest number x such that sum of divisors of x is n!.

The programs for A055488, there is no canonical definition to state claims against.
-/

/-! ## A055488.P13356952270068704546

`A037992(n)+A005843(A045977(n+2))`
-/

namespace A055488.P13356952270068704546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037992 n + A005843 (A045977 (n + 2)).toNat

end

end A055488.P13356952270068704546

/-! ## A055488.P2166011256064427552

`A285346(A000142(n+2))+A037992(n)`
-/

namespace A055488.P2166011256064427552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285346 (A000142 (n + 2)).toNat + A037992 n

end

end A055488.P2166011256064427552

/-!
# A055489: Largest number x such that sum of divisors of x is n!.

The programs for A055489, there is no canonical definition to state claims against.
-/

/-! ## A055489.P15547164380249219782

`A057637(A000142(n+3))`
-/

namespace A055489.P15547164380249219782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A000142 (n + 3)).toNat

end

end A055489.P15547164380249219782

/-!
# A055490: Factorial primes: primes of the form n! - 1.

The programs for A055490, there is no canonical definition to state claims against.
-/

/-! ## A055490.P10506884073734497681

`A002982(n+1)!-1`
-/

namespace A055490.P10506884073734497681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002982 (n + 1)).toNat : ℤ) - 1

end

end A055490.P10506884073734497681

/-! ## A055490.P18354088329729661716

`A002582(A002982(n+1))`
-/

namespace A055490.P18354088329729661716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002582 (A002982 (n + 1)).toNat

end

end A055490.P18354088329729661716

/-! ## A055490.P6534086025983215970

`A033312(A002982(2*n+1-n))`
-/

namespace A055490.P6534086025983215970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 (A002982 (2 * n + 1 - n)).toNat

end

end A055490.P6534086025983215970

/-! ## A055490.P1286655684114803617

`A139195(n+7)%A002982(n+1)!`
-/

namespace A055490.P1286655684114803617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139195 (n + 7)) (Nat.factorial (A002982 (n + 1)).toNat : ℤ)

end

end A055490.P1286655684114803617

/-!
# A055491: Smallest square divisible by n divided by largest square which divides n.

The programs for A055491, the canonical program `A055491.P10975517249915323208` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055491 has offset 1).

The definition of A055491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055491.P10975517249915323208

`A007913(n+1)²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055491

/-- `A007913(n+1)²` -/
def P10975517249915323208.Spec : Prop :=
  ∀ n, P10975517249915323208.a n = A055491 (n + 1)

theorem P10975517249915323208.correct : P10975517249915323208.Spec := by
  intro n
  simp only [A055491, Nat.add_sub_cancel]

end A055491

/-! ## A055491.P12506848758062242974

`A053143(n+1)/A008833(n+1)`
-/

namespace A055491.P12506848758062242974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ)

end

end A055491.P12506848758062242974

namespace A055491

/-- `A053143(n+1)/A008833(n+1)` -/
def P12506848758062242974.Spec : Prop :=
  ∀ n, P12506848758062242974.a n = (A055491 (n + 1) : ℚ)

end A055491

/-! ## A055491.P4914911214014811701

`A000290(n+1)/A008833(n+1)²`
-/

namespace A055491.P4914911214014811701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 1) : ℚ) / (A008833 (n + 1) ^ 2 : ℚ)

end

end A055491.P4914911214014811701

namespace A055491

/-- `A000290(n+1)/A008833(n+1)²` -/
def P4914911214014811701.Spec : Prop :=
  ∀ n, P4914911214014811701.a n = (A055491 (n + 1) : ℚ)

end A055491

/-! ## A055491.P454266587235369415

`(A019554(n+1)/A000188(n+1))²`
-/

namespace A055491.P454266587235369415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A019554 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ)) ^ 2

end

end A055491.P454266587235369415

namespace A055491

/-- `(A019554(n+1)/A000188(n+1))²` -/
def P454266587235369415.Spec : Prop :=
  ∀ n, P454266587235369415.a n = (A055491 (n + 1) : ℚ)

end A055491

/-! ## A055491.P1484533910926362621

`((n+1)/∏{p}[n+1, #^val(n+1, #²)]²)²`
-/

namespace A055491.P1484533910926362621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ)) ^ 2

end

end A055491.P1484533910926362621

namespace A055491

/-- `((n+1)/∏{p}[n+1, #^val(n+1, #²)]²)²` -/
def P1484533910926362621.Spec : Prop :=
  ∀ n, P1484533910926362621.a n = (A055491 (n + 1) : ℚ)

end A055491

/-! ## A055491.P5236853793568748640

`Δ[A069891(n)]²`
-/

namespace A055491.P5236853793568748640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A055491.P5236853793568748640

namespace A055491

/-- `Δ[A069891(n)]²` -/
def P5236853793568748640.Spec : Prop :=
  ∀ n, P5236853793568748640.a n = A055491 (n + 1)

end A055491

/-! ## A055491.P12713804131667865776

`∑{d}[n+1, A323363(#)]²`
-/

namespace A055491.P12713804131667865776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A323363 d) ^ 2

end

end A055491.P12713804131667865776

namespace A055491

/-- `∑{d}[n+1, A323363(#)]²` -/
def P12713804131667865776.Spec : Prop :=
  ∀ n, P12713804131667865776.a n = A055491 (n + 1)

end A055491

/-! ## A055491.P9995629353157968710

`∏{p}[A071975(n+1), #²]`
-/

namespace A055491.P9995629353157968710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A055491.P9995629353157968710

namespace A055491

/-- `∏{p}[A071975(n+1), #²]` -/
def P9995629353157968710.Spec : Prop :=
  ∀ n, (P9995629353157968710.a n : ℤ) = A055491 (n + 1)

end A055491

/-! ## A055491.P7253355037243011408

`∏{p}[A350389(n+1), #²]`
-/

namespace A055491.P7253355037243011408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A055491.P7253355037243011408

namespace A055491

/-- `∏{p}[A350389(n+1), #²]` -/
def P7253355037243011408.Spec : Prop :=
  ∀ n, (P7253355037243011408.a n : ℤ) = A055491 (n + 1)

end A055491

/-! ## A055491.P74350414039446174

`(1-A326128(n+1)+n)²`
-/

namespace A055491.P74350414039446174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A326128 (n + 1) + (n : ℤ)) ^ 2

end

end A055491.P74350414039446174

namespace A055491

/-- `(1-A326128(n+1)+n)²` -/
def P74350414039446174.Spec : Prop :=
  ∀ n, P74350414039446174.a n = A055491 (n + 1)

theorem P74350414039446174.correct : P74350414039446174.Spec := by
  intro n
  simp only [A055491, Nat.add_sub_cancel, A055491.P74350414039446174.a, A055491.P10975517249915323208.a, A007913, A007913.P8131970495124731496.a, A326128, A326128.P4962900157914824511.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055491

/-! ## A055491.P12075793443048103684

`((n+1)/A008833(n+1))²`
-/

namespace A055491.P12075793443048103684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ)) ^ 2

end

end A055491.P12075793443048103684

namespace A055491

/-- `((n+1)/A008833(n+1))²` -/
def P12075793443048103684.Spec : Prop :=
  ∀ n, P12075793443048103684.a n = (A055491 (n + 1) : ℚ)

end A055491

/-! ## A055491.P16111132664928344

`(A053143(n+1)/(n+1))²`
-/

namespace A055491.P16111132664928344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A053143 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A055491.P16111132664928344

namespace A055491

/-- `(A053143(n+1)/(n+1))²` -/
def P16111132664928344.Spec : Prop :=
  ∀ n, P16111132664928344.a n = (A055491 (n + 1) : ℚ)

end A055491

/-! ## A055491.P7379352718995076644

`((n+1)/A358272(n+1))²`
-/

namespace A055491.P7379352718995076644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A358272 (n + 1) : ℚ)) ^ 2

end

end A055491.P7379352718995076644

namespace A055491

/-- `((n+1)/A358272(n+1))²` -/
def P7379352718995076644.Spec : Prop :=
  ∀ n, P7379352718995076644.a n = (A055491 (n + 1) : ℚ)

end A055491

/-! ## A055491.P15667716428940865247

`gcd(n+1, A056135(n+1))²`
-/

namespace A055491.P15667716428940865247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A056135 (n + 1)) ^ 2

end

end A055491.P15667716428940865247

namespace A055491

/-- `gcd(n+1, A056135(n+1))²` -/
def P15667716428940865247.Spec : Prop :=
  ∀ n, (P15667716428940865247.a n : ℤ) = A055491 (n + 1)

end A055491

/-! ## A055491.P17323341823413192578

`A083481(n)²/a(n-1)` with `a(0)=1`
-/

namespace A055491.P17323341823413192578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A083481 n ^ 2 : ℚ) / a (n - 1)

end

end A055491.P17323341823413192578

namespace A055491

/-- `A083481(n)²/a(n-1)` -/
def P17323341823413192578.Spec : Prop :=
  ∀ n, P17323341823413192578.a n = (A055491 (n + 1) : ℚ)

end A055491

/-! ## A055491.P4994352490583930903

`A078615(A071975(n+1))`
-/

namespace A055491.P4994352490583930903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (A071975 (n + 1)).toNat

end

end A055491.P4994352490583930903

namespace A055491

/-- `A078615(A071975(n+1))` -/
def P4994352490583930903.Spec : Prop :=
  ∀ n, P4994352490583930903.a n = A055491 (n + 1)

end A055491

/-! ## A055491.P10011577724550649781

`A078615(A350389(n+1))`
-/

namespace A055491.P10011577724550649781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (A350389 (n + 1)).toNat

end

end A055491.P10011577724550649781

namespace A055491

/-- `A078615(A350389(n+1))` -/
def P10011577724550649781.Spec : Prop :=
  ∀ n, P10011577724550649781.a n = A055491 (n + 1)

end A055491

/-! ## A055491.P4638942848442782444

`A078615(A401425(n+1))`
-/

namespace A055491.P4638942848442782444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (A401425 (n + 1)).toNat

end

end A055491.P4638942848442782444

namespace A055491

/-- `A078615(A401425(n+1))` -/
def P4638942848442782444.Spec : Prop :=
  ∀ n, P4638942848442782444.a n = A055491 (n + 1)

end A055491

/-! ## A055491.P9641719045858827206

`A000290((n+1)/A008833(n+1))`
-/

namespace A055491.P9641719045858827206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A055491.P9641719045858827206

namespace A055491

/-- `A000290((n+1)/A008833(n+1))` -/
def P9641719045858827206.Spec : Prop :=
  ∀ n, P9641719045858827206.a n = A055491 (n + 1)

end A055491

/-! ## A055491.P17555441220338707021

`A011262(n+1)/A003557(n+1)`
-/

namespace A055491.P17555441220338707021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A055491.P17555441220338707021

namespace A055491

/-- `A011262(n+1)/A003557(n+1)` -/
def P17555441220338707021.Spec : Prop :=
  ∀ n, P17555441220338707021.a n = (A055491 (n + 1) : ℚ)

end A055491

/-!
# A055493: Numbers n such that Sum_{k=1..n} k! - 2 is prime.

The programs for A055493, there is no canonical definition to state claims against.
-/

/-! ## A055493.P10940438250258607082

`A063833(n+2)-1`
-/

namespace A055493.P10940438250258607082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063833 (n + 2) - 1

end

end A055493.P10940438250258607082

/-! ## A055493.P17597393520840473533

`∑[abs(Δ[A063833(n+1)])]`
-/

namespace A055493.P17597393520840473533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063833 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055493.P17597393520840473533

/-! ## A055493.P18323043481472783266

`∑[A000027(Δ[A063833(n+1)])]`
-/

namespace A055493.P18323043481472783266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063833 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055493.P18323043481472783266

/-! ## A055493.P3257261808518550771

`∑[A004184(Δ[A063833(n+1)])]`
-/

namespace A055493.P3257261808518550771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063833 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055493.P3257261808518550771

/-! ## A055493.P1070118998642137588

`∑[A028310(Δ[A063833(n+1)])]`
-/

namespace A055493.P1070118998642137588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063833 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055493.P1070118998642137588

/-!
# A055494: Numbers k such that k^2 - k + 1 is prime.

The programs for A055494, there is no canonical definition to state claims against.
-/

/-! ## A055494.P5020945946661583514

`1+A002384(n+1)`
-/

namespace A055494.P5020945946661583514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002384 (n + 1)

end

end A055494.P5020945946661583514

/-! ## A055494.P11231585529771726002

`A089358(1+n)-1`
-/

namespace A055494.P11231585529771726002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (1 + n) - 1

end

end A055494.P11231585529771726002

/-! ## A055494.P16771100476549492768

`ceil(sqrt(A002383(n+1)))`
-/

namespace A055494.P16771100476549492768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002383 (n + 1) : ℝ)⌉

end

end A055494.P16771100476549492768

/-! ## A055494.P16127849858306275454

`ceil(A088503(n+1)/2)`
-/

namespace A055494.P16127849858306275454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088503 (n + 1) : ℚ) / 2⌉

end

end A055494.P16127849858306275454

/-! ## A055494.P2893639229357874847

`(sqrt(A110284(n+1))+1)/2`
-/

namespace A055494.P2893639229357874847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A110284 (n + 1) : ℝ) + 1) / 2

end

end A055494.P2893639229357874847

/-! ## A055494.P52876216491914158

`eq[1, A289356(n)]+1`
-/

namespace A055494.P52876216491914158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055494.P52876216491914158

/-! ## A055494.P12704869790258186334

`lt[0, A108154(n+1)]+1`
-/

namespace A055494.P12704869790258186334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A055494.P12704869790258186334

/-! ## A055494.P2726721297654632181

`record[A081256(n+1)-n²]`
-/

namespace A055494.P2726721297654632181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055494.P2726721297654632181

/-! ## A055494.P12041248798988376100

`A020725(A002384(n+1))`
-/

namespace A055494.P12041248798988376100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002384 (n + 1)).toNat

end

end A055494.P12041248798988376100

/-! ## A055494.P6096921323396011587

`eq[A108154(n+2), A182047(n+1)]+2`
-/

namespace A055494.P6096921323396011587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A055494.P6096921323396011587

/-! ## A055494.P9743469367977494150

`A028310(abs(round(A088503(n+1)/2)-1))+1`
-/

namespace A055494.P9743469367977494150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |SequenceMachineLib.roundAway ((A088503 (n + 1) : ℚ) / 2) - 1|.toNat + 1

end

end A055494.P9743469367977494150

/-! ## A055494.P5238646383324248030

`eq[2, A278251(n)]`
-/

namespace A055494.P5238646383324248030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055494.P5238646383324248030

/-! ## A055494.P18241418269457830870

`A023443(A089358(n+1))`
-/

namespace A055494.P18241418269457830870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A089358 (n + 1)).toNat

end

end A055494.P18241418269457830870

/-! ## A055494.P12837165055712164929

`A023444(A089358(n+1)+1)`
-/

namespace A055494.P12837165055712164929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A089358 (n + 1) + 1).toNat

end

end A055494.P12837165055712164929

/-! ## A055494.P14202368772281172827

`A249122(A088503(n+1)+2)`
-/

namespace A055494.P14202368772281172827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A088503 (n + 1) + 2).toNat

end

end A055494.P14202368772281172827

/-! ## A055494.P13178946139777938448

`eq[A372713(n+1), A396945(n)]`
-/

namespace A055494.P13178946139777938448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055494.P13178946139777938448

/-! ## A055494.P3428216014453671985

`A023445(A089358(n+1)+2)`
-/

namespace A055494.P3428216014453671985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A089358 (n + 1) + 2).toNat

end

end A055494.P3428216014453671985

/-! ## A055494.P2387218622798379370

`eq[2, A278260(2*n+1)]+1`
-/

namespace A055494.P2387218622798379370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055494.P2387218622798379370

/-! ## A055494.P9404252367010956556

`A000463(A088503(n+1))`
-/

namespace A055494.P9404252367010956556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A088503 (n + 1)).toNat

end

end A055494.P9404252367010956556

/-! ## A055494.P11934276552163821228

`A004526(A088503(n+1)+1)`
-/

namespace A055494.P11934276552163821228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088503 (n + 1) + 1).toNat

end

end A055494.P11934276552163821228

/-! ## A055494.P17643082419056231270

`eq[1, ∑{e}[(n-1)²+n, #]]`
-/

namespace A055494.P17643082419056231270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2 + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055494.P17643082419056231270

/-!
# A055495: Numbers k such that there exists a pair of mutually orthogonal Latin squares of order k.

The programs for A055495, the canonical program `A055495.P10661796929039040712` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055495 has offset 1).

The definition of A055495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055495.P10661796929039040712

`ogf((3-2x+x^3-x^4)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055495

/-- `ogf((3-2x+x^3-x^4)/(1-2x+x^2))` -/
def P10661796929039040712.Spec : Prop :=
  ∀ n, P10661796929039040712.a n = A055495 (n + 1)

theorem P10661796929039040712.correct : P10661796929039040712.Spec := by
  intro n
  simp only [A055495, Nat.add_sub_cancel]

end A055495

/-!
# A055496: a(1) = 2; a(n) is smallest prime > 2*a(n-1).

The programs for A055496, the canonical program `A055496.P13637389097179456754` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055496 has offset 1).

The definition of A055496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055496.P13637389097179456754

`A000040(A000720(2*a(n-1))+1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055496

/-- `A000040(A000720(2*a(n-1))+1)` -/
def P13637389097179456754.Spec : Prop :=
  ∀ n, P13637389097179456754.a n = A055496 (n + 1)

theorem P13637389097179456754.correct : P13637389097179456754.Spec := by
  intro n
  simp only [A055496, Nat.add_sub_cancel]

end A055496

/-! ## A055496.P9031627195354985978

`record[A163963(n+2)]`
-/

namespace A055496.P9031627195354985978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055496.P9031627195354985978

namespace A055496

/-- `record[A163963(n+2)]` -/
def P9031627195354985978.Spec : Prop :=
  ∀ n, P9031627195354985978.a n = A055496 (n + 1)

end A055496

/-! ## A055496.P9617761615120193711

`record[Δ[A080735(n+2)]]`
-/

namespace A055496.P9617761615120193711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055496.P9617761615120193711

namespace A055496

/-- `record[Δ[A080735(n+2)]]` -/
def P9617761615120193711.Spec : Prop :=
  ∀ n, P9617761615120193711.a n = A055496 (n + 1)

end A055496

/-! ## A055496.P17979867499969981179

`A163963(lt[1, A163963(n+1)]+1)`
-/

namespace A055496.P17979867499969981179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A055496.P17979867499969981179

namespace A055496

/-- `A163963(lt[1, A163963(n+1)]+1)` -/
def P17979867499969981179.Spec : Prop :=
  ∀ n, P17979867499969981179.a n = A055496 (n + 1)

end A055496

/-! ## A055496.P2334230914821391202

`record[A080735(A065190(n+2))-A080735(n+2)]`
-/

namespace A055496.P2334230914821391202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (A065190 (n + 2)).toNat - A080735 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055496.P2334230914821391202

namespace A055496

/-- `record[A080735(A065190(n+2))-A080735(n+2)]` -/
def P2334230914821391202.Spec : Prop :=
  ∀ n, P2334230914821391202.a n = A055496 (n + 1)

end A055496

/-! ## A055496.P2279356916004278230

`A083005(A207890(n+1)+1)`
-/

namespace A055496.P2279356916004278230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083005 (A207890 (n + 1) + 1).toNat

end

end A055496.P2279356916004278230

namespace A055496

/-- `A083005(A207890(n+1)+1)` -/
def P2279356916004278230.Spec : Prop :=
  ∀ n, P2279356916004278230.a n = A055496 (n + 1)

end A055496

/-! ## A055496.P17558773297786812989

`A080735(A207890(n+1)+n+1)`
-/

namespace A055496.P17558773297786812989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (A207890 (n + 1) + (n + 1 : ℤ)).toNat

end

end A055496.P17558773297786812989

namespace A055496

/-- `A080735(A207890(n+1)+n+1)` -/
def P17558773297786812989.Spec : Prop :=
  ∀ n, P17558773297786812989.a n = A055496 (n + 1)

end A055496

/-! ## A055496.P9117853538016821170

`A163963(A207890(n+1)+n+1)`
-/

namespace A055496.P9117853538016821170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (A207890 (n + 1) + (n + 1 : ℤ)).toNat

end

end A055496.P9117853538016821170

namespace A055496

/-- `A163963(A207890(n+1)+n+1)` -/
def P9117853538016821170.Spec : Prop :=
  ∀ n, P9117853538016821170.a n = A055496 (n + 1)

end A055496

/-!
# A055497: a(-1) = 4, a(0) = 5; thereafter a(n) = 4 + (Product_{k=1..n} prime(k))^2.

The programs for A055497, there is no canonical definition to state claims against.
-/

/-! ## A055497.P10310285018522553221

`record[A276085(n+1)²+4]`
-/

namespace A055497.P10310285018522553221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (n + 1) ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055497.P10310285018522553221

/-! ## A055497.P14072088089589946673

`record[A276085(A028310(n))²]+4`
-/

namespace A055497.P14072088089589946673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A028310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4

end

end A055497.P14072088089589946673

/-! ## A055497.P7803216882191739562

`A276085(A008578(n+1))²+4`
-/

namespace A055497.P7803216882191739562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A008578 (n + 1)).toNat ^ 2 + 4

end

end A055497.P7803216882191739562

/-! ## A055497.P1178012346131140084

`record[A277021(n)²+4]`
-/

namespace A055497.P1178012346131140084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 n ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055497.P1178012346131140084

/-! ## A055497.P17099473273778532761

`A324193(2^n)²+4`
-/

namespace A055497.P17099473273778532761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324193 (2 ^ n) ^ 2 + 4

end

end A055497.P17099473273778532761

/-!
# A055498: a(0)=0, a(1)=1, a(n) = smallest prime >= a(n-1) + a(n-2).

The programs for A055498, the canonical program `A055498.P9363392666146799462` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055498 has offset 0).

The definition of A055498 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055498.P9363392666146799462

`A007918(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055498

/-- `A007918(a(n-1)+a(n-2))` -/
def P9363392666146799462.Spec : Prop :=
  ∀ n, P9363392666146799462.a n = A055498 n

theorem P9363392666146799462.correct : P9363392666146799462.Spec := by
  intro n
  simp only [A055498]

end A055498

/-! ## A055498.P13337590465505238200

`A362883(n)+A055500(n)`
-/

namespace A055498.P13337590465505238200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362883 n + A055500 n

end

end A055498.P13337590465505238200

namespace A055498

/-- `A362883(n)+A055500(n)` -/
def P13337590465505238200.Spec : Prop :=
  ∀ n, P13337590465505238200.a n = A055498 n

end A055498

/-! ## A055498.P12739627323657370638

`∪[A073022(n+1), A055499(n)]`
-/

namespace A055498.P12739627323657370638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055499 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055498.P12739627323657370638

namespace A055498

/-- `∪[A073022(n+1), A055499(n)]` -/
def P12739627323657370638.Spec : Prop :=
  ∀ n, (P12739627323657370638.a n : ℤ) = A055498 n

end A055498

/-! ## A055498.P6439401325830016460

`A362883(n)+A055501(and(n+1, A326178(n)))`
-/

namespace A055498.P6439401325830016460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362883 n + A055501 (Int.land (n + 1 : ℤ) (A326178 n)).toNat

end

end A055498.P6439401325830016460

namespace A055498

/-- `A362883(n)+A055501(and(n+1, A326178(n)))` -/
def P6439401325830016460.Spec : Prop :=
  ∀ n, P6439401325830016460.a n = A055498 n

end A055498

/-! ## A055498.P8228359737873695270

`record[A292936(n+1)+A055499(A002262(n))]`
-/

namespace A055498.P8228359737873695270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (n + 1) + A055499 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055498.P8228359737873695270

namespace A055498

/-- `record[A292936(n+1)+A055499(A002262(n))]` -/
def P8228359737873695270.Spec : Prop :=
  ∀ n, P8228359737873695270.a n = A055498 n

end A055498

/-!
# A055499: a(0)=0, a(1)=1, a(n) = smallest prime > a(n-1)+a(n-2).

The programs for A055499, the canonical program `A055499.P1678802310428195531` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055499 has offset 0).

The definition of A055499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055499.P12898199018875942423

`A055498(round(n+1-Δ[log((n+1)²)]))`
-/

namespace A055499.P12898199018875942423
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((n + 1) ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (SequenceMachineLib.roundAway ((n + 1 : ℝ) - (f1 (n + 1) - f1 n))).toNat

end

end A055499.P12898199018875942423

namespace A055499

/-- `A055498(round(n+1-Δ[log((n+1)²)]))` -/
def P12898199018875942423.Spec : Prop :=
  ∀ n, P12898199018875942423.a n = A055499 n

end A055499

/-! ## A055499.P10458803924760550958

`A073022(n)-A154272(n+1)`
-/

namespace A055499.P10458803924760550958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073022 n - A154272 (n + 1)

end

end A055499.P10458803924760550958

namespace A055499

/-- `A073022(n)-A154272(n+1)` -/
def P10458803924760550958.Spec : Prop :=
  ∀ n, P10458803924760550958.a n = A055499 n

end A055499

/-! ## A055499.P1876504983308330640

`A055498(n+1)-char[2-A026741(n)]`
-/

namespace A055499.P1876504983308330640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055499.P1876504983308330640

namespace A055499

/-- `A055498(n+1)-char[2-A026741(n)]` -/
def P1876504983308330640.Spec : Prop :=
  ∀ n, P1876504983308330640.a n = A055499 n

end A055499

/-! ## A055499.P3334693951816547758

`A055498(1-char[1]+n)-A154272(n+1)`
-/

namespace A055499.P3334693951816547758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat - A154272 (n + 1)

end

end A055499.P3334693951816547758

namespace A055499

/-- `A055498(1-char[1]+n)-A154272(n+1)` -/
def P3334693951816547758.Spec : Prop :=
  ∀ n, P3334693951816547758.a n = A055499 n

end A055499

/-! ## A055499.P5677427340128271736

`or(1, A055498(n+1)-1)-A154272(n+1)`
-/

namespace A055499.P5677427340128271736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055498 (n + 1) - 1) - A154272 (n + 1)

end

end A055499.P5677427340128271736

namespace A055499

/-- `or(1, A055498(n+1)-1)-A154272(n+1)` -/
def P5677427340128271736.Spec : Prop :=
  ∀ n, P5677427340128271736.a n = A055499 n

end A055499

/-! ## A055499.P17421801943237763001

`A055498(n+1)-A094497(A029931(n))`
-/

namespace A055499.P17421801943237763001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (n + 1) - A094497 (A029931 n).toNat

end

end A055499.P17421801943237763001

namespace A055499

/-- `A055498(n+1)-A094497(A029931(n))` -/
def P17421801943237763001.Spec : Prop :=
  ∀ n, P17421801943237763001.a n = A055499 n

end A055499

/-! ## A055499.P1678802310428195531

`A055498(n+1)-A010051(A007918(n)+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055499

/-- `A055498(n+1)-A010051(A007918(n)+1)` -/
def P1678802310428195531.Spec : Prop :=
  ∀ n, P1678802310428195531.a n = A055499 n

theorem P1678802310428195531.correct : P1678802310428195531.Spec := by
  intro n
  simp only [A055499]

end A055499

/-! ## A055499.P26344101196724783

`A055498(n+1)+A055500(n)-A055501(n+1)`
-/

namespace A055499.P26344101196724783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (n + 1) + (A055500 n - A055501 (n + 1))

end

end A055499.P26344101196724783

namespace A055499

/-- `A055498(n+1)+A055500(n)-A055501(n+1)` -/
def P26344101196724783.Spec : Prop :=
  ∀ n, P26344101196724783.a n = A055499 n

end A055499

/-! ## A055499.P17972040121353041988

`A055498(n+1)-C(A000045(2*n+1), A055498(2*n))`
-/

namespace A055499.P17972040121353041988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (n + 1) - (Nat.choose (A000045 (2 * n + 1)).toNat (A055498 (2 * n)).toNat : ℤ)

end

end A055499.P17972040121353041988

namespace A055499

/-- `A055498(n+1)-C(A000045(2*n+1), A055498(2*n))` -/
def P17972040121353041988.Spec : Prop :=
  ∀ n, P17972040121353041988.a n = A055499 n

end A055499

/-! ## A055499.P5755799984353065811

`A055498(n+1)-A010051(∑[∑[n+1]]+1)`
-/

namespace A055499.P5755799984353065811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (n + 1) - A010051 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055499.P5755799984353065811

namespace A055499

/-- `A055498(n+1)-A010051(∑[∑[n+1]]+1)` -/
def P5755799984353065811.Spec : Prop :=
  ∀ n, P5755799984353065811.a n = A055499 n

end A055499

