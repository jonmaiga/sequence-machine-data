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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B009.C001
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
# A052200: Number of n-state, 2-symbol, d+ in {LEFT, RIGHT}, 5-tuple (q, s, q+, s+, d+) (halting or not) Turing machines.

The programs for A052200, the canonical program `A052200.P13848145852153611448` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052200 has offset 0).

The definition of A052200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052200.P13848145852153611448

`(4*(n+1))^(2*n)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052200

/-- `(4*(n+1))^(2*n)` -/
def P13848145852153611448.Spec : Prop :=
  ∀ n, (P13848145852153611448.a n : ℤ) = A052200 n

theorem P13848145852153611448.correct : P13848145852153611448.Spec := by
  intro n
  simp only [A052200]

end A052200

/-! ## A052200.P8053213732730196048

`A052764(n+1)²`
-/

namespace A052200.P8053213732730196048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052764 (n + 1) ^ 2

end

end A052200.P8053213732730196048

namespace A052200

/-- `A052764(n+1)²` -/
def P8053213732730196048.Spec : Prop :=
  ∀ n, P8053213732730196048.a n = A052200 n

end A052200

/-! ## A052200.P17475128514755847927

`A084623(2*n+1)*A163395(n+1)`
-/

namespace A052200.P17475128514755847927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084623 (2 * n + 1) * A163395 (n + 1)

end

end A052200.P17475128514755847927

namespace A052200

/-- `A084623(2*n+1)*A163395(n+1)` -/
def P17475128514755847927.Spec : Prop :=
  ∀ n, P17475128514755847927.a n = A052200 n

end A052200

/-!
# A052201: Equivalent of the Kurepa hypothesis for left factorial.

The programs for A052201, the canonical program `A052201.P14964232954208616524` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052201 has offset 1).

The definition of A052201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052201.P14964232954208616524

`(n+2)*(a(n-1)-a(n-3))-3*a(n-2)` with `a(0)=4, a(1)=15, a(2)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052201

/-- `(n+2)*(a(n-1)-a(n-3))-3*a(n-2)` -/
def P14964232954208616524.Spec : Prop :=
  ∀ n, P14964232954208616524.a n = A052201 (n + 1)

theorem P14964232954208616524.correct : P14964232954208616524.Spec := by
  intro n
  simp only [A052201, Nat.add_sub_cancel]

end A052201

/-! ## A052201.P12369598710915294232

`(n+4)*∑[∑[round((n+1)!/2)]]`
-/

namespace A052201.P12369598710915294232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052201.P12369598710915294232

namespace A052201

/-- `(n+4)*∑[∑[round((n+1)!/2)]]` -/
def P12369598710915294232.Spec : Prop :=
  ∀ n, P12369598710915294232.a n = A052201 (n + 1)

end A052201

/-! ## A052201.P4516952199920660503

`∑[A014288(n+1)]*(n+4)`
-/

namespace A052201.P4516952199920660503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 4 : ℤ)

end

end A052201.P4516952199920660503

namespace A052201

/-- `∑[A014288(n+1)]*(n+4)` -/
def P4516952199920660503.Spec : Prop :=
  ∀ n, P4516952199920660503.a n = A052201 (n + 1)

end A052201

/-! ## A052201.P4003540145009518080

`∑[A014288(n+2)+∑[A003422(n+2)]]`
-/

namespace A052201.P4003540145009518080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 (n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052201.P4003540145009518080

namespace A052201

/-- `∑[A014288(n+2)+∑[A003422(n+2)]]` -/
def P4003540145009518080.Spec : Prop :=
  ∀ n, P4003540145009518080.a n = A052201 (n + 1)

end A052201

/-! ## A052201.P7264352600315291225

`(n+4)*∑[record[A117396(n)]]`
-/

namespace A052201.P7264352600315291225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052201.P7264352600315291225

namespace A052201

/-- `(n+4)*∑[record[A117396(n)]]` -/
def P7264352600315291225.Spec : Prop :=
  ∀ n, P7264352600315291225.a n = A052201 (n + 1)

end A052201

/-!
# A052202: Numbers k such that the product of the logarithms of k's prime factors is greater than their sum.

The programs for A052202, there is no canonical definition to state claims against.
-/

/-! ## A052202.P8704257924647899962

`A251728(A032555(n+1)+10)`
-/

namespace A052202.P8704257924647899962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (A032555 (n + 1) + 10).toNat

end

end A052202.P8704257924647899962

/-! ## A052202.P10629426272538085380

`A251728(A248794(n+1)+10)`
-/

namespace A052202.P10629426272538085380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (A248794 (n + 1) + 10).toNat

end

end A052202.P10629426272538085380

/-! ## A052202.P2518813176334560680

`lt[A258774(A323774(n)), A359899(n)]`
-/

namespace A052202.P2518813176334560680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (A323774 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359899 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052202.P2518813176334560680

/-!
# A052203: a(n) = (4n+1)*binomial(4n,n)/(3n+1).

The programs for A052203, the canonical program `A052203.P1984650257155764096` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052203 has offset 0).

The definition of A052203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052203.P10506861339866502310

`A283799(2*n)`
-/

namespace A052203.P10506861339866502310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283799 (2 * n)

end

end A052203.P10506861339866502310

namespace A052203

/-- `A283799(2*n)` -/
def P10506861339866502310.Spec : Prop :=
  ∀ n, P10506861339866502310.a n = A052203 n

end A052203

/-! ## A052203.P1984650257155764096

`A051036(4*n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052203

/-- `A051036(4*n+1)` -/
def P1984650257155764096.Spec : Prop :=
  ∀ n, P1984650257155764096.a n = A052203 n

theorem P1984650257155764096.correct : P1984650257155764096.Spec := by
  intro n
  simp only [A052203]

end A052203

/-! ## A052203.P5406569373183803154

`(4*n+1)*A002293(n)`
-/

namespace A052203.P5406569373183803154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A002293 n

end

end A052203.P5406569373183803154

namespace A052203

/-- `(4*n+1)*A002293(n)` -/
def P5406569373183803154.Spec : Prop :=
  ∀ n, P5406569373183803154.a n = A052203 n

end A052203

/-! ## A052203.P4453816834630776812

`A002293(n)*A016813(n)`
-/

namespace A052203.P4453816834630776812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A016813 n

end

end A052203.P4453816834630776812

namespace A052203

/-- `A002293(n)*A016813(n)` -/
def P4453816834630776812.Spec : Prop :=
  ∀ n, P4453816834630776812.a n = A052203 n

end A052203

/-! ## A052203.P10675107002924569236

`∑[A016777(n)]*A000260(n)`
-/

namespace A052203.P10675107002924569236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000260 n

end

end A052203.P10675107002924569236

namespace A052203

/-- `∑[A016777(n)]*A000260(n)` -/
def P10675107002924569236.Spec : Prop :=
  ∀ n, P10675107002924569236.a n = A052203 n

end A052203

/-! ## A052203.P5138745466775648901

`A000260(n)*A000326(n+1)`
-/

namespace A052203.P5138745466775648901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A000326 (n + 1)

end

end A052203.P5138745466775648901

namespace A052203

/-- `A000260(n)*A000326(n+1)` -/
def P5138745466775648901.Spec : Prop :=
  ∀ n, P5138745466775648901.a n = A052203 n

end A052203

/-! ## A052203.P12652062911595704288

`2*A126596(n)-A002293(n)`
-/

namespace A052203.P12652062911595704288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126596 n - A002293 n

end

end A052203.P12652062911595704288

namespace A052203

/-- `2*A126596(n)-A002293(n)` -/
def P12652062911595704288.Spec : Prop :=
  ∀ n, P12652062911595704288.a n = A052203 n

end A052203

/-! ## A052203.P8443564203641332396

`2*A005810(n)-A126596(n)`
-/

namespace A052203.P8443564203641332396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005810 n - A126596 n

end

end A052203.P8443564203641332396

namespace A052203

/-- `2*A005810(n)-A126596(n)` -/
def P8443564203641332396.Spec : Prop :=
  ∀ n, P8443564203641332396.a n = A052203 n

end A052203

/-! ## A052203.P769960390332862266

`A002293(n)*A005408(2*n)`
-/

namespace A052203.P769960390332862266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A005408 (2 * n)

end

end A052203.P769960390332862266

namespace A052203

/-- `A002293(n)*A005408(2*n)` -/
def P769960390332862266.Spec : Prop :=
  ∀ n, P769960390332862266.a n = A052203 n

end A052203

/-! ## A052203.P473409451224033253

`A005810(n)+n*A002293(n)`
-/

namespace A052203.P473409451224033253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n + (n : ℤ) * A002293 n

end

end A052203.P473409451224033253

namespace A052203

/-- `A005810(n)+n*A002293(n)` -/
def P473409451224033253.Spec : Prop :=
  ∀ n, P473409451224033253.a n = A052203 n

end A052203

/-! ## A052203.P154501891908390737

`A052204(n)-n*A002293(n)`
-/

namespace A052203.P154501891908390737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052204 n - (n : ℤ) * A002293 n

end

end A052203.P154501891908390737

namespace A052203

/-- `A052204(n)-n*A002293(n)` -/
def P154501891908390737.Spec : Prop :=
  ∀ n, P154501891908390737.a n = A052203 n

end A052203

/-! ## A052203.P3077213371005507737

`A114752(2*n+1)*A369082(2*n)`
-/

namespace A052203.P3077213371005507737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114752 (2 * n + 1) * A369082 (2 * n)

end

end A052203.P3077213371005507737

namespace A052203

/-- `A114752(2*n+1)*A369082(2*n)` -/
def P3077213371005507737.Spec : Prop :=
  ∀ n, P3077213371005507737.a n = A052203 n

end A052203

/-! ## A052203.P14178587720791448286

`(A016825(n)-1)*A069270(A000096(n))`
-/

namespace A052203.P14178587720791448286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 n - 1) * A069270 (A000096 n).toNat

end

end A052203.P14178587720791448286

namespace A052203

/-- `(A016825(n)-1)*A069270(A000096(n))` -/
def P14178587720791448286.Spec : Prop :=
  ∀ n, P14178587720791448286.a n = A052203 n

end A052203

/-! ## A052203.P7709669273212088501

`(A016861(n)-n)*A069270(A000096(n))`
-/

namespace A052203.P7709669273212088501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n - (n : ℤ)) * A069270 (A000096 n).toNat

end

end A052203.P7709669273212088501

namespace A052203

/-- `(A016861(n)-n)*A069270(A000096(n))` -/
def P7709669273212088501.Spec : Prop :=
  ∀ n, P7709669273212088501.a n = A052203 n

end A052203

/-! ## A052203.P9334442542710070186

`A264773(∑[n+1]+1)`
-/

namespace A052203.P9334442542710070186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052203.P9334442542710070186

namespace A052203

/-- `A264773(∑[n+1]+1)` -/
def P9334442542710070186.Spec : Prop :=
  ∀ n, P9334442542710070186.a n = A052203 n

end A052203

/-! ## A052203.P8078043355807430701

`(A016777(n)+n)*A243663(A152947(n+1))`
-/

namespace A052203.P8078043355807430701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n + (n : ℤ)) * A243663 (A152947 (n + 1)).toNat

end

end A052203.P8078043355807430701

namespace A052203

/-- `(A016777(n)+n)*A243663(A152947(n+1))` -/
def P8078043355807430701.Spec : Prop :=
  ∀ n, P8078043355807430701.a n = A052203 n

end A052203

/-!
# A052204: a(n) = (5n+1)*C(4n,n)/(3n+1).

The programs for A052204, the canonical program `A052204.P10723228008587755201` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052204 has offset 0).

The definition of A052204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052204.P8726764948940071995

`(5*n+1)*A002293(n)`
-/

namespace A052204.P8726764948940071995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A002293 n

end

end A052204.P8726764948940071995

namespace A052204

/-- `(5*n+1)*A002293(n)` -/
def P8726764948940071995.Spec : Prop :=
  ∀ n, P8726764948940071995.a n = A052204 n

end A052204

/-! ## A052204.P11057191596375837753

`A002293(n)*A016861(n)`
-/

namespace A052204.P11057191596375837753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A016861 n

end

end A052204.P11057191596375837753

namespace A052204

/-- `A002293(n)*A016861(n)` -/
def P11057191596375837753.Spec : Prop :=
  ∀ n, P11057191596375837753.a n = A052204 n

end A052204

/-! ## A052204.P10723228008587755201

`2*A052203(n)-A005810(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052204

/-- `2*A052203(n)-A005810(n)` -/
def P10723228008587755201.Spec : Prop :=
  ∀ n, P10723228008587755201.a n = A052204 n

theorem P10723228008587755201.correct : P10723228008587755201.Spec := by
  intro n
  simp only [A052204]

end A052204

/-! ## A052204.P38970589265297571

`A052203(n)+n*A002293(n)`
-/

namespace A052204.P38970589265297571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052203 n + (n : ℤ) * A002293 n

end

end A052204.P38970589265297571

namespace A052204

/-- `A052203(n)+n*A002293(n)` -/
def P38970589265297571.Spec : Prop :=
  ∀ n, P38970589265297571.a n = A052204 n

end A052204

/-! ## A052204.P7651642726714029824

`A016861(n)*A069270(A000096(n))`
-/

namespace A052204.P7651642726714029824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A069270 (A000096 n).toNat

end

end A052204.P7651642726714029824

namespace A052204

/-- `A016861(n)*A069270(A000096(n))` -/
def P7651642726714029824.Spec : Prop :=
  ∀ n, P7651642726714029824.a n = A052204 n

end A052204

/-! ## A052204.P3005966348119243413

`A002293(n)*A110654(A017281(n))`
-/

namespace A052204.P3005966348119243413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A110654 (A017281 n).toNat

end

end A052204.P3005966348119243413

namespace A052204

/-- `A002293(n)*A110654(A017281(n))` -/
def P3005966348119243413.Spec : Prop :=
  ∀ n, P3005966348119243413.a n = A052204 n

end A052204

/-! ## A052204.P1012797265319421716

`A005810(n)+A126596(n)-A002293(n)`
-/

namespace A052204.P1012797265319421716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n + (A126596 n - A002293 n)

end

end A052204.P1012797265319421716

namespace A052204

/-- `A005810(n)+A126596(n)-A002293(n)` -/
def P1012797265319421716.Spec : Prop :=
  ∀ n, P1012797265319421716.a n = A052204 n

end A052204

/-! ## A052204.P15556530842470839181

`A029644((2*n+1)²-(n+1))`
-/

namespace A052204.P15556530842470839181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 ((2 * n + 1) ^ 2 - (n + 1))

end

end A052204.P15556530842470839181

namespace A052204

/-- `A029644((2*n+1)²-(n+1))` -/
def P15556530842470839181.Spec : Prop :=
  ∀ n, P15556530842470839181.a n = A052204 n

end A052204

/-!
# A052206: Partial sums of A050405.

The programs for A052206, the canonical program `A052206.P531529132261358619` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052206 has offset 0).

The definition of A052206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052206.P531529132261358619

`∑[∑[∑[∑[∑[∑[9*n+1]]]]]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052206

/-- `∑[∑[∑[∑[∑[∑[9*n+1]]]]]]` -/
def P531529132261358619.Spec : Prop :=
  ∀ n, (P531529132261358619.a n : ℤ) = A052206 n

theorem P531529132261358619.correct : P531529132261358619.Spec := by
  intro n
  simp only [A052206]

end A052206

/-! ## A052206.P1899624559672741361

`2*∑[A050405(n)/2]`
-/

namespace A052206.P1899624559672741361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050405 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052206.P1899624559672741361

namespace A052206

/-- `2*∑[A050405(n)/2]` -/
def P1899624559672741361.Spec : Prop :=
  ∀ n, P1899624559672741361.a n = (A052206 n : ℚ)

end A052206

/-! ## A052206.P16254109034459169447

`lcm(∑[A050405(n)], A000034(n))`
-/

namespace A052206.P16254109034459169447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A052206.P16254109034459169447

namespace A052206

/-- `lcm(∑[A050405(n)], A000034(n))` -/
def P16254109034459169447.Spec : Prop :=
  ∀ n, (P16254109034459169447.a n : ℤ) = A052206 n

end A052206

/-! ## A052206.P6437891507018656425

`or(∑[A050405(n)], A000007(n))`
-/

namespace A052206.P6437891507018656425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A052206.P6437891507018656425

namespace A052206

/-- `or(∑[A050405(n)], A000007(n))` -/
def P6437891507018656425.Spec : Prop :=
  ∀ n, P6437891507018656425.a n = A052206 n

end A052206

/-! ## A052206.P11337035324706104117

`∑[A050405(n)]+A005843(n)%2`
-/

namespace A052206.P11337035324706104117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A005843 n) 2

end

end A052206.P11337035324706104117

namespace A052206

/-- `∑[A050405(n)]+A005843(n)%2` -/
def P11337035324706104117.Spec : Prop :=
  ∀ n, P11337035324706104117.a n = A052206 n

end A052206

/-! ## A052206.P14873064857758381115

`A005408(n)%2*∑[A050405(n)]`
-/

namespace A052206.P14873064857758381115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052206.P14873064857758381115

namespace A052206

/-- `A005408(n)%2*∑[A050405(n)]` -/
def P14873064857758381115.Spec : Prop :=
  ∀ n, P14873064857758381115.a n = A052206 n

end A052206

/-! ## A052206.P16755339473792076553

`A002145(n+1)%2*∑[A050405(n)]`
-/

namespace A052206.P16755339473792076553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002145 (n + 1)) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052206.P16755339473792076553

namespace A052206

/-- `A002145(n+1)%2*∑[A050405(n)]` -/
def P16755339473792076553.Spec : Prop :=
  ∀ n, P16755339473792076553.a n = A052206 n

end A052206

/-! ## A052206.P17332934212574569434

`∑[A050405(n)]/A001511(or(1, n+1))`
-/

namespace A052206.P17332934212574569434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001511 (Nat.lor 1 (n + 1)) : ℚ)

end

end A052206.P17332934212574569434

namespace A052206

/-- `∑[A050405(n)]/A001511(or(1, n+1))` -/
def P17332934212574569434.Spec : Prop :=
  ∀ n, P17332934212574569434.a n = (A052206 n : ℚ)

end A052206

/-! ## A052206.P8918534846192101971

`A056117(n+1)-(A056117(n)+A050405(n+1))`
-/

namespace A052206.P8918534846192101971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056117 (n + 1) - (A056117 n + A050405 (n + 1))

end

end A052206.P8918534846192101971

namespace A052206

/-- `A056117(n+1)-(A056117(n)+A050405(n+1))` -/
def P8918534846192101971.Spec : Prop :=
  ∀ n, P8918534846192101971.a n = A052206 n

end A052206

/-! ## A052206.P14662533621503339087

`∑[A050405(n)]*A001511(2*n+1)`
-/

namespace A052206.P14662533621503339087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001511 (2 * n + 1)

end

end A052206.P14662533621503339087

namespace A052206

/-- `∑[A050405(n)]*A001511(2*n+1)` -/
def P14662533621503339087.Spec : Prop :=
  ∀ n, P14662533621503339087.a n = A052206 n

end A052206

/-! ## A052206.P8333323118996506834

`A007318(∑[n])*∑[A050405(n)]`
-/

namespace A052206.P8333323118996506834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A052206.P8333323118996506834

namespace A052206

/-- `A007318(∑[n])*∑[A050405(n)]` -/
def P8333323118996506834.Spec : Prop :=
  ∀ n, P8333323118996506834.a n = A052206 n

end A052206

/-! ## A052206.P7812653420517851965

`A093644(eq[8, A002260(n+1)])`
-/

namespace A052206.P7812653420517851965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052206.P7812653420517851965

namespace A052206

/-- `A093644(eq[8, A002260(n+1)])` -/
def P7812653420517851965.Spec : Prop :=
  ∀ n, P7812653420517851965.a n = A052206 n

end A052206

/-!
# A052207: Number of sequences {s(i): i=0..n} such that |s(i)-s(i-1)|=1, i=1..n and s(i)=0 at four values of i, one of which is i=0.

The programs for A052207, there is no canonical definition to state claims against.
-/

/-! ## A052207.P4410913876824049729

`2*A047073(n+2)%A047073(n)`
-/

namespace A052207.P4410913876824049729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A047073 (n + 2)) (A047073 n)

end

end A052207.P4410913876824049729

/-! ## A052207.P16276510156564963439

`A005843(A047073(n+2)%A047073(n))`
-/

namespace A052207.P16276510156564963439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A047073 (n + 2)) (A047073 n)).toNat

end

end A052207.P16276510156564963439

/-! ## A052207.P11443410301448245472

`A035327(or(7, A125049(n+1)))`
-/

namespace A052207.P11443410301448245472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.lor 7 (A125049 (n + 1))).toNat

end

end A052207.P11443410301448245472

/-! ## A052207.P10565849449073063724

`and(A005942(floor(5*2^n/3)), A072762(n+1))`
-/

namespace A052207.P10565849449073063724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005942 ⌊5 * ((2 ^ n : ℚ) / 3)⌋.toNat) (A072762 (n + 1))

end

end A052207.P10565849449073063724

/-! ## A052207.P12346582057590811793

`and(A001045(n), A008590(A265700(n)))`
-/

namespace A052207.P12346582057590811793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001045 n) (A008590 (A265700 n).toNat)

end

end A052207.P12346582057590811793

/-!
# A052208: a(n) = Pell(n)*Pell(2*n)/2.

The programs for A052208, there is no canonical definition to state claims against.
-/

/-! ## A052208.P12752702216378371027

`A000129(n)²*round((sqrt(2)+1)^n/2)`
-/

namespace A052208.P12752702216378371027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2 * SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2)

end

end A052208.P12752702216378371027

/-! ## A052208.P1037673406341122527

`A000129(n)*A001109(n)`
-/

namespace A052208.P1037673406341122527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A001109 n

end

end A052208.P1037673406341122527

/-! ## A052208.P14393501061488222427

`A001333(n)*A079291(n)`
-/

namespace A052208.P14393501061488222427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A079291 n

end

end A052208.P14393501061488222427

/-! ## A052208.P6409261534984965344

`A001109(n)*A215928(n)`
-/

namespace A052208.P6409261534984965344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n * A215928 n

end

end A052208.P6409261534984965344

/-! ## A052208.P14201517928210456443

`lcm(A001109(n), A079291(n))`
-/

namespace A052208.P14201517928210456443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001109 n) (A079291 n)

end

end A052208.P14201517928210456443

/-! ## A052208.P15815472720478554682

`sqrt(A090390(n))*A079291(n)`
-/

namespace A052208.P15815472720478554682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A090390 n : ℝ) * (A079291 n : ℝ)

end

end A052208.P15815472720478554682

/-! ## A052208.P2375557533202479799

`lcm(A000129(n)², A123335(n))`
-/

namespace A052208.P2375557533202479799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000129 n ^ 2) (A123335 n)

end

end A052208.P2375557533202479799

/-! ## A052208.P9703806599729735199

`Δ[A171842(n)]*A001109(n)`
-/

namespace A052208.P9703806599729735199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001109 n

end

end A052208.P9703806599729735199

/-! ## A052208.P11594885571655970451

`A001109(n)*A002965(2*n)`
-/

namespace A052208.P11594885571655970451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n * A002965 (2 * n)

end

end A052208.P11594885571655970451

/-! ## A052208.P17890976201686302324

`A001109(n)*A116558(2*n)`
-/

namespace A052208.P17890976201686302324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n * A116558 (2 * n)

end

end A052208.P17890976201686302324

/-!
# A052209: b(n)*b(2*n), b(n) = A001353(n+1).

The programs for A052209, there is no canonical definition to state claims against.
-/

/-! ## A052209.P14337393401621346480

`A125905(n)²*A003500(n+1)`
-/

namespace A052209.P14337393401621346480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125905 n ^ 2 * A003500 (n + 1)

end

end A052209.P14337393401621346480

/-! ## A052209.P11539926606947692353

`Δ[A061278(n)]²*Δ[A001834(n)]`
-/

namespace A052209.P11539926606947692353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A052209.P11539926606947692353

/-! ## A052209.P14357412814086498777

`A003500(n+1)*A098301(n+1)`
-/

namespace A052209.P14357412814086498777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 (n + 1) * A098301 (n + 1)

end

end A052209.P14357412814086498777

/-! ## A052209.P15681093683019615105

`A001353(n+1)*A010905(2*n)`
-/

namespace A052209.P15681093683019615105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) * A010905 (2 * n)

end

end A052209.P15681093683019615105

/-! ## A052209.P3524783405000409778

`A001353(n+1)²*A003500(n+1)`
-/

namespace A052209.P3524783405000409778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) ^ 2 * A003500 (n + 1)

end

end A052209.P3524783405000409778

/-! ## A052209.P3611394674842952058

`A106707(n+1)²*A003500(n+1)`
-/

namespace A052209.P3611394674842952058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 (n + 1) ^ 2 * A003500 (n + 1)

end

end A052209.P3611394674842952058

/-! ## A052209.P2770058070067477274

`abs(A125905(2*n+1)*A125905(n))`
-/

namespace A052209.P2770058070067477274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125905 (2 * n + 1) * A125905 n|

end

end A052209.P2770058070067477274

/-! ## A052209.P6115682012128217371

`Δ[A001834(n)]*A097947(2*n+1)`
-/

namespace A052209.P6115682012128217371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097947 (2 * n + 1)

end

end A052209.P6115682012128217371

/-! ## A052209.P16358968664139716355

`A001353(2*(n+1))*A001353(n+1)`
-/

namespace A052209.P16358968664139716355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (2 * (n + 1)) * A001353 (n + 1)

end

end A052209.P16358968664139716355

/-! ## A052209.P16246570067747644479

`A001075(n+1)*A006253(2*n+1)`
-/

namespace A052209.P16246570067747644479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (n + 1) * A006253 (2 * n + 1)

end

end A052209.P16246570067747644479

/-!
# A052210: Numbers k such that k^3 starts with k itself (in base 10).

The programs for A052210, there is no canonical definition to state claims against.
-/

/-! ## A052210.P6165244092770267768

`∩[A029942(n+1), A007090(n)]`
-/

namespace A052210.P6165244092770267768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052210.P6165244092770267768

/-! ## A052210.P6180385168235290731

`eq[A004086(n), A004086(A018852(n))]`
-/

namespace A052210.P6180385168235290731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A018852 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052210.P6180385168235290731

/-! ## A052210.P2841399619361548095

`record[A178501(A053735(n))%A248975(n)]`
-/

namespace A052210.P2841399619361548095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178501 (A053735 n).toNat) (A248975 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052210.P2841399619361548095

/-!
# A052211: Numbers k such that k^4 starts with k itself (in base 10).

The programs for A052211, there is no canonical definition to state claims against.
-/

/-! ## A052211.P13031625802398948737

`A233453(lt[n+1, A029931(3*n)])`
-/

namespace A052211.P13031625802398948737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233453 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A052211.P13031625802398948737

/-! ## A052211.P3414134610962972739

`A233453(lt[A034365(3*n+1), n])`
-/

namespace A052211.P3414134610962972739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034365 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233453 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A052211.P3414134610962972739

/-! ## A052211.P7385073238163200602

`A233453(∪[A189415(3*n+2), A032955(n+1)])`
-/

namespace A052211.P7385073238163200602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189415 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032955 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233453 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A052211.P7385073238163200602

/-!
# A052212: Numbers k whose square contains the digits of k in order (but not necessarily consecutively).

The programs for A052212, there is no canonical definition to state claims against.
-/

/-! ## A052212.P5635684442684836279

`A046829(n+2)`
-/

namespace A052212.P5635684442684836279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046829 (n + 2)

end

end A052212.P5635684442684836279

/-! ## A052212.P5386312691368455998

`eq[A165063(n+1), A391816(n)]`
-/

namespace A052212.P5386312691368455998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052212.P5386312691368455998

/-! ## A052212.P9551751694559003515

`eq[A055027(n+1), A391816(n)]`
-/

namespace A052212.P9551751694559003515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052212.P9551751694559003515

/-! ## A052212.P604729875757164553

`eq[A236213(n+1), A391816(n)]`
-/

namespace A052212.P604729875757164553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052212.P604729875757164553

/-!
# A052213: Numbers k with prime signature(k) = prime signature(k+1).

The programs for A052213, the canonical program `A052213.P7998642975196925189` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052213 has offset 1).

The definition of A052213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8541 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052213.P4190043149935210342

`A083793(n+1)-1`
-/

namespace A052213.P4190043149935210342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1) - 1

end

end A052213.P4190043149935210342

namespace A052213

/-- `A083793(n+1)-1` -/
def P4190043149935210342.Spec : Prop :=
  ∀ n, P4190043149935210342.a n = A052213 (n + 1)

end A052213

/-! ## A052213.P7985447448022843237

`filter[A276553(n+1), A361022(#)]`
-/

namespace A052213.P7985447448022843237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A052213.P7985447448022843237

namespace A052213

/-- `filter[A276553(n+1), A361022(#)]` -/
def P7985447448022843237.Spec : Prop :=
  ∀ n, P7985447448022843237.a n = A052213 (n + 1)

end A052213

/-! ## A052213.P7998642975196925189

`∩[A005237(n+1), A276553(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A052213

/-- `∩[A005237(n+1), A276553(n+1)]` -/
def P7998642975196925189.Spec : Prop :=
  ∀ n, (P7998642975196925189.a n : ℤ) = A052213 (n + 1)

theorem P7998642975196925189.correct : P7998642975196925189.Spec := by
  intro n
  simp only [A052213, Nat.add_sub_cancel]

end A052213

/-! ## A052213.P5502218560491020568

`∩[A005237(n+1), A045920(n+1)]`
-/

namespace A052213.P5502218560491020568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P5502218560491020568

namespace A052213

/-- `∩[A005237(n+1), A045920(n+1)]` -/
def P5502218560491020568.Spec : Prop :=
  ∀ n, (P5502218560491020568.a n : ℤ) = A052213 (n + 1)

end A052213

/-! ## A052213.P8873800982456433536

`∩[A045920(n+1), A276553(n+1)]`
-/

namespace A052213.P8873800982456433536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P8873800982456433536

namespace A052213

/-- `∩[A045920(n+1), A276553(n+1)]` -/
def P8873800982456433536.Spec : Prop :=
  ∀ n, (P8873800982456433536.a n : ℤ) = A052213 (n + 1)

end A052213

/-! ## A052213.P14171251016819520551

`eq[A101296(n+1), A101296(n+2)]+1`
-/

namespace A052213.P14171251016819520551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A052213.P14171251016819520551

namespace A052213

/-- `eq[A101296(n+1), A101296(n+2)]+1` -/
def P14171251016819520551.Spec : Prop :=
  ∀ n, (P14171251016819520551.a n : ℤ) = A052213 (n + 1)

end A052213

/-! ## A052213.P5798144942586618969

`∩[A276553(n+1), A343819(n+1)]`
-/

namespace A052213.P5798144942586618969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P5798144942586618969

namespace A052213

/-- `∩[A276553(n+1), A343819(n+1)]` -/
def P5798144942586618969.Spec : Prop :=
  ∀ n, (P5798144942586618969.a n : ℤ) = A052213 (n + 1)

end A052213

/-! ## A052213.P10536571080133060224

`∩[A276553(n+1), A344314(n+1)]`
-/

namespace A052213.P10536571080133060224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P10536571080133060224

namespace A052213

/-- `∩[A276553(n+1), A344314(n+1)]` -/
def P10536571080133060224.Spec : Prop :=
  ∀ n, (P10536571080133060224.a n : ℤ) = A052213 (n + 1)

end A052213

/-! ## A052213.P8957466348585212456

`∩[A005237(n+1), A358817(n+1)]`
-/

namespace A052213.P8957466348585212456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P8957466348585212456

namespace A052213

/-- `∩[A005237(n+1), A358817(n+1)]` -/
def P8957466348585212456.Spec : Prop :=
  ∀ n, (P8957466348585212456.a n : ℤ) = A052213 (n + 1)

end A052213

/-! ## A052213.P8005175618906927591

`∩[A140128(n+1), A358817(n+1)]`
-/

namespace A052213.P8005175618906927591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P8005175618906927591

namespace A052213

/-- `∩[A140128(n+1), A358817(n+1)]` -/
def P8005175618906927591.Spec : Prop :=
  ∀ n, (P8005175618906927591.a n : ℤ) = A052213 (n + 1)

end A052213

/-! ## A052213.P2501888363996274873

`∩[A276553(n+1), A358817(n+1)]`
-/

namespace A052213.P2501888363996274873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P2501888363996274873

namespace A052213

/-- `∩[A276553(n+1), A358817(n+1)]` -/
def P2501888363996274873.Spec : Prop :=
  ∀ n, (P2501888363996274873.a n : ℤ) = A052213 (n + 1)

end A052213

/-! ## A052213.P10046083992593606099

`∩[A005237(n+1), A369020(n+1)]`
-/

namespace A052213.P10046083992593606099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P10046083992593606099

namespace A052213

/-- `∩[A005237(n+1), A369020(n+1)]` -/
def P10046083992593606099.Spec : Prop :=
  ∀ n, (P10046083992593606099.a n : ℤ) = A052213 (n + 1)

end A052213

/-! ## A052213.P10670335777767626222

`∩[A276553(n+1), A057921(n)]`
-/

namespace A052213.P10670335777767626222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P10670335777767626222

namespace A052213

/-- `∩[A276553(n+1), A057921(n)]` -/
def P10670335777767626222.Spec : Prop :=
  ∀ n, (P10670335777767626222.a n : ℤ) = A052213 (n + 1)

end A052213

/-! ## A052213.P8929179345201935936

`∩[A276553(n+1), A057922(n)]`
-/

namespace A052213.P8929179345201935936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052213.P8929179345201935936

namespace A052213

/-- `∩[A276553(n+1), A057922(n)]` -/
def P8929179345201935936.Spec : Prop :=
  ∀ n, (P8929179345201935936.a n : ℤ) = A052213 (n + 1)

end A052213

/-!
# A052214: Numbers n with prime signature(n) = prime signature(n+1) = prime signature(n+2).

The programs for A052214, there is no canonical definition to state claims against.
-/

/-! ## A052214.P13227348660493919120

`∩[A005238(n+1), A045939(n+1)]`
-/

namespace A052214.P13227348660493919120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052214.P13227348660493919120

/-! ## A052214.P6011804578057994586

`∩[A005238(n+1), A006073(n+1)]`
-/

namespace A052214.P6011804578057994586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052214.P6011804578057994586

/-! ## A052214.P13222280749828964787

`∩[A052213(n+1)-1, A052213(n+1)]`
-/

namespace A052214.P13222280749828964787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052214.P13222280749828964787

/-! ## A052214.P11455154760844935912

`A052213(eq[1, A052213(n+2)-A052213(n+1)]+1)`
-/

namespace A052214.P11455154760844935912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 2) - A052213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A052214.P11455154760844935912

/-! ## A052214.P12647750491452561535

`A052213(eq[1, A052213(n+2)%A052213(n+1)]+1)`
-/

namespace A052214.P12647750491452561535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052213 (n + 2)) (A052213 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A052214.P12647750491452561535

/-! ## A052214.P17362292502693340429

`∩[A052213(n+1), A279767(n+1)]`
-/

namespace A052214.P17362292502693340429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052214.P17362292502693340429

/-! ## A052214.P2531190917882663223

`∩[A005238(n+1), A369021(n+1)]`
-/

namespace A052214.P2531190917882663223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052214.P2531190917882663223

/-! ## A052214.P4448350175739884646

`∩[A045939(n+1), A369021(n+1)]`
-/

namespace A052214.P4448350175739884646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052214.P4448350175739884646

/-!
# A052216: Sums of two powers of 10.

The programs for A052216, the canonical program `A052216.P9910055993430441806` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052216 has offset 1).

The definition of A052216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052216.P13116489252509225760

`3*A237424(n+1)-1`
-/

namespace A052216.P13116489252509225760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A237424 (n + 1) - 1

end

end A052216.P13116489252509225760

namespace A052216

/-- `3*A237424(n+1)-1` -/
def P13116489252509225760.Spec : Prop :=
  ∀ n, P13116489252509225760.a n = A052216 (n + 1)

end A052216

/-! ## A052216.P9910055993430441806

`10^A003056(n)+10^A002262(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A052216

/-- `10^A003056(n)+10^A002262(n)` -/
def P9910055993430441806.Spec : Prop :=
  ∀ n, P9910055993430441806.a n = (A052216 (n + 1) : ℚ)

end A052216

/-! ## A052216.P7488052857844011727

`∪[A038444(n+1), A069537(n+1)]`
-/

namespace A052216.P7488052857844011727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052216.P7488052857844011727

namespace A052216

/-- `∪[A038444(n+1), A069537(n+1)]` -/
def P7488052857844011727.Spec : Prop :=
  ∀ n, (P7488052857844011727.a n : ℤ) = A052216 (n + 1)

end A052216

/-! ## A052216.P12658414752221687192

`A011557(A002262(n))+A011557(A003056(n))`
-/

namespace A052216.P12658414752221687192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A002262 n).toNat + A011557 (A003056 n).toNat

end

end A052216.P12658414752221687192

namespace A052216

/-- `A011557(A002262(n))+A011557(A003056(n))` -/
def P12658414752221687192.Spec : Prop :=
  ∀ n, P12658414752221687192.a n = A052216 (n + 1)

end A052216

/-! ## A052216.P12522573285803125708

`A088404(n+2)/5`
-/

namespace A052216.P12522573285803125708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088404 (n + 2) : ℚ) / 5

end

end A052216.P12522573285803125708

namespace A052216

/-- `A088404(n+2)/5` -/
def P12522573285803125708.Spec : Prop :=
  ∀ n, P12522573285803125708.a n = (A052216 (n + 1) : ℚ)

end A052216

/-! ## A052216.P5011333519602016047

`A356520(A014132(n+1))`
-/

namespace A052216.P5011333519602016047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356520 (A014132 (n + 1)).toNat

end

end A052216.P5011333519602016047

namespace A052216

/-- `A356520(A014132(n+1))` -/
def P5011333519602016047.Spec : Prop :=
  ∀ n, P5011333519602016047.a n = A052216 (n + 1)

end A052216

/-! ## A052216.P2216916034895974316

`A069537(n+2)/A069537(n+1)*a(n-1)` with `a(0)=2`
-/

namespace A052216.P2216916034895974316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A069537 (n + 2) : ℚ) / (A069537 (n + 1) : ℚ) * a (n - 1)

end

end A052216.P2216916034895974316

namespace A052216

/-- `A069537(n+2)/A069537(n+1)*a(n-1)` -/
def P2216916034895974316.Spec : Prop :=
  ∀ n, P2216916034895974316.a n = (A052216 (n + 1) : ℚ)

end A052216

/-! ## A052216.P1048900713497580298

`record[A270264(n+1)]`
-/

namespace A052216.P1048900713497580298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052216.P1048900713497580298

namespace A052216

/-- `record[A270264(n+1)]` -/
def P1048900713497580298.Spec : Prop :=
  ∀ n, P1048900713497580298.a n = A052216 (n + 1)

end A052216

/-! ## A052216.P10005054358887228242

`A270264(eq[2, A181346(n)])`
-/

namespace A052216.P10005054358887228242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052216.P10005054358887228242

namespace A052216

/-- `A270264(eq[2, A181346(n)])` -/
def P10005054358887228242.Spec : Prop :=
  ∀ n, P10005054358887228242.a n = A052216 (n + 1)

end A052216

/-! ## A052216.P608085967048573682

`∩[A356520(n+1), A358703(n+1)]`
-/

namespace A052216.P608085967048573682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052216.P608085967048573682

namespace A052216

/-- `∩[A356520(n+1), A358703(n+1)]` -/
def P608085967048573682.Spec : Prop :=
  ∀ n, (P608085967048573682.a n : ℤ) = A052216 (n + 1)

end A052216

/-! ## A052216.P4927042005905691131

`∩[A069263(n+1), A358703(n+1)]`
-/

namespace A052216.P4927042005905691131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052216.P4927042005905691131

namespace A052216

/-- `∩[A069263(n+1), A358703(n+1)]` -/
def P4927042005905691131.Spec : Prop :=
  ∀ n, (P4927042005905691131.a n : ℤ) = A052216 (n + 1)

end A052216

/-! ## A052216.P11612499180023832766

`∩[A052217(n+1)-1, A069263(n+1)]`
-/

namespace A052216.P11612499180023832766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052216.P11612499180023832766

namespace A052216

/-- `∩[A052217(n+1)-1, A069263(n+1)]` -/
def P11612499180023832766.Spec : Prop :=
  ∀ n, (P11612499180023832766.a n : ℤ) = A052216 (n + 1)

end A052216

/-! ## A052216.P12395447926949357801

`∩[A136816(n+1), A358703(n+1)]`
-/

namespace A052216.P12395447926949357801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052216.P12395447926949357801

namespace A052216

/-- `∩[A136816(n+1), A358703(n+1)]` -/
def P12395447926949357801.Spec : Prop :=
  ∀ n, (P12395447926949357801.a n : ℤ) = A052216 (n + 1)

end A052216

/-! ## A052216.P8876488588569365700

`∩[A136819(n+1), A358703(n+1)]`
-/

namespace A052216.P8876488588569365700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052216.P8876488588569365700

namespace A052216

/-- `∩[A136819(n+1), A358703(n+1)]` -/
def P8876488588569365700.Spec : Prop :=
  ∀ n, (P8876488588569365700.a n : ℤ) = A052216 (n + 1)

end A052216

/-! ## A052216.P4408907545888564961

`∩[A136821(n+1), A358703(n+1)]`
-/

namespace A052216.P4408907545888564961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052216.P4408907545888564961

namespace A052216

/-- `∩[A136821(n+1), A358703(n+1)]` -/
def P4408907545888564961.Spec : Prop :=
  ∀ n, (P4408907545888564961.a n : ℤ) = A052216 (n + 1)

end A052216

/-! ## A052216.P1295733555984793866

`∩[A136810(n+1), A358703(n+1)]`
-/

namespace A052216.P1295733555984793866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052216.P1295733555984793866

namespace A052216

/-- `∩[A136810(n+1), A358703(n+1)]` -/
def P1295733555984793866.Spec : Prop :=
  ∀ n, (P1295733555984793866.a n : ℤ) = A052216 (n + 1)

end A052216

/-! ## A052216.P5714067300193245102

`∩[A052217(n+1)-1, A136810(n+1)]`
-/

namespace A052216.P5714067300193245102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052216.P5714067300193245102

namespace A052216

/-- `∩[A052217(n+1)-1, A136810(n+1)]` -/
def P5714067300193245102.Spec : Prop :=
  ∀ n, (P5714067300193245102.a n : ℤ) = A052216 (n + 1)

end A052216

/-!
# A052217: Numbers whose sum of digits is 3.

The programs for A052217, the canonical program `A052217.P2954763341326095250` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052217 has offset 1).

The definition of A052217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A052217.P2954763341326095250

`10^A056556(n)+10^A056557(n)+10^A056558(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A052217

/-- `10^A056556(n)+10^A056557(n)+10^A056558(n)` -/
def P2954763341326095250.Spec : Prop :=
  ∀ n, P2954763341326095250.a n = (A052217 (n + 1) : ℚ)

end A052217

/-! ## A052217.P6397200989288219647

`3*A088405(n+1)`
-/

namespace A052217.P6397200989288219647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088405 (n + 1)

end

end A052217.P6397200989288219647

namespace A052217

/-- `3*A088405(n+1)` -/
def P6397200989288219647.Spec : Prop :=
  ∀ n, P6397200989288219647.a n = A052217 (n + 1)

end A052217

/-! ## A052217.P13337795499567197174

`lcm(3, A088405(A000027(n+1)))`
-/

namespace A052217.P13337795499567197174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A088405 (A000027 (n + 1)).toNat)

end

end A052217.P13337795499567197174

namespace A052217

/-- `lcm(3, A088405(A000027(n+1)))` -/
def P13337795499567197174.Spec : Prop :=
  ∀ n, (P13337795499567197174.a n : ℤ) = A052217 (n + 1)

end A052217

/-! ## A052217.P4714524214721330731

`lcm(A088405(n+1), A174971(n))`
-/

namespace A052217.P4714524214721330731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088405 (n + 1)) (A174971 n)

end

end A052217.P4714524214721330731

namespace A052217

/-- `lcm(A088405(n+1), A174971(n))` -/
def P4714524214721330731.Spec : Prop :=
  ∀ n, (P4714524214721330731.a n : ℤ) = A052217 (n + 1)

end A052217

/-! ## A052217.P3091691986163324354

`3*A088405(A008619(2*n))*or(n, -1)²`
-/

namespace A052217.P3091691986163324354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088405 (A008619 (2 * n)).toNat * Int.lor (n : ℤ) (-1) ^ 2

end

end A052217.P3091691986163324354

namespace A052217

/-- `3*A088405(A008619(2*n))*or(n, -1)²` -/
def P3091691986163324354.Spec : Prop :=
  ∀ n, P3091691986163324354.a n = A052217 (n + 1)

end A052217

/-! ## A052217.P28831750097294692

`or(3*A088405(A008619(2*n)), A000007(n))`
-/

namespace A052217.P28831750097294692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 * A088405 (A008619 (2 * n)).toNat) (A000007 n)

end

end A052217.P28831750097294692

namespace A052217

/-- `or(3*A088405(A008619(2*n)), A000007(n))` -/
def P28831750097294692.Spec : Prop :=
  ∀ n, P28831750097294692.a n = A052217 (n + 1)

end A052217

/-! ## A052217.P12262775484096260207

`A001202(A014311(n+1)+1)`
-/

namespace A052217.P12262775484096260207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A014311 (n + 1) + 1).toNat

end

end A052217.P12262775484096260207

namespace A052217

/-- `A001202(A014311(n+1)+1)` -/
def P12262775484096260207.Spec : Prop :=
  ∀ n, P12262775484096260207.a n = A052217 (n + 1)

end A052217

/-! ## A052217.P7426529326769111204

`∩[A262712(n+1), A345358(n+1)]`
-/

namespace A052217.P7426529326769111204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052217.P7426529326769111204

namespace A052217

/-- `∩[A262712(n+1), A345358(n+1)]` -/
def P7426529326769111204.Spec : Prop :=
  ∀ n, (P7426529326769111204.a n : ℤ) = A052217 (n + 1)

end A052217

/-! ## A052217.P1539903943209373905

`∩[A061909(n+1), A262712(n+1)]`
-/

namespace A052217.P1539903943209373905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052217.P1539903943209373905

namespace A052217

/-- `∩[A061909(n+1), A262712(n+1)]` -/
def P1539903943209373905.Spec : Prop :=
  ∀ n, (P1539903943209373905.a n : ℤ) = A052217 (n + 1)

end A052217

/-! ## A052217.P3766692176193124458

`∩[A102859(n+1), A262712(n+1)]`
-/

namespace A052217.P3766692176193124458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052217.P3766692176193124458

namespace A052217

/-- `∩[A102859(n+1), A262712(n+1)]` -/
def P3766692176193124458.Spec : Prop :=
  ∀ n, (P3766692176193124458.a n : ℤ) = A052217 (n + 1)

end A052217

/-!
# A052218: Numbers whose sum of digits is 4.

The programs for A052218, the canonical program `A052218.P15024547465433023170` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052218 has offset 1).

The definition of A052218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052218.P2957358654979060792

`A270264(eq[4, A181346(n)])`
-/

namespace A052218.P2957358654979060792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052218.P2957358654979060792

namespace A052218

/-- `A270264(eq[4, A181346(n)])` -/
def P2957358654979060792.Spec : Prop :=
  ∀ n, P2957358654979060792.a n = A052218 (n + 1)

end A052218

/-! ## A052218.P6798423911208209389

`A270264(A029709(n+1)+1)`
-/

namespace A052218.P6798423911208209389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (A029709 (n + 1) + 1).toNat

end

end A052218.P6798423911208209389

namespace A052218

/-- `A270264(A029709(n+1)+1)` -/
def P6798423911208209389.Spec : Prop :=
  ∀ n, P6798423911208209389.a n = A052218 (n + 1)

end A052218

/-! ## A052218.P15024547465433023170

`A001202(A014312(n+1)+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A052218

/-- `A001202(A014312(n+1)+1)` -/
def P15024547465433023170.Spec : Prop :=
  ∀ n, P15024547465433023170.a n = A052218 (n + 1)

theorem P15024547465433023170.correct : P15024547465433023170.Spec := by
  intro n
  simp only [A052218, Nat.add_sub_cancel]

end A052218

/-! ## A052218.P2128042690198859984

`A001202(eq[4, A000120(n)]+1)`
-/

namespace A052218.P2128042690198859984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A052218.P2128042690198859984

namespace A052218

/-- `A001202(eq[4, A000120(n)]+1)` -/
def P2128042690198859984.Spec : Prop :=
  ∀ n, P2128042690198859984.a n = A052218 (n + 1)

end A052218

/-! ## A052218.P4898551935219345623

`A001202(eq[15, A050315(n)]+1)`
-/

namespace A052218.P4898551935219345623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A052218.P4898551935219345623

namespace A052218

/-- `A001202(eq[15, A050315(n)]+1)` -/
def P4898551935219345623.Spec : Prop :=
  ∀ n, P4898551935219345623.a n = A052218 (n + 1)

end A052218

/-! ## A052218.P2126024567853690606

`A007091(A102861(n+1))`
-/

namespace A052218.P2126024567853690606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A102861 (n + 1)).toNat

end

end A052218.P2126024567853690606

namespace A052218

/-- `A007091(A102861(n+1))` -/
def P2126024567853690606.Spec : Prop :=
  ∀ n, P2126024567853690606.a n = A052218 (n + 1)

end A052218

/-! ## A052218.P1405511576120700434

`A007091(eq[4, A053824(n)])`
-/

namespace A052218.P1405511576120700434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052218.P1405511576120700434

namespace A052218

/-- `A007091(eq[4, A053824(n)])` -/
def P1405511576120700434.Spec : Prop :=
  ∀ n, P1405511576120700434.a n = A052218 (n + 1)

end A052218

/-! ## A052218.P9616329386126242248

`∩[9*n+4, A028838(n+2)]`
-/

namespace A052218.P9616329386126242248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052218.P9616329386126242248

namespace A052218

/-- `∩[9*n+4, A028838(n+2)]` -/
def P9616329386126242248.Spec : Prop :=
  ∀ n, (P9616329386126242248.a n : ℤ) = A052218 (n + 1)

end A052218

/-! ## A052218.P10932768152941594711

`∩[A028838(n+1), A017209(n)]`
-/

namespace A052218.P10932768152941594711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052218.P10932768152941594711

namespace A052218

/-- `∩[A028838(n+1), A017209(n)]` -/
def P10932768152941594711.Spec : Prop :=
  ∀ n, (P10932768152941594711.a n : ℤ) = A052218 (n + 1)

end A052218

/-! ## A052218.P5420017897592535655

`∩[A028839(n+1), A017209(n)]`
-/

namespace A052218.P5420017897592535655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052218.P5420017897592535655

namespace A052218

/-- `∩[A028839(n+1), A017209(n)]` -/
def P5420017897592535655.Spec : Prop :=
  ∀ n, (P5420017897592535655.a n : ℤ) = A052218 (n + 1)

end A052218

/-!
# A052219: Numbers whose sum of digits is 5.

The programs for A052219, there is no canonical definition to state claims against.
-/

/-! ## A052219.P13148303656538935646

`∪[A052218(n+1)+1, A069540(n+1)]`
-/

namespace A052219.P13148303656538935646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P13148303656538935646

/-! ## A052219.P14986028554459585728

`A088407(n+2)/2`
-/

namespace A052219.P14986028554459585728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088407 (n + 2) : ℚ) / 2

end

end A052219.P14986028554459585728

/-! ## A052219.P4303574485804843315

`A069540(n+2)/10`
-/

namespace A052219.P4303574485804843315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069540 (n + 2) : ℚ) / 10

end

end A052219.P4303574485804843315

/-! ## A052219.P12309165970706656799

`A001202(A014313(n+1)+1)`
-/

namespace A052219.P12309165970706656799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A014313 (n + 1) + 1).toNat

end

end A052219.P12309165970706656799

/-! ## A052219.P13180298326988309602

`A001202(eq[5, dr(A001202(n+1))]+1)`
-/

namespace A052219.P13180298326988309602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001202 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A052219.P13180298326988309602

/-! ## A052219.P16588890896304805258

`A014682(A088407(n+2))`
-/

namespace A052219.P16588890896304805258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A088407 (n + 2)).toNat

end

end A052219.P16588890896304805258

/-! ## A052219.P16022018926368463906

`∩[A028840(n+1), A017221(n)]`
-/

namespace A052219.P16022018926368463906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P16022018926368463906

/-! ## A052219.P5748641882486710892

`∩[A028840(n+1), A017209(n)+1]`
-/

namespace A052219.P5748641882486710892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P5748641882486710892

/-! ## A052219.P3768153530978159460

`∩[A227793(n+1), A017221(n)]`
-/

namespace A052219.P3768153530978159460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P3768153530978159460

/-! ## A052219.P10341792133390355910

`∩[A070026(n+1), A227793(n+1)]`
-/

namespace A052219.P10341792133390355910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P10341792133390355910

/-! ## A052219.P3789890625528257672

`∩[A156638(n+1), A227793(n+1)]`
-/

namespace A052219.P3789890625528257672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P3789890625528257672

/-! ## A052219.P16704784523083237809

`∩[A125758(2*n+1)+1, A028840(n+2)]`
-/

namespace A052219.P16704784523083237809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P16704784523083237809

/-! ## A052219.P15360032720241990727

`∩[A028834(n+1), A227793(n+1)]`
-/

namespace A052219.P15360032720241990727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P15360032720241990727

/-! ## A052219.P2981123265286124853

`∩[A087143(n+1), A017221(n)]`
-/

namespace A052219.P2981123265286124853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P2981123265286124853

/-! ## A052219.P12892938753931873141

`∩[A087143(n+1), A017233(n)-1]`
-/

namespace A052219.P12892938753931873141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P12892938753931873141

/-! ## A052219.P8806603684423252898

`∩[A087143(n+1), A017245(n)-2]`
-/

namespace A052219.P8806603684423252898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052219.P8806603684423252898

/-!
# A052220: Numbers whose sum of digits is 6.

The programs for A052220, there is no canonical definition to state claims against.
-/

/-! ## A052220.P11816359825219147989

`3*A279773(n+1)`
-/

namespace A052220.P11816359825219147989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A279773 (n + 1)

end

end A052220.P11816359825219147989

/-! ## A052220.P7318286237099461103

`lcm(A174971(n), A279773(n+1))`
-/

namespace A052220.P7318286237099461103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174971 n) (A279773 (n + 1))

end

end A052220.P7318286237099461103

/-! ## A052220.P3974548186159102010

`A001202(A023688(n+1)+1)`
-/

namespace A052220.P3974548186159102010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A023688 (n + 1) + 1).toNat

end

end A052220.P3974548186159102010

/-! ## A052220.P147427129117146950

`A270264(A320701(n+1)+1)`
-/

namespace A052220.P147427129117146950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (A320701 (n + 1) + 1).toNat

end

end A052220.P147427129117146950

/-! ## A052220.P3758797608631652635

`A270264(eq[6, A181346(n)])`
-/

namespace A052220.P3758797608631652635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052220.P3758797608631652635

/-! ## A052220.P12415993752326488794

`record[A001202(A008619(A023689(n+1)))]`
-/

namespace A052220.P12415993752326488794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A008619 (A023689 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052220.P12415993752326488794

/-! ## A052220.P5421564125715110723

`A017233(eq[A102679(n), A193581(n)])`
-/

namespace A052220.P5421564125715110723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A052220.P5421564125715110723

/-! ## A052220.P2337381088439098109

`A008486(A279773(n+1))`
-/

namespace A052220.P2337381088439098109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A279773 (n + 1)).toNat

end

end A052220.P2337381088439098109

/-! ## A052220.P12354688366936243796

`∩[A085802(n+1), A274319(n+1)]`
-/

namespace A052220.P12354688366936243796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052220.P12354688366936243796

/-!
# A052221: Numbers whose sum of digits is 7.

The programs for A052221, the canonical program `A052221.P10453870541976989014` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052221 has offset 1).

The definition of A052221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052221.P10453870541976989014

`A001202(A023689(n+1)+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052221

/-- `A001202(A023689(n+1)+1)` -/
def P10453870541976989014.Spec : Prop :=
  ∀ n, P10453870541976989014.a n = A052221 (n + 1)

theorem P10453870541976989014.correct : P10453870541976989014.Spec := by
  intro n
  simp only [A052221, Nat.add_sub_cancel]

end A052221

/-! ## A052221.P11346177693365690360

`record[A001202(A023690(n+1))/10]`
-/

namespace A052221.P11346177693365690360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001202 (A023690 (n + 1)).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052221.P11346177693365690360

namespace A052221

/-- `record[A001202(A023690(n+1))/10]` -/
def P11346177693365690360.Spec : Prop :=
  ∀ n, P11346177693365690360.a n = (A052221 (n + 1) : ℚ)

end A052221

/-! ## A052221.P8422586934375359214

`A217009(A023750(n+1)+1)`
-/

namespace A052221.P8422586934375359214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217009 (A023750 (n + 1) + 1).toNat

end

end A052221.P8422586934375359214

namespace A052221

/-- `A217009(A023750(n+1)+1)` -/
def P8422586934375359214.Spec : Prop :=
  ∀ n, P8422586934375359214.a n = A052221 (n + 1)

end A052221

/-! ## A052221.P17114272202777214863

`A217009(record[A319808(n)-A319725(n)]+1)`
-/

namespace A052221.P17114272202777214863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319808 n - A319725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217009 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A052221.P17114272202777214863

namespace A052221

/-- `A217009(record[A319808(n)-A319725(n)]+1)` -/
def P17114272202777214863.Spec : Prop :=
  ∀ n, P17114272202777214863.a n = A052221 (n + 1)

end A052221

/-! ## A052221.P9947770739596557309

`∩[A217009(n+1), A017245(n)]`
-/

namespace A052221.P9947770739596557309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P9947770739596557309

namespace A052221

/-- `∩[A217009(n+1), A017245(n)]` -/
def P9947770739596557309.Spec : Prop :=
  ∀ n, (P9947770739596557309.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P4226814203682102179

`∩[A070026(n+1), A217009(n+1)]`
-/

namespace A052221.P4226814203682102179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P4226814203682102179

namespace A052221

/-- `∩[A070026(n+1), A217009(n+1)]` -/
def P4226814203682102179.Spec : Prop :=
  ∀ n, (P4226814203682102179.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P13981628192242024355

`∩[9*n+7, A273159(n+2)]`
-/

namespace A052221.P13981628192242024355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P13981628192242024355

namespace A052221

/-- `∩[9*n+7, A273159(n+2)]` -/
def P13981628192242024355.Spec : Prop :=
  ∀ n, (P13981628192242024355.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P12679487844910346560

`∩[A273159(n+1), A017245(n)]`
-/

namespace A052221.P12679487844910346560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P12679487844910346560

namespace A052221

/-- `∩[A273159(n+1), A017245(n)]` -/
def P12679487844910346560.Spec : Prop :=
  ∀ n, (P12679487844910346560.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P17514003509084177852

`∩[A273159(n+1), A017221(n)+2]`
-/

namespace A052221.P17514003509084177852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P17514003509084177852

namespace A052221

/-- `∩[A273159(n+1), A017221(n)+2]` -/
def P17514003509084177852.Spec : Prop :=
  ∀ n, (P17514003509084177852.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P13997921327767678552

`∩[A026226(n+1), A070026(n+1)]`
-/

namespace A052221.P13997921327767678552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P13997921327767678552

namespace A052221

/-- `∩[A026226(n+1), A070026(n+1)]` -/
def P13997921327767678552.Spec : Prop :=
  ∀ n, (P13997921327767678552.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P627432989310172617

`∩[A070026(n+1), A125758(n+1)]`
-/

namespace A052221.P627432989310172617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P627432989310172617

namespace A052221

/-- `∩[A070026(n+1), A125758(n+1)]` -/
def P627432989310172617.Spec : Prop :=
  ∀ n, (P627432989310172617.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P2499241628392732449

`∩[A125758(n+1), A217009(n+1)]`
-/

namespace A052221.P2499241628392732449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P2499241628392732449

namespace A052221

/-- `∩[A125758(n+1), A217009(n+1)]` -/
def P2499241628392732449.Spec : Prop :=
  ∀ n, (P2499241628392732449.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P6360934866711402367

`∩[A070026(n+1), A301451(n+1)]`
-/

namespace A052221.P6360934866711402367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P6360934866711402367

namespace A052221

/-- `∩[A070026(n+1), A301451(n+1)]` -/
def P6360934866711402367.Spec : Prop :=
  ∀ n, (P6360934866711402367.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P11135118459150085052

`∩[A217009(n+1), A063289(n+2)]`
-/

namespace A052221.P11135118459150085052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P11135118459150085052

namespace A052221

/-- `∩[A217009(n+1), A063289(n+2)]` -/
def P11135118459150085052.Spec : Prop :=
  ∀ n, (P11135118459150085052.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P9252981157352733287

`∩[A273159(n+1), A063289(n+2)]`
-/

namespace A052221.P9252981157352733287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P9252981157352733287

namespace A052221

/-- `∩[A273159(n+1), A063289(n+2)]` -/
def P9252981157352733287.Spec : Prop :=
  ∀ n, (P9252981157352733287.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P9807065714946368992

`∩[A028834(n+1), A017245(n)]`
-/

namespace A052221.P9807065714946368992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P9807065714946368992

namespace A052221

/-- `∩[A028834(n+1), A017245(n)]` -/
def P9807065714946368992.Spec : Prop :=
  ∀ n, (P9807065714946368992.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P16172644992914368387

`∩[A028834(n+1), A217009(n+1)]`
-/

namespace A052221.P16172644992914368387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P16172644992914368387

namespace A052221

/-- `∩[A028834(n+1), A217009(n+1)]` -/
def P16172644992914368387.Spec : Prop :=
  ∀ n, (P16172644992914368387.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P16403661165822298521

`∩[A028834(n+1), A017257(n)-1]`
-/

namespace A052221.P16403661165822298521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P16403661165822298521

namespace A052221

/-- `∩[A028834(n+1), A017257(n)-1]` -/
def P16403661165822298521.Spec : Prop :=
  ∀ n, (P16403661165822298521.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P1889945236835889004

`∩[A028834(n+1), A274406(n+1)-2]`
-/

namespace A052221.P1889945236835889004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P1889945236835889004

namespace A052221

/-- `∩[A028834(n+1), A274406(n+1)-2]` -/
def P1889945236835889004.Spec : Prop :=
  ∀ n, (P1889945236835889004.a n : ℤ) = A052221 (n + 1)

end A052221

/-! ## A052221.P382478198404753180

`∩[A070026(n+1), A112414(n)]`
-/

namespace A052221.P382478198404753180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052221.P382478198404753180

namespace A052221

/-- `∩[A070026(n+1), A112414(n)]` -/
def P382478198404753180.Spec : Prop :=
  ∀ n, (P382478198404753180.a n : ℤ) = A052221 (n + 1)

end A052221

/-!
# A052222: Numbers whose sum of digits is 8.

The programs for A052222, there is no canonical definition to state claims against.
-/

/-! ## A052222.P11951414577962503603

`A001202(A023690(n+1)+1)`
-/

namespace A052222.P11951414577962503603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A023690 (n + 1) + 1).toNat

end

end A052222.P11951414577962503603

/-! ## A052222.P404684300167939635

`A270264(A320702(n+1)+1)`
-/

namespace A052222.P404684300167939635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (A320702 (n + 1) + 1).toNat

end

end A052222.P404684300167939635

/-! ## A052222.P947920613050286002

`∩[A028838(n+1), A017257(n)]`
-/

namespace A052222.P947920613050286002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P947920613050286002

/-! ## A052222.P16943098627360630074

`∩[A028840(n+1), A017257(n)]`
-/

namespace A052222.P16943098627360630074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P16943098627360630074

/-! ## A052222.P15471945404352400814

`∩[A059094(n+1), A017257(n)]`
-/

namespace A052222.P15471945404352400814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P15471945404352400814

/-! ## A052222.P3005220465688932577

`∩[A028838(n+1), A017245(n)+1]`
-/

namespace A052222.P3005220465688932577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P3005220465688932577

/-! ## A052222.P1308237575408722369

`∩[A059094(n+1), A305496(n+1)]`
-/

namespace A052222.P1308237575408722369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P1308237575408722369

/-! ## A052222.P14053288268724571223

`∩[9*n+8, A273188(n+2)]`
-/

namespace A052222.P14053288268724571223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P14053288268724571223

/-! ## A052222.P12492103035260506952

`∩[A273188(n+1), A017257(n)]`
-/

namespace A052222.P12492103035260506952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P12492103035260506952

/-! ## A052222.P995326333816311368

`∩[A273188(n+1), A017245(n)+1]`
-/

namespace A052222.P995326333816311368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P995326333816311368

/-! ## A052222.P11664145461072850762

`∩[A356061(n+1), A017257(n)]`
-/

namespace A052222.P11664145461072850762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P11664145461072850762

/-! ## A052222.P6731142566250596084

`∩[A305496(n+1), A356061(n+1)]`
-/

namespace A052222.P6731142566250596084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P6731142566250596084

/-! ## A052222.P16737207968491981007

`∩[A026231(n+1), A059094(n+1)]`
-/

namespace A052222.P16737207968491981007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P16737207968491981007

/-! ## A052222.P1562400356202857516

`∩[A028838(n+1), A274406(n+1)]`
-/

namespace A052222.P1562400356202857516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P1562400356202857516

/-! ## A052222.P9124094758528085100

`∩[A059094(n+1), A253195(n+1)]`
-/

namespace A052222.P9124094758528085100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P9124094758528085100

/-! ## A052222.P7412563222040185662

`∩[A253195(n+1), A356061(n+1)]`
-/

namespace A052222.P7412563222040185662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P7412563222040185662

/-! ## A052222.P10302823290103704497

`∩[A273188(n+1), A301451(n+1)+1]`
-/

namespace A052222.P10302823290103704497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P10302823290103704497

/-! ## A052222.P8129187222337193493

`∩[A273188(n+2), A063289(n+3)+1]`
-/

namespace A052222.P8129187222337193493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 3) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P8129187222337193493

/-! ## A052222.P11726516314297533921

`∩[A268620(n+1), A017257(n)]`
-/

namespace A052222.P11726516314297533921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P11726516314297533921

/-! ## A052222.P15838907886033109117

`∩[A268620(n+1), A017245(n)+1]`
-/

namespace A052222.P15838907886033109117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052222.P15838907886033109117

/-!
# A052223: Numbers whose sum of digits is 9.

The programs for A052223, there is no canonical definition to state claims against.
-/

/-! ## A052223.P16417764212856631683

`9*(A009994(n+1)+1)`
-/

namespace A052223.P16417764212856631683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A009994 (n + 1) + 1)

end

end A052223.P16417764212856631683

/-! ## A052223.P15465287220141167312

`A001202(A023691(n+1)+1)`
-/

namespace A052223.P15465287220141167312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A023691 (n + 1) + 1).toNat

end

end A052223.P15465287220141167312

/-! ## A052223.P8967543590488105106

`record[9*(A004185(n)+1)]`
-/

namespace A052223.P8967543590488105106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A004185 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052223.P8967543590488105106

/-! ## A052223.P3083978793718336376

`A017209(record[A004185(n)])+5`
-/

namespace A052223.P3083978793718336376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 5

end

end A052223.P3083978793718336376

/-! ## A052223.P17103785039433050883

`A017257(A009994(n+1))+1`
-/

namespace A052223.P17103785039433050883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (A009994 (n + 1)).toNat + 1

end

end A052223.P17103785039433050883

/-! ## A052223.P78052413101393541

`∩[A085802(n+1), A008591(n)]`
-/

namespace A052223.P78052413101393541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052223.P78052413101393541

/-! ## A052223.P8402893400838182783

`∩[A085802(n+1), A356061(n+1)]`
-/

namespace A052223.P8402893400838182783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052223.P8402893400838182783

/-! ## A052223.P809115509756973107

`∩[A236748(n+1), A007494(n)]`
-/

namespace A052223.P809115509756973107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052223.P809115509756973107

/-! ## A052223.P7867338532250462164

`∩[A236748(n+1), A049636(n)]`
-/

namespace A052223.P7867338532250462164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052223.P7867338532250462164

/-! ## A052223.P9942558109015654763

`A228915(a(n-1))` with `a(0)=9`
-/

namespace A052223.P9942558109015654763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A228915 (a (n - 1)).toNat

end

end A052223.P9942558109015654763

/-! ## A052223.P13785068419293408810

`eq[9, A007953(n)]`
-/

namespace A052223.P13785068419293408810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052223.P13785068419293408810

/-! ## A052223.P4650779295203201662

`eq[9, A247796(n)]`
-/

namespace A052223.P4650779295203201662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052223.P4650779295203201662

/-! ## A052223.P12621969840695749972

`eq[18, A169805(n)]`
-/

namespace A052223.P12621969840695749972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052223.P12621969840695749972

/-! ## A052223.P8082554658269229815

`eq[A020723(n), A062028(n)]`
-/

namespace A052223.P8082554658269229815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052223.P8082554658269229815

/-! ## A052223.P17440881170898025488

`eq[A017377(n), A108773(n)]`
-/

namespace A052223.P17440881170898025488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052223.P17440881170898025488

/-! ## A052223.P9225744526833144229

`eq[A040072(n), A136614(n)]`
-/

namespace A052223.P9225744526833144229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040072 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052223.P9225744526833144229

/-! ## A052223.P12998619998406412790

`eq[A057147(n), A168103(n)]`
-/

namespace A052223.P12998619998406412790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052223.P12998619998406412790

/-! ## A052223.P11035842578584902835

`eq[A118881(n), A147674(n)]`
-/

namespace A052223.P11035842578584902835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147674 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052223.P11035842578584902835

/-! ## A052223.P17597113751464524522

`lt[A266213(A136614(n)²), 1]`
-/

namespace A052223.P17597113751464524522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A136614 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052223.P17597113751464524522

/-! ## A052223.P3515826223897394879

`filter[A236748(n+1), A079978(#)]`
-/

namespace A052223.P3515826223897394879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A052223.P3515826223897394879

/-!
# A052224: Numbers whose sum of digits is 10.

The programs for A052224, there is no canonical definition to state claims against.
-/

/-! ## A052224.P12689589298765143348

`A333834(n+1)/(A008592(n+1)-A008592(n))`
-/

namespace A052224.P12689589298765143348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333834 (n + 1) : ℚ) / (A008592 (n + 1) - A008592 n : ℚ)

end

end A052224.P12689589298765143348

/-! ## A052224.P10157836234581172998

`∩[A094677(n+1), A017173(n)]`
-/

namespace A052224.P10157836234581172998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P10157836234581172998

/-! ## A052224.P3955055239229585547

`A270264(A320703(n+1)+1)`
-/

namespace A052224.P3955055239229585547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (A320703 (n + 1) + 1).toNat

end

end A052224.P3955055239229585547

/-! ## A052224.P11400860108163549189

`∩[A094677(n+1), A187744(n+1)]`
-/

namespace A052224.P11400860108163549189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P11400860108163549189

/-! ## A052224.P18345612557042277694

`∩[A094677(n+1), A236653(n+1)]`
-/

namespace A052224.P18345612557042277694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P18345612557042277694

/-! ## A052224.P14648520828888781007

`∩[A227793(n+1), A017173(n)]`
-/

namespace A052224.P14648520828888781007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P14648520828888781007

/-! ## A052224.P3828656636556362131

`∩[A056020(n+1), A094677(n+1)]`
-/

namespace A052224.P3828656636556362131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P3828656636556362131

/-! ## A052224.P12715283828740856905

`∩[A087444(n+1), A094677(n+1)]`
-/

namespace A052224.P12715283828740856905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P12715283828740856905

/-! ## A052224.P2719711879531065543

`∩[A090570(n+1), A094677(n+1)]`
-/

namespace A052224.P2719711879531065543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P2719711879531065543

/-! ## A052224.P6570658201578958276

`∩[A094677(n+1), A301451(n+1)]`
-/

namespace A052224.P6570658201578958276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P6570658201578958276

/-! ## A052224.P11793473617697712743

`∩[A094677(n+1), A319293(n+1)]`
-/

namespace A052224.P11793473617697712743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P11793473617697712743

/-! ## A052224.P7862839412664303157

`∩[A094677(n+1), A236652(n+1)]`
-/

namespace A052224.P7862839412664303157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P7862839412664303157

/-! ## A052224.P989397539949251027

`∩[A085802(n+1), A017173(n)]`
-/

namespace A052224.P989397539949251027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P989397539949251027

/-! ## A052224.P11589743805866757850

`∩[A094677(n+1), A016777(n)]`
-/

namespace A052224.P11589743805866757850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P11589743805866757850

/-! ## A052224.P5901496378568684675

`∩[A094677(n+1), A112414(n)]`
-/

namespace A052224.P5901496378568684675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P5901496378568684675

/-! ## A052224.P17662989268688446599

`∩[A003663(n+1), A094677(n+1)]`
-/

namespace A052224.P17662989268688446599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P17662989268688446599

/-! ## A052224.P1823418252485837486

`∩[A028837(n+1), A094677(n+1)]`
-/

namespace A052224.P1823418252485837486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P1823418252485837486

/-! ## A052224.P2877775394349049975

`∩[A033627(n+1), A094677(n+1)]`
-/

namespace A052224.P2877775394349049975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P2877775394349049975

/-! ## A052224.P13435713830518197765

`∩[A054966(n+1), A094677(n+1)]`
-/

namespace A052224.P13435713830518197765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P13435713830518197765

/-! ## A052224.P9128825766709015473

`∩[A060470(n+1), A094677(n+1)]`
-/

namespace A052224.P9128825766709015473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052224.P9128825766709015473

/-!
# A052225: (n+1)!*(n+3)-3.

The programs for A052225, the canonical program `A052225.P3759150436215267513` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052225 has offset 1).

The definition of A052225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)!*(n+4)-3` (program `A052225.P3759150436215267513`, by `A052225.P3759150436215267513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052225.P3759150436215267513

`(n+2)!*(n+4)-3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052225

/-- `(n+2)!*(n+4)-3` -/
def P3759150436215267513.Spec : Prop :=
  ∀ n, P3759150436215267513.a n = A052225 (n + 1)

theorem P3759150436215267513.correct : P3759150436215267513.Spec := by
  intro n
  simp only [A052225, Nat.add_sub_cancel]

end A052225

/-! ## A052225.P2320461953293738551

`A001048(n+3)-3`
-/

namespace A052225.P2320461953293738551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001048 (n + 3) - 3

end

end A052225.P2320461953293738551

namespace A052225

/-- `A001048(n+3)-3` -/
def P2320461953293738551.Spec : Prop :=
  ∀ n, P2320461953293738551.a n = A052225 (n + 1)

end A052225

/-! ## A052225.P8796401043584694936

`(n+4)*∏[n+2]-3`
-/

namespace A052225.P8796401043584694936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 4) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 3

end

end A052225.P8796401043584694936

namespace A052225

/-- `(n+4)*∏[n+2]-3` -/
def P8796401043584694936.Spec : Prop :=
  ∀ n, P8796401043584694936.a n = A052225 (n + 1)

end A052225

/-! ## A052225.P339480567725019787

`∑[(n+3)!-(n+1)!]`
-/

namespace A052225.P339480567725019787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℤ) - (Nat.factorial (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052225.P339480567725019787

namespace A052225

/-- `∑[(n+3)!-(n+1)!]` -/
def P339480567725019787.Spec : Prop :=
  ∀ n, P339480567725019787.a n = A052225 (n + 1)

end A052225

/-! ## A052225.P1982055425278014079

`abs(3-((n+2)!+(n+3)!))`
-/

namespace A052225.P1982055425278014079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (Nat.factorial (n + 2) + Nat.factorial (n + 3) : ℤ)|

end

end A052225.P1982055425278014079

namespace A052225

/-- `abs(3-((n+2)!+(n+3)!))` -/
def P1982055425278014079.Spec : Prop :=
  ∀ n, P1982055425278014079.a n = A052225 (n + 1)

end A052225

/-! ## A052225.P1555036129606152908

`∑[-Δ[-(n+3)*(n+1)!]]`
-/

namespace A052225.P1555036129606152908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 3) * Nat.factorial (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052225.P1555036129606152908

namespace A052225

/-- `∑[-Δ[-(n+3)*(n+1)!]]` -/
def P1555036129606152908.Spec : Prop :=
  ∀ n, P1555036129606152908.a n = A052225 (n + 1)

end A052225

/-! ## A052225.P8948347732144703756

`∑[((n+2)²+n+1)*(n+1)!]`
-/

namespace A052225.P8948347732144703756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 + (n + 1)) * Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052225.P8948347732144703756

namespace A052225

/-- `∑[((n+2)²+n+1)*(n+1)!]` -/
def P8948347732144703756.Spec : Prop :=
  ∀ n, (P8948347732144703756.a n : ℤ) = A052225 (n + 1)

end A052225

/-! ## A052225.P9440699342362306018

`∑[A213167(n+3)]`
-/

namespace A052225.P9440699342362306018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213167 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052225.P9440699342362306018

namespace A052225

/-- `∑[A213167(n+3)]` -/
def P9440699342362306018.Spec : Prop :=
  ∀ n, P9440699342362306018.a n = A052225 (n + 1)

end A052225

/-! ## A052225.P2945791496852338648

`∑[A204930(∑[n+2])]`
-/

namespace A052225.P2945791496852338648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204930 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052225.P2945791496852338648

namespace A052225

/-- `∑[A204930(∑[n+2])]` -/
def P2945791496852338648.Spec : Prop :=
  ∀ n, P2945791496852338648.a n = A052225 (n + 1)

end A052225

/-!
# A052226: Partial sums of A050404.

The programs for A052226, the canonical program `A052226.P2177125472500206193` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052226 has offset 0).

The definition of A052226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052226.P2177125472500206193

`∑[∑[∑[∑[∑[∑[8*n+1]]]]]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052226

/-- `∑[∑[∑[∑[∑[∑[8*n+1]]]]]]` -/
def P2177125472500206193.Spec : Prop :=
  ∀ n, (P2177125472500206193.a n : ℤ) = A052226 n

theorem P2177125472500206193.correct : P2177125472500206193.Spec := by
  intro n
  simp only [A052226]

end A052226

/-! ## A052226.P14985580118340070420

`abs(∑[∑[∑[∑[∑[∑[a(n-1)+8]]]]]])` with `a(0)=1`
-/

namespace A052226.P14985580118340070420
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f6 =>
  f6 (n - 1) + 8

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052226.P14985580118340070420

namespace A052226

/-- `abs(∑[∑[∑[∑[∑[∑[a(n-1)+8]]]]]])` -/
def P14985580118340070420.Spec : Prop :=
  ∀ n, (P14985580118340070420.a n : ℤ) = A052226 n

end A052226

/-! ## A052226.P15231321915168920428

`floor(∑[∑[∑[∑[∑[∑[a(n-1)+8]]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A052226.P15231321915168920428
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f6 =>
  f6 (n - 1) + 8

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052226.P15231321915168920428

namespace A052226

/-- `floor(∑[∑[∑[∑[∑[∑[a(n-1)+8]]]]]])` -/
def P15231321915168920428.Spec : Prop :=
  ∀ n, (P15231321915168920428.a n : ℤ) = A052226 n

end A052226

/-! ## A052226.P4622020754709449766

`ceil(∑[∑[∑[∑[∑[∑[a(n-1)+8]]]]]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A052226.P4622020754709449766
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f6 =>
  f6 (n - 1) + 8

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052226.P4622020754709449766

namespace A052226

/-- `ceil(∑[∑[∑[∑[∑[∑[a(n-1)+8]]]]]])` -/
def P4622020754709449766.Spec : Prop :=
  ∀ n, (P4622020754709449766.a n : ℤ) = A052226 n

end A052226

/-! ## A052226.P18415794759144781167

`round(∑[∑[∑[∑[∑[∑[a(n-1)+8]]]]]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A052226.P18415794759144781167
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f6 =>
  f6 (n - 1) + 8

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052226.P18415794759144781167

namespace A052226

/-- `round(∑[∑[∑[∑[∑[∑[a(n-1)+8]]]]]])` -/
def P18415794759144781167.Spec : Prop :=
  ∀ n, (P18415794759144781167.a n : ℤ) = A052226 n

end A052226

/-! ## A052226.P418989079856736552

`A050404(n)+a(n-1)` with `a(0)=1`
-/

namespace A052226.P418989079856736552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050404 n + a (n - 1)

end

end A052226.P418989079856736552

namespace A052226

/-- `A050404(n)+a(n-1)` -/
def P418989079856736552.Spec : Prop :=
  ∀ n, P418989079856736552.a n = A052226 n

end A052226

/-! ## A052226.P10869854012101820392

`2*A027818(n)-A034265(n)`
-/

namespace A052226.P10869854012101820392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027818 n - A034265 n

end

end A052226.P10869854012101820392

namespace A052226

/-- `2*A027818(n)-A034265(n)` -/
def P10869854012101820392.Spec : Prop :=
  ∀ n, P10869854012101820392.a n = A052226 n

end A052226

/-! ## A052226.P18376510097833736236

`A056001(n+1)-(A056001(n)+A050404(n+1))`
-/

namespace A052226.P18376510097833736236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056001 (n + 1) - (A056001 n + A050404 (n + 1))

end

end A052226.P18376510097833736236

namespace A052226

/-- `A056001(n+1)-(A056001(n)+A050404(n+1))` -/
def P18376510097833736236.Spec : Prop :=
  ∀ n, P18376510097833736236.a n = A052226 n

end A052226

/-! ## A052226.P6943616331010944461

`Δ[n*A007318(Δ[A264444(n)])]`
-/

namespace A052226.P6943616331010944461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052226.P6943616331010944461

namespace A052226

/-- `Δ[n*A007318(Δ[A264444(n)])]` -/
def P6943616331010944461.Spec : Prop :=
  ∀ n, P6943616331010944461.a n = A052226 n

end A052226

/-!
# A052227: a(n) = (4*n+1)*binomial(3*n,n)/(2*n+1).

The programs for A052227, the canonical program `A052227.P10261646260399004321` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052227 has offset 0).

The definition of A052227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182584, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A052227.P10261646260399004321

`A182584(2*n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A052227

/-- `A182584(2*n+1)` -/
def P10261646260399004321.Spec : Prop :=
  ∀ n, P10261646260399004321.a n = A052227 n

theorem P10261646260399004321.correct : P10261646260399004321.Spec := by
  intro n
  simp only [A052227]

end A052227

/-! ## A052227.P10023069526411601458

`record[A182584(n*n%2)]`
-/

namespace A052227.P10023069526411601458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182584 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052227.P10023069526411601458

namespace A052227

/-- `record[A182584(n*n%2)]` -/
def P10023069526411601458.Spec : Prop :=
  ∀ n, P10023069526411601458.a n = A052227 n

end A052227

/-! ## A052227.P12405625238591296768

`(4*n+1)*A001764(n)`
-/

namespace A052227.P12405625238591296768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A001764 n

end

end A052227.P12405625238591296768

namespace A052227

/-- `(4*n+1)*A001764(n)` -/
def P12405625238591296768.Spec : Prop :=
  ∀ n, P12405625238591296768.a n = A052227 n

end A052227

/-! ## A052227.P4419657055572706431

`(4*n+1)*A047749(2*n)`
-/

namespace A052227.P4419657055572706431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A047749 (2 * n)

end

end A052227.P4419657055572706431

namespace A052227

/-- `(4*n+1)*A047749(2*n)` -/
def P4419657055572706431.Spec : Prop :=
  ∀ n, P4419657055572706431.a n = A052227 n

end A052227

/-! ## A052227.P1542449048627773708

`(4*n+1)*A005809(n)/(2*n+1)`
-/

namespace A052227.P1542449048627773708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) * ((A005809 n : ℚ) / (2 * n + 1 : ℚ))

end

end A052227.P1542449048627773708

namespace A052227

/-- `(4*n+1)*A005809(n)/(2*n+1)` -/
def P1542449048627773708.Spec : Prop :=
  ∀ n, P1542449048627773708.a n = (A052227 n : ℚ)

end A052227

/-! ## A052227.P10016422203127311880

`(4*n+1)*A045721(n)/(3*n+1)`
-/

namespace A052227.P10016422203127311880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) * ((A045721 n : ℚ) / (3 * n + 1 : ℚ))

end

end A052227.P10016422203127311880

namespace A052227

/-- `(4*n+1)*A045721(n)/(3*n+1)` -/
def P10016422203127311880.Spec : Prop :=
  ∀ n, P10016422203127311880.a n = (A052227 n : ℚ)

end A052227

/-! ## A052227.P7584664853511362439

`A001764(n)*A016813(n)`
-/

namespace A052227.P7584664853511362439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A016813 n

end

end A052227.P7584664853511362439

namespace A052227

/-- `A001764(n)*A016813(n)` -/
def P7584664853511362439.Spec : Prop :=
  ∀ n, P7584664853511362439.a n = A052227 n

end A052227

/-! ## A052227.P15635755658569365376

`record[A182584(A000265(n+1))]`
-/

namespace A052227.P15635755658569365376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182584 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052227.P15635755658569365376

namespace A052227

/-- `record[A182584(A000265(n+1))]` -/
def P15635755658569365376.Spec : Prop :=
  ∀ n, P15635755658569365376.a n = A052227 n

end A052227

/-! ## A052227.P9649706426507678990

`record[A182584(gcd(n, A035363(n)))]`
-/

namespace A052227.P9649706426507678990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182584 (Int.gcd (n : ℤ) (A035363 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052227.P9649706426507678990

namespace A052227

/-- `record[A182584(gcd(n, A035363(n)))]` -/
def P9649706426507678990.Spec : Prop :=
  ∀ n, P9649706426507678990.a n = A052227 n

end A052227

/-! ## A052227.P7796212275458591959

`2*A005809(n)-A001764(n)`
-/

namespace A052227.P7796212275458591959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005809 n - A001764 n

end

end A052227.P7796212275458591959

namespace A052227

/-- `2*A005809(n)-A001764(n)` -/
def P7796212275458591959.Spec : Prop :=
  ∀ n, P7796212275458591959.a n = A052227 n

end A052227

/-! ## A052227.P14533456763134796019

`2*A045721(n)-A005809(n)`
-/

namespace A052227.P14533456763134796019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045721 n - A005809 n

end

end A052227.P14533456763134796019

namespace A052227

/-- `2*A045721(n)-A005809(n)` -/
def P14533456763134796019.Spec : Prop :=
  ∀ n, P14533456763134796019.a n = A052227 n

end A052227

/-! ## A052227.P5575874711506978053

`A001764(n)*A005408(2*n)`
-/

namespace A052227.P5575874711506978053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A005408 (2 * n)

end

end A052227.P5575874711506978053

namespace A052227

/-- `A001764(n)*A005408(2*n)` -/
def P5575874711506978053.Spec : Prop :=
  ∀ n, P5575874711506978053.a n = A052227 n

end A052227

/-! ## A052227.P16526375292265195808

`A006013(n)+n*A007226(n)`
-/

namespace A052227.P16526375292265195808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n + (n : ℤ) * A007226 n

end

end A052227.P16526375292265195808

namespace A052227

/-- `A006013(n)+n*A007226(n)` -/
def P16526375292265195808.Spec : Prop :=
  ∀ n, P16526375292265195808.a n = A052227 n

end A052227

/-! ## A052227.P13384670460173830152

`A045721(n)+n*A001764(n)`
-/

namespace A052227.P13384670460173830152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n + (n : ℤ) * A001764 n

end

end A052227.P13384670460173830152

namespace A052227

/-- `A045721(n)+n*A001764(n)` -/
def P13384670460173830152.Spec : Prop :=
  ∀ n, P13384670460173830152.a n = A052227 n

end A052227

/-! ## A052227.P13464879657196048450

`2*A065942(2*n)-A047749(2*n)`
-/

namespace A052227.P13464879657196048450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065942 (2 * n) - A047749 (2 * n)

end

end A052227.P13464879657196048450

namespace A052227

/-- `2*A065942(2*n)-A047749(2*n)` -/
def P13464879657196048450.Spec : Prop :=
  ∀ n, P13464879657196048450.a n = A052227 n

end A052227

/-! ## A052227.P7115241315105624225

`2*A081204(2*n)-A047749(2*n)`
-/

namespace A052227.P7115241315105624225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081204 (2 * n) - A047749 (2 * n)

end

end A052227.P7115241315105624225

namespace A052227

/-- `2*A081204(2*n)-A047749(2*n)` -/
def P7115241315105624225.Spec : Prop :=
  ∀ n, P7115241315105624225.a n = A052227 n

end A052227

/-! ## A052227.P11672896179107974264

`2*A065942(2*n+1)-A065942(2*n)`
-/

namespace A052227.P11672896179107974264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065942 (2 * n + 1) - A065942 (2 * n)

end

end A052227.P11672896179107974264

namespace A052227

/-- `2*A065942(2*n+1)-A065942(2*n)` -/
def P11672896179107974264.Spec : Prop :=
  ∀ n, P11672896179107974264.a n = A052227 n

end A052227

/-! ## A052227.P10835196077858866588

`2*A045721(n)-A264772(A000217(n))`
-/

namespace A052227.P10835196077858866588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045721 n - A264772 (A000217 n).toNat

end

end A052227.P10835196077858866588

namespace A052227

/-- `2*A045721(n)-A264772(A000217(n))` -/
def P10835196077858866588.Spec : Prop :=
  ∀ n, P10835196077858866588.a n = A052227 n

end A052227

/-!
# A052228: Automorphic primes: p such that p^p ends with the digits of p.

The programs for A052228, there is no canonical definition to state claims against.
-/

/-! ## A052228.P16119559836065301681

`p?[A082576(n+1)]`
-/

namespace A052228.P16119559836065301681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052228.P16119559836065301681

/-! ## A052228.P6228216816289899491

`record[p?[A082576(A052938(n))]]`
-/

namespace A052228.P6228216816289899491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082576 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052228.P6228216816289899491

/-! ## A052228.P14415472806154160771

`p?[record[A082576(A126759(n))]]`
-/

namespace A052228.P14415472806154160771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082576 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052228.P14415472806154160771

/-! ## A052228.P7125750050503924689

`∏{p}[p?[A082576(A028310(n))], #]`
-/

namespace A052228.P7125750050503924689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082576 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A052228.P7125750050503924689

/-! ## A052228.P18200154288724813831

`or(1, p?[A082576(A052938(2*n))])`
-/

namespace A052228.P18200154288724813831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082576 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A052228.P18200154288724813831

/-! ## A052228.P16496305559882701312

`∩[A082576(n+1), A230359(n+1)]`
-/

namespace A052228.P16496305559882701312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052228.P16496305559882701312

/-! ## A052228.P11322144754653398465

`∩[A058853(n+1), A082576(n+1)]`
-/

namespace A052228.P11322144754653398465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052228.P11322144754653398465

/-! ## A052228.P1277656031974743802

`∩[A000040(n+1), A082576(n+1)]`
-/

namespace A052228.P1277656031974743802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052228.P1277656031974743802

/-! ## A052228.P7047066773367734978

`∩[A045344(n+1), A082576(n+1)]`
-/

namespace A052228.P7047066773367734978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052228.P7047066773367734978

/-!
# A052230: Primes p from A031924 such that A052180(primepi(p)) = 5.

The programs for A052230, there is no canonical definition to state claims against.
-/

/-! ## A052230.P5430127834371096529

`record[A031924(n+1)/A007318(A052247(n+1))]`
-/

namespace A052230.P5430127834371096529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031924 (n + 1) : ℚ) / (A007318 (A052247 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052230.P5430127834371096529

/-! ## A052230.P7634728903397631987

`record[A031924(n+1)%(A031925(n+1)-A052247(n+1))]`
-/

namespace A052230.P7634728903397631987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031924 (n + 1)) (A031925 (n + 1) - A052247 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052230.P7634728903397631987

/-! ## A052230.P8743897663255901182

`A004139(eq[5, A052180(n+2)])`
-/

namespace A052230.P8743897663255901182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052230.P8743897663255901182

/-! ## A052230.P15745951229072146528

`A065091(eq[5, A052180(n+2)]+1)`
-/

namespace A052230.P15745951229072146528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A052230.P15745951229072146528

/-! ## A052230.P16350234183709938849

`p?[A151800(A084967(n+1))-6]`
-/

namespace A052230.P16350234183709938849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A084967 (n + 1)).toNat - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052230.P16350234183709938849

/-!
# A052231: Primes p from A031924 such that A052180(primepi(p)) = 7.

The programs for A052231, there is no canonical definition to state claims against.
-/

/-! ## A052231.P11539213655338105991

`p?[(A052247(n+1)-6)*A031924(n+1)]`
-/

namespace A052231.P11539213655338105991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052247 (n + 1) - 6) * A031924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052231.P11539213655338105991

/-! ## A052231.P2739529928627814045

`A130796(3*A270613(n+1))`
-/

namespace A052231.P2739529928627814045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130796 (3 * A270613 (n + 1)).toNat

end

end A052231.P2739529928627814045

/-!
# A052232: Primes p from A031924 such that A052180(primepi(p)) = 11.

The programs for A052232, there is no canonical definition to state claims against.
-/

/-! ## A052232.P10027824185698058985

`p?[(A052247(n+1)-10)*A031924(n+1)]`
-/

namespace A052232.P10027824185698058985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052247 (n + 1) - 10) * A031924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052232.P10027824185698058985

/-!
# A052241: McKay-Thompson series of class 8C for Monster.

The programs for A052241, there is no canonical definition to state claims against.
-/

/-! ## A052241.P17116113940003741407

`A143894(2*n)`
-/

namespace A052241.P17116113940003741407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143894 (2 * n)

end

end A052241.P17116113940003741407

/-! ## A052241.P9117766732377382688

`record[A143894(A083220(n))]`
-/

namespace A052241.P9117766732377382688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143894 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052241.P9117766732377382688

/-! ## A052241.P14682763399970959548

`record[A143894(A006257(n+1)-1)]`
-/

namespace A052241.P14682763399970959548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143894 (A006257 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052241.P14682763399970959548

/-! ## A052241.P10334846458852708054

`A143894(n+n)/A007318(∑[n])`
-/

namespace A052241.P10334846458852708054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143894 (n + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A052241.P10334846458852708054

/-! ## A052241.P16930889506941372591

`A143894(n+n)+A004197(∑[n])`
-/

namespace A052241.P16930889506941372591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143894 (n + n) + A004197 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052241.P16930889506941372591

/-!
# A052243: Initial prime in set of (at least) 4 consecutive primes in arithmetic progression with difference 30.

The programs for A052243, there is no canonical definition to state claims against.
-/

/-! ## A052243.P6669271963160301644

`∩[A052195(n+1), A054800(n+1)]`
-/

namespace A052243.P6669271963160301644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052243.P6669271963160301644

/-!
# A052244: Partial sums of A014827.

The programs for A052244, the canonical program `A052244.P5037092656826527933` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052244 has offset 0).

The definition of A052244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052244.P5037092656826527933

`8*a(n-1)-18*a(n-2)+16*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=8, a(2)=46, a(3)=240`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052244

/-- `8*a(n-1)-18*a(n-2)+16*a(n-3)-5*a(n-4)` -/
def P5037092656826527933.Spec : Prop :=
  ∀ n, P5037092656826527933.a n = A052244 n

theorem P5037092656826527933.correct : P5037092656826527933.Spec := by
  intro n
  simp only [A052244]

end A052244

/-! ## A052244.P13539335502800513811

`(5^(n+3)-(8*n²+44*n+61))/64`
-/

namespace A052244.P13539335502800513811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 3) : ℤ) - (8 * n ^ 2 + 44 * n + 61 : ℤ) : ℚ) / 64

end

end A052244.P13539335502800513811

namespace A052244

/-- `(5^(n+3)-(8*n²+44*n+61))/64` -/
def P13539335502800513811.Spec : Prop :=
  ∀ n, P13539335502800513811.a n = (A052244 n : ℚ)

theorem P13539335502800513811.correct : P13539335502800513811.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A052244, Nat.add_sub_cancel, A052244.P13539335502800513811.a, A052244.P5037092656826527933.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A052244, Nat.add_sub_cancel, A052244.P13539335502800513811.a, A052244.P5037092656826527933.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052244

/-! ## A052244.P14816721711000270077

`∑[∑[∑[5*a(n-1)]]]` with `a(0)=1`
-/

namespace A052244.P14816721711000270077
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  5 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052244.P14816721711000270077

namespace A052244

/-- `∑[∑[∑[5*a(n-1)]]]` -/
def P14816721711000270077.Spec : Prop :=
  ∀ n, (P14816721711000270077.a n : ℤ) = A052244 n

end A052244

/-! ## A052244.P13151690295739231442

`5*a(n-1)+C(n+2, 2)` with `a(0)=1`
-/

namespace A052244.P13151690295739231442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + Nat.choose (n + 2) 2

end

end A052244.P13151690295739231442

namespace A052244

/-- `5*a(n-1)+C(n+2, 2)` -/
def P13151690295739231442.Spec : Prop :=
  ∀ n, (P13151690295739231442.a n : ℤ) = A052244 n

end A052244

/-! ## A052244.P10316316574193319424

`∑[∑[5^(n+1)/5]]+a(n-1)` with `a(0)=1`
-/

namespace A052244.P10316316574193319424
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A052244.P10316316574193319424

namespace A052244

/-- `∑[∑[5^(n+1)/5]]+a(n-1)` -/
def P10316316574193319424.Spec : Prop :=
  ∀ n, P10316316574193319424.a n = (A052244 n : ℚ)

end A052244

/-! ## A052244.P14068220598880078277

`∑[A014827(n+1)]`
-/

namespace A052244.P14068220598880078277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052244.P14068220598880078277

namespace A052244

/-- `∑[A014827(n+1)]` -/
def P14068220598880078277.Spec : Prop :=
  ∀ n, P14068220598880078277.a n = A052244 n

end A052244

/-! ## A052244.P13528447682759695273

`∑[∑[A003463(n+1)]]`
-/

namespace A052244.P13528447682759695273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052244.P13528447682759695273

namespace A052244

/-- `∑[∑[A003463(n+1)]]` -/
def P13528447682759695273.Spec : Prop :=
  ∀ n, P13528447682759695273.a n = A052244 n

end A052244

/-! ## A052244.P15678651253863456828

`∑[∑[A249222(2*n+1)]]`
-/

namespace A052244.P15678651253863456828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249222 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052244.P15678651253863456828

namespace A052244

/-- `∑[∑[A249222(2*n+1)]]` -/
def P15678651253863456828.Spec : Prop :=
  ∀ n, P15678651253863456828.a n = A052244 n

end A052244

/-! ## A052244.P7964881683682984721

`5*a(n-1)+A000124(n)+n` with `a(0)=1`
-/

namespace A052244.P7964881683682984721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A000124 n + (n : ℤ))

end

end A052244.P7964881683682984721

namespace A052244

/-- `5*a(n-1)+A000124(n)+n` -/
def P7964881683682984721.Spec : Prop :=
  ∀ n, P7964881683682984721.a n = A052244 n

end A052244

/-! ## A052244.P3522434069328759145

`∑[∑[∑[A024049(n)]+n]+n]+n+1`
-/

namespace A052244.P3522434069328759145
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A052244.P3522434069328759145

namespace A052244

/-- `∑[∑[∑[A024049(n)]+n]+n]+n+1` -/
def P3522434069328759145.Spec : Prop :=
  ∀ n, P3522434069328759145.a n = A052244 n

end A052244

/-! ## A052244.P8525674158272844334

`A133263(n+1)-(2-5*a(n-1))` with `a(0)=1`
-/

namespace A052244.P8525674158272844334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133263 (n + 1) - (2 - 5 * a (n - 1))

end

end A052244.P8525674158272844334

namespace A052244

/-- `A133263(n+1)-(2-5*a(n-1))` -/
def P8525674158272844334.Spec : Prop :=
  ∀ n, P8525674158272844334.a n = A052244 n

end A052244

/-! ## A052244.P17001322916732622475

`5*a(n-1)+n+A000217(n)+1` with `a(0)=1`
-/

namespace A052244.P17001322916732622475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (n : ℤ) + (A000217 n + 1)

end

end A052244.P17001322916732622475

namespace A052244

/-- `5*a(n-1)+n+A000217(n)+1` -/
def P17001322916732622475.Spec : Prop :=
  ∀ n, P17001322916732622475.a n = A052244 n

end A052244

/-!
# A052245: Expansion of 10*x / ((1 - x) * (1 - 10*x)^2) in powers of x.

The programs for A052245, the canonical program `A052245.P2093151627935100210` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052245 has offset 0).

The definition of A052245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052245.P2093151627935100210

`n*10^n+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052245

/-- `n*10^n+a(n-1)` -/
def P2093151627935100210.Spec : Prop :=
  ∀ n, (P2093151627935100210.a n : ℤ) = A052245 n

theorem P2093151627935100210.correct : P2093151627935100210.Spec := by
  intro n
  simp only [A052245]

end A052245

/-! ## A052245.P4941090102261088359

`((9*n-1)*10^n+1)*10/81`
-/

namespace A052245.P4941090102261088359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((9 * n : ℤ) - 1) * (10 ^ n : ℤ) + 1 : ℚ) * ((10 : ℚ) / 81)

end

end A052245.P4941090102261088359

namespace A052245

/-- `((9*n-1)*10^n+1)*10/81` -/
def P4941090102261088359.Spec : Prop :=
  ∀ n, P4941090102261088359.a n = (A052245 n : ℚ)

theorem P4941090102261088359.correct : P4941090102261088359.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A052245, Nat.add_sub_cancel, A052245.P4941090102261088359.a, A052245.P2093151627935100210.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A052245, Nat.add_sub_cancel, A052245.P4941090102261088359.a, A052245.P2093151627935100210.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052245

/-! ## A052245.P13186020793477991418

`∑[10*a(n-1)]+10*a(n-1)` with `a(0)=0, a(1)=10`
-/

namespace A052245.P13186020793477991418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A052245.P13186020793477991418

namespace A052245

/-- `∑[10*a(n-1)]+10*a(n-1)` -/
def P13186020793477991418.Spec : Prop :=
  ∀ n, (P13186020793477991418.a n : ℤ) = A052245 n

end A052245

/-! ## A052245.P11143793608527086232

`∑[A126431(n)]`
-/

namespace A052245.P11143793608527086232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052245.P11143793608527086232

namespace A052245

/-- `∑[A126431(n)]` -/
def P11143793608527086232.Spec : Prop :=
  ∀ n, P11143793608527086232.a n = A052245 n

end A052245

/-! ## A052245.P14212331954818377325

`∑[A064748(n)-1]`
-/

namespace A052245.P14212331954818377325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064748 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052245.P14212331954818377325

namespace A052245

/-- `∑[A064748(n)-1]` -/
def P14212331954818377325.Spec : Prop :=
  ∀ n, P14212331954818377325.a n = A052245 n

end A052245

/-! ## A052245.P6608774082953871601

`∑[2*n*A011557(n)]/2`
-/

namespace A052245.P6608774082953871601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A011557 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A052245.P6608774082953871601

namespace A052245

/-- `∑[2*n*A011557(n)]/2` -/
def P6608774082953871601.Spec : Prop :=
  ∀ n, P6608774082953871601.a n = (A052245 n : ℚ)

end A052245

/-! ## A052245.P3694785985450342201

`A105279(n)+10*a(n-1)` with `a(0)=0`
-/

namespace A052245.P3694785985450342201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A105279 n + 10 * a (n - 1)

end

end A052245.P3694785985450342201

namespace A052245

/-- `A105279(n)+10*a(n-1)` -/
def P3694785985450342201.Spec : Prop :=
  ∀ n, P3694785985450342201.a n = A052245 n

end A052245

/-! ## A052245.P16311036298012670750

`A338226(n+1)+A014824(n)`
-/

namespace A052245.P16311036298012670750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338226 (n + 1) + A014824 n

end

end A052245.P16311036298012670750

namespace A052245

/-- `A338226(n+1)+A014824(n)` -/
def P16311036298012670750.Spec : Prop :=
  ∀ n, P16311036298012670750.a n = A052245 n

end A052245

/-!
# A052246: Concatenation of integers from n down to 0.

The programs for A052246, there is no canonical definition to state claims against.
-/

/-! ## A052246.P2750379494882300970

`A136307(n)-1`
-/

namespace A052246.P2750379494882300970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136307 n - 1

end

end A052246.P2750379494882300970

/-! ## A052246.P1396895594174304355

`xor(abs(A087960(n)), A136307(n))`
-/

namespace A052246.P1396895594174304355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A087960 n| (A136307 n)

end

end A052246.P1396895594174304355

/-! ## A052246.P3775342559565268628

`xor(char[A001057(n)], A136307(n))`
-/

namespace A052246.P3775342559565268628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A136307 n)

end

end A052246.P3775342559565268628

/-! ## A052246.P15568240123484147818

`xor(char[A002262(n)], A136307(n))`
-/

namespace A052246.P15568240123484147818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A136307 n)

end

end A052246.P15568240123484147818

/-! ## A052246.P16357490349101635648

`xor(char[A037213(n)], A136307(n))`
-/

namespace A052246.P16357490349101635648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A136307 n)

end

end A052246.P16357490349101635648

/-!
# A052247: Maximal value of smallest prime divisors of the 5 composite numbers between A031924(n) and A031925(n).

The programs for A052247, there is no canonical definition to state claims against.
-/

/-! ## A052247.P977078501782492206

`A052180(A320701(n+1))`
-/

namespace A052247.P977078501782492206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A320701 (n + 1)).toNat

end

end A052247.P977078501782492206

/-! ## A052247.P5851183164927943911

`A052180(eq[7, A076368(n+1)])`
-/

namespace A052247.P5851183164927943911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052247.P5851183164927943911

/-! ## A052247.P8782845468007743232

`p?[(A028334(n+2)-2)*A052180(n+2)]`
-/

namespace A052247.P8782845468007743232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028334 (n + 2) - 2) * A052180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052247.P8782845468007743232

/-! ## A052247.P4751243601302777030

`A052180(A000720(A031924(n+1)))`
-/

namespace A052247.P4751243601302777030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A000720 (A031924 (n + 1)).toNat).toNat

end

end A052247.P4751243601302777030

/-! ## A052247.P3759003032236451079

`A052180(A000720(A031925(n+1)-1))`
-/

namespace A052247.P3759003032236451079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A000720 (A031925 (n + 1) - 1).toNat).toNat

end

end A052247.P3759003032236451079

/-! ## A052247.P675571383306655719

`A052180(A000720(xor(1, A031925(n+1))))`
-/

namespace A052247.P675571383306655719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A000720 (Int.xor 1 (A031925 (n + 1))).toNat).toNat

end

end A052247.P675571383306655719

/-!
# A052248: Greatest prime divisor of all composite numbers between p and next prime.

The programs for A052248, there is no canonical definition to state claims against.
-/

/-! ## A052248.P8259496445076700715

`A006530(A114331(n+2))`
-/

namespace A052248.P8259496445076700715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114331 (n + 2)).toNat

end

end A052248.P8259496445076700715

/-! ## A052248.P2372969796843884609

`A345931(∏{p}[A114331(n+2), #])`
-/

namespace A052248.P2372969796843884609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A052248.P2372969796843884609

/-! ## A052248.P13950098755524974918

`A002034(∏{p}[A114331(n+2), #])`
-/

namespace A052248.P13950098755524974918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A052248.P13950098755524974918

/-! ## A052248.P18066256562530555346

`A085392(2*A114331(n+2))`
-/

namespace A052248.P18066256562530555346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A114331 (n + 2)).toNat

end

end A052248.P18066256562530555346

/-! ## A052248.P17205623309843225533

`A085392(lcm(2, A114331(n+2)))`
-/

namespace A052248.P17205623309843225533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (Int.lcm 2 (A114331 (n + 2)))

end

end A052248.P17205623309843225533

/-! ## A052248.P1661535588342969704

`A061395(∏{p}[A114331(n+2), A000040(#)])`
-/

namespace A052248.P1661535588342969704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A052248.P1661535588342969704

/-! ## A052248.P10979538553941269660

`A000040(A061395(A114331(n+2)²))`
-/

namespace A052248.P10979538553941269660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (A114331 (n + 2) ^ 2).toNat).toNat

end

end A052248.P10979538553941269660

/-!
# A052249: Triangle T(n,k) (n >= 1, k >= 1) giving dimension of bigrading of Connes-Moscovici noncocommutative algebra.

The programs for A052249, there is no canonical definition to state claims against.
-/

/-! ## A052249.P5898277330627369958

`round(A086645(n)/A004275(A143409(n)))`
-/

namespace A052249.P5898277330627369958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A086645 n : ℚ) / (A004275 (A143409 n).toNat : ℚ))

end

end A052249.P5898277330627369958

/-! ## A052249.P14729657591691855475

`A030528(n+1)-A084888(A273712(n))`
-/

namespace A052249.P14729657591691855475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) - A084888 (A273712 n).toNat

end

end A052249.P14729657591691855475

/-! ## A052249.P16671519239194368850

`abs(A030528(n+1)-A184159(A099594(n)))`
-/

namespace A052249.P16671519239194368850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A030528 (n + 1) - A184159 (A099594 n).toNat|

end

end A052249.P16671519239194368850

/-! ## A052249.P4740476158180666595

`A258850(n+1)+A000007(A221609(n+1))`
-/

namespace A052249.P4740476158180666595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 (n + 1) + A000007 (A221609 (n + 1)).toNat

end

end A052249.P4740476158180666595

/-! ## A052249.P8142754068903984527

`A030528(n+1)-A055641(A000045(n+3))`
-/

namespace A052249.P8142754068903984527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) - A055641 (A000045 (n + 3)).toNat

end

end A052249.P8142754068903984527

/-!
# A052250: Triangle T(n,k) (n >= 1, k >= 1) giving dimension of bigrading of Hopf algebra of rooted trees.

The programs for A052250, there is no canonical definition to state claims against.
-/

/-! ## A052250.P17920888382799413671

`A007318(A184955(n))*A140530(n)`
-/

namespace A052250.P17920888382799413671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A184955 n).toNat * A140530 n

end

end A052250.P17920888382799413671

/-! ## A052250.P12191137483363404294

`A202191(A187829(n+1))`
-/

namespace A052250.P12191137483363404294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (A187829 (n + 1)).toNat

end

end A052250.P12191137483363404294

/-!
# A052251: Column 3 of A052250.

The programs for A052251, there is no canonical definition to state claims against.
-/

/-! ## A052251.P11193319132598317896

`A052250(∑[n+2]+4)`
-/

namespace A052251.P11193319132598317896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A052251.P11193319132598317896

/-! ## A052251.P6892607169724504154

`or(char[5], A052250(A055998(n)+6))`
-/

namespace A052251.P6892607169724504154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A052250 (A055998 n + 6).toNat)

end

end A052251.P6892607169724504154

/-! ## A052251.P4629037172454873945

`(1-4/2)²*A052250(A167614(n+1))`
-/

namespace A052251.P4629037172454873945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ 2 * (A052250 (A167614 (n + 1)).toNat : ℚ)

end

end A052251.P4629037172454873945

/-! ## A052251.P2202062858506510688

`gcd(A000038(n), A052250(A167614(n+1)))`
-/

namespace A052251.P2202062858506510688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A052250 (A167614 (n + 1)).toNat)

end

end A052251.P2202062858506510688

/-! ## A052251.P13474974743240034680

`A052250(A167614(n+1))+A000038(n+1)`
-/

namespace A052251.P13474974743240034680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A052251.P13474974743240034680

/-! ## A052251.P10319774128999314838

`A052250(A167614(n+1))*A266303(2*n)`
-/

namespace A052251.P10319774128999314838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A167614 (n + 1)).toNat * A266303 (2 * n)

end

end A052251.P10319774128999314838

/-! ## A052251.P5492997991411737076

`A052250(A167614(n+1))%A076024(n+2)`
-/

namespace A052251.P5492997991411737076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052250 (A167614 (n + 1)).toNat) (A076024 (n + 2))

end

end A052251.P5492997991411737076

/-! ## A052251.P13192361937731887642

`A052250(A167499(n)+n)%A236611(n+1)`
-/

namespace A052251.P13192361937731887642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052250 (A167499 n + (n : ℤ)).toNat) (A236611 (n + 1))

end

end A052251.P13192361937731887642

/-! ## A052251.P12761083231233130265

`A052250(A167614(n+1))/A007318(C(n+1, 2))`
-/

namespace A052251.P12761083231233130265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052250 (A167614 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose (n + 1) 2) : ℚ)

end

end A052251.P12761083231233130265

/-! ## A052251.P4582264489834504783

`or(A010051(2*(n+1)), A052250(A167614(n+1)))`
-/

namespace A052251.P4582264489834504783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (2 * (n + 1))) (A052250 (A167614 (n + 1)).toNat)

end

end A052251.P4582264489834504783

/-! ## A052251.P490067659182833694

`A052250(A167614(n+1))+A000122(A017101(n))`
-/

namespace A052251.P490067659182833694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A167614 (n + 1)).toNat + A000122 (A017101 n).toNat

end

end A052251.P490067659182833694

/-! ## A052251.P4952063843110504117

`A052250(A167614(n+1))+A008683(A001749(n+1))`
-/

namespace A052251.P4952063843110504117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A167614 (n + 1)).toNat + A008683 (A001749 (n + 1)).toNat

end

end A052251.P4952063843110504117

/-! ## A052251.P1516027163737138556

`A052250(A167614(n+1))+A000122(A152657(n+1))`
-/

namespace A052251.P1516027163737138556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A167614 (n + 1)).toNat + A000122 (A152657 (n + 1)).toNat

end

end A052251.P1516027163737138556

/-! ## A052251.P5305343969983047914

`record[and(A052250(n+2), A293305(n))]`
-/

namespace A052251.P5305343969983047914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052250 (n + 2)) (A293305 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052251.P5305343969983047914

/-!
# A052252: Column 4 of A052250.

The programs for A052252, there is no canonical definition to state claims against.
-/

/-! ## A052252.P8332728541118261561

`A052250(A052905(n)+9)`
-/

namespace A052252.P8332728541118261561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A052905 n + 9).toNat

end

end A052252.P8332728541118261561

/-! ## A052252.P2265510162649036282

`A052250(A055999(n)+10)`
-/

namespace A052252.P2265510162649036282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A055999 n + 10).toNat

end

end A052252.P2265510162649036282

/-! ## A052252.P1139938780522564897

`A052250(A167614(n+2)+1)`
-/

namespace A052252.P1139938780522564897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A167614 (n + 2) + 1).toNat

end

end A052252.P1139938780522564897

/-! ## A052252.P1984749295579610420

`A052250(A000124(n+3)+3)`
-/

namespace A052252.P1984749295579610420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A000124 (n + 3) + 3).toNat

end

end A052252.P1984749295579610420

/-! ## A052252.P4769662380888622973

`A052250(A000217(n+3)+4)`
-/

namespace A052252.P4769662380888622973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A000217 (n + 3) + 4).toNat

end

end A052252.P4769662380888622973

/-! ## A052252.P5779349408110621722

`record[A052250(n+10)%A033185(n+7)]`
-/

namespace A052252.P5779349408110621722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052250 (n + 10)) (A033185 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052252.P5779349408110621722

/-!
# A052253: Triangle T(n,k) (n >= 1, k >= 1) giving filtration of bigrading of Hopf algebra of rooted trees.

The programs for A052253, there is no canonical definition to state claims against.
-/

/-! ## A052253.P5604083947642796924

`A000120(C(∑[∑{p}[n+1, gcd(n, #)]], C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A052253.P5604083947642796924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat)

end

end A052253.P5604083947642796924

/-! ## A052253.P18093592877728464549

`A085576(A236420(n))`
-/

namespace A052253.P18093592877728464549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085576 (A236420 n).toNat

end

end A052253.P18093592877728464549

/-! ## A052253.P9464552303745171197

`A339491(A320578(n+1))`
-/

namespace A052253.P9464552303745171197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339491 (A320578 (n + 1)).toNat

end

end A052253.P9464552303745171197

/-! ## A052253.P3598743617806657360

`A378126(A298673(n+1))`
-/

namespace A052253.P3598743617806657360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378126 (A298673 (n + 1)).toNat

end

end A052253.P3598743617806657360

/-!
# A052254: Partial sums of A050406.

The programs for A052254, the canonical program `A052254.P14987541135402565170` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052254 has offset 0).

The definition of A052254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052254.P14987541135402565170

`∑[∑[C(n+4, 4)*Δ[n²]]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052254

/-- `∑[∑[C(n+4, 4)*Δ[n²]]]` -/
def P14987541135402565170.Spec : Prop :=
  ∀ n, P14987541135402565170.a n = A052254 n

theorem P14987541135402565170.correct : P14987541135402565170.Spec := by
  intro n
  simp only [A052254]

end A052254

/-! ## A052254.P2356538816780411584

`∑[∑[∑[∑[∑[∑[10*n+1]]]]]]`
-/

namespace A052254.P2356538816780411584
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052254.P2356538816780411584

namespace A052254

/-- `∑[∑[∑[∑[∑[∑[10*n+1]]]]]]` -/
def P2356538816780411584.Spec : Prop :=
  ∀ n, (P2356538816780411584.a n : ℤ) = A052254 n

end A052254

/-! ## A052254.P9302700045264110405

`A050406(n)+a(n-1)` with `a(0)=1`
-/

namespace A052254.P9302700045264110405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050406 n + a (n - 1)

end

end A052254.P9302700045264110405

namespace A052254

/-- `A050406(n)+a(n-1)` -/
def P9302700045264110405.Spec : Prop :=
  ∀ n, P9302700045264110405.a n = A052254 n

end A052254

/-! ## A052254.P7576740627012694346

`(10*n+7)/(8*n+7)*A052226(n)`
-/

namespace A052254.P7576740627012694346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * n + 7 : ℚ) / (8 * n + 7 : ℚ) * (A052226 n : ℚ)

end

end A052254.P7576740627012694346

namespace A052254

/-- `(10*n+7)/(8*n+7)*A052226(n)` -/
def P7576740627012694346.Spec : Prop :=
  ∀ n, P7576740627012694346.a n = (A052254 n : ℚ)

end A052254

/-! ## A052254.P9314753322200076651

`gcd(∑[A050406(n)], A000038(n))`
-/

namespace A052254.P9314753322200076651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050406 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A052254.P9314753322200076651

namespace A052254

/-- `gcd(∑[A050406(n)], A000038(n))` -/
def P9314753322200076651.Spec : Prop :=
  ∀ n, (P9314753322200076651.a n : ℤ) = A052254 n

end A052254

/-! ## A052254.P13020627328577559404

`or(∑[A050406(n)], A000007(n))`
-/

namespace A052254.P13020627328577559404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A052254.P13020627328577559404

namespace A052254

/-- `or(∑[A050406(n)], A000007(n))` -/
def P13020627328577559404.Spec : Prop :=
  ∀ n, P13020627328577559404.a n = A052254 n

end A052254

/-! ## A052254.P15042588254371995735

`A056125(n+1)-(A056125(n)+A050406(n+1))`
-/

namespace A052254.P15042588254371995735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056125 (n + 1) - (A056125 n + A050406 (n + 1))

end

end A052254.P15042588254371995735

namespace A052254

/-- `A056125(n+1)-(A056125(n)+A050406(n+1))` -/
def P15042588254371995735.Spec : Prop :=
  ∀ n, P15042588254371995735.a n = A052254 n

end A052254

/-! ## A052254.P4603238685436676590

`∑[A050406(n)]%A259997(n+1)`
-/

namespace A052254.P4603238685436676590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A259997 (n + 1))

end

end A052254.P4603238685436676590

namespace A052254

/-- `∑[A050406(n)]%A259997(n+1)` -/
def P4603238685436676590.Spec : Prop :=
  ∀ n, P4603238685436676590.a n = A052254 n

end A052254

/-! ## A052254.P17932266942457680834

`A093645(A000217(n+7)+7)`
-/

namespace A052254.P17932266942457680834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093645 (A000217 (n + 7) + 7).toNat

end

end A052254.P17932266942457680834

namespace A052254

/-- `A093645(A000217(n+7)+7)` -/
def P17932266942457680834.Spec : Prop :=
  ∀ n, P17932266942457680834.a n = A052254 n

end A052254

/-!
# A052255: Partial sums of A050484.

The programs for A052255, the canonical program `A052255.P6050753738019785398` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052255 has offset 0).

The definition of A052255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052255.P6050753738019785398

`∑[∑[∑[(n+1)*C(n+4, 4)]]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052255

/-- `∑[∑[∑[(n+1)*C(n+4, 4)]]]` -/
def P6050753738019785398.Spec : Prop :=
  ∀ n, (P6050753738019785398.a n : ℤ) = A052255 n

theorem P6050753738019785398.correct : P6050753738019785398.Spec := by
  intro n
  simp only [A052255]

end A052255

/-! ## A052255.P16580459767771125430

`∑[∑[∑[(n+1)*∑[∑[∑[n+1]]]]]]`
-/

namespace A052255.P16580459767771125430
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052255.P16580459767771125430

namespace A052255

/-- `∑[∑[∑[(n+1)*∑[∑[∑[n+1]]]]]]` -/
def P16580459767771125430.Spec : Prop :=
  ∀ n, (P16580459767771125430.a n : ℤ) = A052255 n

end A052255

/-! ## A052255.P12693319349223012704

`or(∑[A050484(n)], char[1])`
-/

namespace A052255.P12693319349223012704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050484 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A052255.P12693319349223012704

namespace A052255

/-- `or(∑[A050484(n)], char[1])` -/
def P12693319349223012704.Spec : Prop :=
  ∀ n, P12693319349223012704.a n = A052255 n

end A052255

/-! ## A052255.P16240778014349283225

`lcm(∑[A050484(n)], A033999(n))`
-/

namespace A052255.P16240778014349283225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A052255.P16240778014349283225

namespace A052255

/-- `lcm(∑[A050484(n)], A033999(n))` -/
def P16240778014349283225.Spec : Prop :=
  ∀ n, (P16240778014349283225.a n : ℤ) = A052255 n

end A052255

/-! ## A052255.P2825881092845140313

`2*A053367(n)-A000581(n+8)`
-/

namespace A052255.P2825881092845140313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053367 n - A000581 (n + 8)

end

end A052255.P2825881092845140313

namespace A052255

/-- `2*A053367(n)-A000581(n+8)` -/
def P2825881092845140313.Spec : Prop :=
  ∀ n, P2825881092845140313.a n = A052255 n

end A052255

/-! ## A052255.P8535003384276688359

`∑[A027779(n+4)]%A027767(n+6)`
-/

namespace A052255.P8535003384276688359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027779 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A027767 (n + 6))

end

end A052255.P8535003384276688359

namespace A052255

/-- `∑[A027779(n+4)]%A027767(n+6)` -/
def P8535003384276688359.Spec : Prop :=
  ∀ n, P8535003384276688359.a n = A052255 n

end A052255

/-! ## A052255.P1407814597022524017

`∑[A050484(n)]^A001221(A000015(n+1))`
-/

namespace A052255.P1407814597022524017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A001221 (A000015 (n + 1)).toNat : ℤ)

end

end A052255.P1407814597022524017

namespace A052255

/-- `∑[A050484(n)]^A001221(A000015(n+1))` -/
def P1407814597022524017.Spec : Prop :=
  ∀ n, P1407814597022524017.a n = (A052255 n : ℚ)

end A052255

/-! ## A052255.P17319795253811674490

`A053347(n+1)+A053367(n)-A050494(n+1)`
-/

namespace A052255.P17319795253811674490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 (n + 1) + (A053367 n - A050494 (n + 1))

end

end A052255.P17319795253811674490

namespace A052255

/-- `A053347(n+1)+A053367(n)-A050494(n+1)` -/
def P17319795253811674490.Spec : Prop :=
  ∀ n, P17319795253811674490.a n = A052255 n

end A052255

/-! ## A052255.P6012706457653333808

`A055844(n+1)-(A055844(n)+A050484(n+1))`
-/

namespace A052255.P6012706457653333808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055844 (n + 1) - (A055844 n + A050484 (n + 1))

end

end A052255.P6012706457653333808

namespace A052255

/-- `A055844(n+1)-(A055844(n)+A050484(n+1))` -/
def P6012706457653333808.Spec : Prop :=
  ∀ n, P6012706457653333808.a n = A052255 n

end A052255

/-! ## A052255.P15984884799341940101

`A096940(A000124(n+9)-10)`
-/

namespace A052255.P15984884799341940101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A000124 (n + 9) - 10).toNat

end

end A052255.P15984884799341940101

namespace A052255

/-- `A096940(A000124(n+9)-10)` -/
def P15984884799341940101.Spec : Prop :=
  ∀ n, P15984884799341940101.a n = A052255 n

end A052255

/-!
# A052256: Last filtering prime (A052180) of primes p such that next prime is p+8 (A031926).

The programs for A052256, there is no canonical definition to state claims against.
-/

/-! ## A052256.P15351554061409349681

`A052180(A320702(n+1))`
-/

namespace A052256.P15351554061409349681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A320702 (n + 1)).toNat

end

end A052256.P15351554061409349681

/-! ## A052256.P2883665935117465555

`A052180(eq[9, A076368(n+1)])`
-/

namespace A052256.P2883665935117465555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052256.P2883665935117465555

/-! ## A052256.P8045054660101389931

`A052180(A000720(A031926(n+1)))`
-/

namespace A052256.P8045054660101389931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A000720 (A031926 (n + 1)).toNat).toNat

end

end A052256.P8045054660101389931

/-! ## A052256.P14313469835910890538

`A052180(∑{d}[A031926(n+1), A061395(#)])`
-/

namespace A052256.P14313469835910890538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A052256.P14313469835910890538

/-! ## A052256.P518663080360984807

`A052180(A329622(A031927(n)))`
-/

namespace A052256.P518663080360984807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A329622 (A031927 n).toNat).toNat

end

end A052256.P518663080360984807

/-! ## A052256.P6685899143148947894

`A052180(∏{p}[A031927(n), A048865(#)])`
-/

namespace A052256.P6685899143148947894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A048865 p).toNat

end

end A052256.P6685899143148947894

/-!
# A052257: Last filtering prime (A052180) of primes p such that next prime is p+10.

The programs for A052257, there is no canonical definition to state claims against.
-/

/-! ## A052257.P12231868244113296557

`A052180(A320703(n+1))`
-/

namespace A052257.P12231868244113296557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A320703 (n + 1)).toNat

end

end A052257.P12231868244113296557

/-! ## A052257.P15980763748026128973

`A052180(eq[10, A054541(n+1)])`
-/

namespace A052257.P15980763748026128973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052257.P15980763748026128973

/-! ## A052257.P14368205155120036182

`A052180(eq[11, A076368(n+1)])`
-/

namespace A052257.P14368205155120036182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052257.P14368205155120036182

/-! ## A052257.P15326516519797704835

`A052180(A000720(A031928(n+1)))`
-/

namespace A052257.P15326516519797704835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A000720 (A031928 (n + 1)).toNat).toNat

end

end A052257.P15326516519797704835

/-! ## A052257.P12346580489437643607

`A052180(∏{d}[A031928(n+1), A003963(#)])`
-/

namespace A052257.P12346580489437643607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∏ d ∈ Nat.divisors (f1 n).natAbs, A003963 d).toNat

end

end A052257.P12346580489437643607

/-! ## A052257.P8277091199623581630

`A052180(∏{p}[A031928(n+1), A003963(#)])`
-/

namespace A052257.P8277091199623581630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p).toNat

end

end A052257.P8277091199623581630

/-!
# A052258: Last filtering prime (A052180) of primes p such that next prime is p+12.

The programs for A052258, there is no canonical definition to state claims against.
-/

/-! ## A052258.P13190810359757429542

`A052180(A320704(n+1))`
-/

namespace A052258.P13190810359757429542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A320704 (n + 1)).toNat

end

end A052258.P13190810359757429542

/-! ## A052258.P16071118299339639374

`A052180(eq[12, A054541(n+1)])`
-/

namespace A052258.P16071118299339639374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052258.P16071118299339639374

/-! ## A052258.P11048892809922306460

`A052180(eq[13, A076368(n+1)])`
-/

namespace A052258.P11048892809922306460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052258.P11048892809922306460

/-! ## A052258.P9629224474167190225

`A052180(A000720(A031930(n+1)))`
-/

namespace A052258.P9629224474167190225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A000720 (A031930 (n + 1)).toNat).toNat

end

end A052258.P9629224474167190225

/-! ## A052258.P1766452949721166023

`A052180(∑{d}[A031930(n+1), A066328(#)])`
-/

namespace A052258.P1766452949721166023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d).toNat

end

end A052258.P1766452949721166023

/-! ## A052258.P17947539646519892689

`p?[A052180(n+2)*A282845(A028334(n+2))]`
-/

namespace A052258.P17947539646519892689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (n + 2) * A282845 (A028334 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052258.P17947539646519892689

/-!
# A052259: Last filtering prime (A052180) of primes p such that next prime is p+14.

The programs for A052259, there is no canonical definition to state claims against.
-/

/-! ## A052259.P12458848124451920310

`A052180(A320705(n+1))`
-/

namespace A052259.P12458848124451920310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A320705 (n + 1)).toNat

end

end A052259.P12458848124451920310

/-! ## A052259.P3998495138347005346

`A052180(A000720(A031932(n+1)))`
-/

namespace A052259.P3998495138347005346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A000720 (A031932 (n + 1)).toNat).toNat

end

end A052259.P3998495138347005346

/-! ## A052259.P11382349348176163771

`A052180(∑{p}[A031932(n+1), A065770(#)])`
-/

namespace A052259.P11382349348176163771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A065770 p).toNat

end

end A052259.P11382349348176163771

/-! ## A052259.P1934950455650762662

`A052180(∑{p}[A031932(n+1), A055396(#)])`
-/

namespace A052259.P1934950455650762662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A055396 p).toNat

end

end A052259.P1934950455650762662

/-! ## A052259.P17523508684107277334

`A052180(∑{p}[A031932(n+1), A056239(#)])`
-/

namespace A052259.P17523508684107277334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 p).toNat

end

end A052259.P17523508684107277334

/-!
# A052260: Last filtering prime (A052180) of primes p such that next prime is p+16 (A031934).

The programs for A052260, there is no canonical definition to state claims against.
-/

/-! ## A052260.P6243029456931126986

`A052180(A320706(n+1))`
-/

namespace A052260.P6243029456931126986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A320706 (n + 1)).toNat

end

end A052260.P6243029456931126986

/-! ## A052260.P5303463734180923407

`A052180(A000720(A031934(n+1)))`
-/

namespace A052260.P5303463734180923407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (A000720 (A031934 (n + 1)).toNat).toNat

end

end A052260.P5303463734180923407

/-! ## A052260.P12610283725134919545

`A052180(∏{d}[A031934(n+1), A058933(#)])`
-/

namespace A052260.P12610283725134919545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∏ d ∈ Nat.divisors (f1 n).natAbs, A058933 d).toNat

end

end A052260.P12610283725134919545

/-! ## A052260.P14165670279735004823

`A052180(∑{p}[A031934(n+1), A058933(#)])`
-/

namespace A052260.P14165670279735004823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A058933 p).toNat

end

end A052260.P14165670279735004823

/-! ## A052260.P9635753719438502991

`A052180(∑{p}[A031934(n+1), A056239(#)])`
-/

namespace A052260.P9635753719438502991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 p).toNat

end

end A052260.P9635753719438502991

/-!
# A052261: Smallest integer that can be expressed as the sum of n squares of positive integers in exactly n distinct ways, or 0 if no such number exists.

The programs for A052261, there is no canonical definition to state claims against.
-/

/-! ## A052261.P1124641889975016570

`A215908(n+1)+A067168(A067176(n))`
-/

namespace A052261.P1124641889975016570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215908 (n + 1) + A067168 ((A067176 n).toNat + 10)

end

end A052261.P1124641889975016570

/-! ## A052261.P8439773518786000157

`A342376(A342342(n))+A215908(n+1)`
-/

namespace A052261.P8439773518786000157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A342342 n).toNat + A215908 (n + 1)

end

end A052261.P8439773518786000157

/-! ## A052261.P7337962790788833126

`or(A025436(A176088(n)), A215908(n+1))`
-/

namespace A052261.P7337962790788833126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025436 (A176088 n).toNat) (A215908 (n + 1))

end

end A052261.P7337962790788833126

/-! ## A052261.P2731899094695891176

`or(A215908(n+1), A326292(A193958(n)))`
-/

namespace A052261.P2731899094695891176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215908 (n + 1)) (A326292 (A193958 n).toNat)

end

end A052261.P2731899094695891176

/-! ## A052261.P12731355529665715941

`A325194(A215937(n+1))+A215908(n+1)`
-/

namespace A052261.P12731355529665715941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325194 (A215937 (n + 1)).toNat + A215908 (n + 1)

end

end A052261.P12731355529665715941

/-!
# A052262: Partial sums of A014824.

The programs for A052262, the canonical program `A052262.P9360774606797613932` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052262 has offset 0).

The definition of A052262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052262.P9360774606797613932

`∑[∑[floor(10^n/9)]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052262

/-- `∑[∑[floor(10^n/9)]]` -/
def P9360774606797613932.Spec : Prop :=
  ∀ n, P9360774606797613932.a n = A052262 n

theorem P9360774606797613932.correct : P9360774606797613932.Spec := by
  intro n
  simp only [A052262]

end A052262

/-! ## A052262.P17231848387701199648

`∑[n]+10*a(n-1)` with `a(0)=0`
-/

namespace A052262.P17231848387701199648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A052262.P17231848387701199648

namespace A052262

/-- `∑[n]+10*a(n-1)` -/
def P17231848387701199648.Spec : Prop :=
  ∀ n, (P17231848387701199648.a n : ℤ) = A052262 n

end A052262

/-! ## A052262.P1538895225803524666

`abs(∑[-∑[10*a(n-1)-1]])` with `a(0)=0`
-/

namespace A052262.P1538895225803524666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  10 * f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A052262.P1538895225803524666

namespace A052262

/-- `abs(∑[-∑[10*a(n-1)-1]])` -/
def P1538895225803524666.Spec : Prop :=
  ∀ n, P1538895225803524666.a n = A052262 n

end A052262

/-! ## A052262.P3005124120506278710

`floor(∑[-∑[10*a(n-1)-1]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A052262.P3005124120506278710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  10 * f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052262.P3005124120506278710

namespace A052262

/-- `floor(∑[-∑[10*a(n-1)-1]])` -/
def P3005124120506278710.Spec : Prop :=
  ∀ n, P3005124120506278710.a n = A052262 n

end A052262

/-! ## A052262.P5517217745020132458

`10*a(n-1)-∑[n-2*n]` with `a(0)=0`
-/

namespace A052262.P5517217745020132458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052262.P5517217745020132458

namespace A052262

/-- `10*a(n-1)-∑[n-2*n]` -/
def P5517217745020132458.Spec : Prop :=
  ∀ n, P5517217745020132458.a n = A052262 n

end A052262

/-! ## A052262.P1501567877782414505

`ceil(∑[∑[((dr(9^n)+1)^n-1)/9]])`
-/

namespace A052262.P1501567877782414505
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digitalRoot (9 ^ n : ℤ) + 1) ^ n : ℤ) - 1 : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A052262.P1501567877782414505

namespace A052262

/-- `ceil(∑[∑[((dr(9^n)+1)^n-1)/9]])` -/
def P1501567877782414505.Spec : Prop :=
  ∀ n, P1501567877782414505.a n = A052262 n

end A052262

/-! ## A052262.P4977847787061299056

`round(∑[∑[((dr(9^n)+1)^n-1)/9]])`
-/

namespace A052262.P4977847787061299056
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digitalRoot (9 ^ n : ℤ) + 1) ^ n : ℤ) - 1 : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052262.P4977847787061299056

namespace A052262

/-- `round(∑[∑[((dr(9^n)+1)^n-1)/9]])` -/
def P4977847787061299056.Spec : Prop :=
  ∀ n, P4977847787061299056.a n = A052262 n

end A052262

/-! ## A052262.P10138053072618539392

`-∑[∑[-((dr(9^n)+1)^n-1)/9]]`
-/

namespace A052262.P10138053072618539392
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((((SequenceMachineLib.digitalRoot (9 ^ n : ℤ) + 1) ^ n : ℤ) - 1 : ℚ) / 9)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052262.P10138053072618539392

namespace A052262

/-- `-∑[∑[-((dr(9^n)+1)^n-1)/9]]` -/
def P10138053072618539392.Spec : Prop :=
  ∀ n, P10138053072618539392.a n = (A052262 n : ℚ)

end A052262

/-! ## A052262.P3353368067638764933

`∑[∑[A002276(n)]]/2`
-/

namespace A052262.P3353368067638764933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A052262.P3353368067638764933

namespace A052262

/-- `∑[∑[A002276(n)]]/2` -/
def P3353368067638764933.Spec : Prop :=
  ∀ n, P3353368067638764933.a n = (A052262 n : ℚ)

end A052262

/-! ## A052262.P17009483781528111264

`∑[∑[A002277(n)]]/3`
-/

namespace A052262.P17009483781528111264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A052262.P17009483781528111264

namespace A052262

/-- `∑[∑[A002277(n)]]/3` -/
def P17009483781528111264.Spec : Prop :=
  ∀ n, P17009483781528111264.a n = (A052262 n : ℚ)

end A052262

/-! ## A052262.P17462422368301465500

`∑[∑[A002279(n)]]/5`
-/

namespace A052262.P17462422368301465500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A052262.P17462422368301465500

namespace A052262

/-- `∑[∑[A002279(n)]]/5` -/
def P17462422368301465500.Spec : Prop :=
  ∀ n, P17462422368301465500.a n = (A052262 n : ℚ)

end A052262

/-! ## A052262.P7903111429844727289

`floor(∑[∑[A002283(n)/9]])`
-/

namespace A052262.P7903111429844727289
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002283 n : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A052262.P7903111429844727289

namespace A052262

/-- `floor(∑[∑[A002283(n)/9]])` -/
def P7903111429844727289.Spec : Prop :=
  ∀ n, P7903111429844727289.a n = A052262 n

end A052262

/-! ## A052262.P16086841498631333120

`A014824(n)+a(n-1)` with `a(0)=0`
-/

namespace A052262.P16086841498631333120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014824 n + a (n - 1)

end

end A052262.P16086841498631333120

namespace A052262

/-- `A014824(n)+a(n-1)` -/
def P16086841498631333120.Spec : Prop :=
  ∀ n, P16086841498631333120.a n = A052262 n

end A052262

/-! ## A052262.P14345250626311108209

`A032343(n)-a(n-1)` with `a(0)=0`
-/

namespace A052262.P14345250626311108209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A032343 n - a (n - 1)

end

end A052262.P14345250626311108209

namespace A052262

/-- `A032343(n)-a(n-1)` -/
def P14345250626311108209.Spec : Prop :=
  ∀ n, P14345250626311108209.a n = A052262 n

end A052262

/-! ## A052262.P10137188911751424355

`∑[A014824(n)]%A011557(n)`
-/

namespace A052262.P10137188911751424355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A011557 n)

end

end A052262.P10137188911751424355

namespace A052262

/-- `∑[A014824(n)]%A011557(n)` -/
def P10137188911751424355.Spec : Prop :=
  ∀ n, P10137188911751424355.a n = A052262 n

end A052262

/-! ## A052262.P7587846616699216385

`∑[∑[A002282(n)]]/8`
-/

namespace A052262.P7587846616699216385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 8

end

end A052262.P7587846616699216385

namespace A052262

/-- `∑[∑[A002282(n)]]/8` -/
def P7587846616699216385.Spec : Prop :=
  ∀ n, P7587846616699216385.a n = (A052262 n : ℚ)

end A052262

/-! ## A052262.P9996723709373707998

`floor(∑[∑[A105279(n)/10]])`
-/

namespace A052262.P9996723709373707998
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105279 n : ℚ) / 10

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A052262.P9996723709373707998

namespace A052262

/-- `floor(∑[∑[A105279(n)/10]])` -/
def P9996723709373707998.Spec : Prop :=
  ∀ n, P9996723709373707998.a n = A052262 n

end A052262

/-! ## A052262.P15085119641829978071

`∑[∑[A002275(n)]]%A000042(n+1)`
-/

namespace A052262.P15085119641829978071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000042 (n + 1))

end

end A052262.P15085119641829978071

namespace A052262

/-- `∑[∑[A002275(n)]]%A000042(n+1)` -/
def P15085119641829978071.Spec : Prop :=
  ∀ n, P15085119641829978071.a n = A052262 n

end A052262

/-! ## A052262.P4764215823453421208

`∑[A014824(n+1)]-A014824(n+1)`
-/

namespace A052262.P4764215823453421208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014824 (n + 1)

end

end A052262.P4764215823453421208

namespace A052262

/-- `∑[A014824(n+1)]-A014824(n+1)` -/
def P4764215823453421208.Spec : Prop :=
  ∀ n, P4764215823453421208.a n = A052262 n

end A052262

/-! ## A052262.P4835153297533615871

`A262183(n+1)-(A262183(n)+A014824(n+1))`
-/

namespace A052262.P4835153297533615871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262183 (n + 1) - (A262183 n + A014824 (n + 1))

end

end A052262.P4835153297533615871

namespace A052262

/-- `A262183(n+1)-(A262183(n)+A014824(n+1))` -/
def P4835153297533615871.Spec : Prop :=
  ∀ n, P4835153297533615871.a n = A052262 n

end A052262

/-!
# A052263: Number of 5-colored labeled graphs on n nodes (divided by 1024).

The programs for A052263, there is no canonical definition to state claims against.
-/

/-! ## A052263.P12822575551392161865

`∑{d}[A126147(A167934(n)), #]`
-/

namespace A052263.P12822575551392161865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126147 (A167934 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A052263.P12822575551392161865

/-! ## A052263.P8746361918161278679

`∑{e}[(n+1)^C(n, 4), #!]`
-/

namespace A052263.P8746361918161278679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.choose n 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)

end

end A052263.P8746361918161278679

/-!
# A052264: Number of 5 X n binary matrices up to row and column permutations.

The programs for A052264, there is no canonical definition to state claims against.
-/

/-! ## A052264.P4658992302913383241

`∑[A005785(n)]`
-/

namespace A052264.P4658992302913383241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052264.P4658992302913383241

/-! ## A052264.P1834444359557322074

`A005771(n+1)+A006148(n+1)-A005785(n+1)`
-/

namespace A052264.P1834444359557322074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005771 (n + 1) + (A006148 (n + 1) - A005785 (n + 1))

end

end A052264.P1834444359557322074

/-! ## A052264.P15823429525563698589

`A028657(A056115(n)+20)`
-/

namespace A052264.P15823429525563698589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A056115 n + 20).toNat

end

end A052264.P15823429525563698589

/-! ## A052264.P9824232135101535265

`A028657(A000096(n+4)+6)`
-/

namespace A052264.P9824232135101535265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A000096 (n + 4) + 6).toNat

end

end A052264.P9824232135101535265

/-! ## A052264.P18446731618656722443

`A028657(A000217(n+5)+5)`
-/

namespace A052264.P18446731618656722443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A000217 (n + 5) + 5).toNat

end

end A052264.P18446731618656722443

/-!
# A052266: Number of 3 X n matrices over GF(3) under row and column permutations.

The programs for A052266, there is no canonical definition to state claims against.
-/

/-! ## A052266.P654560194599090786

`A353501(A353503(n+1))+∑{digits}[n, #!*C(10, #)]`
-/

namespace A052266.P654560194599090786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353501 (A353503 (n + 1)).toNat + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x * Nat.choose 10 x).sum : ℕ) : ℤ)

end

end A052266.P654560194599090786

/-!
# A052267: Number of 2 X n matrices over GF(3) under row and column permutations.

The programs for A052267, the canonical program `A052267.P8016469958357764634` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052267 has offset 0).

The definition of A052267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052267.P8016469958357764634

`∑[∑[∑[∑[∑[∑[(n+1)%2*∑[n+1]]]]]]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052267

/-- `∑[∑[∑[∑[∑[∑[(n+1)%2*∑[n+1]]]]]]]` -/
def P8016469958357764634.Spec : Prop :=
  ∀ n, (P8016469958357764634.a n : ℤ) = A052267 n

theorem P8016469958357764634.correct : P8016469958357764634.Spec := by
  intro n
  simp only [A052267]

end A052267

/-! ## A052267.P7975254321893862268

`∑[∑[A018210(n)]]`
-/

namespace A052267.P7975254321893862268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018210 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052267.P7975254321893862268

namespace A052267

/-- `∑[∑[A018210(n)]]` -/
def P7975254321893862268.Spec : Prop :=
  ∀ n, P7975254321893862268.a n = A052267 n

end A052267

/-! ## A052267.P11077807511933101517

`∑[∑[∑[A005995(n)]]]`
-/

namespace A052267.P11077807511933101517
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052267.P11077807511933101517

namespace A052267

/-- `∑[∑[∑[A005995(n)]]]` -/
def P11077807511933101517.Spec : Prop :=
  ∀ n, P11077807511933101517.a n = A052267 n

end A052267

/-! ## A052267.P6135895059880075200

`2*A092091(n)-A177747(n)`
-/

namespace A052267.P6135895059880075200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092091 n - A177747 n

end

end A052267.P6135895059880075200

namespace A052267

/-- `2*A092091(n)-A177747(n)` -/
def P6135895059880075200.Spec : Prop :=
  ∀ n, P6135895059880075200.a n = A052267 n

end A052267

/-! ## A052267.P4986875530872532594

`(A038163(n)+A000581(n+8))/2`
-/

namespace A052267.P4986875530872532594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038163 n + A000581 (n + 8) : ℚ) / 2

end

end A052267.P4986875530872532594

namespace A052267

/-- `(A038163(n)+A000581(n+8))/2` -/
def P4986875530872532594.Spec : Prop :=
  ∀ n, P4986875530872532594.a n = (A052267 n : ℚ)

end A052267

/-! ## A052267.P10829104246770586940

`∑[∑[∑[A248017(A000124(n+4))]]]`
-/

namespace A052267.P10829104246770586940
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248017 (A000124 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052267.P10829104246770586940

namespace A052267

/-- `∑[∑[∑[A248017(A000124(n+4))]]]` -/
def P10829104246770586940.Spec : Prop :=
  ∀ n, P10829104246770586940.a n = A052267 n

end A052267

/-! ## A052267.P7824930501936417808

`∑[∑[A034851(A055998(n+5)-4)]]`
-/

namespace A052267.P7824930501936417808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A055998 (n + 5) - 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052267.P7824930501936417808

namespace A052267

/-- `∑[∑[A034851(A055998(n+5)-4)]]` -/
def P7824930501936417808.Spec : Prop :=
  ∀ n, P7824930501936417808.a n = A052267 n

end A052267

/-! ## A052267.P17502811284274750538

`∑[∑[A034851(A000217(n+7)-7)]]`
-/

namespace A052267.P17502811284274750538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000217 (n + 7) - 7).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052267.P17502811284274750538

namespace A052267

/-- `∑[∑[A034851(A000217(n+7)-7)]]` -/
def P17502811284274750538.Spec : Prop :=
  ∀ n, P17502811284274750538.a n = A052267 n

end A052267

/-!
# A052268: First differences of 10^n (A011557).

The programs for A052268, the canonical program `A052268.P1431609730251872514` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052268 has offset 1).

The definition of A052268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052268.P1431609730251872514

`9*10^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052268

/-- `9*10^n` -/
def P1431609730251872514.Spec : Prop :=
  ∀ n, (P1431609730251872514.a n : ℤ) = A052268 (n + 1)

theorem P1431609730251872514.correct : P1431609730251872514.Spec := by
  intro n
  simp only [A052268, Nat.add_sub_cancel]

end A052268

/-!
# A052269: Number of n X n matrices over GF(3) up to row and column permutations.

The programs for A052269, there is no canonical definition to state claims against.
-/

/-! ## A052269.P9345333009671053792

`A246106(∑[n+3]+n+3)`
-/

namespace A052269.P9345333009671053792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A052269.P9345333009671053792

/-! ## A052269.P11806790224471663327

`record[A246106(abs(A046691(n)))]`
-/

namespace A052269.P11806790224471663327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052269.P11806790224471663327

/-! ## A052269.P15681590320453710028

`record[A246106(gcd(n, A242095(n+3)))]`
-/

namespace A052269.P15681590320453710028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (Int.gcd (n : ℤ) (A242095 (n + 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052269.P15681590320453710028

/-! ## A052269.P6633637127401496383

`record[gcd(A002262(n+4), A246106(n))]`
-/

namespace A052269.P6633637127401496383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 4)) (A246106 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052269.P6633637127401496383

/-! ## A052269.P12415462679456712708

`record[A246106(eq[1, A343097(n+2)])]`
-/

namespace A052269.P12415462679456712708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052269.P12415462679456712708

/-!
# A052271: Number of n X n matrices over GF(4) under row and column permutations.

The programs for A052271, there is no canonical definition to state claims against.
-/

/-! ## A052271.P4479370896143944774

`record[A246106(A052905(n))]`
-/

namespace A052271.P4479370896143944774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052271.P4479370896143944774

/-! ## A052271.P11281008521939502738

`A246106(A052905(n+2))`
-/

namespace A052271.P11281008521939502738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A052905 (n + 2)).toNat

end

end A052271.P11281008521939502738

/-! ## A052271.P123034567543196964

`A246106(eq[4, A025581(n)])`
-/

namespace A052271.P123034567543196964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052271.P123034567543196964

/-! ## A052271.P15838990472450596178

`record[A246106(A141214(n)-2)]`
-/

namespace A052271.P15838990472450596178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A141214 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052271.P15838990472450596178

/-! ## A052271.P8118628642491461143

`A246106(A000217(n+5)-5)`
-/

namespace A052271.P8118628642491461143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A000217 (n + 5) - 5).toNat

end

end A052271.P8118628642491461143

/-!
# A052272: Number of n X n matrices over GF(5) under row and column permutations.

The programs for A052272, there is no canonical definition to state claims against.
-/

/-! ## A052272.P1292671507442481044

`record[A246106(A055999(n))]`
-/

namespace A052272.P1292671507442481044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052272.P1292671507442481044

/-! ## A052272.P13272068287190641112

`A246106(eq[5, A025581(n)])`
-/

namespace A052272.P13272068287190641112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052272.P13272068287190641112

/-! ## A052272.P9459128463838864004

`A246106(Δ[A026054(n+3)])`
-/

namespace A052272.P9459128463838864004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (f1 (n + 1) - f1 n).toNat

end

end A052272.P9459128463838864004

/-! ## A052272.P11644831412249065885

`A246106(A000217(n+5)+n)`
-/

namespace A052272.P11644831412249065885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A000217 (n + 5) + (n : ℤ)).toNat

end

end A052272.P11644831412249065885

/-! ## A052272.P17298505077954217603

`record[A246106(∑[A246094(n+4)])]`
-/

namespace A052272.P17298505077954217603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246094 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052272.P17298505077954217603

/-!
# A052273: Number of distinct 4th powers mod n.

The programs for A052273, there is no canonical definition to state claims against.
-/

/-! ## A052273.P17389508682991713233

`1-A257302(n+1)+n`
-/

namespace A052273.P17389508682991713233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A257302 (n + 1) + (n : ℤ)

end

end A052273.P17389508682991713233

/-! ## A052273.P16785185899781259342

`n-A023443(A257302(n+1))`
-/

namespace A052273.P16785185899781259342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A257302 (n + 1)).toNat

end

end A052273.P16785185899781259342

/-! ## A052273.P4789206791688177340

`A020710(n)%(A257302(n+1)+4)`
-/

namespace A052273.P4789206791688177340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020710 n) (A257302 (n + 1) + 4)

end

end A052273.P4789206791688177340

/-! ## A052273.P6170975850735012642

`A080079(A257302(n+1)+A080079(n+1))`
-/

namespace A052273.P6170975850735012642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A257302 (n + 1) + A080079 (n + 1)).toNat

end

end A052273.P6170975850735012642

/-! ## A052273.P13253238313656939425

`A008619(2*n)-A257302(A008619(2*n))`
-/

namespace A052273.P13253238313656939425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A257302 (A008619 (2 * n)).toNat

end

end A052273.P13253238313656939425

/-! ## A052273.P9640935622883043592

`A008620(3*n)-A257302(A008620(3*n))`
-/

namespace A052273.P9640935622883043592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) - A257302 (A008620 (3 * n)).toNat

end

end A052273.P9640935622883043592

/-! ## A052273.P6955585250771733090

`A122918(3*n)-A257302(A122918(3*n))`
-/

namespace A052273.P6955585250771733090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 (3 * n) - A257302 (A122918 (3 * n)).toNat

end

end A052273.P6955585250771733090

/-! ## A052273.P8566500113738771929

`A004736(A257302(n+1)+A167614(n+1))`
-/

namespace A052273.P8566500113738771929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A257302 (n + 1) + A167614 (n + 1)).toNat

end

end A052273.P8566500113738771929

/-!
# A052274: Number of distinct 5th powers mod n.

The programs for A052274, there is no canonical definition to state claims against.
-/

/-! ## A052274.P9694624238857877177

`1-A257303(n+1)+n`
-/

namespace A052274.P9694624238857877177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A257303 (n + 1) + (n : ℤ)

end

end A052274.P9694624238857877177

/-! ## A052274.P13179831830694883484

`Δ[n²]-n-A257303(Δ[n²]-n)`
-/

namespace A052274.P13179831830694883484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A257303 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A052274.P13179831830694883484

/-! ## A052274.P8904035753906593995

`A024000(A257303(n+1))+n`
-/

namespace A052274.P8904035753906593995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A257303 (n + 1)).toNat + (n : ℤ)

end

end A052274.P8904035753906593995

/-! ## A052274.P1174533315252642065

`-(A257303(n+1)+A001478(n+1))`
-/

namespace A052274.P1174533315252642065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A257303 (n + 1) + A001478 (n + 1))

end

end A052274.P1174533315252642065

/-! ## A052274.P15272047616036931147

`A028310(n+1)+A001489(A257303(n+1))`
-/

namespace A052274.P15272047616036931147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) + A001489 (A257303 (n + 1)).toNat

end

end A052274.P15272047616036931147

/-! ## A052274.P14761778418859923157

`A004736(A257303(n+1)+A000124(n))`
-/

namespace A052274.P14761778418859923157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A257303 (n + 1) + A000124 n).toNat

end

end A052274.P14761778418859923157

/-! ## A052274.P2454399226953970537

`A004736(A257303(n+1)+A167499(n)+n)`
-/

namespace A052274.P2454399226953970537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A257303 (n + 1) + (A167499 n + (n : ℤ))).toNat

end

end A052274.P2454399226953970537

/-! ## A052274.P2200891757636888167

`A096582(A257303(n+1)+A096582(n+1))`
-/

namespace A052274.P2200891757636888167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096582 (A257303 (n + 1) + A096582 (n + 1)).toNat

end

end A052274.P2200891757636888167

/-!
# A052275: Number of distinct 6th powers mod n.

The programs for A052275, there is no canonical definition to state claims against.
-/

/-! ## A052275.P10747646326594545070

`∏{p}[A187829(n+1), A037179(#)]`
-/

namespace A052275.P10747646326594545070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A037179 p

end

end A052275.P10747646326594545070

/-! ## A052275.P10950917912443603977

`∏{p}[A187829(n+1), A116505(#)]`
-/

namespace A052275.P10950917912443603977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A116505 p

end

end A052275.P10950917912443603977

/-! ## A052275.P1123413080642352839

`∏{p}[A059479(n+1)², A037179(#)]`
-/

namespace A052275.P1123413080642352839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059479 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A037179 p

end

end A052275.P1123413080642352839

/-! ## A052275.P3384313862356856093

`∏{p}[A187829(n+1), A081844(#-1)]`
-/

namespace A052275.P3384313862356856093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A081844 (p - 1)

end

end A052275.P3384313862356856093

/-!
# A052276: Nonnegative numbers of the form n^3 (+/ -) 3, n >= 0.

The programs for A052276, the canonical program `A052276.P3443784864028581129` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052276 has offset 1).

The definition of A052276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052276.P3443784864028581129

`record[A213389(n)-a(n-1)]` with `a(0)=3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052276

/-- `record[A213389(n)-a(n-1)]` -/
def P3443784864028581129.Spec : Prop :=
  ∀ n, P3443784864028581129.a n = A052276 (n + 1)

theorem P3443784864028581129.correct : P3443784864028581129.Spec := by
  intro n
  simp only [A052276, Nat.add_sub_cancel]

end A052276

/-! ## A052276.P11191074659829582021

`A213389(n+1)-a(n-1)` with `a(0)=3, a(1)=4`
-/

namespace A052276.P11191074659829582021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A213389 (n + 1) - a (n - 1)

end

end A052276.P11191074659829582021

namespace A052276

/-- `A213389(n+1)-a(n-1)` -/
def P11191074659829582021.Spec : Prop :=
  ∀ n, P11191074659829582021.a n = A052276 (n + 1)

end A052276

/-! ## A052276.P6428937700773507370

`eq[A074989(n), A156752(n)]`
-/

namespace A052276.P6428937700773507370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052276.P6428937700773507370

namespace A052276

/-- `eq[A074989(n), A156752(n)]` -/
def P6428937700773507370.Spec : Prop :=
  ∀ n, (P6428937700773507370.a n : ℤ) = A052276 (n + 1)

end A052276

/-! ## A052276.P9371733426751307202

`eq[3, A329678(n)+A074989(n)]`
-/

namespace A052276.P9371733426751307202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 n + A074989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052276.P9371733426751307202

namespace A052276

/-- `eq[3, A329678(n)+A074989(n)]` -/
def P9371733426751307202.Spec : Prop :=
  ∀ n, (P9371733426751307202.a n : ℤ) = A052276 (n + 1)

end A052276

/-! ## A052276.P17280157485670319369

`eq[A074989(n), A158478(A251104(n+1))]`
-/

namespace A052276.P17280157485670319369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A251104 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052276.P17280157485670319369

namespace A052276

/-- `eq[A074989(n), A158478(A251104(n+1))]` -/
def P17280157485670319369.Spec : Prop :=
  ∀ n, (P17280157485670319369.a n : ℤ) = A052276 (n + 1)

end A052276

/-!
# A052277: a(n) = (4n+2)!/2^(2n+1).

The programs for A052277, the canonical program `A052277.P6721079341731240263` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052277 has offset 0).

The definition of A052277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052277.P6721079341731240263

`(4*n+2)!/2^(2*n+1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052277

/-- `(4*n+2)!/2^(2*n+1)` -/
def P6721079341731240263.Spec : Prop :=
  ∀ n, P6721079341731240263.a n = (A052277 n : ℚ)

end A052277

/-! ## A052277.P15255916453952356498

`record[a(n-2)*∑[-(n+1)]]` with `a(0)=1, a(1)=0`
-/

namespace A052277.P15255916453952356498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052277.P15255916453952356498

namespace A052277

/-- `record[a(n-2)*∑[-(n+1)]]` -/
def P15255916453952356498.Spec : Prop :=
  ∀ n, P15255916453952356498.a n = A052277 n

end A052277

/-! ## A052277.P9230855351493264378

`record[-∏[-(2*n+1)*(n+1)]]`
-/

namespace A052277.P9230855351493264378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n + 1) * (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052277.P9230855351493264378

namespace A052277

/-- `record[-∏[-(2*n+1)*(n+1)]]` -/
def P9230855351493264378.Spec : Prop :=
  ∀ n, P9230855351493264378.a n = A052277 n

end A052277

/-! ## A052277.P14014892351754813302

`A000680(Δ[n²])`
-/

namespace A052277.P14014892351754813302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052277.P14014892351754813302

namespace A052277

/-- `A000680(Δ[n²])` -/
def P14014892351754813302.Spec : Prop :=
  ∀ n, P14014892351754813302.a n = A052277 n

end A052277

/-! ## A052277.P4268580200850188111

`A046979(4*n+2)`
-/

namespace A052277.P4268580200850188111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046979 (4 * n + 2)

end

end A052277.P4268580200850188111

namespace A052277

/-- `A046979(4*n+2)` -/
def P4268580200850188111.Spec : Prop :=
  ∀ n, P4268580200850188111.a n = A052277 n

end A052277

/-!
# A052278: a(n) = (4n+3)!/4^n.

The programs for A052278, there is no canonical definition to state claims against.
-/

/-! ## A052278.P7059435147597161755

`6*A327411(2*n)`
-/

namespace A052278.P7059435147597161755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A327411 (2 * n)

end

end A052278.P7059435147597161755

/-! ## A052278.P3770144061677213281

`2*A046981(record[xor(3, n)])`
-/

namespace A052278.P3770144061677213281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046981 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A052278.P3770144061677213281

/-! ## A052278.P8175237009672461424

`2*A090932(record[xor(3, n)])`
-/

namespace A052278.P8175237009672461424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090932 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A052278.P8175237009672461424

/-! ## A052278.P11786984156034843231

`n!*A060706(n+1)`
-/

namespace A052278.P11786984156034843231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A060706 (n + 1)

end

end A052278.P11786984156034843231

/-! ## A052278.P6888884932173313056

`2*A007019(2*n+1)`
-/

namespace A052278.P6888884932173313056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007019 (2 * n + 1)

end

end A052278.P6888884932173313056

/-!
# A052279: Primes such that the sum of the factorials of the digits is a perfect square.

The programs for A052279, there is no canonical definition to state claims against.
-/

/-! ## A052279.P16655438413434105411

`p?[A173687(n+1)]`
-/

namespace A052279.P16655438413434105411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052279.P16655438413434105411

/-! ## A052279.P9396714850168774476

`p?[record[A173687(A331303(n))]]`
-/

namespace A052279.P9396714850168774476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A331303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052279.P9396714850168774476

/-! ## A052279.P18270521117772682411

`p?[record[A173687(A133310(n))]]`
-/

namespace A052279.P18270521117772682411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052279.P18270521117772682411

/-! ## A052279.P9982190019072010296

`p?[record[A173687(A328577(n))]]`
-/

namespace A052279.P9982190019072010296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A328577 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052279.P9982190019072010296

/-! ## A052279.P3378016512532359439

`p?[record[A173687(A052938(n))]]`
-/

namespace A052279.P3378016512532359439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052279.P3378016512532359439

/-! ## A052279.P7962786797537260488

`p?[record[A173687(A117910(n))]]`
-/

namespace A052279.P7962786797537260488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052279.P7962786797537260488

/-! ## A052279.P17183734802818691056

`∩[A000040(n+1), A173687(n+1)]`
-/

namespace A052279.P17183734802818691056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052279.P17183734802818691056

/-! ## A052279.P12968423082128987631

`∩[A004139(n+1), A173687(n+1)]`
-/

namespace A052279.P12968423082128987631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052279.P12968423082128987631

/-! ## A052279.P9084375113999842389

`∩[A045319(n+1), A173687(n+1)]`
-/

namespace A052279.P9084375113999842389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052279.P9084375113999842389

/-! ## A052279.P2783705074517651136

`∩[A045344(n+1), A173687(n+1)]`
-/

namespace A052279.P2783705074517651136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052279.P2783705074517651136

/-!
# A052280: Number of 4 X 4 stochastic matrices under row and column permutations.

The programs for A052280, there is no canonical definition to state claims against.
-/

/-! ## A052280.P10013064628591642853

`A333733(A155212(n)+12)`
-/

namespace A052280.P10013064628591642853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A155212 n + 12).toNat

end

end A052280.P10013064628591642853

/-! ## A052280.P8129674466112100737

`A333733(A056000(n)+14)`
-/

namespace A052280.P8129674466112100737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A056000 n + 14).toNat

end

end A052280.P8129674466112100737

/-! ## A052280.P3415860045857902417

`A333733(eq[3, A141169(n)])`
-/

namespace A052280.P3415860045857902417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052280.P3415860045857902417

/-! ## A052280.P16549240975948362644

`A333733(eq[4, A002262(n)])`
-/

namespace A052280.P16549240975948362644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052280.P16549240975948362644

/-!
# A052281: Number of 4 X 4 symmetric stochastic matrices under row and column permutations.

The programs for A052281, there is no canonical definition to state claims against.
-/

/-! ## A052281.P5351512998172516903

`A006381(n)-A023416(A000142(n))`
-/

namespace A052281.P5351512998172516903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006381 n - A023416 (A000142 n).toNat

end

end A052281.P5351512998172516903

/-! ## A052281.P10394450890380144595

`A085089(A007841(n))+A004125(n+1)`
-/

namespace A052281.P10394450890380144595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A007841 n).toNat + A004125 (n + 1)

end

end A052281.P10394450890380144595

/-! ## A052281.P16542938300485869807

`A343377(A139054(n+1))+A027423(n)`
-/

namespace A052281.P16542938300485869807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 (A139054 (n + 1)).toNat + A027423 n

end

end A052281.P16542938300485869807

/-!
# A052282: Number of 3 X 3 stochastic matrices under row and column permutations.

The programs for A052282, the canonical program `A052282.P8537123680179149703` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052282 has offset 0).

The definition of A052282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052282.P7135879657197971432

`A090491(n)-∑[A026810(n)]`
-/

namespace A052282.P7135879657197971432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090491 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052282.P7135879657197971432

namespace A052282

/-- `A090491(n)-∑[A026810(n)]` -/
def P7135879657197971432.Spec : Prop :=
  ∀ n, P7135879657197971432.a n = A052282 n

end A052282

/-! ## A052282.P8537123680179149703

`∑[A008627(n)-A058212(A052938(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052282

/-- `∑[A008627(n)-A058212(A052938(n))]` -/
def P8537123680179149703.Spec : Prop :=
  ∀ n, P8537123680179149703.a n = A052282 n

theorem P8537123680179149703.correct : P8537123680179149703.Spec := by
  intro n
  simp only [A052282]

end A052282

/-! ## A052282.P7115201634941538571

`A090491(n)+∑[A024000(A026810(n)+1)]`
-/

namespace A052282.P7115201634941538571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A026810 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090491 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052282.P7115201634941538571

namespace A052282

/-- `A090491(n)+∑[A024000(A026810(n)+1)]` -/
def P7115201634941538571.Spec : Prop :=
  ∀ n, P7115201634941538571.a n = A052282 n

end A052282

/-! ## A052282.P15606917480369155811

`A333733(A167614(n+2))`
-/

namespace A052282.P15606917480369155811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A167614 (n + 2)).toNat

end

end A052282.P15606917480369155811

namespace A052282

/-- `A333733(A167614(n+2))` -/
def P15606917480369155811.Spec : Prop :=
  ∀ n, P15606917480369155811.a n = A052282 n

end A052282

/-! ## A052282.P16542096231707179402

`A333733(eq[2, A141169(n)])`
-/

namespace A052282.P16542096231707179402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052282.P16542096231707179402

namespace A052282

/-- `A333733(eq[2, A141169(n)])` -/
def P16542096231707179402.Spec : Prop :=
  ∀ n, P16542096231707179402.a n = A052282 n

end A052282

/-!
# A052283: Triangle read by rows: T(n,k) is the number of unlabeled directed graphs on n nodes with k arcs, k=0..n*(n-1).

The programs for A052283, there is no canonical definition to state claims against.
-/

/-! ## A052283.P6246995809306273259

`2*A126066(n)-A126067(n)`
-/

namespace A052283.P6246995809306273259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126066 n - A126067 n

end

end A052283.P6246995809306273259

/-! ## A052283.P7932460431514507449

`A004277(A126066(n))-A126067(n)`
-/

namespace A052283.P7932460431514507449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A126066 n).toNat - A126067 n

end

end A052283.P7932460431514507449

/-! ## A052283.P13712342190749163501

`A169581(A126066(n)%A129286(n))`
-/

namespace A052283.P13712342190749163501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169581 (Int.tmod (A126066 n) (A129286 n)).toNat

end

end A052283.P13712342190749163501

/-!
# A052284: Number of compositions of n into nonprime numbers.

The programs for A052284, there is no canonical definition to state claims against.
-/

/-! ## A052284.P1347323338928181822

`A224344(∑[round(n/2)])`
-/

namespace A052284.P1347323338928181822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224344 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052284.P1347323338928181822

/-! ## A052284.P1810788987729807457

`A224344(A182531(n+1))%A042612(n)`
-/

namespace A052284.P1810788987729807457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224344 (A182531 (n + 1)).toNat) (A042612 n)

end

end A052284.P1810788987729807457

/-! ## A052284.P8381992352485233377

`ceil(1/A007318(n))*A224344(A076921(n+1))`
-/

namespace A052284.P8381992352485233377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A224344 (A076921 (n + 1)).toNat

end

end A052284.P8381992352485233377

/-! ## A052284.P16992557860725814635

`ceil(1/A007318(n))*A224344(A182531(n+1))`
-/

namespace A052284.P16992557860725814635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A224344 (A182531 (n + 1)).toNat

end

end A052284.P16992557860725814635

/-! ## A052284.P10359223409711378185

`A224344(A182531(n+1))+A069980(gcd(n, n+1))`
-/

namespace A052284.P10359223409711378185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224344 (A182531 (n + 1)).toNat + A069980 (Nat.gcd n (n + 1))

end

end A052284.P10359223409711378185

/-! ## A052284.P3453669979522557437

`A224344(A076921(n+1))%A252882(n+1)`
-/

namespace A052284.P3453669979522557437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224344 (A076921 (n + 1)).toNat) (A252882 (n + 1))

end

end A052284.P3453669979522557437

/-!
# A052287: Start with 3; the general rule is "if x is present then so is x*y for every y <= x".

The programs for A052287, there is no canonical definition to state claims against.
-/

/-! ## A052287.P13162395921903333294

`3*A196149(n+1)`
-/

namespace A052287.P13162395921903333294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A196149 (n + 1)

end

end A052287.P13162395921903333294

/-! ## A052287.P5640837061772468767

`A196149(n+1)+A196149(A000027(n+1))+A196149(n+1)`
-/

namespace A052287.P5640837061772468767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196149 (n + 1) + (A196149 (A000027 (n + 1)).toNat + A196149 (n + 1))

end

end A052287.P5640837061772468767

/-! ## A052287.P6445010832997373085

`A008486(A196149(n+1))`
-/

namespace A052287.P6445010832997373085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A196149 (n + 1)).toNat

end

end A052287.P6445010832997373085

/-! ## A052287.P5457490205153771279

`A008585(A196149(n+1)%A017237(n))`
-/

namespace A052287.P5457490205153771279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A196149 (n + 1)) (A017237 n)).toNat

end

end A052287.P5457490205153771279

/-! ## A052287.P13918227792322239413

`A008585(or(A000007(n), A196149(n+1)))`
-/

namespace A052287.P13918227792322239413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.lor (A000007 n) (A196149 (n + 1))).toNat

end

end A052287.P13918227792322239413

/-!
# A052288: First differences of the average of two consecutive odd primes (A024675).

The programs for A052288, the canonical program `A052288.P13034887197585829558` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052288 has offset 1).

The definition of A052288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162345, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A052288.P12222739291071196403

`A115061(n+3)`
-/

namespace A052288.P12222739291071196403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 3)

end

end A052288.P12222739291071196403

namespace A052288

/-- `A115061(n+3)` -/
def P12222739291071196403.Spec : Prop :=
  ∀ n, P12222739291071196403.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P13034887197585829558

`A162345(n+3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A052288

/-- `A162345(n+3)` -/
def P13034887197585829558.Spec : Prop :=
  ∀ n, P13034887197585829558.a n = A052288 (n + 1)

theorem P13034887197585829558.correct : P13034887197585829558.Spec := by
  intro n
  simp only [A052288, Nat.add_sub_cancel]

end A052288

/-! ## A052288.P6998506303935750305

`A080513(∑[A261470(n+1)])`
-/

namespace A052288.P6998506303935750305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052288.P6998506303935750305

namespace A052288

/-- `A080513(∑[A261470(n+1)])` -/
def P6998506303935750305.Spec : Prop :=
  ∀ n, P6998506303935750305.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P2188445775608691260

`A001223(n+2)-A102552(n+3)`
-/

namespace A052288.P2188445775608691260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) - A102552 (n + 3)

end

end A052288.P2188445775608691260

namespace A052288

/-- `A001223(n+2)-A102552(n+3)` -/
def P2188445775608691260.Spec : Prop :=
  ∀ n, P2188445775608691260.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P3098780806030124932

`(A136612(n+1)+A036263(n+1))/2`
-/

namespace A052288.P3098780806030124932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136612 (n + 1) + A036263 (n + 1) : ℚ) / 2

end

end A052288.P3098780806030124932

namespace A052288

/-- `(A136612(n+1)+A036263(n+1))/2` -/
def P3098780806030124932.Spec : Prop :=
  ∀ n, P3098780806030124932.a n = (A052288 (n + 1) : ℚ)

end A052288

/-! ## A052288.P16584080004520588034

`(A031165(n+1)-A001223(n+1))/2`
-/

namespace A052288.P16584080004520588034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031165 (n + 1) - A001223 (n + 1) : ℚ) / 2

end

end A052288.P16584080004520588034

namespace A052288

/-- `(A031165(n+1)-A001223(n+1))/2` -/
def P16584080004520588034.Spec : Prop :=
  ∀ n, P16584080004520588034.a n = (A052288 (n + 1) : ℚ)

end A052288

/-! ## A052288.P14598046898044027963

`A001223(n+2)+A036263(n+2)/2`
-/

namespace A052288.P14598046898044027963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 2) : ℚ) + (A036263 (n + 2) : ℚ) / 2

end

end A052288.P14598046898044027963

namespace A052288

/-- `A001223(n+2)+A036263(n+2)/2` -/
def P14598046898044027963.Spec : Prop :=
  ∀ n, P14598046898044027963.a n = (A052288 (n + 1) : ℚ)

end A052288

/-! ## A052288.P1965670303551570440

`Δ[A024675(n+1)]`
-/

namespace A052288.P1965670303551570440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052288.P1965670303551570440

namespace A052288

/-- `Δ[A024675(n+1)]` -/
def P1965670303551570440.Spec : Prop :=
  ∀ n, P1965670303551570440.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P4483787992828561134

`A031131(n+2)/2`
-/

namespace A052288.P4483787992828561134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031131 (n + 2) : ℚ) / 2

end

end A052288.P4483787992828561134

namespace A052288

/-- `A031131(n+2)/2` -/
def P4483787992828561134.Spec : Prop :=
  ∀ n, P4483787992828561134.a n = (A052288 (n + 1) : ℚ)

end A052288

/-! ## A052288.P4817484215539603418

`Δ[A024678(n+1)]+1`
-/

namespace A052288.P4817484215539603418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A052288.P4817484215539603418

namespace A052288

/-- `Δ[A024678(n+1)]+1` -/
def P4817484215539603418.Spec : Prop :=
  ∀ n, P4817484215539603418.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P17086408090040783876

`A001281(A031131(n+2))`
-/

namespace A052288.P17086408090040783876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A031131 (n + 2)).toNat

end

end A052288.P17086408090040783876

namespace A052288

/-- `A001281(A031131(n+2))` -/
def P17086408090040783876.Spec : Prop :=
  ∀ n, P17086408090040783876.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P4047298927649021529

`A004526(A031131(n+2)+1)`
-/

namespace A052288.P4047298927649021529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A031131 (n + 2) + 1).toNat

end

end A052288.P4047298927649021529

namespace A052288

/-- `A004526(A031131(n+2)+1)` -/
def P4047298927649021529.Spec : Prop :=
  ∀ n, P4047298927649021529.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P1015639759768943653

`A110654(A031131(n+2)-1)`
-/

namespace A052288.P1015639759768943653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A031131 (n + 2) - 1).toNat

end

end A052288.P1015639759768943653

namespace A052288

/-- `A110654(A031131(n+2)-1)` -/
def P1015639759768943653.Spec : Prop :=
  ∀ n, P1015639759768943653.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P8112798922082161590

`A024675(n+2)-A024675(n+1)`
-/

namespace A052288.P8112798922082161590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2) - A024675 (n + 1)

end

end A052288.P8112798922082161590

namespace A052288

/-- `A024675(n+2)-A024675(n+1)` -/
def P8112798922082161590.Spec : Prop :=
  ∀ n, P8112798922082161590.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P11782188281344399454

`A028334(n+2)+A028334(n+3)`
-/

namespace A052288.P11782188281344399454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) + A028334 (n + 3)

end

end A052288.P11782188281344399454

namespace A052288

/-- `A028334(n+2)+A028334(n+3)` -/
def P11782188281344399454.Spec : Prop :=
  ∀ n, P11782188281344399454.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P12272017903767300500

`Δ[A305748(n+1)+Δ[A007504(n)]]`
-/

namespace A052288.P12272017903767300500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052288.P12272017903767300500

namespace A052288

/-- `Δ[A305748(n+1)+Δ[A007504(n)]]` -/
def P12272017903767300500.Spec : Prop :=
  ∀ n, P12272017903767300500.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P6238344919748922092

`A073273(n+2)+1-A000040(n+2)`
-/

namespace A052288.P6238344919748922092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 2) + (1 - A000040 (n + 2))

end

end A052288.P6238344919748922092

namespace A052288

/-- `A073273(n+2)+1-A000040(n+2)` -/
def P6238344919748922092.Spec : Prop :=
  ∀ n, P6238344919748922092.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P18248091543438308638

`A004139(n+2)-(A073273(n+2)+1)`
-/

namespace A052288.P18248091543438308638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2) - (A073273 (n + 2) + 1)

end

end A052288.P18248091543438308638

namespace A052288

/-- `A004139(n+2)-(A073273(n+2)+1)` -/
def P18248091543438308638.Spec : Prop :=
  ∀ n, P18248091543438308638.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P8873730679624335479

`A073273(n+2)+1-A006005(n+2)`
-/

namespace A052288.P8873730679624335479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 2) + (1 - A006005 (n + 2))

end

end A052288.P8873730679624335479

namespace A052288

/-- `A073273(n+2)+1-A006005(n+2)` -/
def P8873730679624335479.Spec : Prop :=
  ∀ n, P8873730679624335479.a n = A052288 (n + 1)

end A052288

/-! ## A052288.P10095397650138496602

`(A004139(n+2)-A000040(n+2))/2`
-/

namespace A052288.P10095397650138496602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004139 (n + 2) - A000040 (n + 2) : ℚ) / 2

end

end A052288.P10095397650138496602

namespace A052288

/-- `(A004139(n+2)-A000040(n+2))/2` -/
def P10095397650138496602.Spec : Prop :=
  ∀ n, P10095397650138496602.a n = (A052288 (n + 1) : ℚ)

end A052288

/-!
# A052291: Primes p such that 4p^2 + 1 is also prime.

The programs for A052291, there is no canonical definition to state claims against.
-/

/-! ## A052291.P6485526773474230883

`floor(sqrt(A052292(n+1))/2)`
-/

namespace A052291.P6485526773474230883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A052292 (n + 1) : ℝ) / 2⌋

end

end A052291.P6485526773474230883

/-! ## A052291.P2037457921373694857

`p?[A001912(n+1)]`
-/

namespace A052291.P2037457921373694857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052291.P2037457921373694857

/-! ## A052291.P7622607858636679828

`p?[Δ[A140126(n+1)]]`
-/

namespace A052291.P7622607858636679828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140126 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052291.P7622607858636679828

/-! ## A052291.P17939206151651147682

`p?[floor(sqrt(A002496(n+1))/2)]`
-/

namespace A052291.P17939206151651147682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A002496 (n + 1) : ℝ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052291.P17939206151651147682

/-! ## A052291.P1352863314142353609

`record[A006530(A001912(n+2))]`
-/

namespace A052291.P1352863314142353609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001912 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052291.P1352863314142353609

/-! ## A052291.P8506153741200674

`filter[A001912(n+1), A010051(#)]`
-/

namespace A052291.P8506153741200674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A052291.P8506153741200674

/-! ## A052291.P3780367081393041696

`filter[A001912(n+2), A355937(#)]`
-/

namespace A052291.P3780367081393041696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A052291.P3780367081393041696

/-! ## A052291.P2765977453679042032

`∩[A000040(n+1), A001912(n+1)]`
-/

namespace A052291.P2765977453679042032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P2765977453679042032

/-! ## A052291.P5745430110750588353

`∩[A000430(n+1), A001912(n+1)]`
-/

namespace A052291.P5745430110750588353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P5745430110750588353

/-! ## A052291.P11636537946051218776

`∩[A001912(n+1), A009087(n+1)]`
-/

namespace A052291.P11636537946051218776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P11636537946051218776

/-! ## A052291.P6797986472803059390

`∩[A001912(n+1), A040159(n+1)]`
-/

namespace A052291.P6797986472803059390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P6797986472803059390

/-! ## A052291.P9970304111944333093

`∩[A001912(n+1), A040161(n+1)]`
-/

namespace A052291.P9970304111944333093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P9970304111944333093

/-! ## A052291.P3863196158032386384

`∩[A001912(n+1), A040165(n+1)]`
-/

namespace A052291.P3863196158032386384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P3863196158032386384

/-! ## A052291.P12788244474882305647

`∩[A001912(n+1), A040169(n+1)]`
-/

namespace A052291.P12788244474882305647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P12788244474882305647

/-! ## A052291.P15600554505488340654

`∩[A001912(n+1), A040171(n+1)]`
-/

namespace A052291.P15600554505488340654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P15600554505488340654

/-! ## A052291.P10616302044972437086

`∩[A001912(n+1), A040177(n+1)]`
-/

namespace A052291.P10616302044972437086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P10616302044972437086

/-! ## A052291.P14395696807115363115

`∩[A001912(n+1), A040179(n+1)]`
-/

namespace A052291.P14395696807115363115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P14395696807115363115

/-! ## A052291.P13144958929150906258

`∩[A001912(n+1), A040184(n+1)]`
-/

namespace A052291.P13144958929150906258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P13144958929150906258

/-! ## A052291.P3551679068681811267

`∩[A001912(n+1), A040970(n+1)]`
-/

namespace A052291.P3551679068681811267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052291.P3551679068681811267

/-!
# A052292: Primes of form 4*p^2 + 1, p prime.

The programs for A052292, there is no canonical definition to state claims against.
-/

/-! ## A052292.P4531418513365002710

`(2*A052291(n+1))²+1`
-/

namespace A052292.P4531418513365002710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A052291 (n + 1)) ^ 2 + 1

end

end A052292.P4531418513365002710

/-! ## A052292.P10467258754940463224

`(2*A052291(n+1))^2--A162292(n+1)%2`
-/

namespace A052292.P10467258754940463224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A052291 (n + 1)) ^ 2 - Int.tmod (-A162292 (n + 1)) 2

end

end A052292.P10467258754940463224

/-! ## A052292.P11158580563671732

`2*A052291(n+1)*2*A052291(n+1)-(-1)^A075109(n+1)`
-/

namespace A052292.P11158580563671732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A052291 (n + 1) * (2 * A052291 (n + 1)) : ℚ) - (-1 : ℚ) ^ (A075109 (n + 1) : ℤ)

end

end A052292.P11158580563671732

/-! ## A052292.P17475840069229965702

`(2*p?[A001912(n+1)])²+1`
-/

namespace A052292.P17475840069229965702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 2 + 1

end

end A052292.P17475840069229965702

/-! ## A052292.P3128042823775054493

`∩[A002496(n+1), A060429(n+1)]`
-/

namespace A052292.P3128042823775054493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P3128042823775054493

/-! ## A052292.P5904711587379778044

`∩[A054964(n+1), A060429(n+1)]`
-/

namespace A052292.P5904711587379778044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P5904711587379778044

/-! ## A052292.P366689414378492177

`∩[A060429(n+1), A121326(n+1)]`
-/

namespace A052292.P366689414378492177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P366689414378492177

/-! ## A052292.P18137379838170070477

`∩[A060429(n+1), A163588(n+1)]`
-/

namespace A052292.P18137379838170070477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P18137379838170070477

/-! ## A052292.P10589061516718211096

`∩[A060429(n+1), A296422(n+1)]`
-/

namespace A052292.P10589061516718211096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P10589061516718211096

/-! ## A052292.P15971386429926719844

`∩[A054755(n+1), A060429(n+1)]`
-/

namespace A052292.P15971386429926719844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P15971386429926719844

/-! ## A052292.P6519064598498481384

`∩[A054754(n+1), A060429(n+1)]`
-/

namespace A052292.P6519064598498481384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P6519064598498481384

/-! ## A052292.P8194026561537443285

`∩[A060429(n+1), A227829(n+1)]`
-/

namespace A052292.P8194026561537443285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P8194026561537443285

/-! ## A052292.P6222212679395824059

`∩[A060429(n+1), A125557(n+1)]`
-/

namespace A052292.P6222212679395824059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P6222212679395824059

/-! ## A052292.P16664035429939904617

`∩[A060429(n+1), A249410(n+1)]`
-/

namespace A052292.P16664035429939904617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P16664035429939904617

/-! ## A052292.P14192246577563896556

`∩[A060429(n+1), A300164(n+1)]`
-/

namespace A052292.P14192246577563896556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P14192246577563896556

/-! ## A052292.P15940868836737971292

`∩[A060429(n+1), A172979(n+1)]`
-/

namespace A052292.P15940868836737971292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P15940868836737971292

/-! ## A052292.P11421157438490066367

`∩[A060429(n+1), A262587(n+1)]`
-/

namespace A052292.P11421157438490066367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P11421157438490066367

/-! ## A052292.P7473960090679700591

`∩[A060429(n+1), A206864(n+1)]`
-/

namespace A052292.P7473960090679700591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052292.P7473960090679700591

/-! ## A052292.P10483554821360947149

`A074828(A052291(n+1))²+1`
-/

namespace A052292.P10483554821360947149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A052291 (n + 1)).toNat ^ 2 + 1

end

end A052292.P10483554821360947149

/-! ## A052292.P15028474578309703475

`A053755(A052291(n+1))`
-/

namespace A052292.P15028474578309703475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A052291 (n + 1)).toNat

end

end A052292.P15028474578309703475

/-!
# A052293: Numbers of the form 11 + x^2 + x or 11 + 2*x^2.

The programs for A052293, the canonical program `A052293.P3349466566879565360` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052293 has offset 1).

The definition of A052293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052293.P3349466566879565360

`A054794(n+1)+6`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052293

/-- `A054794(n+1)+6` -/
def P3349466566879565360.Spec : Prop :=
  ∀ n, P3349466566879565360.a n = A052293 (n + 1)

theorem P3349466566879565360.correct : P3349466566879565360.Spec := by
  intro n
  simp only [A052293, Nat.add_sub_cancel]

end A052293

/-! ## A052293.P5917171138592061694

`A054796(n+1)-6`
-/

namespace A052293.P5917171138592061694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054796 (n + 1) - 6

end

end A052293.P5917171138592061694

namespace A052293

/-- `A054796(n+1)-6` -/
def P5917171138592061694.Spec : Prop :=
  ∀ n, P5917171138592061694.a n = A052293 (n + 1)

end A052293

/-! ## A052293.P4776608279156925918

`A054795(n+1)-12`
-/

namespace A052293.P4776608279156925918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054795 (n + 1) - 12

end

end A052293.P4776608279156925918

namespace A052293

/-- `A054795(n+1)-12` -/
def P4776608279156925918.Spec : Prop :=
  ∀ n, P4776608279156925918.a n = A052293 (n + 1)

end A052293

/-! ## A052293.P3285131545273764934

`A054056(n+1)-18`
-/

namespace A052293.P3285131545273764934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054056 (n + 1) - 18

end

end A052293.P3285131545273764934

namespace A052293

/-- `A054056(n+1)-18` -/
def P3285131545273764934.Spec : Prop :=
  ∀ n, P3285131545273764934.a n = A052293 (n + 1)

end A052293

/-! ## A052293.P14885031371541951796

`A054057(n+1)-30`
-/

namespace A052293.P14885031371541951796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054057 (n + 1) - 30

end

end A052293.P14885031371541951796

namespace A052293

/-- `A054057(n+1)-30` -/
def P14885031371541951796.Spec : Prop :=
  ∀ n, P14885031371541951796.a n = A052293 (n + 1)

end A052293

/-! ## A052293.P15853250288339546028

`A020715(A054794(n+1))`
-/

namespace A052293.P15853250288339546028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A054794 (n + 1)).toNat

end

end A052293.P15853250288339546028

namespace A052293

/-- `A020715(A054794(n+1))` -/
def P15853250288339546028.Spec : Prop :=
  ∀ n, P15853250288339546028.a n = A052293 (n + 1)

end A052293

/-! ## A052293.P1860394521231774859

`A023460(A054056(n+1))`
-/

namespace A052293.P1860394521231774859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023460 (A054056 (n + 1)).toNat

end

end A052293.P1860394521231774859

namespace A052293

/-- `A023460(A054056(n+1))` -/
def P1860394521231774859.Spec : Prop :=
  ∀ n, P1860394521231774859.a n = A052293 (n + 1)

end A052293

/-! ## A052293.P12446388800311142730

`A023472(A054057(n+1))`
-/

namespace A052293.P12446388800311142730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A054057 (n + 1)).toNat

end

end A052293.P12446388800311142730

namespace A052293

/-- `A023472(A054057(n+1))` -/
def P12446388800311142730.Spec : Prop :=
  ∀ n, P12446388800311142730.a n = A052293 (n + 1)

end A052293

/-! ## A052293.P4114395141094430563

`A023454(A054795(n+1))`
-/

namespace A052293.P4114395141094430563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023454 (A054795 (n + 1)).toNat

end

end A052293.P4114395141094430563

namespace A052293

/-- `A023454(A054795(n+1))` -/
def P4114395141094430563.Spec : Prop :=
  ∀ n, P4114395141094430563.a n = A052293 (n + 1)

end A052293

/-! ## A052293.P3559018925080235290

`A023448(A054796(n+1))`
-/

namespace A052293.P3559018925080235290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A054796 (n + 1)).toNat

end

end A052293.P3559018925080235290

namespace A052293

/-- `A023448(A054796(n+1))` -/
def P3559018925080235290.Spec : Prop :=
  ∀ n, P3559018925080235290.a n = A052293 (n + 1)

end A052293

/-! ## A052293.P18295254945750179526

`A023454(2*A054796(n+1))/2`
-/

namespace A052293.P18295254945750179526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023454 (2 * A054796 (n + 1)).toNat : ℚ) / 2

end

end A052293.P18295254945750179526

namespace A052293

/-- `A023454(2*A054796(n+1))/2` -/
def P18295254945750179526.Spec : Prop :=
  ∀ n, P18295254945750179526.a n = (A052293 (n + 1) : ℚ)

end A052293

/-!
# A052294: Pernicious numbers: numbers with a prime number of 1's in their binary expansion.

The programs for A052294, the canonical program `A052294.P11560629231918074628` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052294 has offset 1).

The definition of A052294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052294.P11560629231918074628

`eq[1, A032741(log2(A001316(n)))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A052294

/-- `eq[1, A032741(log2(A001316(n)))]` -/
def P11560629231918074628.Spec : Prop :=
  ∀ n, (P11560629231918074628.a n : ℤ) = A052294 (n + 1)

theorem P11560629231918074628.correct : P11560629231918074628.Spec := by
  intro n
  simp only [A052294, Nat.add_sub_cancel]

end A052294

/-! ## A052294.P2062661058505338488

`eq[1, A001222(A001222(A001316(n+1)))]+1`
-/

namespace A052294.P2062661058505338488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (A001316 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A052294.P2062661058505338488

namespace A052294

/-- `eq[1, A001222(A001222(A001316(n+1)))]+1` -/
def P2062661058505338488.Spec : Prop :=
  ∀ n, (P2062661058505338488.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P7786183636609811067

`filter[A317294(n+1), A347523(#)]`
-/

namespace A052294.P7786183636609811067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A052294.P7786183636609811067

namespace A052294

/-- `filter[A317294(n+1), A347523(#)]` -/
def P7786183636609811067.Spec : Prop :=
  ∀ n, P7786183636609811067.a n = A052294 (n + 1)

end A052294

/-! ## A052294.P9302192926523428985

`eq[2, A305149(A001316(n))]`
-/

namespace A052294.P9302192926523428985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305149 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P9302192926523428985

namespace A052294

/-- `eq[2, A305149(A001316(n))]` -/
def P9302192926523428985.Spec : Prop :=
  ∀ n, (P9302192926523428985.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P1962297236042350427

`comp[A084345(n+1)]*A329684(2*n+1)`
-/

namespace A052294.P1962297236042350427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A329684 (2 * n + 1)

end

end A052294.P1962297236042350427

namespace A052294

/-- `comp[A084345(n+1)]*A329684(2*n+1)` -/
def P1962297236042350427.Spec : Prop :=
  ∀ n, P1962297236042350427.a n = A052294 (n + 1)

end A052294

/-! ## A052294.P9356477534138498298

`A000035(2*(n+1))+comp[A084345(n+1)]`
-/

namespace A052294.P9356477534138498298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1)) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A052294.P9356477534138498298

namespace A052294

/-- `A000035(2*(n+1))+comp[A084345(n+1)]` -/
def P9356477534138498298.Spec : Prop :=
  ∀ n, P9356477534138498298.a n = A052294 (n + 1)

end A052294

/-! ## A052294.P16913542498854108619

`A000007(2*n+3)+comp[A084345(n+1)]`
-/

namespace A052294.P16913542498854108619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A052294.P16913542498854108619

namespace A052294

/-- `A000007(2*n+3)+comp[A084345(n+1)]` -/
def P16913542498854108619.Spec : Prop :=
  ∀ n, P16913542498854108619.a n = A052294 (n + 1)

end A052294

/-! ## A052294.P11740237702753574204

`∩[A317294(n+1), A057716(n)]`
-/

namespace A052294.P11740237702753574204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052294.P11740237702753574204

namespace A052294

/-- `∩[A317294(n+1), A057716(n)]` -/
def P11740237702753574204.Spec : Prop :=
  ∀ n, (P11740237702753574204.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P3944114200235151482

`eq[2, A355034(n+2)]+2`
-/

namespace A052294.P3944114200235151482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355034 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A052294.P3944114200235151482

namespace A052294

/-- `eq[2, A355034(n+2)]+2` -/
def P3944114200235151482.Spec : Prop :=
  ∀ n, (P3944114200235151482.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P16904767931157902713

`eq[0, A051699(A000120(n))]`
-/

namespace A052294.P16904767931157902713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P16904767931157902713

namespace A052294

/-- `eq[0, A051699(A000120(n))]` -/
def P16904767931157902713.Spec : Prop :=
  ∀ n, (P16904767931157902713.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P4565413233977716074

`lt[0, A105700(A000120(n)²)]`
-/

namespace A052294.P4565413233977716074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052294.P4565413233977716074

namespace A052294

/-- `lt[0, A105700(A000120(n)²)]` -/
def P4565413233977716074.Spec : Prop :=
  ∀ n, (P4565413233977716074.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P11074753016777091090

`eq[2, A000001(A000120(n)²)]`
-/

namespace A052294.P11074753016777091090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P11074753016777091090

namespace A052294

/-- `eq[2, A000001(A000120(n)²)]` -/
def P11074753016777091090.Spec : Prop :=
  ∀ n, (P11074753016777091090.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P14511873519392100281

`eq[2, A032741(A000120(n)²)]`
-/

namespace A052294.P14511873519392100281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P14511873519392100281

namespace A052294

/-- `eq[2, A032741(A000120(n)²)]` -/
def P14511873519392100281.Spec : Prop :=
  ∀ n, (P14511873519392100281.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P12130907890721791294

`eq[2, A074206(A000120(n)²)]`
-/

namespace A052294.P12130907890721791294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P12130907890721791294

namespace A052294

/-- `eq[2, A074206(A000120(n)²)]` -/
def P12130907890721791294.Spec : Prop :=
  ∀ n, (P12130907890721791294.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P8374978254278373934

`eq[2, A078898(A000120(n)²)]`
-/

namespace A052294.P8374978254278373934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P8374978254278373934

namespace A052294

/-- `eq[2, A078898(A000120(n)²)]` -/
def P8374978254278373934.Spec : Prop :=
  ∀ n, (P8374978254278373934.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P2131285521158592308

`eq[2, A104725(A000120(n)²)]`
-/

namespace A052294.P2131285521158592308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P2131285521158592308

namespace A052294

/-- `eq[2, A104725(A000120(n)²)]` -/
def P2131285521158592308.Spec : Prop :=
  ∀ n, (P2131285521158592308.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P2817414069439932845

`eq[2, A166974(A000120(n)²)]`
-/

namespace A052294.P2817414069439932845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P2817414069439932845

namespace A052294

/-- `eq[2, A166974(A000120(n)²)]` -/
def P2817414069439932845.Spec : Prop :=
  ∀ n, (P2817414069439932845.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P6559700123067578171

`eq[2, A211110(A000120(n)²)]`
-/

namespace A052294.P6559700123067578171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P6559700123067578171

namespace A052294

/-- `eq[2, A211110(A000120(n)²)]` -/
def P6559700123067578171.Spec : Prop :=
  ∀ n, (P6559700123067578171.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P512826521859264588

`eq[2, A223135(A000120(n)²)]`
-/

namespace A052294.P512826521859264588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P512826521859264588

namespace A052294

/-- `eq[2, A223135(A000120(n)²)]` -/
def P512826521859264588.Spec : Prop :=
  ∀ n, (P512826521859264588.a n : ℤ) = A052294 (n + 1)

end A052294

/-! ## A052294.P10986053924607918677

`eq[2, A226378(A000120(n)²)]`
-/

namespace A052294.P10986053924607918677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P10986053924607918677

namespace A052294

/-- `eq[2, A226378(A000120(n)²)]` -/
def P10986053924607918677.Spec : Prop :=
  ∀ n, (P10986053924607918677.a n : ℤ) = A052294 (n + 1)

end A052294

/-!
# A052295: a(n) = (n*(n+1)/2)!.

The programs for A052295, the canonical program `A052295.P12699345501404584036` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052295 has offset 0).

The definition of A052295 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*(n+1)/2)!` (program `A052295.P12699345501404584036`, by `A052295.P12699345501404584036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052295.P12699345501404584036

`(n*(n+1)/2)!`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A052295

/-- `(n*(n+1)/2)!` -/
def P12699345501404584036.Spec : Prop :=
  ∀ n, (P12699345501404584036.a n : ℤ) = A052295 n

theorem P12699345501404584036.correct : P12699345501404584036.Spec := by
  intro n
  simp only [A052295]

end A052295

/-! ## A052295.P15540040049831007939

`A000142(A000217(n))`
-/

namespace A052295.P15540040049831007939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A000217 n).toNat

end

end A052295.P15540040049831007939

namespace A052295

/-- `A000142(A000217(n))` -/
def P15540040049831007939.Spec : Prop :=
  ∀ n, P15540040049831007939.a n = A052295 n

end A052295

/-! ## A052295.P5526666377323924410

`and(C(n+1, 2)!, -1)`
-/

namespace A052295.P5526666377323924410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (Nat.choose (n + 1) 2) : ℤ) (-1)

end

end A052295.P5526666377323924410

namespace A052295

/-- `and(C(n+1, 2)!, -1)` -/
def P5526666377323924410.Spec : Prop :=
  ∀ n, P5526666377323924410.a n = A052295 n

end A052295

/-! ## A052295.P1726381693587302152

`lcm(n!, C(n+1, 2)!)`
-/

namespace A052295.P1726381693587302152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (Nat.factorial (Nat.choose (n + 1) 2))

end

end A052295.P1726381693587302152

namespace A052295

/-- `lcm(n!, C(n+1, 2)!)` -/
def P1726381693587302152.Spec : Prop :=
  ∀ n, (P1726381693587302152.a n : ℤ) = A052295 n

end A052295

/-! ## A052295.P590430292481351144

`and((n²-C(n, 2))!, -1)`
-/

namespace A052295.P590430292481351144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)).toNat : ℤ) (-1)

end

end A052295.P590430292481351144

namespace A052295

/-- `and((n²-C(n, 2))!, -1)` -/
def P590430292481351144.Spec : Prop :=
  ∀ n, P590430292481351144.a n = A052295 n

end A052295

/-!
# A052296: Triangle read by rows: T(n,k) = number of labeled digraphs with n nodes and k arcs and without directed paths of length >=2, with 0 <= k <= floor(n^2/4).

The programs for A052296, there is no canonical definition to state claims against.
-/

/-! ## A052296.P664926314854827119

`A054571(xor(A201637(n), A201643(n+1)))`
-/

namespace A052296.P664926314854827119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (Int.xor (A201637 n) (A201643 (n + 1))).toNat

end

end A052296.P664926314854827119

/-! ## A052296.P6116000176538761813

`A202190(A250264(n))`
-/

namespace A052296.P6116000176538761813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202190 (A250264 n).toNat

end

end A052296.P6116000176538761813

/-! ## A052296.P16454472083982168664

`A173881(record[A170972(n)])`
-/

namespace A052296.P16454472083982168664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173881 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052296.P16454472083982168664

/-! ## A052296.P4279591252062185371

`A089231(A323533(n)+n)`
-/

namespace A052296.P4279591252062185371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089231 (A323533 n + (n : ℤ)).toNat

end

end A052296.P4279591252062185371

/-! ## A052296.P11904942543493219556

`A089231(n^A136400(n))`
-/

namespace A052296.P11904942543493219556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089231 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A052296.P11904942543493219556

/-!
# A052297: Number of distinct prime factors of all composite numbers between n-th and (n+1)st primes.

The programs for A052297, there is no canonical definition to state claims against.
-/

/-! ## A052297.P9037264969179688847

`A001222(A076978(n+1)%A022348(n+7))`
-/

namespace A052297.P9037264969179688847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A076978 (n + 1)) (A022348 (n + 7))).toNat

end

end A052297.P9037264969179688847

/-! ## A052297.P11597803029929822145

`∑{e}[A076978(n+1), #]`
-/

namespace A052297.P11597803029929822145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A052297.P11597803029929822145

/-! ## A052297.P9279480803967001122

`∑{e}[∏{p}[A074167(n+1), #], #]`
-/

namespace A052297.P9279480803967001122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074167 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A052297.P9279480803967001122

/-! ## A052297.P7878629424455488197

`A001221(A076978(n+1))`
-/

namespace A052297.P7878629424455488197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A076978 (n + 1)).toNat

end

end A052297.P7878629424455488197

/-! ## A052297.P5477292858948073730

`A261153(A361806(n+1))`
-/

namespace A052297.P5477292858948073730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261153 (A361806 (n + 1)).toNat

end

end A052297.P5477292858948073730

/-!
# A052298: Maximal number of distinct prime factors of any composite number between n-th and (n+1)-st primes.

The programs for A052298, there is no canonical definition to state claims against.
-/

/-! ## A052298.P4571664763470224624

`A094916(A171057(n+1))-floor(acot(n))`
-/

namespace A052298.P4571664763470224624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094916 (A171057 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A052298.P4571664763470224624

/-! ## A052298.P10279503008156986974

`A001221(A325353(n)²*A102363(n))`
-/

namespace A052298.P10279503008156986974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325353 n ^ 2 * A102363 n).toNat

end

end A052298.P10279503008156986974

/-! ## A052298.P2470613530279407064

`A058061(A006093(n+2)^A058061(n+1))`
-/

namespace A052298.P2470613530279407064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) ^ (A058061 (n + 1) : ℤ))).toNat

end

end A052298.P2470613530279407064

/-! ## A052298.P9854584231081461008

`A001221(A102363(n)*A325353(n)*A325353(n))`
-/

namespace A052298.P9854584231081461008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102363 n * A325353 n * A325353 n).toNat

end

end A052298.P9854584231081461008

/-! ## A052298.P11919331704074353712

`A131840(or(n, A085050(n+1)))`
-/

namespace A052298.P11919331704074353712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131840 (Int.lor (n : ℤ) (A085050 (n + 1))).toNat

end

end A052298.P11919331704074353712

/-!
# A052299: Minimal number of distinct prime factors of any composite number between n-th and (n+1)-st primes.

The programs for A052299, there is no canonical definition to state claims against.
-/

/-! ## A052299.P15414260490075330796

`A006530(A000188(record[A210571(n+3)]))`
-/

namespace A052299.P15414260490075330796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210571 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A052299.P15414260490075330796

/-! ## A052299.P12691217101193011853

`A043278(A000041(n+3)*A037027(n))`
-/

namespace A052299.P12691217101193011853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A000041 (n + 3) * A037027 n).toNat

end

end A052299.P12691217101193011853

/-! ## A052299.P10299326951382511019

`A082062(A229966(n+3)-A349799(n+1))`
-/

namespace A052299.P10299326951382511019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082062 (A229966 (n + 3) - A349799 (n + 1)).toNat

end

end A052299.P10299326951382511019

/-! ## A052299.P2311857897989009982

`A373947(A075163(n+1))`
-/

namespace A052299.P2311857897989009982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373947 (A075163 (n + 1)).toNat

end

end A052299.P2311857897989009982

/-! ## A052299.P15419789498593777970

`A373947(A002113(n+2))-∑{d}[n+1, val(#%10+3, 10)]`
-/

namespace A052299.P15419789498593777970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373947 (A002113 (n + 2)).toNat - ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d % 10 + 3) 10 : ℕ) : ℤ)

end

end A052299.P15419789498593777970

