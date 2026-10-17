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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B007.C001
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
import Seq.Opaque.C025

/-!
# A130200: Evil triangular numbers.

The programs for A130200, the canonical program `A130200.P5098395854931110605` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130200 has offset 1).

The definition of A130200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130199, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130200.P5098395854931110605

`A130199(n+1)/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130200

/-- `A130199(n+1)/2` -/
def P5098395854931110605.Spec : Prop :=
  ∀ n, P5098395854931110605.a n = (A130200 (n + 1) : ℚ)

end A130200

/-! ## A130200.P1858332596880440077

`A000217(floor(sqrt(A130199(n+1))))`
-/

namespace A130200.P1858332596880440077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.sqrt (A130199 (n + 1))).toNat

end

end A130200.P1858332596880440077

namespace A130200

/-- `A000217(floor(sqrt(A130199(n+1))))` -/
def P1858332596880440077.Spec : Prop :=
  ∀ n, P1858332596880440077.a n = A130200 (n + 1)

end A130200

/-! ## A130200.P9138660157078795379

`A000217(round(sqrt(A130199(n+1))))`
-/

namespace A130200.P9138660157078795379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (A130199 (n + 1) : ℝ))).toNat

end

end A130200.P9138660157078795379

namespace A130200

/-- `A000217(round(sqrt(A130199(n+1))))` -/
def P9138660157078795379.Spec : Prop :=
  ∀ n, P9138660157078795379.a n = A130200 (n + 1)

end A130200

/-! ## A130200.P5764070907532784289

`A000217(eq[1, A228039(2*n+1)])`
-/

namespace A130200.P5764070907532784289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130200.P5764070907532784289

namespace A130200

/-- `A000217(eq[1, A228039(2*n+1)])` -/
def P5764070907532784289.Spec : Prop :=
  ∀ n, P5764070907532784289.a n = A130200 (n + 1)

end A130200

/-! ## A130200.P3676342890342738751

`A000217(record[n*A228039(2*n+1)])`
-/

namespace A130200.P3676342890342738751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228039 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130200.P3676342890342738751

namespace A130200

/-- `A000217(record[n*A228039(2*n+1)])` -/
def P3676342890342738751.Spec : Prop :=
  ∀ n, P3676342890342738751.a n = A130200 (n + 1)

end A130200

/-! ## A130200.P18342933036394740838

`A161680(ceil(sqrt(A130199(n+1))))`
-/

namespace A130200.P18342933036394740838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ⌈Real.sqrt (A130199 (n + 1) : ℝ)⌉.toNat

end

end A130200.P18342933036394740838

namespace A130200

/-- `A161680(ceil(sqrt(A130199(n+1))))` -/
def P18342933036394740838.Spec : Prop :=
  ∀ n, P18342933036394740838.a n = A130200 (n + 1)

end A130200

/-! ## A130200.P14347801534081965969

`A014682(A130199(n+1))`
-/

namespace A130200.P14347801534081965969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A130199 (n + 1)).toNat

end

end A130200.P14347801534081965969

namespace A130200

/-- `A014682(A130199(n+1))` -/
def P14347801534081965969.Spec : Prop :=
  ∀ n, P14347801534081965969.a n = A130200 (n + 1)

end A130200

/-! ## A130200.P16913378275082841246

`A000217(eq[1, A254651(n²+n)])`
-/

namespace A130200.P16913378275082841246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130200.P16913378275082841246

namespace A130200

/-- `A000217(eq[1, A254651(n²+n)])` -/
def P16913378275082841246.Spec : Prop :=
  ∀ n, P16913378275082841246.a n = A130200 (n + 1)

end A130200

/-! ## A130200.P13480978719102059903

`∩[A001969(n+1), A000217(n)]`
-/

namespace A130200.P13480978719102059903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130200.P13480978719102059903

namespace A130200

/-- `∩[A001969(n+1), A000217(n)]` -/
def P13480978719102059903.Spec : Prop :=
  ∀ n, (P13480978719102059903.a n : ℤ) = A130200 (n + 1)

end A130200

/-! ## A130200.P2403259101767560642

`∩[A001969(n+1), A253145(n)]`
-/

namespace A130200.P2403259101767560642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130200.P2403259101767560642

namespace A130200

/-- `∩[A001969(n+1), A253145(n)]` -/
def P2403259101767560642.Spec : Prop :=
  ∀ n, (P2403259101767560642.a n : ℤ) = A130200 (n + 1)

end A130200

/-! ## A130200.P4788113749629650138

`∩[A125592(n+1), A002378(n)]/2`
-/

namespace A130200.P4788113749629650138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A130200.P4788113749629650138

namespace A130200

/-- `∩[A125592(n+1), A002378(n)]/2` -/
def P4788113749629650138.Spec : Prop :=
  ∀ n, P4788113749629650138.a n = (A130200 (n + 1) : ℚ)

end A130200

/-! ## A130200.P14647038607740932511

`∩[A125592(n+1), A226023(n)]/2`
-/

namespace A130200.P14647038607740932511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A130200.P14647038607740932511

namespace A130200

/-- `∩[A125592(n+1), A226023(n)]/2` -/
def P14647038607740932511.Spec : Prop :=
  ∀ n, P14647038607740932511.a n = (A130200 (n + 1) : ℚ)

end A130200

/-! ## A130200.P18094084463189997345

`∩[A125592(n+1), A349895(n)]/2`
-/

namespace A130200.P18094084463189997345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349895 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A130200.P18094084463189997345

namespace A130200

/-- `∩[A125592(n+1), A349895(n)]/2` -/
def P18094084463189997345.Spec : Prop :=
  ∀ n, P18094084463189997345.a n = (A130200 (n + 1) : ℚ)

end A130200

/-!
# A130201: Odious oblong (promic) numbers.

The programs for A130201, the canonical program `A130201.P3817983863840821354` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130201 has offset 1).

The definition of A130201 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130202, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130201.P3817983863840821354

`2*A130202(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130201

/-- `2*A130202(n+1)` -/
def P3817983863840821354.Spec : Prop :=
  ∀ n, P3817983863840821354.a n = A130201 (n + 1)

theorem P3817983863840821354.correct : P3817983863840821354.Spec := by
  intro n
  simp only [A130201, Nat.add_sub_cancel]

end A130201

/-! ## A130201.P5438775760280023411

`A130202(A000027(n+1))+A130202(n+1)`
-/

namespace A130201.P5438775760280023411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130202 (A000027 (n + 1)).toNat + A130202 (n + 1)

end

end A130201.P5438775760280023411

namespace A130201

/-- `A130202(A000027(n+1))+A130202(n+1)` -/
def P5438775760280023411.Spec : Prop :=
  ∀ n, P5438775760280023411.a n = A130201 (n + 1)

end A130201

/-! ## A130201.P12356996719061172229

`A130202(n+1)+A130202(n+1)%A130202(n+2)`
-/

namespace A130201.P12356996719061172229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130202 (n + 1) + Int.tmod (A130202 (n + 1)) (A130202 (n + 2))

end

end A130201.P12356996719061172229

namespace A130201

/-- `A130202(n+1)+A130202(n+1)%A130202(n+2)` -/
def P12356996719061172229.Spec : Prop :=
  ∀ n, P12356996719061172229.a n = A130201 (n + 1)

end A130201

/-! ## A130201.P2826864498067221132

`A130202(or(n+1, A000035(n+1)))+A130202(n+1)`
-/

namespace A130201.P2826864498067221132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130202 (Int.lor (n + 1 : ℤ) (A000035 (n + 1))).toNat + A130202 (n + 1)

end

end A130201.P2826864498067221132

namespace A130201

/-- `A130202(or(n+1, A000035(n+1)))+A130202(n+1)` -/
def P2826864498067221132.Spec : Prop :=
  ∀ n, P2826864498067221132.a n = A130201 (n + 1)

end A130201

/-! ## A130201.P17509722417437125777

`2*A008795(eq[A228039(n), A276833(n+1)])`
-/

namespace A130201.P17509722417437125777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008795 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130201.P17509722417437125777

namespace A130201

/-- `2*A008795(eq[A228039(n), A276833(n+1)])` -/
def P17509722417437125777.Spec : Prop :=
  ∀ n, P17509722417437125777.a n = A130201 (n + 1)

end A130201

/-! ## A130201.P11905902683772757136

`A130202(n+1)+A130202(n+1)%A002149(n)`
-/

namespace A130201.P11905902683772757136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130202 (n + 1) + Int.tmod (A130202 (n + 1)) (A002149 n)

end

end A130201.P11905902683772757136

namespace A130201

/-- `A130202(n+1)+A130202(n+1)%A002149(n)` -/
def P11905902683772757136.Spec : Prop :=
  ∀ n, P11905902683772757136.a n = A130201 (n + 1)

end A130201

/-! ## A130201.P3740725661725785286

`filter[n²+n, A254379(#)]`
-/

namespace A130201.P3740725661725785286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254379 (f1 j) = 1) n)

end

end A130201.P3740725661725785286

namespace A130201

/-- `filter[n²+n, A254379(#)]` -/
def P3740725661725785286.Spec : Prop :=
  ∀ n, (P3740725661725785286.a n : ℤ) = A130201 (n + 1)

end A130201

/-! ## A130201.P17315805010933704175

`∩[A128309(n+1), A002378(n)]`
-/

namespace A130201.P17315805010933704175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130201.P17315805010933704175

namespace A130201

/-- `∩[A128309(n+1), A002378(n)]` -/
def P17315805010933704175.Spec : Prop :=
  ∀ n, (P17315805010933704175.a n : ℤ) = A130201 (n + 1)

end A130201

/-! ## A130201.P309113303035693688

`∩[A128309(n+1), A226023(n)]`
-/

namespace A130201.P309113303035693688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130201.P309113303035693688

namespace A130201

/-- `∩[A128309(n+1), A226023(n)]` -/
def P309113303035693688.Spec : Prop :=
  ∀ n, (P309113303035693688.a n : ℤ) = A130201 (n + 1)

end A130201

/-! ## A130201.P17643886507463152701

`∩[A128309(n+1), A302488(n)]`
-/

namespace A130201.P17643886507463152701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302488 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130201.P17643886507463152701

namespace A130201

/-- `∩[A128309(n+1), A302488(n)]` -/
def P17643886507463152701.Spec : Prop :=
  ∀ n, (P17643886507463152701.a n : ℤ) = A130201 (n + 1)

end A130201

/-!
# A130202: Odious triangular numbers.

The programs for A130202, the canonical program `A130202.P17992186468874660654` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130202 has offset 1).

The definition of A130202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130202.P2570864322894866601

`A130201(n+1)/2`
-/

namespace A130202.P2570864322894866601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130201 (n + 1) : ℚ) / 2

end

end A130202.P2570864322894866601

namespace A130202

/-- `A130201(n+1)/2` -/
def P2570864322894866601.Spec : Prop :=
  ∀ n, P2570864322894866601.a n = (A130202 (n + 1) : ℚ)

end A130202

/-! ## A130202.P441081496584056986

`A000217(floor(sqrt(A130201(n+1))))`
-/

namespace A130202.P441081496584056986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.sqrt (A130201 (n + 1))).toNat

end

end A130202.P441081496584056986

namespace A130202

/-- `A000217(floor(sqrt(A130201(n+1))))` -/
def P441081496584056986.Spec : Prop :=
  ∀ n, P441081496584056986.a n = A130202 (n + 1)

end A130202

/-! ## A130202.P2683014231385846460

`A000217(round(sqrt(A130201(n+1))))`
-/

namespace A130202.P2683014231385846460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (A130201 (n + 1) : ℝ))).toNat

end

end A130202.P2683014231385846460

namespace A130202

/-- `A000217(round(sqrt(A130201(n+1))))` -/
def P2683014231385846460.Spec : Prop :=
  ∀ n, P2683014231385846460.a n = A130202 (n + 1)

end A130202

/-! ## A130202.P17992186468874660654

`A000217(eq[0, A228039(2*n+1)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130202

/-- `A000217(eq[0, A228039(2*n+1)])` -/
def P17992186468874660654.Spec : Prop :=
  ∀ n, P17992186468874660654.a n = A130202 (n + 1)

theorem P17992186468874660654.correct : P17992186468874660654.Spec := by
  intro n
  simp only [A130202, Nat.add_sub_cancel]

end A130202

/-! ## A130202.P11698693205269985294

`A161680(ceil(sqrt(A130201(n+1))))`
-/

namespace A130202.P11698693205269985294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ⌈Real.sqrt (A130201 (n + 1) : ℝ)⌉.toNat

end

end A130202.P11698693205269985294

namespace A130202

/-- `A161680(ceil(sqrt(A130201(n+1))))` -/
def P11698693205269985294.Spec : Prop :=
  ∀ n, P11698693205269985294.a n = A130202 (n + 1)

end A130202

/-! ## A130202.P11780157644038709035

`A008795(eq[A228039(n), A276833(n+1)])`
-/

namespace A130202.P11780157644038709035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130202.P11780157644038709035

namespace A130202

/-- `A008795(eq[A228039(n), A276833(n+1)])` -/
def P11780157644038709035.Spec : Prop :=
  ∀ n, P11780157644038709035.a n = A130202 (n + 1)

end A130202

/-! ## A130202.P8768882843259474128

`A014682(A130201(n+1))`
-/

namespace A130202.P8768882843259474128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A130201 (n + 1)).toNat

end

end A130202.P8768882843259474128

namespace A130202

/-- `A014682(A130201(n+1))` -/
def P8768882843259474128.Spec : Prop :=
  ∀ n, P8768882843259474128.a n = A130202 (n + 1)

end A130202

/-! ## A130202.P4282861033252319366

`A089389(A130201(n+1)+2)-3`
-/

namespace A130202.P4282861033252319366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (A130201 (n + 1) + 2).toNat - 3

end

end A130202.P4282861033252319366

namespace A130202

/-- `A089389(A130201(n+1)+2)-3` -/
def P4282861033252319366.Spec : Prop :=
  ∀ n, P4282861033252319366.a n = A130202 (n + 1)

end A130202

/-! ## A130202.P15889031106025862299

`∩[A229937(n+1), A000217(n)]`
-/

namespace A130202.P15889031106025862299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130202.P15889031106025862299

namespace A130202

/-- `∩[A229937(n+1), A000217(n)]` -/
def P15889031106025862299.Spec : Prop :=
  ∀ n, (P15889031106025862299.a n : ℤ) = A130202 (n + 1)

end A130202

/-! ## A130202.P1750765202301653921

`∩[A186783(n+1), A229937(n+1)]`
-/

namespace A130202.P1750765202301653921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130202.P1750765202301653921

namespace A130202

/-- `∩[A186783(n+1), A229937(n+1)]` -/
def P1750765202301653921.Spec : Prop :=
  ∀ n, (P1750765202301653921.a n : ℤ) = A130202 (n + 1)

end A130202

/-!
# A130205: a(n) = n^2 - a(n-1) - a(n-2), with a(1) = 1 and a(2) = 2.

The programs for A130205, the canonical program `A130205.P11326579656818892802` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130205 has offset 1).

The definition of A130205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130205.P11326579656818892802

`2*a(n-3)-a(n-6)+6` with `a(0)=1, a(1)=2, a(2)=6, a(3)=8, a(4)=11, a(5)=17`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130205

/-- `2*a(n-3)-a(n-6)+6` -/
def P11326579656818892802.Spec : Prop :=
  ∀ n, P11326579656818892802.a n = A130205 (n + 1)

theorem P11326579656818892802.correct : P11326579656818892802.Spec := by
  intro n
  simp only [A130205, Nat.add_sub_cancel]

end A130205

/-! ## A130205.P2504177398968881486

`∑[a(n-3)+2]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A130205.P2504177398968881486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 2] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130205.P2504177398968881486

namespace A130205

/-- `∑[a(n-3)+2]` -/
def P2504177398968881486.Spec : Prop :=
  ∀ n, (P2504177398968881486.a n : ℤ) = A130205 (n + 1)

end A130205

/-! ## A130205.P10546932077686479923

`Δ[a(n-3)+n²]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A130205.P10546932077686479923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 3) + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A130205.P10546932077686479923

namespace A130205

/-- `Δ[a(n-3)+n²]` -/
def P10546932077686479923.Spec : Prop :=
  ∀ n, P10546932077686479923.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P4866397124974809947

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=-2, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130205.P4866397124974809947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, -2, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130205.P4866397124974809947

namespace A130205

/-- `∑[∑[floor(a(n-3))]]` -/
def P4866397124974809947.Spec : Prop :=
  ∀ n, P4866397124974809947.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P9513842189910638981

`1-∑[a(n-3)-2]` with `a(0)=0, a(1)=-1, a(2)=-4`
-/

namespace A130205.P9513842189910638981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, -4] fun n f1 =>
  f1 (n - 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130205.P9513842189910638981

namespace A130205

/-- `1-∑[a(n-3)-2]` -/
def P9513842189910638981.Spec : Prop :=
  ∀ n, P9513842189910638981.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P8905409705399051393

`2*n+a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A130205.P8905409705399051393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  2 * n + (a (n - 3) + 1)

end

end A130205.P8905409705399051393

namespace A130205

/-- `2*n+a(n-3)+1` -/
def P8905409705399051393.Spec : Prop :=
  ∀ n, (P8905409705399051393.a n : ℤ) = A130205 (n + 1)

end A130205

/-! ## A130205.P6096661005657048829

`(n+1)²-a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A130205.P6096661005657048829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n + 1) ^ 2 : ℤ) - a (n - 1) - a (n - 2)

end

end A130205.P6096661005657048829

namespace A130205

/-- `(n+1)²-a(n-1)-a(n-2)` -/
def P6096661005657048829.Spec : Prop :=
  ∀ n, P6096661005657048829.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P469104858896861445

`A208994(n)+A130481(n)`
-/

namespace A130205.P469104858896861445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n + A130481 n

end

end A130205.P469104858896861445

namespace A130205

/-- `A208994(n)+A130481(n)` -/
def P469104858896861445.Spec : Prop :=
  ∀ n, P469104858896861445.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P2717054599067948017

`A177702(n)+A071408(n+1)`
-/

namespace A130205.P2717054599067948017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 n + A071408 (n + 1)

end

end A130205.P2717054599067948017

namespace A130205

/-- `A177702(n)+A071408(n+1)` -/
def P2717054599067948017.Spec : Prop :=
  ∀ n, P2717054599067948017.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P17978073402727127916

`∑[A272071(n)+1]-A272071(n)`
-/

namespace A130205.P17978073402727127916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272071 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272071 n

end

end A130205.P17978073402727127916

namespace A130205

/-- `∑[A272071(n)+1]-A272071(n)` -/
def P17978073402727127916.Spec : Prop :=
  ∀ n, P17978073402727127916.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P2027644044524823338

`Δ[A061263(n)]+1+n`
-/

namespace A130205.P2027644044524823338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A130205.P2027644044524823338

namespace A130205

/-- `Δ[A061263(n)]+1+n` -/
def P2027644044524823338.Spec : Prop :=
  ∀ n, P2027644044524823338.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P9323796824492512955

`A130823(n+2)+A000212(n+1)`
-/

namespace A130205.P9323796824492512955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 2) + A000212 (n + 1)

end

end A130205.P9323796824492512955

namespace A130205

/-- `A130823(n+2)+A000212(n+1)` -/
def P9323796824492512955.Spec : Prop :=
  ∀ n, P9323796824492512955.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P8186096315560395181

`A032765(n+1)+A100063(n+1)-1`
-/

namespace A130205.P8186096315560395181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (n + 1) + (A100063 (n + 1) - 1)

end

end A130205.P8186096315560395181

namespace A130205

/-- `A032765(n+1)+A100063(n+1)-1` -/
def P8186096315560395181.Spec : Prop :=
  ∀ n, P8186096315560395181.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P6177419577771909765

`A000212(n+1)+A008611(n+1)+A008611(n)`
-/

namespace A130205.P6177419577771909765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1) + (A008611 (n + 1) + A008611 n)

end

end A130205.P6177419577771909765

namespace A130205

/-- `A000212(n+1)+A008611(n+1)+A008611(n)` -/
def P6177419577771909765.Spec : Prop :=
  ∀ n, P6177419577771909765.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P17211040071097314665

`A002264(n+1)+A079978(n+1)+A007980(n)`
-/

namespace A130205.P17211040071097314665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) + (A079978 (n + 1) + A007980 n)

end

end A130205.P17211040071097314665

namespace A130205

/-- `A002264(n+1)+A079978(n+1)+A007980(n)` -/
def P17211040071097314665.Spec : Prop :=
  ∀ n, P17211040071097314665.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P17269628654629699393

`A000212(n+1)+A004773(n+1)-A004396(n)`
-/

namespace A130205.P17269628654629699393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1) + (A004773 (n + 1) - A004396 n)

end

end A130205.P17269628654629699393

namespace A130205

/-- `A000212(n+1)+A004773(n+1)-A004396(n)` -/
def P17269628654629699393.Spec : Prop :=
  ∀ n, P17269628654629699393.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P17840398219670568444

`A002264(n+1)+A032765(n+1)-A002264(n)`
-/

namespace A130205.P17840398219670568444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) + (A032765 (n + 1) - A002264 n)

end

end A130205.P17840398219670568444

namespace A130205

/-- `A002264(n+1)+A032765(n+1)-A002264(n)` -/
def P17840398219670568444.Spec : Prop :=
  ∀ n, P17840398219670568444.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P7916919339772289286

`A000212(n+1)+A032765(n+1)-A032765(n)`
-/

namespace A130205.P7916919339772289286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1) + (A032765 (n + 1) - A032765 n)

end

end A130205.P7916919339772289286

namespace A130205

/-- `A000212(n+1)+A032765(n+1)-A032765(n)` -/
def P7916919339772289286.Spec : Prop :=
  ∀ n, P7916919339772289286.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P6605047673646637922

`A143975(n+1)+A128422(n+2)-A032765(n)`
-/

namespace A130205.P6605047673646637922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143975 (n + 1) + (A128422 (n + 2) - A032765 n)

end

end A130205.P6605047673646637922

namespace A130205

/-- `A143975(n+1)+A128422(n+2)-A032765(n)` -/
def P6605047673646637922.Spec : Prop :=
  ∀ n, P6605047673646637922.a n = A130205 (n + 1)

end A130205

/-! ## A130205.P16447679219951225001

`A143975(n+1)+A007997(n+3)-A007997(n+4)`
-/

namespace A130205.P16447679219951225001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143975 (n + 1) + (A007997 (n + 3) - A007997 (n + 4))

end

end A130205.P16447679219951225001

namespace A130205

/-- `A143975(n+1)+A007997(n+3)-A007997(n+4)` -/
def P16447679219951225001.Spec : Prop :=
  ∀ n, P16447679219951225001.a n = A130205 (n + 1)

end A130205

/-!
# A130206: Primes in lunar arithmetic in base 3 written in base 10.

The programs for A130206, there is no canonical definition to state claims against.
-/

/-! ## A130206.P4435391780667665166

`eq[2, A187141(n+2)]+2`
-/

namespace A130206.P4435391780667665166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187141 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A130206.P4435391780667665166

/-! ## A130206.P12112030637059467701

`eq[2, A187141(A233583(n+1))]`
-/

namespace A130206.P12112030637059467701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187141 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130206.P12112030637059467701

/-! ## A130206.P14634700660758288819

`A068505(A170806(n+1))`
-/

namespace A130206.P14634700660758288819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A170806 (n + 1)).toNat

end

end A130206.P14634700660758288819

/-! ## A130206.P16395637920277111116

`A068505(∩[A171795(n+2), A007089(n)])`
-/

namespace A130206.P16395637920277111116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171795 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A130206.P16395637920277111116

/-! ## A130206.P9802133559693979616

`A068505(∩[A171795(n+1), A277964(n+1)])`
-/

namespace A130206.P9802133559693979616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A130206.P9802133559693979616

/-!
# A130207: Diagonalized matrix of A000010, Euler totient function phi.

The programs for A130207, the canonical program `A130207.P2831721020535577098` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130207 has offset 1).

The definition of A130207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130207.P8658676417424287145

`char[∑[n-1]]*A054522(n+1)`
-/

namespace A130207.P8658676417424287145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054522 (n + 1)

end

end A130207.P8658676417424287145

namespace A130207

/-- `char[∑[n-1]]*A054522(n+1)` -/
def P8658676417424287145.Spec : Prop :=
  ∀ n, P8658676417424287145.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P13205875103010072362

`char[∑[n-1]]*A054526(n+1)`
-/

namespace A130207.P13205875103010072362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054526 (n + 1)

end

end A130207.P13205875103010072362

namespace A130207

/-- `char[∑[n-1]]*A054526(n+1)` -/
def P13205875103010072362.Spec : Prop :=
  ∀ n, P13205875103010072362.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P12524866800988191079

`char[∑[n-1]]*A054533(n+1)`
-/

namespace A130207.P12524866800988191079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054533 (n + 1)

end

end A130207.P12524866800988191079

namespace A130207

/-- `char[∑[n-1]]*A054533(n+1)` -/
def P12524866800988191079.Spec : Prop :=
  ∀ n, P12524866800988191079.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P4128478907713529136

`Δ[A002088(A003056(n))]`
-/

namespace A130207.P4128478907713529136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130207.P4128478907713529136

namespace A130207

/-- `Δ[A002088(A003056(n))]` -/
def P4128478907713529136.Spec : Prop :=
  ∀ n, P4128478907713529136.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P16439544775060756782

`A390279(A127773(n+1))`
-/

namespace A130207.P16439544775060756782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390279 (A127773 (n + 1)).toNat

end

end A130207.P16439544775060756782

namespace A130207

/-- `A390279(A127773(n+1))` -/
def P16439544775060756782.Spec : Prop :=
  ∀ n, P16439544775060756782.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P13017186421680358578

`A023531(n)*A130584(n)`
-/

namespace A130207.P13017186421680358578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A130584 n

end

end A130207.P13017186421680358578

namespace A130207

/-- `A023531(n)*A130584(n)` -/
def P13017186421680358578.Spec : Prop :=
  ∀ n, P13017186421680358578.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P6197736891493510528

`A023531(n)*A130585(n)`
-/

namespace A130207.P6197736891493510528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A130585 n

end

end A130207.P6197736891493510528

namespace A130207

/-- `A023531(n)*A130585(n)` -/
def P6197736891493510528.Spec : Prop :=
  ∀ n, P6197736891493510528.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P10852254555389818387

`A023531(n)*A054532(n+1)`
-/

namespace A130207.P10852254555389818387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A054532 (n + 1)

end

end A130207.P10852254555389818387

namespace A130207

/-- `A023531(n)*A054532(n+1)` -/
def P10852254555389818387.Spec : Prop :=
  ∀ n, P10852254555389818387.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P6425182667758680514

`A023531(n)*A074912(n+1)`
-/

namespace A130207.P6425182667758680514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A074912 (n + 1)

end

end A130207.P6425182667758680514

namespace A130207

/-- `A023531(n)*A074912(n+1)` -/
def P6425182667758680514.Spec : Prop :=
  ∀ n, P6425182667758680514.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P2831721020535577098

`A023531(n)*A078401(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A130207

/-- `A023531(n)*A078401(n+1)` -/
def P2831721020535577098.Spec : Prop :=
  ∀ n, P2831721020535577098.a n = A130207 (n + 1)

theorem P2831721020535577098.correct : P2831721020535577098.Spec := by
  intro n
  simp only [A130207, Nat.add_sub_cancel]

end A130207

/-! ## A130207.P16337003557464423581

`A023531(n)*A095026(n+1)`
-/

namespace A130207.P16337003557464423581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A095026 (n + 1)

end

end A130207.P16337003557464423581

namespace A130207

/-- `A023531(n)*A095026(n+1)` -/
def P16337003557464423581.Spec : Prop :=
  ∀ n, P16337003557464423581.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P5195692618951578852

`A054522(n+1)*A087748(n)`
-/

namespace A130207.P5195692618951578852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A087748 n

end

end A130207.P5195692618951578852

namespace A130207

/-- `A054522(n+1)*A087748(n)` -/
def P5195692618951578852.Spec : Prop :=
  ∀ n, P5195692618951578852.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P13146289182980011921

`A098158(n)*A127471(n+1)`
-/

namespace A130207.P13146289182980011921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A127471 (n + 1)

end

end A130207.P13146289182980011921

namespace A130207

/-- `A098158(n)*A127471(n+1)` -/
def P13146289182980011921.Spec : Prop :=
  ∀ n, P13146289182980011921.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P12807269300192266637

`A098158(n)*A127472(n+1)`
-/

namespace A130207.P12807269300192266637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A127472 (n + 1)

end

end A130207.P12807269300192266637

namespace A130207

/-- `A098158(n)*A127472(n+1)` -/
def P12807269300192266637.Spec : Prop :=
  ∀ n, P12807269300192266637.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P6289637063542768238

`A103633(n)*A127472(n+1)`
-/

namespace A130207.P6289637063542768238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 n * A127472 (n + 1)

end

end A130207.P6289637063542768238

namespace A130207

/-- `A103633(n)*A127472(n+1)` -/
def P6289637063542768238.Spec : Prop :=
  ∀ n, P6289637063542768238.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P2866604928626991310

`A103633(n)*A127477(n+1)`
-/

namespace A130207.P2866604928626991310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 n * A127477 (n + 1)

end

end A130207.P2866604928626991310

namespace A130207

/-- `A103633(n)*A127477(n+1)` -/
def P2866604928626991310.Spec : Prop :=
  ∀ n, P2866604928626991310.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P14711105096954216877

`A107131(n)*A127472(n+1)`
-/

namespace A130207.P14711105096954216877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A127472 (n + 1)

end

end A130207.P14711105096954216877

namespace A130207

/-- `A107131(n)*A127472(n+1)` -/
def P14711105096954216877.Spec : Prop :=
  ∀ n, P14711105096954216877.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P1787098833049839181

`A107131(n)*A127478(n+1)`
-/

namespace A130207.P1787098833049839181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A127478 (n + 1)

end

end A130207.P1787098833049839181

namespace A130207

/-- `A107131(n)*A127478(n+1)` -/
def P1787098833049839181.Spec : Prop :=
  ∀ n, P1787098833049839181.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P3546997343145403530

`A110509(n)*A127477(n+1)`
-/

namespace A130207.P3546997343145403530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 n * A127477 (n + 1)

end

end A130207.P3546997343145403530

namespace A130207

/-- `A110509(n)*A127477(n+1)` -/
def P3546997343145403530.Spec : Prop :=
  ∀ n, P3546997343145403530.a n = A130207 (n + 1)

end A130207

/-! ## A130207.P1874541415524767975

`A110517(n)*A127478(n+1)`
-/

namespace A130207.P1874541415524767975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110517 n * A127478 (n + 1)

end

end A130207.P1874541415524767975

namespace A130207

/-- `A110517(n)*A127478(n+1)` -/
def P1874541415524767975.Spec : Prop :=
  ∀ n, P1874541415524767975.a n = A130207 (n + 1)

end A130207

/-!
# A130208: Diagonalized matrix of A000203, sigma(n).

The programs for A130208, the canonical program `A130208.P15493622475398037908` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130208 has offset 1).

The definition of A130208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130208.P10385422231559263852

`∑{d}[Δ[C(round(sqrt(2*(n+1))), 2)], #]`
-/

namespace A130208.P10385422231559263852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130208.P10385422231559263852

namespace A130208

/-- `∑{d}[Δ[C(round(sqrt(2*(n+1))), 2)], #]` -/
def P10385422231559263852.Spec : Prop :=
  ∀ n, (P10385422231559263852.a n : ℤ) = A130208 (n + 1)

end A130208

/-! ## A130208.P15493622475398037908

`∑{d}[A127648(n), #]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130208

/-- `∑{d}[A127648(n), #]` -/
def P15493622475398037908.Spec : Prop :=
  ∀ n, (P15493622475398037908.a n : ℤ) = A130208 (n + 1)

theorem P15493622475398037908.correct : P15493622475398037908.Spec := by
  intro n
  simp only [A130208, Nat.add_sub_cancel]

end A130208

/-! ## A130208.P14735000108138505157

`∑{d}[Δ[A002260(n+1)]-1, #]`
-/

namespace A130208.P14735000108138505157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130208.P14735000108138505157

namespace A130208

/-- `∑{d}[Δ[A002260(n+1)]-1, #]` -/
def P14735000108138505157.Spec : Prop :=
  ∀ n, (P14735000108138505157.a n : ℤ) = A130208 (n + 1)

end A130208

/-! ## A130208.P13883233268790847440

`char[∑[n-1]]*A221529(n+1)`
-/

namespace A130208.P13883233268790847440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A221529 (n + 1)

end

end A130208.P13883233268790847440

namespace A130208

/-- `char[∑[n-1]]*A221529(n+1)` -/
def P13883233268790847440.Spec : Prop :=
  ∀ n, P13883233268790847440.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P166367849274805021

`Δ[A160664(A003056(n))]`
-/

namespace A130208.P166367849274805021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130208.P166367849274805021

namespace A130208

/-- `Δ[A160664(A003056(n))]` -/
def P166367849274805021.Spec : Prop :=
  ∀ n, P166367849274805021.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P7789329064029416064

`A245092(A127775(n+1))`
-/

namespace A130208.P7789329064029416064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A127775 (n + 1)).toNat

end

end A130208.P7789329064029416064

namespace A130208

/-- `A245092(A127775(n+1))` -/
def P7789329064029416064.Spec : Prop :=
  ∀ n, P7789329064029416064.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P15838978126575584661

`A245092(Δ[A003056(n)²])`
-/

namespace A130208.P15838978126575584661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (f1 (n + 1) - f1 n).toNat

end

end A130208.P15838978126575584661

namespace A130208

/-- `A245092(Δ[A003056(n)²])` -/
def P15838978126575584661.Spec : Prop :=
  ∀ n, P15838978126575584661.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P5301038746171258892

`A023531(n)*A074883(n+1)`
-/

namespace A130208.P5301038746171258892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A074883 (n + 1)

end

end A130208.P5301038746171258892

namespace A130208

/-- `A023531(n)*A074883(n+1)` -/
def P5301038746171258892.Spec : Prop :=
  ∀ n, P5301038746171258892.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P17734712605900060691

`A023531(n)*A127569(n+1)`
-/

namespace A130208.P17734712605900060691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127569 (n + 1)

end

end A130208.P17734712605900060691

namespace A130208

/-- `A023531(n)*A127569(n+1)` -/
def P17734712605900060691.Spec : Prop :=
  ∀ n, P17734712605900060691.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P2272815470710130929

`A023531(n)*A127570(n+1)`
-/

namespace A130208.P2272815470710130929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127570 (n + 1)

end

end A130208.P2272815470710130929

namespace A130208

/-- `A023531(n)*A127570(n+1)` -/
def P2272815470710130929.Spec : Prop :=
  ∀ n, P2272815470710130929.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P13249413766155758512

`A023531(n)*A127571(n+1)`
-/

namespace A130208.P13249413766155758512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127571 (n + 1)

end

end A130208.P13249413766155758512

namespace A130208

/-- `A023531(n)*A127571(n+1)` -/
def P13249413766155758512.Spec : Prop :=
  ∀ n, P13249413766155758512.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P18180643086422203977

`A023531(n)*A127572(n+1)`
-/

namespace A130208.P18180643086422203977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127572 (n + 1)

end

end A130208.P18180643086422203977

namespace A130208

/-- `A023531(n)*A127572(n+1)` -/
def P18180643086422203977.Spec : Prop :=
  ∀ n, P18180643086422203977.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P3749746774071518803

`A023531(n)*A129246(n+1)`
-/

namespace A130208.P3749746774071518803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A129246 (n + 1)

end

end A130208.P3749746774071518803

namespace A130208

/-- `A023531(n)*A129246(n+1)` -/
def P3749746774071518803.Spec : Prop :=
  ∀ n, P3749746774071518803.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P934731606585460546

`A026729(n)*A127569(n+1)`
-/

namespace A130208.P934731606585460546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A127569 (n + 1)

end

end A130208.P934731606585460546

namespace A130208

/-- `A026729(n)*A127569(n+1)` -/
def P934731606585460546.Spec : Prop :=
  ∀ n, P934731606585460546.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P14534419477069734631

`A026729(n)*A127570(n+1)`
-/

namespace A130208.P14534419477069734631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A127570 (n + 1)

end

end A130208.P14534419477069734631

namespace A130208

/-- `A026729(n)*A127570(n+1)` -/
def P14534419477069734631.Spec : Prop :=
  ∀ n, P14534419477069734631.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P4237307815232108860

`A026729(n)*A127571(n+1)`
-/

namespace A130208.P4237307815232108860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A127571 (n + 1)

end

end A130208.P4237307815232108860

namespace A130208

/-- `A026729(n)*A127571(n+1)` -/
def P4237307815232108860.Spec : Prop :=
  ∀ n, P4237307815232108860.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P18133869227805730856

`A026729(n)*A127572(n+1)`
-/

namespace A130208.P18133869227805730856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A127572 (n + 1)

end

end A130208.P18133869227805730856

namespace A130208

/-- `A026729(n)*A127572(n+1)` -/
def P18133869227805730856.Spec : Prop :=
  ∀ n, P18133869227805730856.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P4241795524670194576

`A087748(n)*A127569(n+1)`
-/

namespace A130208.P4241795524670194576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 n * A127569 (n + 1)

end

end A130208.P4241795524670194576

namespace A130208

/-- `A087748(n)*A127569(n+1)` -/
def P4241795524670194576.Spec : Prop :=
  ∀ n, P4241795524670194576.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P10296497354070076610

`A087748(n)*A127570(n+1)`
-/

namespace A130208.P10296497354070076610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 n * A127570 (n + 1)

end

end A130208.P10296497354070076610

namespace A130208

/-- `A087748(n)*A127570(n+1)` -/
def P10296497354070076610.Spec : Prop :=
  ∀ n, P10296497354070076610.a n = A130208 (n + 1)

end A130208

/-! ## A130208.P18191931061666558384

`A087748(n)*A127571(n+1)`
-/

namespace A130208.P18191931061666558384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 n * A127571 (n + 1)

end

end A130208.P18191931061666558384

namespace A130208

/-- `A087748(n)*A127571(n+1)` -/
def P18191931061666558384.Spec : Prop :=
  ∀ n, P18191931061666558384.a n = A130208 (n + 1)

end A130208

/-!
# A130209: Diagonalized matrix of d(n), A000005, number of divisors of n.

The programs for A130209, the canonical program `A130209.P2278813470092535691` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130209 has offset 1).

The definition of A130209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130209.P16769928810237025715

`∑{d}[Δ[C(round(sqrt(2*(n+1))), 2)], ((-1)^#)²]`
-/

namespace A130209.P16769928810237025715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((-1) ^ d) ^ 2

end

end A130209.P16769928810237025715

namespace A130209

/-- `∑{d}[Δ[C(round(sqrt(2*(n+1))), 2)], ((-1)^#)²]` -/
def P16769928810237025715.Spec : Prop :=
  ∀ n, P16769928810237025715.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P12489853536652967294

`A000005(∑[char[∑[n]]])*char[∑[n-1]]`
-/

namespace A130209.P12489853536652967294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f4 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A130209.P12489853536652967294

namespace A130209

/-- `A000005(∑[char[∑[n]]])*char[∑[n-1]]` -/
def P12489853536652967294.Spec : Prop :=
  ∀ n, P12489853536652967294.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P11073429705860304409

`∏{e}[round(sqrt(2*n)), #+1]*A010054(n+1)`
-/

namespace A130209.P11073429705860304409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) * A010054 (n + 1)

end

end A130209.P11073429705860304409

namespace A130209

/-- `∏{e}[round(sqrt(2*n)), #+1]*A010054(n+1)` -/
def P11073429705860304409.Spec : Prop :=
  ∀ n, P11073429705860304409.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P6307605381864763786

`char[∑[n-1]+C(3, n²)]*A216620(n+1)`
-/

namespace A130209.P6307605381864763786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.choose 3 (n ^ 2) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A216620 (n + 1)

end

end A130209.P6307605381864763786

namespace A130209

/-- `char[∑[n-1]+C(3, n²)]*A216620(n+1)` -/
def P6307605381864763786.Spec : Prop :=
  ∀ n, P6307605381864763786.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P10474673041951738447

`char[∑[∑[n]%(n+1)-1]]*A238130(n+1)`
-/

namespace A130209.P10474673041951738447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A238130 (n + 1)

end

end A130209.P10474673041951738447

namespace A130209

/-- `char[∑[∑[n]%(n+1)-1]]*A238130(n+1)` -/
def P10474673041951738447.Spec : Prop :=
  ∀ n, P10474673041951738447.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P8804430976310178150

`C(A000005(1-C(∑[char[∑[n]]], 2)+n), 2^(comp[∑[n]]-n)-(∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n))`
-/

namespace A130209.P8804430976310178150
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

open Classical in
def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f11 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f7 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f10 j) 2 : ℤ)).toNat

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat).toNat (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f6 j : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f13 j ≠ x) n : ℤ) - (n : ℤ)) : ℚ))).toNat

end

end A130209.P8804430976310178150

namespace A130209

/-- `C(A000005(1-C(∑[char[∑[n]]], 2)+n), 2^(comp[∑[n]]-n)-(∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n))` -/
def P8804430976310178150.Spec : Prop :=
  ∀ n, (P8804430976310178150.a n : ℤ) = A130209 (n + 1)

end A130209

/-! ## A130209.P15217437254111310308

`Δ[A006218(A003056(n))]`
-/

namespace A130209.P15217437254111310308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130209.P15217437254111310308

namespace A130209

/-- `Δ[A006218(A003056(n))]` -/
def P15217437254111310308.Spec : Prop :=
  ∀ n, P15217437254111310308.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P1606539077044126574

`Δ[A006218(n-A083920(n))]`
-/

namespace A130209.P1606539077044126574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((n : ℤ) - A083920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130209.P1606539077044126574

namespace A130209

/-- `Δ[A006218(n-A083920(n))]` -/
def P1606539077044126574.Spec : Prop :=
  ∀ n, P1606539077044126574.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P46193186884870712

`Δ[A054519(n-A083920(n))]`
-/

namespace A130209.P46193186884870712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 ((n : ℤ) - A083920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130209.P46193186884870712

namespace A130209

/-- `Δ[A054519(n-A083920(n))]` -/
def P46193186884870712.Spec : Prop :=
  ∀ n, P46193186884870712.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P2278813470092535691

`A023531(n)*A051194(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A130209

/-- `A023531(n)*A051194(n+1)` -/
def P2278813470092535691.Spec : Prop :=
  ∀ n, P2278813470092535691.a n = A130209 (n + 1)

theorem P2278813470092535691.correct : P2278813470092535691.Spec := by
  intro n
  simp only [A130209, Nat.add_sub_cancel]

end A130209

/-! ## A130209.P15912498908752161666

`A023531(n)*A055893(n+1)`
-/

namespace A130209.P15912498908752161666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A055893 (n + 1)

end

end A130209.P15912498908752161666

namespace A130209

/-- `A023531(n)*A055893(n+1)` -/
def P15912498908752161666.Spec : Prop :=
  ∀ n, P15912498908752161666.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P17723852019890876307

`A023531(n)*A076302(n+1)`
-/

namespace A130209.P17723852019890876307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A076302 (n + 1)

end

end A130209.P17723852019890876307

namespace A130209

/-- `A023531(n)*A076302(n+1)` -/
def P17723852019890876307.Spec : Prop :=
  ∀ n, P17723852019890876307.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P14925114030408385684

`A023531(n)*A115723(n+1)`
-/

namespace A130209.P14925114030408385684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A115723 (n + 1)

end

end A130209.P14925114030408385684

namespace A130209

/-- `A023531(n)*A115723(n+1)` -/
def P14925114030408385684.Spec : Prop :=
  ∀ n, P14925114030408385684.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P2944535429414357280

`A023531(n)*A127527(n+1)`
-/

namespace A130209.P2944535429414357280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127527 (n + 1)

end

end A130209.P2944535429414357280

namespace A130209

/-- `A023531(n)*A127527(n+1)` -/
def P2944535429414357280.Spec : Prop :=
  ∀ n, P2944535429414357280.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P6756914121634076596

`A023531(n)*A127528(n+1)`
-/

namespace A130209.P6756914121634076596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127528 (n + 1)

end

end A130209.P6756914121634076596

namespace A130209

/-- `A023531(n)*A127528(n+1)` -/
def P6756914121634076596.Spec : Prop :=
  ∀ n, P6756914121634076596.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P6312604532383296672

`A023531(n)*A130210(n+1)`
-/

namespace A130209.P6312604532383296672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A130210 (n + 1)

end

end A130209.P6312604532383296672

namespace A130209

/-- `A023531(n)*A130210(n+1)` -/
def P6312604532383296672.Spec : Prop :=
  ∀ n, P6312604532383296672.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P2196729060520751778

`A023531(n)*A130277(n+1)`
-/

namespace A130209.P2196729060520751778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A130277 (n + 1)

end

end A130209.P2196729060520751778

namespace A130209

/-- `A023531(n)*A130277(n+1)` -/
def P2196729060520751778.Spec : Prop :=
  ∀ n, P2196729060520751778.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P11834058764396376551

`A026729(n)*A127527(n+1)`
-/

namespace A130209.P11834058764396376551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A127527 (n + 1)

end

end A130209.P11834058764396376551

namespace A130209

/-- `A026729(n)*A127527(n+1)` -/
def P11834058764396376551.Spec : Prop :=
  ∀ n, P11834058764396376551.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P13644190650481503478

`A026729(n)*A127528(n+1)`
-/

namespace A130209.P13644190650481503478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A127528 (n + 1)

end

end A130209.P13644190650481503478

namespace A130209

/-- `A026729(n)*A127528(n+1)` -/
def P13644190650481503478.Spec : Prop :=
  ∀ n, P13644190650481503478.a n = A130209 (n + 1)

end A130209

/-! ## A130209.P14463040132222991866

`A026729(n)*A130210(n+1)`
-/

namespace A130209.P14463040132222991866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A130210 (n + 1)

end

end A130209.P14463040132222991866

namespace A130209

/-- `A026729(n)*A130210(n+1)` -/
def P14463040132222991866.Spec : Prop :=
  ∀ n, P14463040132222991866.a n = A130209 (n + 1)

end A130209

/-!
# A130210: Triangle read by rows: T(n, k) = A000005(k) if k divides n, T(n, k) = 0 otherwise.

The programs for A130210, the canonical program `A130210.P14281367747963938276` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130210 has offset 1).

The definition of A130210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130210.P1194976658510825707

`A183063(A134560(n+1)+1)`
-/

namespace A130210.P1194976658510825707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A134560 (n + 1) + 1).toNat

end

end A130210.P1194976658510825707

namespace A130210

/-- `A183063(A134560(n+1)+1)` -/
def P1194976658510825707.Spec : Prop :=
  ∀ n, P1194976658510825707.a n = A130210 (n + 1)

end A130210

/-! ## A130210.P6921280843241875177

`∑{d}[A127093(n+1), A054977(#)]`
-/

namespace A130210.P6921280843241875177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A130210.P6921280843241875177

namespace A130210

/-- `∑{d}[A127093(n+1), A054977(#)]` -/
def P6921280843241875177.Spec : Prop :=
  ∀ n, P6921280843241875177.a n = A130210 (n + 1)

end A130210

/-! ## A130210.P14281367747963938276

`∑{d}[A127093(n+1), A057427(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130210

/-- `∑{d}[A127093(n+1), A057427(#)]` -/
def P14281367747963938276.Spec : Prop :=
  ∀ n, P14281367747963938276.a n = A130210 (n + 1)

theorem P14281367747963938276.correct : P14281367747963938276.Spec := by
  intro n
  simp only [A130210, Nat.add_sub_cancel]

end A130210

/-! ## A130210.P11594535200530480250

`A051194(n+1)*A051731(n+1)`
-/

namespace A130210.P11594535200530480250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (n + 1) * A051731 (n + 1)

end

end A130210.P11594535200530480250

namespace A130210

/-- `A051194(n+1)*A051731(n+1)` -/
def P11594535200530480250.Spec : Prop :=
  ∀ n, P11594535200530480250.a n = A130210 (n + 1)

end A130210

/-! ## A130210.P13926987438923213965

`A133699(n+1)*A225743(n+1)`
-/

namespace A130210.P13926987438923213965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133699 (n + 1) * A225743 (n + 1)

end

end A130210.P13926987438923213965

namespace A130210

/-- `A133699(n+1)*A225743(n+1)` -/
def P13926987438923213965.Spec : Prop :=
  ∀ n, P13926987438923213965.a n = A130210 (n + 1)

end A130210

/-! ## A130210.P6178256132735642498

`lcm(A051194(n+1), A133699(n+1))`
-/

namespace A130210.P6178256132735642498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051194 (n + 1)) (A133699 (n + 1))

end

end A130210.P6178256132735642498

namespace A130210

/-- `lcm(A051194(n+1), A133699(n+1))` -/
def P6178256132735642498.Spec : Prop :=
  ∀ n, (P6178256132735642498.a n : ℤ) = A130210 (n + 1)

end A130210

/-! ## A130210.P13481303168866377382

`and(A051194(n+1), A130888(n+1))`
-/

namespace A130210.P13481303168866377382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051194 (n + 1)) (A130888 (n + 1))

end

end A130210.P13481303168866377382

namespace A130210

/-- `and(A051194(n+1), A130888(n+1))` -/
def P13481303168866377382.Spec : Prop :=
  ∀ n, P13481303168866377382.a n = A130210 (n + 1)

end A130210

/-! ## A130210.P13285266407579693763

`∑{d}[A127093(n+1), A269301(A127093(#))]`
-/

namespace A130210.P13285266407579693763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A269301 (A127093 d).toNat

end

end A130210.P13285266407579693763

namespace A130210

/-- `∑{d}[A127093(n+1), A269301(A127093(#))]` -/
def P13285266407579693763.Spec : Prop :=
  ∀ n, P13285266407579693763.a n = A130210 (n + 1)

end A130210

/-! ## A130210.P3432886511650758681

`A127170(A120913(n+1))`
-/

namespace A130210.P3432886511650758681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127170 (A120913 (n + 1)).toNat

end

end A130210.P3432886511650758681

namespace A130210

/-- `A127170(A120913(n+1))` -/
def P3432886511650758681.Spec : Prop :=
  ∀ n, P3432886511650758681.a n = A130210 (n + 1)

end A130210

/-!
# A130211: Triangle read by rows: matrix product A054522 * A000012.

The programs for A130211, the canonical program `A130211.P14688960179644469380` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130211 has offset 1).

The definition of A130211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130211.P14688960179644469380

`A004736(∑[A054522(abs(1-n)+1)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A130211

/-- `A004736(∑[A054522(abs(1-n)+1)])` -/
def P14688960179644469380.Spec : Prop :=
  ∀ n, P14688960179644469380.a n = A130211 (n + 1)

theorem P14688960179644469380.correct : P14688960179644469380.Spec := by
  intro n
  simp only [A130211, Nat.add_sub_cancel]

end A130211

/-! ## A130211.P278260537253928494

`A004736(∑[A054522(n+1)]-A054522(n+1)+1)`
-/

namespace A130211.P278260537253928494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j - A054522 (n + 1) + 1).toNat

end

end A130211.P278260537253928494

namespace A130211

/-- `A004736(∑[A054522(n+1)]-A054522(n+1)+1)` -/
def P278260537253928494.Spec : Prop :=
  ∀ n, P278260537253928494.a n = A130211 (n + 1)

end A130211

/-! ## A130211.P5392792156865455702

`A025581(∑[A054522(n+1)]-A054522(n+1))+1`
-/

namespace A130211.P5392792156865455702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ j ∈ Finset.range (n + 1), f1 j - A054522 (n + 1)).toNat + 1

end

end A130211.P5392792156865455702

namespace A130211

/-- `A025581(∑[A054522(n+1)]-A054522(n+1))+1` -/
def P5392792156865455702.Spec : Prop :=
  ∀ n, P5392792156865455702.a n = A130211 (n + 1)

end A130211

/-! ## A130211.P11106579710040522670

`A346018(A057944(n)+A010766(n+1))`
-/

namespace A130211.P11106579710040522670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346018 (A057944 n + A010766 (n + 1)).toNat

end

end A130211.P11106579710040522670

namespace A130211

/-- `A346018(A057944(n)+A010766(n+1))` -/
def P11106579710040522670.Spec : Prop :=
  ∀ n, P11106579710040522670.a n = A130211 (n + 1)

end A130211

/-! ## A130211.P11027465585364106079

`A000120(lcm(A019538(n+1), A130328(n)))`
-/

namespace A130211.P11027465585364106079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A019538 (n + 1)) (A130328 n))

end

end A130211.P11027465585364106079

namespace A130211

/-- `A000120(lcm(A019538(n+1), A130328(n)))` -/
def P11027465585364106079.Spec : Prop :=
  ∀ n, P11027465585364106079.a n = A130211 (n + 1)

end A130211

/-!
# A130212: T(k, n) = sum_(1 <= j <= k) [j | k] j mu(k / j) floor(n / k), triangle read by rows.

The programs for A130212, the canonical program `A130212.P13341498629550544317` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130212 has offset 1).

The definition of A130212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130212.P5919228324468149382

`A003991(A286235(n+1))`
-/

namespace A130212.P5919228324468149382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A286235 (n + 1)).toNat

end

end A130212.P5919228324468149382

namespace A130212

/-- `A003991(A286235(n+1))` -/
def P5919228324468149382.Spec : Prop :=
  ∀ n, P5919228324468149382.a n = A130212 (n + 1)

end A130212

/-! ## A130212.P13341498629550544317

`A010766(n+1)*A054526(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A130212

/-- `A010766(n+1)*A054526(n+1)` -/
def P13341498629550544317.Spec : Prop :=
  ∀ n, P13341498629550544317.a n = A130212 (n + 1)

theorem P13341498629550544317.correct : P13341498629550544317.Spec := by
  intro n
  simp only [A130212, Nat.add_sub_cancel]

end A130212

/-! ## A130212.P11321917455646110357

`abs(A054526(n+1)*A174557(n+1))`
-/

namespace A130212.P11321917455646110357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054526 (n + 1) * A174557 (n + 1)|

end

end A130212.P11321917455646110357

namespace A130212

/-- `abs(A054526(n+1)*A174557(n+1))` -/
def P11321917455646110357.Spec : Prop :=
  ∀ n, P11321917455646110357.a n = A130212 (n + 1)

end A130212

/-! ## A130212.P3671930206572906851

`A000010(1-C(∑[char[∑[n]]], 2)+n)*A010766(n+1)`
-/

namespace A130212.P3671930206572906851
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A010766 (n + 1)

end

end A130212.P3671930206572906851

namespace A130212

/-- `A000010(1-C(∑[char[∑[n]]], 2)+n)*A010766(n+1)` -/
def P3671930206572906851.Spec : Prop :=
  ∀ n, P3671930206572906851.a n = A130212 (n + 1)

end A130212

/-! ## A130212.P1263908939632343486

`A000010(A002260(n+1))*A010766(n+1)`
-/

namespace A130212.P1263908939632343486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A010766 (n + 1)

end

end A130212.P1263908939632343486

namespace A130212

/-- `A000010(A002260(n+1))*A010766(n+1)` -/
def P1263908939632343486.Spec : Prop :=
  ∀ n, P1263908939632343486.a n = A130212 (n + 1)

end A130212

/-! ## A130212.P14183633353661479765

`A000010(A002262(n)+1)*A010766(n+1)`
-/

namespace A130212.P14183633353661479765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002262 n + 1).toNat * A010766 (n + 1)

end

end A130212.P14183633353661479765

namespace A130212

/-- `A000010(A002262(n)+1)*A010766(n+1)` -/
def P14183633353661479765.Spec : Prop :=
  ∀ n, P14183633353661479765.a n = A130212 (n + 1)

end A130212

/-! ## A130212.P6372003116299514751

`A000010(A134868(n+1))*A010766(n+1)`
-/

namespace A130212.P6372003116299514751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134868 (n + 1)).toNat * A010766 (n + 1)

end

end A130212.P6372003116299514751

namespace A130212

/-- `A000010(A134868(n+1))*A010766(n+1)` -/
def P6372003116299514751.Spec : Prop :=
  ∀ n, P6372003116299514751.a n = A130212 (n + 1)

end A130212

/-! ## A130212.P11217671435525813156

`ceil(ratio[A029635(n)])*A054526(n+1)`
-/

namespace A130212.P11217671435525813156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ * A054526 (n + 1)

end

end A130212.P11217671435525813156

namespace A130212

/-- `ceil(ratio[A029635(n)])*A054526(n+1)` -/
def P11217671435525813156.Spec : Prop :=
  ∀ n, P11217671435525813156.a n = A130212 (n + 1)

end A130212

/-! ## A130212.P4385712664490962948

`A000005(A036561(A286235(n+1)-1))`
-/

namespace A130212.P4385712664490962948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036561 (A286235 (n + 1) - 1).toNat).toNat

end

end A130212.P4385712664490962948

namespace A130212

/-- `A000005(A036561(A286235(n+1)-1))` -/
def P4385712664490962948.Spec : Prop :=
  ∀ n, P4385712664490962948.a n = A130212 (n + 1)

end A130212

/-! ## A130212.P1530878982502040591

`A181538(n+1)*A181550(n+1)/A181552(n+1)`
-/

namespace A130212.P1530878982502040591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181538 (n + 1) * A181550 (n + 1) : ℚ) / (A181552 (n + 1) : ℚ)

end

end A130212.P1530878982502040591

namespace A130212

/-- `A181538(n+1)*A181550(n+1)/A181552(n+1)` -/
def P1530878982502040591.Spec : Prop :=
  ∀ n, P1530878982502040591.a n = (A130212 (n + 1) : ℚ)

end A130212

/-!
# A130213: Order of modular group of degree 3^(n-1) + 1.

The programs for A130213, the canonical program `A130213.P14585269337905317780` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130213 has offset 1).

The definition of A130213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130213.P14585269337905317780

`30*a(n-1)-81*a(n-2)` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130213

/-- `30*a(n-1)-81*a(n-2)` -/
def P14585269337905317780.Spec : Prop :=
  ∀ n, P14585269337905317780.a n = A130213 (n + 1)

theorem P14585269337905317780.correct : P14585269337905317780.Spec := by
  intro n
  simp only [A130213, Nat.add_sub_cancel]

end A130213

/-! ## A130213.P10937155350121205465

`3^n*floor(9^n/2)`
-/

namespace A130213.P10937155350121205465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌊(9 ^ n : ℚ) / 2⌋

end

end A130213.P10937155350121205465

namespace A130213

/-- `3^n*floor(9^n/2)` -/
def P10937155350121205465.Spec : Prop :=
  ∀ n, P10937155350121205465.a n = A130213 (n + 1)

end A130213

/-! ## A130213.P8686959758558690715

`lcm(3^n+9^n, 3^n-1)`
-/

namespace A130213.P8686959758558690715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n + 9 ^ n : ℤ) ((3 ^ n : ℤ) - 1)

end

end A130213.P8686959758558690715

namespace A130213

/-- `lcm(3^n+9^n, 3^n-1)` -/
def P8686959758558690715.Spec : Prop :=
  ∀ n, (P8686959758558690715.a n : ℤ) = A130213 (n + 1)

end A130213

/-! ## A130213.P10975194726389787939

`A003462(3*n)-∑[floor(3^(n-1))]`
-/

namespace A130213.P10975194726389787939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (3 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130213.P10975194726389787939

namespace A130213

/-- `A003462(3*n)-∑[floor(3^(n-1))]` -/
def P10975194726389787939.Spec : Prop :=
  ∀ n, P10975194726389787939.a n = A130213 (n + 1)

end A130213

/-! ## A130213.P525991173299484940

`A007051(3*n)-A007051(n)`
-/

namespace A130213.P525991173299484940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (3 * n) - A007051 n

end

end A130213.P525991173299484940

namespace A130213

/-- `A007051(3*n)-A007051(n)` -/
def P525991173299484940.Spec : Prop :=
  ∀ n, P525991173299484940.a n = A130213 (n + 1)

end A130213

/-! ## A130213.P797336223279968714

`A103425(3*n)-A103425(n)`
-/

namespace A130213.P797336223279968714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103425 (3 * n) - A103425 n

end

end A130213.P797336223279968714

namespace A130213

/-- `A103425(3*n)-A103425(n)` -/
def P797336223279968714.Spec : Prop :=
  ∀ n, P797336223279968714.a n = A130213 (n + 1)

end A130213

/-! ## A130213.P6335867235049869504

`A115098(3*n)-A115098(n)`
-/

namespace A130213.P6335867235049869504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (3 * n) - A115098 n

end

end A130213.P6335867235049869504

namespace A130213

/-- `A115098(3*n)-A115098(n)` -/
def P6335867235049869504.Spec : Prop :=
  ∀ n, P6335867235049869504.a n = A130213 (n + 1)

end A130213

/-! ## A130213.P7354294090111923839

`record[A076040(n)*A232801(n+1)]`
-/

namespace A130213.P7354294090111923839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n * A232801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130213.P7354294090111923839

namespace A130213

/-- `record[A076040(n)*A232801(n+1)]` -/
def P7354294090111923839.Spec : Prop :=
  ∀ n, P7354294090111923839.a n = A130213 (n + 1)

end A130213

/-! ## A130213.P5701457146057285878

`A000244(n)*A025551(n)-A025551(n)`
-/

namespace A130213.P5701457146057285878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A025551 n - A025551 n

end

end A130213.P5701457146057285878

namespace A130213

/-- `A000244(n)*A025551(n)-A025551(n)` -/
def P5701457146057285878.Spec : Prop :=
  ∀ n, P5701457146057285878.a n = A130213 (n + 1)

end A130213

/-! ## A130213.P2738872324585219163

`A025551(n)*A034472(n)-A074610(n)`
-/

namespace A130213.P2738872324585219163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025551 n * A034472 n - A074610 n

end

end A130213.P2738872324585219163

namespace A130213

/-- `A025551(n)*A034472(n)-A074610(n)` -/
def P2738872324585219163.Spec : Prop :=
  ∀ n, P2738872324585219163.a n = A130213 (n + 1)

end A130213

/-!
# A130214: Order of modular group of degree 5^(n-1)+1.

The programs for A130214, the canonical program `A130214.P5282552775016481165` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130214 has offset 1).

The definition of A130214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130214.P5282552775016481165

`130*a(n-1)-625*a(n-2)` with `a(0)=0, a(1)=60`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130214

/-- `130*a(n-1)-625*a(n-2)` -/
def P5282552775016481165.Spec : Prop :=
  ∀ n, P5282552775016481165.a n = A130214 (n + 1)

theorem P5282552775016481165.correct : P5282552775016481165.Spec := by
  intro n
  simp only [A130214, Nat.add_sub_cancel]

end A130214

/-! ## A130214.P10117449354471959350

`3*C(5^n+1, 3)`
-/

namespace A130214.P10117449354471959350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (5 ^ n + 1) 3

end

end A130214.P10117449354471959350

namespace A130214

/-- `3*C(5^n+1, 3)` -/
def P10117449354471959350.Spec : Prop :=
  ∀ n, (P10117449354471959350.a n : ℤ) = A130214 (n + 1)

end A130214

/-! ## A130214.P3861778406950034028

`(5^(3*n)-5^n)/2`
-/

namespace A130214.P3861778406950034028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (3 * n) : ℤ) - (5 ^ n : ℤ) : ℚ) / 2

end

end A130214.P3861778406950034028

namespace A130214

/-- `(5^(3*n)-5^n)/2` -/
def P3861778406950034028.Spec : Prop :=
  ∀ n, P3861778406950034028.a n = (A130214 (n + 1) : ℚ)

end A130214

/-! ## A130214.P9768121881493431127

`(A000351(n)+1)*A162729(n)`
-/

namespace A130214.P9768121881493431127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n + 1) * A162729 n

end

end A130214.P9768121881493431127

namespace A130214

/-- `(A000351(n)+1)*A162729(n)` -/
def P9768121881493431127.Spec : Prop :=
  ∀ n, P9768121881493431127.a n = A130214 (n + 1)

end A130214

/-! ## A130214.P2642745961968299488

`A003463(2*n)*A020729(n)`
-/

namespace A130214.P2642745961968299488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (2 * n) * A020729 n

end

end A130214.P2642745961968299488

namespace A130214

/-- `A003463(2*n)*A020729(n)` -/
def P2642745961968299488.Spec : Prop :=
  ∀ n, P2642745961968299488.a n = A130214 (n + 1)

end A130214

/-!
# A130215: Order of modular group of degree 7^(n-1)+1.

The programs for A130215, there is no canonical definition to state claims against.
-/

/-! ## A130215.P1758312732592572235

`3*C(7^n+1, 3)`
-/

namespace A130215.P1758312732592572235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (7 ^ n + 1) 3

end

end A130215.P1758312732592572235

/-! ## A130215.P5689735674151670386

`((7^n)²-1)/2*A000420(n)`
-/

namespace A130215.P5689735674151670386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((7 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 2 * (A000420 n : ℚ)

end

end A130215.P5689735674151670386

/-! ## A130215.P2109692982011494918

`A000420(n)*A120741(2*n)`
-/

namespace A130215.P2109692982011494918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n * A120741 (2 * n)

end

end A130215.P2109692982011494918

/-! ## A130215.P7896945030855095751

`A120741(3*n)-A120741(n)`
-/

namespace A130215.P7896945030855095751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (3 * n) - A120741 n

end

end A130215.P7896945030855095751

/-! ## A130215.P16640687742615914507

`A023000(2*n)/2*A055272(n+1)`
-/

namespace A130215.P16640687742615914507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023000 (2 * n) : ℚ) / 2 * (A055272 (n + 1) : ℚ)

end

end A130215.P16640687742615914507

/-!
# A130216: a(0) = 3; a(n) = a(n-1) + (number of multiples of 3 so far in the sequence).

The programs for A130216, the canonical program `A130216.P10980354585699774776` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130216 has offset 0).

The definition of A130216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130216.P10980354585699774776

`ceil(∑[3*n]/7)+3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130216

/-- `ceil(∑[3*n]/7)+3` -/
def P10980354585699774776.Spec : Prop :=
  ∀ n, P10980354585699774776.a n = A130216 n

theorem P10980354585699774776.correct : P10980354585699774776.Spec := by
  intro n
  simp only [A130216]

end A130216

/-! ## A130216.P14106087447691297102

`ceil(3*(∑[n]/7-cos(3)))`
-/

namespace A130216.P14106087447691297102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7 : ℝ) - Real.cos (3 : ℝ))⌉

end

end A130216.P14106087447691297102

namespace A130216

/-- `ceil(3*(∑[n]/7-cos(3)))` -/
def P14106087447691297102.Spec : Prop :=
  ∀ n, P14106087447691297102.a n = A130216 n

end A130216

/-! ## A130216.P15625432810591407194

`ceil(3*(C(n+1, 2)/7+1))`
-/

namespace A130216.P15625432810591407194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((Nat.choose (n + 1) 2 : ℚ) / 7 + 1)⌉

end

end A130216.P15625432810591407194

namespace A130216

/-- `ceil(3*(C(n+1, 2)/7+1))` -/
def P15625432810591407194.Spec : Prop :=
  ∀ n, P15625432810591407194.a n = A130216 n

end A130216

/-! ## A130216.P7952795112157192660

`round(3*(A000124(n)+7)/7)`
-/

namespace A130216.P7952795112157192660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((A000124 n + 7 : ℚ) / 7))

end

end A130216.P7952795112157192660

namespace A130216

/-- `round(3*(A000124(n)+7)/7)` -/
def P7952795112157192660.Spec : Prop :=
  ∀ n, P7952795112157192660.a n = A130216 n

end A130216

/-! ## A130216.P13934895260102817459

`floor(3*(A000217(n)+9)/7)`
-/

namespace A130216.P13934895260102817459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A000217 n + 9 : ℚ) / 7)⌋

end

end A130216.P13934895260102817459

namespace A130216

/-- `floor(3*(A000217(n)+9)/7)` -/
def P13934895260102817459.Spec : Prop :=
  ∀ n, P13934895260102817459.a n = A130216 n

end A130216

/-! ## A130216.P15148444362887692254

`A110654(A027691(n)-∑[round(8*n/7)])`
-/

namespace A130216.P15148444362887692254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A027691 n - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130216.P15148444362887692254

namespace A130216

/-- `A110654(A027691(n)-∑[round(8*n/7)])` -/
def P15148444362887692254.Spec : Prop :=
  ∀ n, P15148444362887692254.a n = A130216 n

end A130216

/-! ## A130216.P6153726224297436503

`A057357(∑[n]+9)`
-/

namespace A130216.P6153726224297436503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A130216.P6153726224297436503

namespace A130216

/-- `A057357(∑[n]+9)` -/
def P6153726224297436503.Spec : Prop :=
  ∀ n, P6153726224297436503.a n = A130216 n

end A130216

/-! ## A130216.P4280932472301944527

`A057355(A057359(∑[n]+4)+4)`
-/

namespace A130216.P4280932472301944527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A057359 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + 4).toNat

end

end A130216.P4280932472301944527

namespace A130216

/-- `A057355(A057359(∑[n]+4)+4)` -/
def P4280932472301944527.Spec : Prop :=
  ∀ n, P4280932472301944527.a n = A130216 n

end A130216

/-! ## A130216.P15403625806569018966

`A002264(A174738(3*n+4)+11)`
-/

namespace A130216.P15403625806569018966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A174738 (3 * n + 4) + 11).toNat

end

end A130216.P15403625806569018966

namespace A130216

/-- `A002264(A174738(3*n+4)+11)` -/
def P15403625806569018966.Spec : Prop :=
  ∀ n, P15403625806569018966.a n = A130216 n

end A130216

/-!
# A130217: Smallest prime with number of digits equal to n-th Lucas number A000032(n).

The programs for A130217, the canonical program `A130217.P16012042862340202128` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130217 has offset 0).

The definition of A130217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130217.P16012042862340202128

`A003617(A000032(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130217

/-- `A003617(A000032(n))` -/
def P16012042862340202128.Spec : Prop :=
  ∀ n, P16012042862340202128.a n = A130217 n

theorem P16012042862340202128.correct : P16012042862340202128.Spec := by
  intro n
  simp only [A130217]

end A130217

/-!
# A130218: Partial sums of A100119. Sum of first n of the n-th centered n-gonal numbers.

The programs for A130218, the canonical program `A130218.P5859970434850962652` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130218 has offset 1).

The definition of A130218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130218.P5859970434850962652

`∑[n*∑[n]+1]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130218

/-- `∑[n*∑[n]+1]` -/
def P5859970434850962652.Spec : Prop :=
  ∀ n, (P5859970434850962652.a n : ℤ) = A130218 (n + 1)

theorem P5859970434850962652.correct : P5859970434850962652.Spec := by
  intro n
  simp only [A130218, Nat.add_sub_cancel]

end A130218

/-! ## A130218.P4486974398868614804

`abs(∑[xor(n*∑[n], -1)])`
-/

namespace A130218.P4486974398868614804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A130218.P4486974398868614804

namespace A130218

/-- `abs(∑[xor(n*∑[n], -1)])` -/
def P4486974398868614804.Spec : Prop :=
  ∀ n, P4486974398868614804.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P12925672538727084191

`-∑[xor(n*∑[n], -1)]`
-/

namespace A130218.P12925672538727084191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130218.P12925672538727084191

namespace A130218

/-- `-∑[xor(n*∑[n], -1)]` -/
def P12925672538727084191.Spec : Prop :=
  ∀ n, P12925672538727084191.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P10679251546799141237

`∑[∑[n]+1]+C(∑[n], 2)`
-/

namespace A130218.P10679251546799141237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2

end

end A130218.P10679251546799141237

namespace A130218

/-- `∑[∑[n]+1]+C(∑[n], 2)` -/
def P10679251546799141237.Spec : Prop :=
  ∀ n, (P10679251546799141237.a n : ℤ) = A130218 (n + 1)

end A130218

/-! ## A130218.P3729557198909641626

`∑[lcm(n+1, n²)+2]/2`
-/

namespace A130218.P3729557198909641626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ 2) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A130218.P3729557198909641626

namespace A130218

/-- `∑[lcm(n+1, n²)+2]/2` -/
def P3729557198909641626.Spec : Prop :=
  ∀ n, P3729557198909641626.a n = (A130218 (n + 1) : ℚ)

end A130218

/-! ## A130218.P13215160396484124063

`floor(∑[∑[∑[a(n-1)+3]]])` with `a(0)=1, a(1)=0, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A130218.P13215160396484124063
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130218.P13215160396484124063

namespace A130218

/-- `floor(∑[∑[∑[a(n-1)+3]]])` -/
def P13215160396484124063.Spec : Prop :=
  ∀ n, (P13215160396484124063.a n : ℤ) = A130218 (n + 1)

end A130218

/-! ## A130218.P3313639387382155648

`n*C(n+1, 2)+a(n-1)+1` with `a(0)=1`
-/

namespace A130218.P3313639387382155648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Nat.choose (n + 1) 2 + (a (n - 1) + 1)

end

end A130218.P3313639387382155648

namespace A130218

/-- `n*C(n+1, 2)+a(n-1)+1` -/
def P3313639387382155648.Spec : Prop :=
  ∀ n, (P3313639387382155648.a n : ℤ) = A130218 (n + 1)

end A130218

/-! ## A130218.P17488583754425867827

`∑[∑[∑[a(n-1)+3]]]+n+1` with `a(0)=0, a(1)=1`
-/

namespace A130218.P17488583754425867827
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A130218.P17488583754425867827

namespace A130218

/-- `∑[∑[∑[a(n-1)+3]]]+n+1` -/
def P17488583754425867827.Spec : Prop :=
  ∀ n, (P17488583754425867827.a n : ℤ) = A130218 (n + 1)

end A130218

/-! ## A130218.P16435944195405666490

`A001296(n)+1+n`
-/

namespace A130218.P16435944195405666490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n + 1 + (n : ℤ)

end

end A130218.P16435944195405666490

namespace A130218

/-- `A001296(n)+1+n` -/
def P16435944195405666490.Spec : Prop :=
  ∀ n, P16435944195405666490.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P8162877019205911318

`n+1+∑[A002411(n)]`
-/

namespace A130218.P8162877019205911318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130218.P8162877019205911318

namespace A130218

/-- `n+1+∑[A002411(n)]` -/
def P8162877019205911318.Spec : Prop :=
  ∀ n, P8162877019205911318.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P11119820277485081128

`A101338(n)+∑[∑[n²]]`
-/

namespace A130218.P11119820277485081128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130218.P11119820277485081128

namespace A130218

/-- `A101338(n)+∑[∑[n²]]` -/
def P11119820277485081128.Spec : Prop :=
  ∀ n, P11119820277485081128.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P11016100918735593086

`A100119(n)+a(n-1)` with `a(0)=1`
-/

namespace A130218.P11016100918735593086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100119 n + a (n - 1)

end

end A130218.P11016100918735593086

namespace A130218

/-- `A100119(n)+a(n-1)` -/
def P11016100918735593086.Spec : Prop :=
  ∀ n, P11016100918735593086.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P2652647687419039427

`A144335(n+1)+n-∑[n]`
-/

namespace A130218.P2652647687419039427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144335 (n + 1) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A130218.P2652647687419039427

namespace A130218

/-- `A144335(n+1)+n-∑[n]` -/
def P2652647687419039427.Spec : Prop :=
  ∀ n, P2652647687419039427.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P4386002571337834017

`A153978(n+1)/2+n+1`
-/

namespace A130218.P4386002571337834017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153978 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A130218.P4386002571337834017

namespace A130218

/-- `A153978(n+1)/2+n+1` -/
def P4386002571337834017.Spec : Prop :=
  ∀ n, P4386002571337834017.a n = (A130218 (n + 1) : ℚ)

end A130218

/-! ## A130218.P8566303826594640943

`a(n-1)+A064808(n)-n` with `a(0)=1`
-/

namespace A130218.P8566303826594640943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A064808 n - (n : ℤ))

end

end A130218.P8566303826594640943

namespace A130218

/-- `a(n-1)+A064808(n)-n` -/
def P8566303826594640943.Spec : Prop :=
  ∀ n, P8566303826594640943.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P8515240206365250614

`A002817(n)+A000125(n)`
-/

namespace A130218.P8515240206365250614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + A000125 n

end

end A130218.P8515240206365250614

namespace A130218

/-- `A002817(n)+A000125(n)` -/
def P8515240206365250614.Spec : Prop :=
  ∀ n, P8515240206365250614.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P2250621837309024429

`∑[A064808(n)]-A000217(n)`
-/

namespace A130218.P2250621837309024429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 n

end

end A130218.P2250621837309024429

namespace A130218

/-- `∑[A064808(n)]-A000217(n)` -/
def P2250621837309024429.Spec : Prop :=
  ∀ n, P2250621837309024429.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P17338120584231741947

`A002817(n)+A004006(n)+1`
-/

namespace A130218.P17338120584231741947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + (A004006 n + 1)

end

end A130218.P17338120584231741947

namespace A130218

/-- `A002817(n)+A004006(n)+1` -/
def P17338120584231741947.Spec : Prop :=
  ∀ n, P17338120584231741947.a n = A130218 (n + 1)

end A130218

/-! ## A130218.P4027446182924582107

`A116699(n+1)+A006007(n)`
-/

namespace A130218.P4027446182924582107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116699 (n + 1) + A006007 n

end

end A130218.P4027446182924582107

namespace A130218

/-- `A116699(n+1)+A006007(n)` -/
def P4027446182924582107.Spec : Prop :=
  ∀ n, P4027446182924582107.a n = A130218 (n + 1)

end A130218

/-!
# A130219: Number of partitions of 2n-set in which number of blocks of size k is even (or zero) for every k.

The programs for A130219, there is no canonical definition to state claims against.
-/

/-! ## A130219.P7700446210047195154

`A230310(a(n-1))+1` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A130219.P7700446210047195154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A230310 (a (n - 1)).toNat + 1

end

end A130219.P7700446210047195154

/-!
# A130220: Number of partitions of n-set in which number of blocks of size k is odd (or zero) for every k.

The programs for A130220, there is no canonical definition to state claims against.
-/

/-! ## A130220.P2549778371048431627

`A293485((2*n+1)^ceil(n/2)+1)`
-/

namespace A130220.P2549778371048431627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293485 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) + 1)).toNat

end

end A130220.P2549778371048431627

/-! ## A130220.P11026704659083797053

`A194287(19^A052525(n))`
-/

namespace A130220.P11026704659083797053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A052525 n : ℤ))).toNat

end

end A130220.P11026704659083797053

/-! ## A130220.P11109212929626439052

`A053575(or(n, A125696(n)))`
-/

namespace A130220.P11109212929626439052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (Int.lor (n : ℤ) (A125696 n)).toNat

end

end A130220.P11109212929626439052

/-!
# A130221: Number of partitions of n-set in which number of blocks of size 2k is odd (or zero) for every k.

The programs for A130221, there is no canonical definition to state claims against.
-/

/-! ## A130221.P17697123424242165664

`A118759(a(n-1)+1)+(n-1)!` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A130221.P17697123424242165664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A118759 (a (n - 1) + 1).toNat + (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

end

end A130221.P17697123424242165664

/-! ## A130221.P9345238404140834112

`A211964(A199409(n))`
-/

namespace A130221.P9345238404140834112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A199409 n).toNat

end

end A130221.P9345238404140834112

/-! ## A130221.P1491065252054045547

`A211964(A292460(n))`
-/

namespace A130221.P1491065252054045547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A292460 n).toNat

end

end A130221.P1491065252054045547

/-!
# A130222: Number of partitions of 2n-set in which number of blocks of size 2k-1 is even (or zero) for every k.

The programs for A130222, there is no canonical definition to state claims against.
-/

/-! ## A130222.P7176384834271003115

`A358532(A349265(n)-1)`
-/

namespace A130222.P7176384834271003115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358532 (A349265 n - 1).toNat

end

end A130222.P7176384834271003115

/-!
# A130223: Number of partitions of n-set in which number of blocks of size 2k-1 is odd (or zero) for every k.

The programs for A130223, there is no canonical definition to state claims against.
-/

/-! ## A130223.P7065687378649621978

`A087947(A143546(n))`
-/

namespace A130223.P7065687378649621978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087947 (A143546 n).toNat

end

end A130223.P7065687378649621978

/-! ## A130223.P16507864132781779575

`A305829(A186021(n)-n)`
-/

namespace A130223.P16507864132781779575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305829 (A186021 n - (n : ℤ)).toNat

end

end A130223.P16507864132781779575

/-! ## A130223.P7531052663901013559

`A341839(record[A028860(n)]²)`
-/

namespace A130223.P7531052663901013559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341839 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2).toNat

end

end A130223.P7531052663901013559

/-!
# A130224: a(1) = 1; a(n) = a(n-1) + (number of times the digit 1 has appeared in the sequence so far).

The programs for A130224, there is no canonical definition to state claims against.
-/

/-! ## A130224.P11512892327177169569

`∑[∑[A016348(A210692(n+1))]]`
-/

namespace A130224.P11512892327177169569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (A210692 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130224.P11512892327177169569

/-! ## A130224.P13556811729668829242

`∑[∑[A014577(A168256(2*n+1))]]`
-/

namespace A130224.P13556811729668829242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A168256 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130224.P13556811729668829242

/-! ## A130224.P13226405322561736743

`∑[∑[A362130(A325678(3*n+4))]]`
-/

namespace A130224.P13226405322561736743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362130 (A325678 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130224.P13226405322561736743

/-! ## A130224.P2612515883074966226

`∑[∑[A286046(A078374(3*(n+1)))]]`
-/

namespace A130224.P2612515883074966226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286046 (A078374 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130224.P2612515883074966226

/-! ## A130224.P3379921739673477389

`∑[∑[A055641(n*(7*n²-4)/3)]]`
-/

namespace A130224.P3379921739673477389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.roundAway ((n : ℚ) * (((7 * n ^ 2 : ℤ) - 4 : ℚ) / 3))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130224.P3379921739673477389

/-!
# A130225: a(1) = 2; a(n) = a(n-1) + (number of times the digit 2 has appeared in the sequence so far).

The programs for A130225, there is no canonical definition to state claims against.
-/

/-! ## A130225.P8022021542845225795

`∑[∑[A011734(A264794(n+1))]+1]+1`
-/

namespace A130225.P8022021542845225795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011734 (A264794 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130225.P8022021542845225795

/-! ## A130225.P8564763619327573285

`A291769(n)+A143824(A275077(n))`
-/

namespace A130225.P8564763619327573285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n + A143824 (A275077 n).toNat

end

end A130225.P8564763619327573285

/-! ## A130225.P3699856116756913870

`∑[ceil(A005314(n)/A350844(3*n+1))]+2`
-/

namespace A130225.P3699856116756913870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005314 n : ℚ) / (A350844 (3 * n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A130225.P3699856116756913870

/-!
# A130226: Smallest integer x satisfying the Pell equation x^2-k*y^2=-1 for the values of k given in A031396.

The programs for A130226, there is no canonical definition to state claims against.
-/

/-! ## A130226.P14216124342541558764

`A341862(A031396(n+1))/2`
-/

namespace A130226.P14216124342541558764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341862 (A031396 (n + 1)).toNat : ℚ) / 2

end

end A130226.P14216124342541558764

/-! ## A130226.P11005516570614065047

`A006702(A031396(n+1))-A000007(n)`
-/

namespace A130226.P11005516570614065047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A031396 (n + 1)).toNat - A000007 n

end

end A130226.P11005516570614065047

/-! ## A130226.P11753036546116462648

`lcm(A006702(A031396(n+1)), A062157(n))`
-/

namespace A130226.P11753036546116462648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006702 (A031396 (n + 1)).toNat) (A062157 n)

end

end A130226.P11753036546116462648

/-! ## A130226.P15576655389555376078

`and(A006702(A031396(n+1)), A057428(n))`
-/

namespace A130226.P15576655389555376078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006702 (A031396 (n + 1)).toNat) (A057428 n)

end

end A130226.P15576655389555376078

/-! ## A130226.P910370332934543662

`A006702(A031396(n+1))-A000035(A008458(n))`
-/

namespace A130226.P910370332934543662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A031396 (n + 1)).toNat - A000035 (A008458 n).toNat

end

end A130226.P910370332934543662

/-! ## A130226.P6988339449374480942

`A006702(A031396(n+1))%A128052(n)`
-/

namespace A130226.P6988339449374480942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006702 (A031396 (n + 1)).toNat) (A128052 n)

end

end A130226.P6988339449374480942

/-!
# A130227: Smallest integer y satisfying the Pell equation x^2 - n*y^2 = -1 for the values of n given in A031396.

The programs for A130227, there is no canonical definition to state claims against.
-/

/-! ## A130227.P8614376583880605313

`or(1, A006703(A031396(n+1)))`
-/

namespace A130227.P8614376583880605313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006703 (A031396 (n + 1)).toNat)

end

end A130227.P8614376583880605313

/-! ## A130227.P2309982255754307022

`A006703(A031396(n+1)+A000007(n))`
-/

namespace A130227.P2309982255754307022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A031396 (n + 1) + A000007 n).toNat

end

end A130227.P2309982255754307022

/-! ## A130227.P3683602245816728800

`A006703(A031396(n+1)+A000038(n))`
-/

namespace A130227.P3683602245816728800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A031396 (n + 1) + A000038 n).toNat

end

end A130227.P3683602245816728800

/-! ## A130227.P4254176492123148081

`A006703(A031396(n+1))^A057428(n)²`
-/

namespace A130227.P4254176492123148081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (A031396 (n + 1)).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A130227.P4254176492123148081

/-! ## A130227.P1581495978183264746

`A006703(A031396(n+1)+A057428(n)+1)`
-/

namespace A130227.P1581495978183264746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A031396 (n + 1) + (A057428 n + 1)).toNat

end

end A130227.P1581495978183264746

/-! ## A130227.P5861139745738048498

`A006703(A031396(n+1))+A000035(A008458(n))`
-/

namespace A130227.P5861139745738048498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A031396 (n + 1)).toNat + A000035 (A008458 n).toNat

end

end A130227.P5861139745738048498

/-! ## A130227.P15480993101598940635

`A006703(A031396(n+1))^A157458(∑[n])`
-/

namespace A130227.P15480993101598940635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (A031396 (n + 1)).toNat : ℚ) ^ (A157458 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A130227.P15480993101598940635

/-! ## A130227.P7210600813700188937

`A006703(A151878(n)+A031396(n+1))`
-/

namespace A130227.P7210600813700188937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A151878 n + A031396 (n + 1)).toNat

end

end A130227.P7210600813700188937

/-!
# A130228: Roman numerals with "i" replaced by "1", "v" replaced by "5", "x" replaced by 10, etc., sorted in increasing order.

The programs for A130228, there is no canonical definition to state claims against.
-/

/-! ## A130228.P4981045360219360698

`∩[A263808(n+1), A351327(n+1)]`
-/

namespace A130228.P4981045360219360698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130228.P4981045360219360698

/-! ## A130228.P7838773810870607078

`∩[A090273(n+1), A351327(n+1)]`
-/

namespace A130228.P7838773810870607078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130228.P7838773810870607078

/-! ## A130228.P5656731312837305409

`∩[A351327(n+1), A168501(n+2)]`
-/

namespace A130228.P5656731312837305409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130228.P5656731312837305409

/-! ## A130228.P11280103534562413441

`∩[A108192(n+1), A351327(n+1)]`
-/

namespace A130228.P11280103534562413441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130228.P11280103534562413441

/-!
# A130229: Primes p == 5 (mod 8) such that the Diophantine equation x^2 - p*y^2 = -4 has no solution in odd integers x, y.

The programs for A130229, there is no canonical definition to state claims against.
-/

/-! ## A130229.P5556467146738455059

`p?[A108160(n+1)]`
-/

namespace A130229.P5556467146738455059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130229.P5556467146738455059

/-! ## A130229.P12213783519019847830

`filter[A108160(n+1), A010051(#)]`
-/

namespace A130229.P12213783519019847830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A130229.P12213783519019847830

/-! ## A130229.P12036314564114028481

`filter[A108160(n+1), A010055(#)]`
-/

namespace A130229.P12036314564114028481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A130229.P12036314564114028481

/-! ## A130229.P15513623137437231434

`filter[A108160(n+1), A069513(#)]`
-/

namespace A130229.P15513623137437231434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A130229.P15513623137437231434

/-! ## A130229.P2653001428217171397

`filter[A108160(n+1), A079260(#)]`
-/

namespace A130229.P2653001428217171397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079260 (f1 j).toNat = 1) n)

end

end A130229.P2653001428217171397

/-!
# A130230: Primes p == 5 (mod 8) such that the Diophantine equation x^2 - p*y^2 = -4 has a solution in odd integers x, y.

The programs for A130230, there is no canonical definition to state claims against.
-/

/-! ## A130230.P15020664354755481506

`p?[A107997(n+1)]`
-/

namespace A130230.P15020664354755481506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130230.P15020664354755481506

/-! ## A130230.P17500605409541755836

`filter[A107997(n+1), A010051(#)]`
-/

namespace A130230.P17500605409541755836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A130230.P17500605409541755836

/-! ## A130230.P15023950584242622488

`filter[A107997(n+1), A069513(#)]`
-/

namespace A130230.P15023950584242622488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A130230.P15023950584242622488

/-! ## A130230.P11679936912657140326

`filter[A107997(n+1), A091862(#)]`
-/

namespace A130230.P11679936912657140326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A130230.P11679936912657140326

/-! ## A130230.P7928051430457778669

`filter[A107997(n+1), A174275(#)]`
-/

namespace A130230.P7928051430457778669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A130230.P7928051430457778669

/-! ## A130230.P4898007779868082642

`filter[A107997(n+1), A174897(#)]`
-/

namespace A130230.P4898007779868082642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A130230.P4898007779868082642

/-! ## A130230.P14635635648709783765

`filter[A107997(n+1), A211487(#)]`
-/

namespace A130230.P14635635648709783765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A130230.P14635635648709783765

/-! ## A130230.P10514024400817550151

`record[A006530(2*A107997(n+1))]`
-/

namespace A130230.P10514024400817550151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A107997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130230.P10514024400817550151

/-! ## A130230.P9199796728660420744

`record[A006530(or(1, A107997(n+1)))]`
-/

namespace A130230.P9199796728660420744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A107997 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130230.P9199796728660420744

/-! ## A130230.P10263721540213838429

`∩[A002144(n+1), A107997(n+1)]`
-/

namespace A130230.P10263721540213838429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P10263721540213838429

/-! ## A130230.P1696113462112555128

`∩[A002313(n+1), A107997(n+1)]`
-/

namespace A130230.P1696113462112555128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P1696113462112555128

/-! ## A130230.P14097016366202189680

`∩[A003628(n+1), A107997(n+1)]`
-/

namespace A130230.P14097016366202189680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P14097016366202189680

/-! ## A130230.P4963575434271183095

`∩[A003629(n+1), A107997(n+1)]`
-/

namespace A130230.P4963575434271183095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P4963575434271183095

/-! ## A130230.P16120094135034823794

`∩[A007521(n+1), A107997(n+1)]`
-/

namespace A130230.P16120094135034823794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P16120094135034823794

/-! ## A130230.P4571494867098766618

`∩[A040100(n+1), A107997(n+1)]`
-/

namespace A130230.P4571494867098766618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P4571494867098766618

/-! ## A130230.P12739018268132145886

`∩[A040144(n+1), A107997(n+1)]`
-/

namespace A130230.P12739018268132145886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P12739018268132145886

/-! ## A130230.P459647192739541837

`∩[A042999(n+1), A107997(n+1)]`
-/

namespace A130230.P459647192739541837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P459647192739541837

/-! ## A130230.P2676241946231385751

`∩[A045355(n+1), A107997(n+1)]`
-/

namespace A130230.P2676241946231385751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P2676241946231385751

/-! ## A130230.P1874821693642285208

`∩[A045366(n+1), A107997(n+1)]`
-/

namespace A130230.P1874821693642285208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P1874821693642285208

/-! ## A130230.P394301121456679836

`∩[A049092(n+1), A107997(n+1)]`
-/

namespace A130230.P394301121456679836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130230.P394301121456679836

/-!
# A130231: a(1) = 3; a(n) = a(n-1) + (number of times the digit 3 has appeared in the sequence so far).

The programs for A130231, there is no canonical definition to state claims against.
-/

/-! ## A130231.P13071720758192158792

`record[A322584(A054842(n))+2]`
-/

namespace A130231.P13071720758192158792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (A054842 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130231.P13071720758192158792

/-! ## A130231.P13310257462803319695

`A056556(A145132(n)+∑[n+14]-4)`
-/

namespace A130231.P13310257462803319695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A145132 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4)).toNat

end

end A130231.P13310257462803319695

/-! ## A130231.P1854875065556623338

`∑[val(A059893(A235177(n+2))+1, 2)+1]`
-/

namespace A130231.P1854875065556623338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059893 (A235177 (n + 2)).toNat + 1).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130231.P1854875065556623338

/-! ## A130231.P14154313021311190945

`∑[A004216(A055984(n))]+2`
-/

namespace A130231.P14154313021311190945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A055984 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A130231.P14154313021311190945

/-! ## A130231.P653184864423565286

`A182363(n)*A344590(A195264(n+1))-7`
-/

namespace A130231.P653184864423565286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182363 n * A344590 (A195264 (n + 1)).toNat - 7

end

end A130231.P653184864423565286

/-!
# A130232: a(1) = 0; a(n) = a(n-1) + (number of times the digit 0 has appeared in the sequence so far).

The programs for A130232, there is no canonical definition to state claims against.
-/

/-! ## A130232.P8666085481933242975

`∑[∑[A127093(A078539(n+2))]]`
-/

namespace A130232.P8666085481933242975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A078539 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130232.P8666085481933242975

/-! ## A130232.P6790553805945737338

`∑[∑[A010051(A066455(n+1))]]`
-/

namespace A130232.P6790553805945737338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A066455 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130232.P6790553805945737338

/-! ## A130232.P6904831609752947251

`∑[A255270(A260096(n+1))]`
-/

namespace A130232.P6904831609752947251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A260096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130232.P6904831609752947251

/-! ## A130232.P5644477967028379073

`∑[∑[A010054(A192322(n+1))]]`
-/

namespace A130232.P5644477967028379073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A192322 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130232.P5644477967028379073

/-! ## A130232.P2990627186473632487

`∑[∑[A010051(A240314(2*(n+2)))]]`
-/

namespace A130232.P2990627186473632487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A240314 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130232.P2990627186473632487

/-!
# A130233: a(n) is the maximal k such that Fibonacci(k) <= n (the "lower" Fibonacci Inverse).

The programs for A130233, the canonical program `A130233.P4547566433330299438` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130233 has offset 0).

The definition of A130233 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130234, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130233.P4547566433330299438

`A130234(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130233

/-- `A130234(n+1)-1` -/
def P4547566433330299438.Spec : Prop :=
  ∀ n, P4547566433330299438.a n = A130233 n

theorem P4547566433330299438.correct : P4547566433330299438.Spec := by
  intro n
  simp only [A130233]

end A130233

/-! ## A130233.P17222295135435889656

`floor(log(3/2+n*sqrt(5))/log((1+sqrt(5))/2))`
-/

namespace A130233.P17222295135435889656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (((3 : ℚ) / 2 : ℝ) + (n : ℝ) * Real.sqrt (5 : ℝ)) / Real.log ((1 + Real.sqrt (5 : ℝ)) / 2)⌋

end

end A130233.P17222295135435889656

namespace A130233

/-- `floor(log(3/2+n*sqrt(5))/log((1+sqrt(5))/2))` -/
def P17222295135435889656.Spec : Prop :=
  ∀ n, P17222295135435889656.a n = A130233 n

end A130233

/-! ## A130233.P13740183195822390578

`A108852(n)-1`
-/

namespace A130233.P13740183195822390578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 n - 1

end

end A130233.P13740183195822390578

namespace A130233

/-- `A108852(n)-1` -/
def P13740183195822390578.Spec : Prop :=
  ∀ n, P13740183195822390578.a n = A130233 n

end A130233

/-! ## A130233.P4130816283703707724

`ceil(log2(A048297(n)))`
-/

namespace A130233.P4130816283703707724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A048297 n : ℝ)⌉

end

end A130233.P4130816283703707724

namespace A130233

/-- `ceil(log2(A048297(n)))` -/
def P4130816283703707724.Spec : Prop :=
  ∀ n, P4130816283703707724.a n = A130233 n

end A130233

/-! ## A130233.P11461486186630986036

`∑[A104162(n)]-1`
-/

namespace A130233.P11461486186630986036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A130233.P11461486186630986036

namespace A130233

/-- `∑[A104162(n)]-1` -/
def P11461486186630986036.Spec : Prop :=
  ∀ n, P11461486186630986036.a n = A130233 n

end A130233

/-! ## A130233.P10293047752601060542

`comp[A081659(n)]-n`
-/

namespace A130233.P10293047752601060542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130233.P10293047752601060542

namespace A130233

/-- `comp[A081659(n)]-n` -/
def P10293047752601060542.Spec : Prop :=
  ∀ n, P10293047752601060542.a n = A130233 n

end A130233

/-! ## A130233.P12828031971795737094

`ceil(log2(A022340(n)+1))`
-/

namespace A130233.P12828031971795737094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A022340 n + 1 : ℝ)⌉

end

end A130233.P12828031971795737094

namespace A130233

/-- `ceil(log2(A022340(n)+1))` -/
def P12828031971795737094.Spec : Prop :=
  ∀ n, P12828031971795737094.a n = A130233 n

end A130233

/-! ## A130233.P7011038074882474233

`a(A005379(n))+1` with `a(0)=0, a(1)=2`
-/

namespace A130233.P7011038074882474233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (A005379 n).toNat + 1

end

end A130233.P7011038074882474233

namespace A130233

/-- `a(A005379(n))+1` -/
def P7011038074882474233.Spec : Prop :=
  ∀ n, (P7011038074882474233.a n : ℤ) = A130233 n

end A130233

/-! ## A130233.P4617311740480544528

`∑[C(2, A104324(n))]-1`
-/

namespace A130233.P4617311740480544528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A104324 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A130233.P4617311740480544528

namespace A130233

/-- `∑[C(2, A104324(n))]-1` -/
def P4617311740480544528.Spec : Prop :=
  ∀ n, P4617311740480544528.a n = A130233 n

end A130233

/-! ## A130233.P11849646757454875877

`comp[A002062(n)]-(n+1)`
-/

namespace A130233.P11849646757454875877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A130233.P11849646757454875877

namespace A130233

/-- `comp[A002062(n)]-(n+1)` -/
def P11849646757454875877.Spec : Prop :=
  ∀ n, P11849646757454875877.a n = A130233 n

end A130233

/-! ## A130233.P14554434694676264124

`floor(log2(A213540(n+1)))-1`
-/

namespace A130233.P14554434694676264124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A213540 (n + 1)).toNat : ℤ) - 1

end

end A130233.P14554434694676264124

namespace A130233

/-- `floor(log2(A213540(n+1)))-1` -/
def P14554434694676264124.Spec : Prop :=
  ∀ n, P14554434694676264124.a n = A130233 n

end A130233

/-! ## A130233.P1077628653363051606

`ceil(log2(A365808(n+1)+1))`
-/

namespace A130233.P1077628653363051606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A365808 (n + 1) + 1 : ℝ)⌉

end

end A130233.P1077628653363051606

namespace A130233

/-- `ceil(log2(A365808(n+1)+1))` -/
def P1077628653363051606.Spec : Prop :=
  ∀ n, P1077628653363051606.a n = A130233 n

end A130233

/-! ## A130233.P8161786740524262982

`∑[char[A000045(n)]]%Δ[n²]`
-/

namespace A130233.P8161786740524262982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A130233.P8161786740524262982

namespace A130233

/-- `∑[char[A000045(n)]]%Δ[n²]` -/
def P8161786740524262982.Spec : Prop :=
  ∀ n, P8161786740524262982.a n = A130233 n

end A130233

/-! ## A130233.P11042734928421774558

`∑[char[1]+char[A000045(n+1)]]`
-/

namespace A130233.P11042734928421774558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130233.P11042734928421774558

namespace A130233

/-- `∑[char[1]+char[A000045(n+1)]]` -/
def P11042734928421774558.Spec : Prop :=
  ∀ n, (P11042734928421774558.a n : ℤ) = A130233 n

end A130233

/-! ## A130233.P12336881010029279

`A131234(n+1)%(2*n+1)`
-/

namespace A130233.P12336881010029279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131234 (n + 1)) (2 * n + 1 : ℤ)

end

end A130233.P12336881010029279

namespace A130233

/-- `A131234(n+1)%(2*n+1)` -/
def P12336881010029279.Spec : Prop :=
  ∀ n, P12336881010029279.a n = A130233 n

end A130233

/-! ## A130233.P14394427447492036056

`comp[A104763(∑[n+1])+n]-n`
-/

namespace A130233.P14394427447492036056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130233.P14394427447492036056

namespace A130233

/-- `comp[A104763(∑[n+1])+n]-n` -/
def P14394427447492036056.Spec : Prop :=
  ∀ n, P14394427447492036056.a n = A130233 n

end A130233

/-! ## A130233.P4244057140406285281

`∑[A010056(n)]%(comp[8*n]+n)`
-/

namespace A130233.P4244057140406285281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n : ℤ)

end

end A130233.P4244057140406285281

namespace A130233

/-- `∑[A010056(n)]%(comp[8*n]+n)` -/
def P4244057140406285281.Spec : Prop :=
  ∀ n, P4244057140406285281.a n = A130233 n

end A130233

/-! ## A130233.P13821095691943291781

`comp[A000071(n+1)+1+n]-n`
-/

namespace A130233.P13821095691943291781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130233.P13821095691943291781

namespace A130233

/-- `comp[A000071(n+1)+1+n]-n` -/
def P13821095691943291781.Spec : Prop :=
  ∀ n, P13821095691943291781.a n = A130233 n

end A130233

/-! ## A130233.P10368035413602254503

`∑[char[A001611(n)-1]]%∑[n+1]`
-/

namespace A130233.P10368035413602254503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A130233.P10368035413602254503

namespace A130233

/-- `∑[char[A001611(n)-1]]%∑[n+1]` -/
def P10368035413602254503.Spec : Prop :=
  ∀ n, (P10368035413602254503.a n : ℤ) = A130233 n

end A130233

/-! ## A130233.P5474336637900778213

`A130245(A195121(n))`
-/

namespace A130233.P5474336637900778213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A195121 n).toNat

end

end A130233.P5474336637900778213

namespace A130233

/-- `A130245(A195121(n))` -/
def P5474336637900778213.Spec : Prop :=
  ∀ n, P5474336637900778213.a n = A130233 n

end A130233

/-!
# A130234: Minimal index k of a Fibonacci number such that Fibonacci(k) >= n (the 'upper' Fibonacci Inverse).

The programs for A130234, the canonical program `A130234.P5793971662761517347` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130234 has offset 0).

The definition of A130234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130234.P5793971662761517347

`a(floor((n+1)/ϕ))+1` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130234

/-- `a(floor((n+1)/ϕ))+1` -/
def P5793971662761517347.Spec : Prop :=
  ∀ n, (P5793971662761517347.a n : ℤ) = A130234 n

theorem P5793971662761517347.correct : P5793971662761517347.Spec := by
  intro n
  simp only [A130234]

end A130234

/-! ## A130234.P17082195279941897085

`comp[∑[a(n-1)+a(n-2)-1]]-n` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A130234.P17082195279941897085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  f2 (n - 1) + f2 (n - 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130234.P17082195279941897085

namespace A130234

/-- `comp[∑[a(n-1)+a(n-2)-1]]-n` -/
def P17082195279941897085.Spec : Prop :=
  ∀ n, P17082195279941897085.a n = A130234 n

end A130234

/-! ## A130234.P17172659120195485677

`comp[A002062(n)+1]-n`
-/

namespace A130234.P17172659120195485677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130234.P17172659120195485677

namespace A130234

/-- `comp[A002062(n)+1]-n` -/
def P17172659120195485677.Spec : Prop :=
  ∀ n, P17172659120195485677.a n = A130234 n

end A130234

/-! ## A130234.P2836382922940332369

`comp[A001611(n)+n]-n`
-/

namespace A130234.P2836382922940332369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130234.P2836382922940332369

namespace A130234

/-- `comp[A001611(n)+n]-n` -/
def P2836382922940332369.Spec : Prop :=
  ∀ n, P2836382922940332369.a n = A130234 n

end A130234

/-! ## A130234.P9836701661153472200

`comp[A212804(n)+n]-n`
-/

namespace A130234.P9836701661153472200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130234.P9836701661153472200

namespace A130234

/-- `comp[A212804(n)+n]-n` -/
def P9836701661153472200.Spec : Prop :=
  ∀ n, P9836701661153472200.a n = A130234 n

end A130234

/-! ## A130234.P4609836926536866235

`comp[Δ[A000045(n)]+n]-n`
-/

namespace A130234.P4609836926536866235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130234.P4609836926536866235

namespace A130234

/-- `comp[Δ[A000045(n)]+n]-n` -/
def P4609836926536866235.Spec : Prop :=
  ∀ n, P4609836926536866235.a n = A130234 n

end A130234

/-! ## A130234.P15830843127108021373

`comp[A000045(abs(1-n))+n]-n`
-/

namespace A130234.P15830843127108021373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130234.P15830843127108021373

namespace A130234

/-- `comp[A000045(abs(1-n))+n]-n` -/
def P15830843127108021373.Spec : Prop :=
  ∀ n, P15830843127108021373.a n = A130234 n

end A130234

/-! ## A130234.P16845293442490434708

`A108852(n)-A104162(n)`
-/

namespace A130234.P16845293442490434708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 n - A104162 n

end

end A130234.P16845293442490434708

namespace A130234

/-- `A108852(n)-A104162(n)` -/
def P16845293442490434708.Spec : Prop :=
  ∀ n, P16845293442490434708.a n = A130234 n

end A130234

/-! ## A130234.P6974941556548624769

`comp[A000027(n+1)+A000045(n)]-n`
-/

namespace A130234.P6974941556548624769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130234.P6974941556548624769

namespace A130234

/-- `comp[A000027(n+1)+A000045(n)]-n` -/
def P6974941556548624769.Spec : Prop :=
  ∀ n, P6974941556548624769.a n = A130234 n

end A130234

/-! ## A130234.P15134267514599968001

`A130236(n+1)-(A130236(n)+A104162(n))`
-/

namespace A130234.P15134267514599968001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130236 (n + 1) - (A130236 n + A104162 n)

end

end A130234.P15134267514599968001

namespace A130234

/-- `A130236(n+1)-(A130236(n)+A104162(n))` -/
def P15134267514599968001.Spec : Prop :=
  ∀ n, P15134267514599968001.a n = A130234 n

end A130234

/-!
# A130235: Partial sums of the 'lower' Fibonacci Inverse A130233.

The programs for A130235, the canonical program `A130235.P11214485265166716893` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130235 has offset 0).

The definition of A130235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130235.P2755318510304018428

`∑[A130233(n)]`
-/

namespace A130235.P2755318510304018428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P2755318510304018428

namespace A130235

/-- `∑[A130233(n)]` -/
def P2755318510304018428.Spec : Prop :=
  ∀ n, P2755318510304018428.a n = A130235 n

end A130235

/-! ## A130235.P11214485265166716893

`∑[A108852(n)-1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130235

/-- `∑[A108852(n)-1]` -/
def P11214485265166716893.Spec : Prop :=
  ∀ n, P11214485265166716893.a n = A130235 n

theorem P11214485265166716893.correct : P11214485265166716893.Spec := by
  intro n
  simp only [A130235]

end A130235

/-! ## A130235.P8567470587507842113

`∑[ceil(log2(A048297(n)))]`
-/

namespace A130235.P8567470587507842113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A048297 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P8567470587507842113

namespace A130235

/-- `∑[ceil(log2(A048297(n)))]` -/
def P8567470587507842113.Spec : Prop :=
  ∀ n, P8567470587507842113.a n = A130235 n

end A130235

/-! ## A130235.P13926393007500589370

`∑[∑[A010056(n)]]-1`
-/

namespace A130235.P13926393007500589370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A130235.P13926393007500589370

namespace A130235

/-- `∑[∑[A010056(n)]]-1` -/
def P13926393007500589370.Spec : Prop :=
  ∀ n, P13926393007500589370.a n = A130235 n

end A130235

/-! ## A130235.P12368706533322932346

`∑[A131234(n+1)]-1`
-/

namespace A130235.P12368706533322932346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A130235.P12368706533322932346

namespace A130235

/-- `∑[A131234(n+1)]-1` -/
def P12368706533322932346.Spec : Prop :=
  ∀ n, P12368706533322932346.a n = A130235 n

end A130235

/-! ## A130235.P12422383129034984247

`∑[∑[char[A000045(n)]]]-1`
-/

namespace A130235.P12422383129034984247
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A130235.P12422383129034984247

namespace A130235

/-- `∑[∑[char[A000045(n)]]]-1` -/
def P12422383129034984247.Spec : Prop :=
  ∀ n, P12422383129034984247.a n = A130235 n

end A130235

/-! ## A130235.P6794159127559412408

`A256967(n+1)-1+n`
-/

namespace A130235.P6794159127559412408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256967 (n + 1) - 1 + (n : ℤ)

end

end A130235.P6794159127559412408

namespace A130235

/-- `A256967(n+1)-1+n` -/
def P6794159127559412408.Spec : Prop :=
  ∀ n, P6794159127559412408.a n = A130235 n

end A130235

/-! ## A130235.P285801917693335245

`∑[∑[char[1]+char[A000045(n+1)]]]`
-/

namespace A130235.P285801917693335245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + (if ∃ j, f4 j = (n : ℤ) then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P285801917693335245

namespace A130235

/-- `∑[∑[char[1]+char[A000045(n+1)]]]` -/
def P285801917693335245.Spec : Prop :=
  ∀ n, (P285801917693335245.a n : ℤ) = A130235 n

end A130235

/-! ## A130235.P3309159134675438717

`∑[A130245(A195121(n))]`
-/

namespace A130235.P3309159134675438717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A195121 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P3309159134675438717

namespace A130235

/-- `∑[A130245(A195121(n))]` -/
def P3309159134675438717.Spec : Prop :=
  ∀ n, P3309159134675438717.a n = A130235 n

end A130235

/-! ## A130235.P3787724243349703034

`A256967(n+1)+A023443(n)`
-/

namespace A130235.P3787724243349703034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256967 (n + 1) + A023443 n

end

end A130235.P3787724243349703034

namespace A130235

/-- `A256967(n+1)+A023443(n)` -/
def P3787724243349703034.Spec : Prop :=
  ∀ n, P3787724243349703034.a n = A130235 n

end A130235

/-! ## A130235.P2291614296486674646

`A256967(n+1)-A024000(n)`
-/

namespace A130235.P2291614296486674646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256967 (n + 1) - A024000 n

end

end A130235.P2291614296486674646

namespace A130235

/-- `A256967(n+1)-A024000(n)` -/
def P2291614296486674646.Spec : Prop :=
  ∀ n, P2291614296486674646.a n = A130235 n

end A130235

/-! ## A130235.P3791989833168772624

`A130233(n)+A130236(n)-n`
-/

namespace A130235.P3791989833168772624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 n + (A130236 n - (n : ℤ))

end

end A130235.P3791989833168772624

namespace A130235

/-- `A130233(n)+A130236(n)-n` -/
def P3791989833168772624.Spec : Prop :=
  ∀ n, P3791989833168772624.a n = A130235 n

end A130235

/-! ## A130235.P8828896549791552963

`∑[A131234(n+1)%A131195(n+1)]`
-/

namespace A130235.P8828896549791552963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131234 (n + 1)) (A131195 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P8828896549791552963

namespace A130235

/-- `∑[A131234(n+1)%A131195(n+1)]` -/
def P8828896549791552963.Spec : Prop :=
  ∀ n, P8828896549791552963.a n = A130235 n

end A130235

/-! ## A130235.P7619712022627397699

`∑[A130234(n+1)-1]`
-/

namespace A130235.P7619712022627397699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P7619712022627397699

namespace A130235

/-- `∑[A130234(n+1)-1]` -/
def P7619712022627397699.Spec : Prop :=
  ∀ n, P7619712022627397699.a n = A130235 n

end A130235

/-! ## A130235.P17107315062989854082

`A130236(n+1)-(n+1)`
-/

namespace A130235.P17107315062989854082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130236 (n + 1) - (n + 1 : ℤ)

end

end A130235.P17107315062989854082

namespace A130235

/-- `A130236(n+1)-(n+1)` -/
def P17107315062989854082.Spec : Prop :=
  ∀ n, P17107315062989854082.a n = A130235 n

end A130235

/-! ## A130235.P11493977279724383258

`A130257(n+1)+A130261(n+1)-A130233(n+1)`
-/

namespace A130235.P11493977279724383258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130257 (n + 1) + (A130261 (n + 1) - A130233 (n + 1))

end

end A130235.P11493977279724383258

namespace A130235

/-- `A130257(n+1)+A130261(n+1)-A130233(n+1)` -/
def P11493977279724383258.Spec : Prop :=
  ∀ n, P11493977279724383258.a n = A130235 n

end A130235

/-! ## A130235.P8093146449505722661

`∑[ceil(record[log2(or(n, 2*n+1))])]`
-/

namespace A130235.P8093146449505722661
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lor n (2 * n + 1) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P8093146449505722661

namespace A130235

/-- `∑[ceil(record[log2(or(n, 2*n+1))])]` -/
def P8093146449505722661.Spec : Prop :=
  ∀ n, P8093146449505722661.a n = A130235 n

end A130235

/-! ## A130235.P14622984156467641170

`∑[ceil(log2(record[xor(n, 2*n)+1]))]`
-/

namespace A130235.P14622984156467641170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P14622984156467641170

namespace A130235

/-- `∑[ceil(log2(record[xor(n, 2*n)+1]))]` -/
def P14622984156467641170.Spec : Prop :=
  ∀ n, P14622984156467641170.a n = A130235 n

end A130235

/-! ## A130235.P9411015953838677606

`∑[A131234(n+1)%A131253(n)]`
-/

namespace A130235.P9411015953838677606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131234 (n + 1)) (A131253 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P9411015953838677606

namespace A130235

/-- `∑[A131234(n+1)%A131253(n)]` -/
def P9411015953838677606.Spec : Prop :=
  ∀ n, P9411015953838677606.a n = A130235 n

end A130235

/-! ## A130235.P11176200135555857450

`∑[A130239(n²)]`
-/

namespace A130235.P11176200135555857450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130239 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130235.P11176200135555857450

namespace A130235

/-- `∑[A130239(n²)]` -/
def P11176200135555857450.Spec : Prop :=
  ∀ n, P11176200135555857450.a n = A130235 n

end A130235

/-!
# A130236: Partial sums of the 'upper' Fibonacci Inverse A130234.

The programs for A130236, the canonical program `A130236.P16914573504588275506` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130236 has offset 0).

The definition of A130236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130236.P14332720637858013361

`∑[a(ceil((n+1)/ϕ)-1)+1]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A130236.P14332720637858013361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (⌈(n + 1 : ℝ) / Real.goldenRatio⌉ - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130236.P14332720637858013361

namespace A130236

/-- `∑[a(ceil((n+1)/ϕ)-1)+1]` -/
def P14332720637858013361.Spec : Prop :=
  ∀ n, (P14332720637858013361.a n : ℤ) = A130236 n

end A130236

/-! ## A130236.P580579208438584826

`∑[A130234(n)]`
-/

namespace A130236.P580579208438584826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130236.P580579208438584826

namespace A130236

/-- `∑[A130234(n)]` -/
def P580579208438584826.Spec : Prop :=
  ∀ n, P580579208438584826.a n = A130236 n

end A130236

/-! ## A130236.P16914573504588275506

`∑[A108852(abs(1-n))]-3`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130236

/-- `∑[A108852(abs(1-n))]-3` -/
def P16914573504588275506.Spec : Prop :=
  ∀ n, P16914573504588275506.a n = A130236 n

theorem P16914573504588275506.correct : P16914573504588275506.Spec := by
  intro n
  simp only [A130236]

end A130236

/-! ## A130236.P8950929959990707415

`∑[comp[A002062(n)+1]-n]`
-/

namespace A130236.P8950929959990707415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130236.P8950929959990707415

namespace A130236

/-- `∑[comp[A002062(n)+1]-n]` -/
def P8950929959990707415.Spec : Prop :=
  ∀ n, P8950929959990707415.a n = A130236 n

end A130236

/-! ## A130236.P8959228506473357704

`∑[comp[A001611(n)+n]-n]`
-/

namespace A130236.P8959228506473357704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130236.P8959228506473357704

namespace A130236

/-- `∑[comp[A001611(n)+n]-n]` -/
def P8959228506473357704.Spec : Prop :=
  ∀ n, P8959228506473357704.a n = A130236 n

end A130236

/-! ## A130236.P10317025090652707010

`∑[comp[A212804(n)+n]-n]`
-/

namespace A130236.P10317025090652707010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130236.P10317025090652707010

namespace A130236

/-- `∑[comp[A212804(n)+n]-n]` -/
def P10317025090652707010.Spec : Prop :=
  ∀ n, P10317025090652707010.a n = A130236 n

end A130236

/-! ## A130236.P9187498259975432467

`∑[comp[Δ[A000045(n)]+n]-n]`
-/

namespace A130236.P9187498259975432467
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130236.P9187498259975432467

namespace A130236

/-- `∑[comp[Δ[A000045(n)]+n]-n]` -/
def P9187498259975432467.Spec : Prop :=
  ∀ n, P9187498259975432467.a n = A130236 n

end A130236

/-! ## A130236.P14492511707944433207

`∑[comp[A000045(abs(1-n))+n]-n]`
-/

namespace A130236.P14492511707944433207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130236.P14492511707944433207

namespace A130236

/-- `∑[comp[A000045(abs(1-n))+n]-n]` -/
def P14492511707944433207.Spec : Prop :=
  ∀ n, P14492511707944433207.a n = A130236 n

end A130236

/-! ## A130236.P14149074331337871432

`∑[∑[A104162(n)]-A104162(n)]`
-/

namespace A130236.P14149074331337871432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A104162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130236.P14149074331337871432

namespace A130236

/-- `∑[∑[A104162(n)]-A104162(n)]` -/
def P14149074331337871432.Spec : Prop :=
  ∀ n, P14149074331337871432.a n = A130236 n

end A130236

/-! ## A130236.P10236633492997483314

`∑[comp[A000045(n+1)-A000045(n)+n]-n]`
-/

namespace A130236.P10236633492997483314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A000045 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130236.P10236633492997483314

namespace A130236

/-- `∑[comp[A000045(n+1)-A000045(n)+n]-n]` -/
def P10236633492997483314.Spec : Prop :=
  ∀ n, P10236633492997483314.a n = A130236 n

end A130236

/-! ## A130236.P1784878941265130342

`A130258(n+1)+A130261(n)-A130233(n)`
-/

namespace A130236.P1784878941265130342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130258 (n + 1) + (A130261 n - A130233 n)

end

end A130236.P1784878941265130342

namespace A130236

/-- `A130258(n+1)+A130261(n)-A130233(n)` -/
def P1784878941265130342.Spec : Prop :=
  ∀ n, P1784878941265130342.a n = A130236 n

end A130236

/-!
# A130237: The 'lower' Fibonacci Inverse A130233(n) multiplied by n.

The programs for A130237, the canonical program `A130237.P6186079352206289628` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130237 has offset 0).

The definition of A130237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130237.P6186079352206289628

`n*floor(log(3/2+n*sqrt(5))/log((1+sqrt(5))/2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130237

/-- `n*floor(log(3/2+n*sqrt(5))/log((1+sqrt(5))/2))` -/
def P6186079352206289628.Spec : Prop :=
  ∀ n, P6186079352206289628.a n = A130237 n

theorem P6186079352206289628.correct : P6186079352206289628.Spec := by
  intro n
  simp only [A130237]

end A130237

/-! ## A130237.P16502145462446382863

`n*A108852(n)-n`
-/

namespace A130237.P16502145462446382863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108852 n - (n : ℤ)

end

end A130237.P16502145462446382863

namespace A130237

/-- `n*A108852(n)-n` -/
def P16502145462446382863.Spec : Prop :=
  ∀ n, P16502145462446382863.a n = A130237 n

end A130237

/-! ## A130237.P4768688841844643698

`n*∑[char[A000045(n+1)]]+n`
-/

namespace A130237.P4768688841844643698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A130237.P4768688841844643698

namespace A130237

/-- `n*∑[char[A000045(n+1)]]+n` -/
def P4768688841844643698.Spec : Prop :=
  ∀ n, (P4768688841844643698.a n : ℤ) = A130237 n

end A130237

/-! ## A130237.P14183269884911945400

`Δ[A130238(A028310(n)-1)]`
-/

namespace A130237.P14183269884911945400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130238 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130237.P14183269884911945400

namespace A130237

/-- `Δ[A130238(A028310(n)-1)]` -/
def P14183269884911945400.Spec : Prop :=
  ∀ n, P14183269884911945400.a n = A130237 n

end A130237

/-! ## A130237.P9519662168357223068

`A004526(2*n*A130233(n))`
-/

namespace A130237.P9519662168357223068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((2 * n : ℤ) * A130233 n).toNat

end

end A130237.P9519662168357223068

namespace A130237

/-- `A004526(2*n*A130233(n))` -/
def P9519662168357223068.Spec : Prop :=
  ∀ n, P9519662168357223068.a n = A130237 n

end A130237

/-!
# A130238: Partial sums of A130237.

The programs for A130238, the canonical program `A130238.P6749736305914255638` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130238 has offset 0).

The definition of A130238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130238.P6749736305914255638

`∑[A130237(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130238

/-- `∑[A130237(n)]` -/
def P6749736305914255638.Spec : Prop :=
  ∀ n, P6749736305914255638.a n = A130238 n

theorem P6749736305914255638.correct : P6749736305914255638.Spec := by
  intro n
  simp only [A130238]

end A130238

/-! ## A130238.P10344048207762916023

`∑[n*A130233(n)]`
-/

namespace A130238.P10344048207762916023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130238.P10344048207762916023

namespace A130238

/-- `∑[n*A130233(n)]` -/
def P10344048207762916023.Spec : Prop :=
  ∀ n, P10344048207762916023.a n = A130238 n

end A130238

/-! ## A130238.P10397013934499029269

`∑[n*∑[A010056(n)]]`
-/

namespace A130238.P10397013934499029269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130238.P10397013934499029269

namespace A130238

/-- `∑[n*∑[A010056(n)]]` -/
def P10397013934499029269.Spec : Prop :=
  ∀ n, P10397013934499029269.a n = A130238 n

end A130238

/-! ## A130238.P2032802173517692183

`∑[n*A131234(n+1)]`
-/

namespace A130238.P2032802173517692183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130238.P2032802173517692183

namespace A130238

/-- `∑[n*A131234(n+1)]` -/
def P2032802173517692183.Spec : Prop :=
  ∀ n, P2032802173517692183.a n = A130238 n

end A130238

/-! ## A130238.P9837815827713896811

`∑[n*∑[char[A000045(n)]]]`
-/

namespace A130238.P9837815827713896811
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130238.P9837815827713896811

namespace A130238

/-- `∑[n*∑[char[A000045(n)]]]` -/
def P9837815827713896811.Spec : Prop :=
  ∀ n, (P9837815827713896811.a n : ℤ) = A130238 n

end A130238

/-! ## A130238.P2082112017384432554

`∑[n*A130245(A195121(n))]`
-/

namespace A130238.P2082112017384432554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130245 (A195121 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130238.P2082112017384432554

namespace A130238

/-- `∑[n*A130245(A195121(n))]` -/
def P2082112017384432554.Spec : Prop :=
  ∀ n, P2082112017384432554.a n = A130238 n

end A130238

/-! ## A130238.P5433219851767685817

`∑[n*A130239(n²)]`
-/

namespace A130238.P5433219851767685817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130239 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130238.P5433219851767685817

namespace A130238

/-- `∑[n*A130239(n²)]` -/
def P5433219851767685817.Spec : Prop :=
  ∀ n, P5433219851767685817.a n = A130238 n

end A130238

/-!
# A130239: Maximal index k of the square of a Fibonacci number such that Fib(k)^2 <= n (the 'lower' squared Fibonacci Inverse).

The programs for A130239, the canonical program `A130239.P4605926808634395640` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130239 has offset 0).

The definition of A130239 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130239.P4605926808634395640

`A130233(floor(sqrt(n)))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130239

/-- `A130233(floor(sqrt(n)))` -/
def P4605926808634395640.Spec : Prop :=
  ∀ n, P4605926808634395640.a n = A130239 n

theorem P4605926808634395640.correct : P4605926808634395640.Spec := by
  intro n
  simp only [A130239]

end A130239

/-! ## A130239.P17662982604048521201

`abs(1-A108852(floor(sqrt(n))))`
-/

namespace A130239.P17662982604048521201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A108852 (Nat.sqrt n)|

end

end A130239.P17662982604048521201

namespace A130239

/-- `abs(1-A108852(floor(sqrt(n))))` -/
def P17662982604048521201.Spec : Prop :=
  ∀ n, P17662982604048521201.a n = A130239 n

end A130239

/-! ## A130239.P7146224015886570375

`A130234(∑[char[n²]])-1`
-/

namespace A130239.P7146224015886570375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A130239.P7146224015886570375

namespace A130239

/-- `A130234(∑[char[n²]])-1` -/
def P7146224015886570375.Spec : Prop :=
  ∀ n, P7146224015886570375.a n = A130239 n

end A130239

/-! ## A130239.P5245441962477976371

`comp[A007598(n)+n]-(n+1)`
-/

namespace A130239.P5245441962477976371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A130239.P5245441962477976371

namespace A130239

/-- `comp[A007598(n)+n]-(n+1)` -/
def P5245441962477976371.Spec : Prop :=
  ∀ n, P5245441962477976371.a n = A130239 n

end A130239

/-! ## A130239.P13761035793321219833

`∑[char[A000045(n)²]]%Δ[n²]`
-/

namespace A130239.P13761035793321219833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A130239.P13761035793321219833

namespace A130239

/-- `∑[char[A000045(n)²]]%Δ[n²]` -/
def P13761035793321219833.Spec : Prop :=
  ∀ n, P13761035793321219833.a n = A130239 n

end A130239

/-! ## A130239.P7295666376969891238

`∑[char[1]+char[A000045(n+1)²]]`
-/

namespace A130239.P7295666376969891238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130239.P7295666376969891238

namespace A130239

/-- `∑[char[1]+char[A000045(n+1)²]]` -/
def P7295666376969891238.Spec : Prop :=
  ∀ n, (P7295666376969891238.a n : ℤ) = A130239 n

end A130239

/-! ## A130239.P2639972958757086591

`comp[Δ[A000045(n+2)]²+n]-n`
-/

namespace A130239.P2639972958757086591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130239.P2639972958757086591

namespace A130239

/-- `comp[Δ[A000045(n+2)]²+n]-n` -/
def P2639972958757086591.Spec : Prop :=
  ∀ n, P2639972958757086591.a n = A130239 n

end A130239

/-! ## A130239.P16953481547495980946

`comp[(A000071(n+1)+1)²+n]-n`
-/

namespace A130239.P16953481547495980946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130239.P16953481547495980946

namespace A130239

/-- `comp[(A000071(n+1)+1)²+n]-n` -/
def P16953481547495980946.Spec : Prop :=
  ∀ n, P16953481547495980946.a n = A130239 n

end A130239

/-! ## A130239.P17260429418708930993

`comp[A212804(n+1)²+n-1]-n`
-/

namespace A130239.P17260429418708930993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) ^ 2 + (n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130239.P17260429418708930993

namespace A130239

/-- `comp[A212804(n+1)²+n-1]-n` -/
def P17260429418708930993.Spec : Prop :=
  ∀ n, P17260429418708930993.a n = A130239 n

end A130239

/-! ## A130239.P3267270389763383959

`comp[A000045(C(n+1, n))²+n]-n`
-/

namespace A130239.P3267270389763383959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (n + 1) n) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130239.P3267270389763383959

namespace A130239

/-- `comp[A000045(C(n+1, n))²+n]-n` -/
def P3267270389763383959.Spec : Prop :=
  ∀ n, P3267270389763383959.a n = A130239 n

end A130239

/-! ## A130239.P15848615480450195664

`comp[A000045(n-char[2])²+n-1]-n`
-/

namespace A130239.P15848615480450195664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n - (if ∃ j, f2 j = n then 1 else 0)) ^ 2 + (n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130239.P15848615480450195664

namespace A130239

/-- `comp[A000045(n-char[2])²+n-1]-n` -/
def P15848615480450195664.Spec : Prop :=
  ∀ n, P15848615480450195664.a n = A130239 n

end A130239

/-! ## A130239.P4439968122634387956

`A087156(∑[char[A000045(n)²]])`
-/

namespace A130239.P4439968122634387956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130239.P4439968122634387956

namespace A130239

/-- `A087156(∑[char[A000045(n)²]])` -/
def P4439968122634387956.Spec : Prop :=
  ∀ n, P4439968122634387956.a n = A130239 n

end A130239

/-! ## A130239.P12870024980932208533

`∑[char[A000045(n)²]]-A000007(n)`
-/

namespace A130239.P12870024980932208533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000007 n

end

end A130239.P12870024980932208533

namespace A130239

/-- `∑[char[A000045(n)²]]-A000007(n)` -/
def P12870024980932208533.Spec : Prop :=
  ∀ n, P12870024980932208533.a n = A130239 n

end A130239

/-! ## A130239.P4040142266567529245

`A130259(A198082(n))`
-/

namespace A130239.P4040142266567529245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A198082 n).toNat

end

end A130239.P4040142266567529245

namespace A130239

/-- `A130259(A198082(n))` -/
def P4040142266567529245.Spec : Prop :=
  ∀ n, P4040142266567529245.a n = A130239 n

end A130239

/-!
# A130240: Partial sums of A130239.

The programs for A130240, the canonical program `A130240.P11723708068982059309` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130240 has offset 0).

The definition of A130240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130240.P1809335874221567205

`∑[A130239(n)]`
-/

namespace A130240.P1809335874221567205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130240.P1809335874221567205

namespace A130240

/-- `∑[A130239(n)]` -/
def P1809335874221567205.Spec : Prop :=
  ∀ n, P1809335874221567205.a n = A130240 n

end A130240

/-! ## A130240.P9245481979663825634

`∑[A130233(floor(sqrt(n)))]`
-/

namespace A130240.P9245481979663825634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130240.P9245481979663825634

namespace A130240

/-- `∑[A130233(floor(sqrt(n)))]` -/
def P9245481979663825634.Spec : Prop :=
  ∀ n, P9245481979663825634.a n = A130240 n

end A130240

/-! ## A130240.P11723708068982059309

`∑[∑[char[A007598(n)]]]-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130240

/-- `∑[∑[char[A007598(n)]]]-1` -/
def P11723708068982059309.Spec : Prop :=
  ∀ n, P11723708068982059309.a n = A130240 n

theorem P11723708068982059309.correct : P11723708068982059309.Spec := by
  intro n
  simp only [A130240]

end A130240

/-! ## A130240.P2087396107720519845

`∑[∑[char[A000045(n)²]]]-1`
-/

namespace A130240.P2087396107720519845
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A130240.P2087396107720519845

namespace A130240

/-- `∑[∑[char[A000045(n)²]]]-1` -/
def P2087396107720519845.Spec : Prop :=
  ∀ n, P2087396107720519845.a n = A130240 n

end A130240

/-! ## A130240.P15692713073187219937

`∑[∑[char[A212804(n)²]]-1]+n`
-/

namespace A130240.P15692713073187219937
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A130240.P15692713073187219937

namespace A130240

/-- `∑[∑[char[A212804(n)²]]-1]+n` -/
def P15692713073187219937.Spec : Prop :=
  ∀ n, P15692713073187219937.a n = A130240 n

end A130240

/-! ## A130240.P7916368996499418638

`∑[comp[A000045(n+1)²+n]-n]`
-/

namespace A130240.P7916368996499418638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130240.P7916368996499418638

namespace A130240

/-- `∑[comp[A000045(n+1)²+n]-n]` -/
def P7916368996499418638.Spec : Prop :=
  ∀ n, P7916368996499418638.a n = A130240 n

end A130240

/-! ## A130240.P1560423044510024017

`∑[∑[char[A000045(n+3)²]]]+n+n`
-/

namespace A130240.P1560423044510024017
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n + n

end

end A130240.P1560423044510024017

namespace A130240

/-- `∑[∑[char[A000045(n+3)²]]]+n+n` -/
def P1560423044510024017.Spec : Prop :=
  ∀ n, (P1560423044510024017.a n : ℤ) = A130240 n

end A130240

/-!
# A130241: Maximal index k of a Lucas number such that Lucas(k) <= n (the 'lower' Lucas (A000032) Inverse).

The programs for A130241, the canonical program `A130241.P12226389910119591791` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130241 has offset 1).

The definition of A130241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130241.P16509909035812406774

`∑[char[a(n-1)+a(n-2)+1]]` with `a(0)=0, a(1)=2`
-/

namespace A130241.P16509909035812406774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130241.P16509909035812406774

namespace A130241

/-- `∑[char[a(n-1)+a(n-2)+1]]` -/
def P16509909035812406774.Spec : Prop :=
  ∀ n, (P16509909035812406774.a n : ℤ) = A130241 (n + 1)

end A130241

/-! ## A130241.P16048294531368761307

`∑[char[A001610(n)]]`
-/

namespace A130241.P16048294531368761307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130241.P16048294531368761307

namespace A130241

/-- `∑[char[A001610(n)]]` -/
def P16048294531368761307.Spec : Prop :=
  ∀ n, (P16048294531368761307.a n : ℤ) = A130241 (n + 1)

end A130241

/-! ## A130241.P9773556075149676919

`A130247(n+1)+char[1]`
-/

namespace A130241.P9773556075149676919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130247 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130241.P9773556075149676919

namespace A130241

/-- `A130247(n+1)+char[1]` -/
def P9773556075149676919.Spec : Prop :=
  ∀ n, P9773556075149676919.a n = A130241 (n + 1)

end A130241

/-! ## A130241.P12196381917526469175

`∑[char[∑[A000032(n)]]]+1`
-/

namespace A130241.P12196381917526469175
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130241.P12196381917526469175

namespace A130241

/-- `∑[char[∑[A000032(n)]]]+1` -/
def P12196381917526469175.Spec : Prop :=
  ∀ n, (P12196381917526469175.a n : ℤ) = A130241 (n + 1)

end A130241

/-! ## A130241.P10084939256521726539

`∑[char[A000204(n+1)-1]]`
-/

namespace A130241.P10084939256521726539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130241.P10084939256521726539

namespace A130241

/-- `∑[char[A000204(n+1)-1]]` -/
def P10084939256521726539.Spec : Prop :=
  ∀ n, (P10084939256521726539.a n : ℤ) = A130241 (n + 1)

end A130241

/-! ## A130241.P14647330305946816474

`∑[char[A104765(n+1)-1]]`
-/

namespace A130241.P14647330305946816474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104765 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130241.P14647330305946816474

namespace A130241

/-- `∑[char[A104765(n+1)-1]]` -/
def P14647330305946816474.Spec : Prop :=
  ∀ n, (P14647330305946816474.a n : ℤ) = A130241 (n + 1)

end A130241

/-! ## A130241.P1865764595777431505

`∑[char[A001612(n+1)-2]]`
-/

namespace A130241.P1865764595777431505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130241.P1865764595777431505

namespace A130241

/-- `∑[char[A001612(n+1)-2]]` -/
def P1865764595777431505.Spec : Prop :=
  ∀ n, (P1865764595777431505.a n : ℤ) = A130241 (n + 1)

end A130241

/-! ## A130241.P3229065631736850749

`∑[char[A339572(2*n+1)]]`
-/

namespace A130241.P3229065631736850749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130241.P3229065631736850749

namespace A130241

/-- `∑[char[A339572(2*n+1)]]` -/
def P3229065631736850749.Spec : Prop :=
  ∀ n, (P3229065631736850749.a n : ℤ) = A130241 (n + 1)

end A130241

/-! ## A130241.P1322275533183505790

`A102460(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130241.P1322275533183505790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A102460 (n + 1) + a (n - 1)

end

end A130241.P1322275533183505790

namespace A130241

/-- `A102460(n+1)+a(n-1)` -/
def P1322275533183505790.Spec : Prop :=
  ∀ n, P1322275533183505790.a n = A130241 (n + 1)

end A130241

/-! ## A130241.P6205511701801605632

`∑[char[A324429(∑[n+3]+1)]]+1`
-/

namespace A130241.P6205511701801605632
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130241.P6205511701801605632

namespace A130241

/-- `∑[char[A324429(∑[n+3]+1)]]+1` -/
def P6205511701801605632.Spec : Prop :=
  ∀ n, (P6205511701801605632.a n : ℤ) = A130241 (n + 1)

end A130241

/-! ## A130241.P12226389910119591791

`a(n-1)+C(n+1, A000032(a(n-1)+1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130241

/-- `a(n-1)+C(n+1, A000032(a(n-1)+1))` -/
def P12226389910119591791.Spec : Prop :=
  ∀ n, (P12226389910119591791.a n : ℤ) = A130241 (n + 1)

theorem P12226389910119591791.correct : P12226389910119591791.Spec := by
  intro n
  simp only [A130241, Nat.add_sub_cancel]

end A130241

/-! ## A130241.P7531799382424625342

`A028310(A130247(n+1))`
-/

namespace A130241.P7531799382424625342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A130247 (n + 1)).toNat

end

end A130241.P7531799382424625342

namespace A130241

/-- `A028310(A130247(n+1))` -/
def P7531799382424625342.Spec : Prop :=
  ∀ n, P7531799382424625342.a n = A130241 (n + 1)

end A130241

/-! ## A130241.P3122233958935856394

`A130247(A159075(n)+1+n)`
-/

namespace A130241.P3122233958935856394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130247 (A159075 n + 1 + (n : ℤ)).toNat

end

end A130241.P3122233958935856394

namespace A130241

/-- `A130247(A159075(n)+1+n)` -/
def P3122233958935856394.Spec : Prop :=
  ∀ n, P3122233958935856394.a n = A130241 (n + 1)

end A130241

/-! ## A130241.P4222562824980503523

`A130245(n+1)-A057427(n)`
-/

namespace A130241.P4222562824980503523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (n + 1) - A057427 n

end

end A130241.P4222562824980503523

namespace A130241

/-- `A130245(n+1)-A057427(n)` -/
def P4222562824980503523.Spec : Prop :=
  ∀ n, P4222562824980503523.a n = A130241 (n + 1)

end A130241

/-! ## A130241.P14858724428324982012

`A130247(1-A063524(n)+n)`
-/

namespace A130241.P14858724428324982012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130247 (1 - A063524 n + (n : ℤ)).toNat

end

end A130241.P14858724428324982012

namespace A130241

/-- `A130247(1-A063524(n)+n)` -/
def P14858724428324982012.Spec : Prop :=
  ∀ n, P14858724428324982012.a n = A130241 (n + 1)

end A130241

/-! ## A130241.P11575797884978621438

`A130247(1-(A063524(n)-n))`
-/

namespace A130241.P11575797884978621438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130247 (1 - (A063524 n - (n : ℤ))).toNat

end

end A130241.P11575797884978621438

namespace A130241

/-- `A130247(1-(A063524(n)-n))` -/
def P11575797884978621438.Spec : Prop :=
  ∀ n, P11575797884978621438.a n = A130241 (n + 1)

end A130241

/-! ## A130241.P16024168400325602452

`gcd(A130247(n+1), A130779(n))`
-/

namespace A130241.P16024168400325602452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130247 (n + 1)) (A130779 n)

end

end A130241.P16024168400325602452

namespace A130241

/-- `gcd(A130247(n+1), A130779(n))` -/
def P16024168400325602452.Spec : Prop :=
  ∀ n, (P16024168400325602452.a n : ℤ) = A130241 (n + 1)

end A130241

/-! ## A130241.P10131080575053365813

`xor(A063524(n), A130247(n+1))`
-/

namespace A130241.P10131080575053365813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A130247 (n + 1))

end

end A130241.P10131080575053365813

namespace A130241

/-- `xor(A063524(n), A130247(n+1))` -/
def P10131080575053365813.Spec : Prop :=
  ∀ n, P10131080575053365813.a n = A130241 (n + 1)

end A130241

/-! ## A130241.P6563334850673463070

`A072649(A357589(A130312(n+1)+n+1))`
-/

namespace A130241.P6563334850673463070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A357589 (A130312 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A130241.P6563334850673463070

namespace A130241

/-- `A072649(A357589(A130312(n+1)+n+1))` -/
def P6563334850673463070.Spec : Prop :=
  ∀ n, P6563334850673463070.a n = A130241 (n + 1)

end A130241

/-!
# A130242: Minimal index k of a Lucas number such that Lucas(k)>=n (the 'upper' Lucas (A000032) Inverse).

The programs for A130242, the canonical program `A130242.P16587187217365240079` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130242 has offset 0).

The definition of A130242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130242.P736519321149946629

`Δ[A130244(abs(1-n))]`
-/

namespace A130242.P736519321149946629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130244 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130242.P736519321149946629

namespace A130242

/-- `Δ[A130244(abs(1-n))]` -/
def P736519321149946629.Spec : Prop :=
  ∀ n, P736519321149946629.a n = A130242 n

end A130242

/-! ## A130242.P16587187217365240079

`∑[char[A001612(n)]]-char[2]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130242

/-- `∑[char[A001612(n)]]-char[2]` -/
def P16587187217365240079.Spec : Prop :=
  ∀ n, P16587187217365240079.a n = A130242 n

theorem P16587187217365240079.correct : P16587187217365240079.Spec := by
  intro n
  simp only [A130242]

end A130242

/-! ## A130242.P4403102553179536154

`∑[char[A000032(n)+1]]-char[2]`
-/

namespace A130242.P4403102553179536154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130242.P4403102553179536154

namespace A130242

/-- `∑[char[A000032(n)+1]]-char[2]` -/
def P4403102553179536154.Spec : Prop :=
  ∀ n, P4403102553179536154.a n = A130242 n

end A130242

/-! ## A130242.P15610305913528727404

`A130245(A163985(n)-n)`
-/

namespace A130242.P15610305913528727404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A163985 n - (n : ℤ)).toNat

end

end A130242.P15610305913528727404

namespace A130242

/-- `A130245(A163985(n)-n)` -/
def P15610305913528727404.Spec : Prop :=
  ∀ n, P15610305913528727404.a n = A130242 n

end A130242

/-! ## A130242.P1744242347238498174

`A130245(n-A127648(A127648(n)))`
-/

namespace A130242.P1744242347238498174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 ((n : ℤ) - A127648 (A127648 n).toNat).toNat

end

end A130242.P1744242347238498174

namespace A130242

/-- `A130245(n-A127648(A127648(n)))` -/
def P1744242347238498174.Spec : Prop :=
  ∀ n, P1744242347238498174.a n = A130242 n

end A130242

/-! ## A130242.P16372243264871400490

`∑[char[A001612(n)]]%A337462(n)`
-/

namespace A130242.P16372243264871400490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A337462 n)

end

end A130242.P16372243264871400490

namespace A130242

/-- `∑[char[A001612(n)]]%A337462(n)` -/
def P16372243264871400490.Spec : Prop :=
  ∀ n, P16372243264871400490.a n = A130242 n

end A130242

/-! ## A130242.P3986182869588101024

`A345379(A181995(n))`
-/

namespace A130242.P3986182869588101024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A181995 n).toNat

end

end A130242.P3986182869588101024

namespace A130242

/-- `A345379(A181995(n))` -/
def P3986182869588101024.Spec : Prop :=
  ∀ n, P3986182869588101024.a n = A130242 n

end A130242

/-! ## A130242.P15403323103879167689

`A345379(4*A011848(n))`
-/

namespace A130242.P15403323103879167689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (4 * A011848 n).toNat

end

end A130242.P15403323103879167689

namespace A130242

/-- `A345379(4*A011848(n))` -/
def P15403323103879167689.Spec : Prop :=
  ∀ n, P15403323103879167689.a n = A130242 n

end A130242

/-! ## A130242.P3408229929643588951

`A345379(A011371(n²-n))`
-/

namespace A130242.P3408229929643588951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A011371 (n ^ 2 - n)).toNat

end

end A130242.P3408229929643588951

namespace A130242

/-- `A345379(A011371(n²-n))` -/
def P3408229929643588951.Spec : Prop :=
  ∀ n, P3408229929643588951.a n = A130242 n

end A130242

/-! ## A130242.P7108671399938747593

`A345379(n²-A073849(n))`
-/

namespace A130242.P7108671399938747593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 ((n ^ 2 : ℤ) - A073849 n).toNat

end

end A130242.P7108671399938747593

namespace A130242

/-- `A345379(n²-A073849(n))` -/
def P7108671399938747593.Spec : Prop :=
  ∀ n, P7108671399938747593.a n = A130242 n

end A130242

/-! ## A130242.P11351116831316583389

`A345379(A004273(∑[n]-n))`
-/

namespace A130242.P11351116831316583389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A004273 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat

end

end A130242.P11351116831316583389

namespace A130242

/-- `A345379(A004273(∑[n]-n))` -/
def P11351116831316583389.Spec : Prop :=
  ∀ n, P11351116831316583389.a n = A130242 n

end A130242

/-! ## A130242.P2819563047727942896

`A345379(n²-A345376(n)²)`
-/

namespace A130242.P2819563047727942896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 ((n ^ 2 : ℤ) - A345376 n ^ 2).toNat

end

end A130242.P2819563047727942896

namespace A130242

/-- `A345379(n²-A345376(n)²)` -/
def P2819563047727942896.Spec : Prop :=
  ∀ n, P2819563047727942896.a n = A130242 n

end A130242

/-! ## A130242.P4864012231855822940

`A345379(n²-n-A345379(n))`
-/

namespace A130242.P4864012231855822940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 ((n ^ 2 : ℤ) - (n : ℤ) - A345379 n).toNat

end

end A130242.P4864012231855822940

namespace A130242

/-- `A345379(n²-n-A345379(n))` -/
def P4864012231855822940.Spec : Prop :=
  ∀ n, P4864012231855822940.a n = A130242 n

end A130242

/-! ## A130242.P6205405472890676939

`A345379(A008588(∑[A002264(n)]))`
-/

namespace A130242.P6205405472890676939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A008588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A130242.P6205405472890676939

namespace A130242

/-- `A345379(A008588(∑[A002264(n)]))` -/
def P6205405472890676939.Spec : Prop :=
  ∀ n, P6205405472890676939.a n = A130242 n

end A130242

/-! ## A130242.P12276697217747656948

`A345379(A002061(n)-A055086(n))`
-/

namespace A130242.P12276697217747656948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A002061 n - A055086 n).toNat

end

end A130242.P12276697217747656948

namespace A130242

/-- `A345379(A002061(n)-A055086(n))` -/
def P12276697217747656948.Spec : Prop :=
  ∀ n, P12276697217747656948.a n = A130242 n

end A130242

/-! ## A130242.P4157558327711829195

`A345379(A002061(n)-A061395(n+1))`
-/

namespace A130242.P4157558327711829195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A002061 n - A061395 (n + 1)).toNat

end

end A130242.P4157558327711829195

namespace A130242

/-- `A345379(A002061(n)-A061395(n+1))` -/
def P4157558327711829195.Spec : Prop :=
  ∀ n, P4157558327711829195.a n = A130242 n

end A130242

/-! ## A130242.P11712623310943685932

`A345379(A002061(n)-(A345379(n)+1))`
-/

namespace A130242.P11712623310943685932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A002061 n - (A345379 n + 1)).toNat

end

end A130242.P11712623310943685932

namespace A130242

/-- `A345379(A002061(n)-(A345379(n)+1))` -/
def P11712623310943685932.Spec : Prop :=
  ∀ n, P11712623310943685932.a n = A130242 n

end A130242

/-! ## A130242.P12320148792785435624

`A345379(2*(A000124(n)-A083794(n+1)))`
-/

namespace A130242.P12320148792785435624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (2 * (A000124 n - A083794 (n + 1))).toNat

end

end A130242.P12320148792785435624

namespace A130242

/-- `A345379(2*(A000124(n)-A083794(n+1)))` -/
def P12320148792785435624.Spec : Prop :=
  ∀ n, P12320148792785435624.a n = A130242 n

end A130242

/-!
# A130243: Partial sums of the 'lower' Lucas Inverse A130241.

The programs for A130243, the canonical program `A130243.P3803746983901524538` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130243 has offset 1).

The definition of A130243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130243.P3803746983901524538

`∑[A130241(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130243

/-- `∑[A130241(n+1)]` -/
def P3803746983901524538.Spec : Prop :=
  ∀ n, P3803746983901524538.a n = A130243 (n + 1)

theorem P3803746983901524538.correct : P3803746983901524538.Spec := by
  intro n
  simp only [A130243, Nat.add_sub_cancel]

end A130243

/-! ## A130243.P10837516570873773367

`∑[∑[char[A001610(n)]]]`
-/

namespace A130243.P10837516570873773367
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130243.P10837516570873773367

namespace A130243

/-- `∑[∑[char[A001610(n)]]]` -/
def P10837516570873773367.Spec : Prop :=
  ∀ n, (P10837516570873773367.a n : ℤ) = A130243 (n + 1)

end A130243

/-! ## A130243.P12430737978353088385

`∑[A130245(n+1)]-n`
-/

namespace A130243.P12430737978353088385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A130243.P12430737978353088385

namespace A130243

/-- `∑[A130245(n+1)]-n` -/
def P12430737978353088385.Spec : Prop :=
  ∀ n, P12430737978353088385.a n = A130243 (n + 1)

end A130243

/-! ## A130243.P8833141804491249170

`∑[A130247(n+1)+char[1]]`
-/

namespace A130243.P8833141804491249170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130247 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130243.P8833141804491249170

namespace A130243

/-- `∑[A130247(n+1)+char[1]]` -/
def P8833141804491249170.Spec : Prop :=
  ∀ n, P8833141804491249170.a n = A130243 (n + 1)

end A130243

/-! ## A130243.P1978483000120321544

`∑[∑[A102460(n+1)]]-n`
-/

namespace A130243.P1978483000120321544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A130243.P1978483000120321544

namespace A130243

/-- `∑[∑[A102460(n+1)]]-n` -/
def P1978483000120321544.Spec : Prop :=
  ∀ n, P1978483000120321544.a n = A130243 (n + 1)

end A130243

/-! ## A130243.P253540917652283366

`∑[∑[char[∑[A000032(n)]]]+1]`
-/

namespace A130243.P253540917652283366
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130243.P253540917652283366

namespace A130243

/-- `∑[∑[char[∑[A000032(n)]]]+1]` -/
def P253540917652283366.Spec : Prop :=
  ∀ n, (P253540917652283366.a n : ℤ) = A130243 (n + 1)

end A130243

/-! ## A130243.P14371155015870300746

`∑[∑[char[A000204(n+1)-1]]]`
-/

namespace A130243.P14371155015870300746
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130243.P14371155015870300746

namespace A130243

/-- `∑[∑[char[A000204(n+1)-1]]]` -/
def P14371155015870300746.Spec : Prop :=
  ∀ n, (P14371155015870300746.a n : ℤ) = A130243 (n + 1)

end A130243

/-! ## A130243.P4512336325228372797

`A130248(n+1)+A057427(n)`
-/

namespace A130243.P4512336325228372797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130248 (n + 1) + A057427 n

end

end A130243.P4512336325228372797

namespace A130243

/-- `A130248(n+1)+A057427(n)` -/
def P4512336325228372797.Spec : Prop :=
  ∀ n, P4512336325228372797.a n = A130243 (n + 1)

end A130243

/-! ## A130243.P17604936723971188765

`A130248(n+1)-A057428(n)`
-/

namespace A130243.P17604936723971188765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130248 (n + 1) - A057428 n

end

end A130243.P17604936723971188765

namespace A130243

/-- `A130248(n+1)-A057428(n)` -/
def P17604936723971188765.Spec : Prop :=
  ∀ n, P17604936723971188765.a n = A130243 (n + 1)

end A130243

/-! ## A130243.P4957951411832980280

`A130246(n+1)-n`
-/

namespace A130243.P4957951411832980280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130246 (n + 1) - (n : ℤ)

end

end A130243.P4957951411832980280

namespace A130243

/-- `A130246(n+1)-n` -/
def P4957951411832980280.Spec : Prop :=
  ∀ n, P4957951411832980280.a n = A130243 (n + 1)

end A130243

/-! ## A130243.P15902825125707754969

`A130248(n+1)+A130247(n+2)/A130241(n+2)`
-/

namespace A130243.P15902825125707754969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130248 (n + 1) : ℚ) + (A130247 (n + 2) : ℚ) / (A130241 (n + 2) : ℚ)

end

end A130243.P15902825125707754969

namespace A130243

/-- `A130248(n+1)+A130247(n+2)/A130241(n+2)` -/
def P15902825125707754969.Spec : Prop :=
  ∀ n, P15902825125707754969.a n = (A130243 (n + 1) : ℚ)

end A130243

/-! ## A130243.P1237605787278550816

`A130244(n+2)+1-n`
-/

namespace A130243.P1237605787278550816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130244 (n + 2) + (1 - (n : ℤ))

end

end A130243.P1237605787278550816

namespace A130243

/-- `A130244(n+2)+1-n` -/
def P1237605787278550816.Spec : Prop :=
  ∀ n, P1237605787278550816.a n = A130243 (n + 1)

end A130243

/-! ## A130243.P1059083731722247275

`∑[A130242(n+2)-1]+2`
-/

namespace A130243.P1059083731722247275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A130243.P1059083731722247275

namespace A130243

/-- `∑[A130242(n+2)-1]+2` -/
def P1059083731722247275.Spec : Prop :=
  ∀ n, P1059083731722247275.a n = A130243 (n + 1)

end A130243

/-! ## A130243.P11168477114695966879

`∑[A130255(A001519(A130247(n+1)))]`
-/

namespace A130243.P11168477114695966879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130255 (A001519 (A130247 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130243.P11168477114695966879

namespace A130243

/-- `∑[A130255(A001519(A130247(n+1)))]` -/
def P11168477114695966879.Spec : Prop :=
  ∀ n, P11168477114695966879.a n = A130243 (n + 1)

end A130243

/-!
# A130244: Partial sums of the 'upper' Lucas Inverse A130242.

The programs for A130244, the canonical program `A130244.P17329518017061737042` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130244 has offset 0).

The definition of A130244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130244.P17329518017061737042

`∑[A130242(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130244

/-- `∑[A130242(n)]` -/
def P17329518017061737042.Spec : Prop :=
  ∀ n, P17329518017061737042.a n = A130244 n

theorem P17329518017061737042.correct : P17329518017061737042.Spec := by
  intro n
  simp only [A130244]

end A130244

/-! ## A130244.P1610881169277581209

`∑[∑[char[A000032(n)+1]]-char[2]]`
-/

namespace A130244.P1610881169277581209
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130244.P1610881169277581209

namespace A130244

/-- `∑[∑[char[A000032(n)+1]]-char[2]]` -/
def P1610881169277581209.Spec : Prop :=
  ∀ n, P1610881169277581209.a n = A130244 n

end A130244

/-! ## A130244.P9826089662263750745

`∑[A130245(A163985(n)-n)]`
-/

namespace A130244.P9826089662263750745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A163985 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130244.P9826089662263750745

namespace A130244

/-- `∑[A130245(A163985(n)-n)]` -/
def P9826089662263750745.Spec : Prop :=
  ∀ n, P9826089662263750745.a n = A130244 n

end A130244

/-! ## A130244.P17136666711565973491

`A130242(A000290(n)/n)+a(n-1)` with `a(0)=0`
-/

namespace A130244.P17136666711565973491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A130242 (SequenceMachineLib.roundAway ((A000290 n : ℚ) / (n : ℚ))).toNat + a (n - 1)

end

end A130244.P17136666711565973491

namespace A130244

/-- `A130242(A000290(n)/n)+a(n-1)` -/
def P17136666711565973491.Spec : Prop :=
  ∀ n, P17136666711565973491.a n = A130244 n

end A130244

/-! ## A130244.P4877028665192700460

`a(n-1)+A130242(n)%A042948(n)` with `a(0)=0`
-/

namespace A130244.P4877028665192700460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A130242 n) (A042948 n)

end

end A130244.P4877028665192700460

namespace A130244

/-- `a(n-1)+A130242(n)%A042948(n)` -/
def P4877028665192700460.Spec : Prop :=
  ∀ n, P4877028665192700460.a n = A130244 n

end A130244

/-! ## A130244.P8961999181973767619

`∑[A130245(A004524(A163985(n)))]`
-/

namespace A130244.P8961999181973767619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A004524 (A163985 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130244.P8961999181973767619

namespace A130244

/-- `∑[A130245(A004524(A163985(n)))]` -/
def P8961999181973767619.Spec : Prop :=
  ∀ n, P8961999181973767619.a n = A130244 n

end A130244

/-! ## A130244.P1944087136268639048

`∑[A345379(A181995(n))]`
-/

namespace A130244.P1944087136268639048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A181995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130244.P1944087136268639048

namespace A130244

/-- `∑[A345379(A181995(n))]` -/
def P1944087136268639048.Spec : Prop :=
  ∀ n, P1944087136268639048.a n = A130244 n

end A130244

/-! ## A130244.P16634759423531606372

`∑[A345379(n²-A345379(n+1)²)]`
-/

namespace A130244.P16634759423531606372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 ((n ^ 2 : ℤ) - A345379 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130244.P16634759423531606372

namespace A130244

/-- `∑[A345379(n²-A345379(n+1)²)]` -/
def P16634759423531606372.Spec : Prop :=
  ∀ n, P16634759423531606372.a n = A130244 n

end A130244

/-! ## A130244.P4941453301326094700

`∑[A345379(A011371(A002061(n)))]`
-/

namespace A130244.P4941453301326094700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A011371 (A002061 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130244.P4941453301326094700

namespace A130244

/-- `∑[A345379(A011371(A002061(n)))]` -/
def P4941453301326094700.Spec : Prop :=
  ∀ n, P4941453301326094700.a n = A130244 n

end A130244

/-! ## A130244.P10529777286967288771

`∑[A345379(A011848(A004273(n)))]`
-/

namespace A130244.P10529777286967288771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A011848 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130244.P10529777286967288771

namespace A130244

/-- `∑[A345379(A011848(A004273(n)))]` -/
def P10529777286967288771.Spec : Prop :=
  ∀ n, P10529777286967288771.a n = A130244 n

end A130244

/-!
# A130245: Number of Lucas numbers (A000032) <= n.

The programs for A130245, the canonical program `A130245.P8933862901285200477` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130245 has offset 0).

The definition of A130245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130245.P10968949575336781104

`∑[char[round(ϕ^n)]]`
-/

namespace A130245.P10968949575336781104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130245.P10968949575336781104

namespace A130245

/-- `∑[char[round(ϕ^n)]]` -/
def P10968949575336781104.Spec : Prop :=
  ∀ n, (P10968949575336781104.a n : ℤ) = A130245 n

end A130245

/-! ## A130245.P8933862901285200477

`∑[A102460(n)]%35`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130245

/-- `∑[A102460(n)]%35` -/
def P8933862901285200477.Spec : Prop :=
  ∀ n, P8933862901285200477.a n = A130245 n

theorem P8933862901285200477.correct : P8933862901285200477.Spec := by
  intro n
  simp only [A130245]

end A130245

/-! ## A130245.P5254335559753111782

`n-∑[char[A057854(n+1)]]`
-/

namespace A130245.P5254335559753111782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130245.P5254335559753111782

namespace A130245

/-- `n-∑[char[A057854(n+1)]]` -/
def P5254335559753111782.Spec : Prop :=
  ∀ n, P5254335559753111782.a n = A130245 n

end A130245

/-! ## A130245.P10722820073598731696

`∑[char[A169985(n)]]%(n+1)`
-/

namespace A130245.P10722820073598731696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A130245.P10722820073598731696

namespace A130245

/-- `∑[char[A169985(n)]]%(n+1)` -/
def P10722820073598731696.Spec : Prop :=
  ∀ n, (P10722820073598731696.a n : ℤ) = A130245 n

end A130245

/-! ## A130245.P2274982543138877373

`∑[char[A000032(n)]]%(n+3)`
-/

namespace A130245.P2274982543138877373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 3)

end

end A130245.P2274982543138877373

namespace A130245

/-- `∑[char[A000032(n)]]%(n+3)` -/
def P2274982543138877373.Spec : Prop :=
  ∀ n, (P2274982543138877373.a n : ℤ) = A130245 n

end A130245

/-! ## A130245.P715739334899550559

`A055643(∑[A102460(n)])`
-/

namespace A130245.P715739334899550559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130245.P715739334899550559

namespace A130245

/-- `A055643(∑[A102460(n)])` -/
def P715739334899550559.Spec : Prop :=
  ∀ n, P715739334899550559.a n = A130245 n

end A130245

/-! ## A130245.P1478112278553388408

`A089868(∑[A102460(n)])`
-/

namespace A130245.P1478112278553388408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130245.P1478112278553388408

namespace A130245

/-- `A089868(∑[A102460(n)])` -/
def P1478112278553388408.Spec : Prop :=
  ∀ n, P1478112278553388408.a n = A130245 n

end A130245

/-! ## A130245.P10843410313196330245

`A118759(∑[A102460(n)])`
-/

namespace A130245.P10843410313196330245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130245.P10843410313196330245

namespace A130245

/-- `A118759(∑[A102460(n)])` -/
def P10843410313196330245.Spec : Prop :=
  ∀ n, P10843410313196330245.a n = A130245 n

end A130245

/-! ## A130245.P3352985966816754817

`abs(A001489(∑[A102460(n)]))`
-/

namespace A130245.P3352985966816754817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A130245.P3352985966816754817

namespace A130245

/-- `abs(A001489(∑[A102460(n)]))` -/
def P3352985966816754817.Spec : Prop :=
  ∀ n, P3352985966816754817.a n = A130245 n

end A130245

/-! ## A130245.P9746814587846453565

`A130246(n+1)-(A130246(n)+A102460(n+1))`
-/

namespace A130245.P9746814587846453565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130246 (n + 1) - (A130246 n + A102460 (n + 1))

end

end A130245.P9746814587846453565

namespace A130245

/-- `A130246(n+1)-(A130246(n)+A102460(n+1))` -/
def P9746814587846453565.Spec : Prop :=
  ∀ n, P9746814587846453565.a n = A130245 n

end A130245

/-! ## A130245.P11852190980757728645

`A130241(n+1)+A130242(n+1)-A130247(n+1)`
-/

namespace A130245.P11852190980757728645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 1) + (A130242 (n + 1) - A130247 (n + 1))

end

end A130245.P11852190980757728645

namespace A130245

/-- `A130241(n+1)+A130242(n+1)-A130247(n+1)` -/
def P11852190980757728645.Spec : Prop :=
  ∀ n, P11852190980757728645.a n = A130245 n

end A130245

/-! ## A130245.P3624720061639991372

`A130242(n+1)+A102460(2*n+1)*A102460(2*n)`
-/

namespace A130245.P3624720061639991372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (n + 1) + A102460 (2 * n + 1) * A102460 (2 * n)

end

end A130245.P3624720061639991372

namespace A130245

/-- `A130242(n+1)+A102460(2*n+1)*A102460(2*n)` -/
def P3624720061639991372.Spec : Prop :=
  ∀ n, P3624720061639991372.a n = A130245 n

end A130245

/-! ## A130245.P9364000850013685763

`A130242(n+1)+A009947(Δ[A130242(n+1)])`
-/

namespace A130245.P9364000850013685763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (n + 1) + A009947 (f1 (n + 1) - f1 n).toNat

end

end A130245.P9364000850013685763

namespace A130245

/-- `A130242(n+1)+A009947(Δ[A130242(n+1)])` -/
def P9364000850013685763.Spec : Prop :=
  ∀ n, P9364000850013685763.a n = A130245 n

end A130245

/-! ## A130245.P7209697535166137026

`A362692(A004956(n))-1`
-/

namespace A130245.P7209697535166137026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362692 (A004956 n).toNat - 1

end

end A130245.P7209697535166137026

namespace A130245

/-- `A362692(A004956(n))-1` -/
def P7209697535166137026.Spec : Prop :=
  ∀ n, P7209697535166137026.a n = A130245 n

end A130245

/-! ## A130245.P8879296007107629529

`A130242(n+1)+A102460(A130242(2*n+1)²)`
-/

namespace A130245.P8879296007107629529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (n + 1) + A102460 (A130242 (2 * n + 1) ^ 2).toNat

end

end A130245.P8879296007107629529

namespace A130245

/-- `A130242(n+1)+A102460(A130242(2*n+1)²)` -/
def P8879296007107629529.Spec : Prop :=
  ∀ n, P8879296007107629529.a n = A130245 n

end A130245

/-! ## A130245.P3926309451664573195

`A130242(n+1)+A102460(A130244(n+2))`
-/

namespace A130245.P3926309451664573195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (n + 1) + A102460 (A130244 (n + 2)).toNat

end

end A130245.P3926309451664573195

namespace A130245

/-- `A130242(n+1)+A102460(A130244(n+2))` -/
def P3926309451664573195.Spec : Prop :=
  ∀ n, P3926309451664573195.a n = A130245 n

end A130245

/-! ## A130245.P9114384034921066131

`A345379(∑[2*n])`
-/

namespace A130245.P9114384034921066131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130245.P9114384034921066131

namespace A130245

/-- `A345379(∑[2*n])` -/
def P9114384034921066131.Spec : Prop :=
  ∀ n, P9114384034921066131.a n = A130245 n

end A130245

/-! ## A130245.P2525918626580034374

`A130260(A001906(A345379(n²+n)))`
-/

namespace A130245.P2525918626580034374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A001906 (A345379 (n ^ 2 + n)).toNat).toNat

end

end A130245.P2525918626580034374

namespace A130245

/-- `A130260(A001906(A345379(n²+n)))` -/
def P2525918626580034374.Spec : Prop :=
  ∀ n, P2525918626580034374.a n = A130245 n

end A130245

/-!
# A130246: Partial sums of A130245.

The programs for A130246, the canonical program `A130246.P8954244627215801184` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130246 has offset 0).

The definition of A130246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130246.P16444093862514585409

`∑[∑[char[round(ϕ^n)]]]`
-/

namespace A130246.P16444093862514585409
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130246.P16444093862514585409

namespace A130246

/-- `∑[∑[char[round(ϕ^n)]]]` -/
def P16444093862514585409.Spec : Prop :=
  ∀ n, (P16444093862514585409.a n : ℤ) = A130246 n

end A130246

/-! ## A130246.P12935168313633366082

`and(∑[A130245(n)], -1)`
-/

namespace A130246.P12935168313633366082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A130246.P12935168313633366082

namespace A130246

/-- `and(∑[A130245(n)], -1)` -/
def P12935168313633366082.Spec : Prop :=
  ∀ n, P12935168313633366082.a n = A130246 n

end A130246

/-! ## A130246.P1099765254798409616

`∑[A130245(n)]*A057427(n)`
-/

namespace A130246.P1099765254798409616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A130246.P1099765254798409616

namespace A130246

/-- `∑[A130245(n)]*A057427(n)` -/
def P1099765254798409616.Spec : Prop :=
  ∀ n, P1099765254798409616.a n = A130246 n

end A130246

/-! ## A130246.P12068526630755297890

`∑[A130245(n)]%A000969(n)`
-/

namespace A130246.P12068526630755297890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000969 n)

end

end A130246.P12068526630755297890

namespace A130246

/-- `∑[A130245(n)]%A000969(n)` -/
def P12068526630755297890.Spec : Prop :=
  ∀ n, P12068526630755297890.a n = A130246 n

end A130246

/-! ## A130246.P10222550446237835557

`lcm(∑[A130245(n)], A014077(n+2))`
-/

namespace A130246.P10222550446237835557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A014077 (n + 2))

end

end A130246.P10222550446237835557

namespace A130246

/-- `lcm(∑[A130245(n)], A014077(n+2))` -/
def P10222550446237835557.Spec : Prop :=
  ∀ n, (P10222550446237835557.a n : ℤ) = A130246 n

end A130246

/-! ## A130246.P5703052273468043914

`∑[A130245(n+1)]-A130245(n+1)`
-/

namespace A130246.P5703052273468043914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130245 (n + 1)

end

end A130246.P5703052273468043914

namespace A130246

/-- `∑[A130245(n+1)]-A130245(n+1)` -/
def P5703052273468043914.Spec : Prop :=
  ∀ n, P5703052273468043914.a n = A130246 n

end A130246

/-! ## A130246.P8954244627215801184

`A130248(n+1)-A130241(n+1)+n`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130246

/-- `A130248(n+1)-A130241(n+1)+n` -/
def P8954244627215801184.Spec : Prop :=
  ∀ n, P8954244627215801184.a n = A130246 n

theorem P8954244627215801184.correct : P8954244627215801184.Spec := by
  intro n
  simp only [A130246]

end A130246

/-! ## A130246.P1743351645374728691

`A130243(n+1)+A130244(n+1)-A130248(n+1)`
-/

namespace A130246.P1743351645374728691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130243 (n + 1) + (A130244 (n + 1) - A130248 (n + 1))

end

end A130246.P1743351645374728691

namespace A130246

/-- `A130243(n+1)+A130244(n+1)-A130248(n+1)` -/
def P1743351645374728691.Spec : Prop :=
  ∀ n, P1743351645374728691.a n = A130246 n

end A130246

/-! ## A130246.P11231544790467076051

`∑[A130242(A000201(n+1))]-n`
-/

namespace A130246.P11231544790467076051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (A000201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A130246.P11231544790467076051

namespace A130246

/-- `∑[A130242(A000201(n+1))]-n` -/
def P11231544790467076051.Spec : Prop :=
  ∀ n, P11231544790467076051.a n = A130246 n

end A130246

/-! ## A130246.P12677567823815930170

`∑[A130245(n)]*A165326(2*n+1)`
-/

namespace A130246.P12677567823815930170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A165326 (2 * n + 1)

end

end A130246.P12677567823815930170

namespace A130246

/-- `∑[A130245(n)]*A165326(2*n+1)` -/
def P12677567823815930170.Spec : Prop :=
  ∀ n, P12677567823815930170.a n = A130246 n

end A130246

/-! ## A130246.P3735257178931968759

`A130245(2*n+1)+A130244(n+1)-A130241(2*n+1)`
-/

namespace A130246.P3735257178931968759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (2 * n + 1) + (A130244 (n + 1) - A130241 (2 * n + 1))

end

end A130246.P3735257178931968759

namespace A130246

/-- `A130245(2*n+1)+A130244(n+1)-A130241(2*n+1)` -/
def P3735257178931968759.Spec : Prop :=
  ∀ n, P3735257178931968759.a n = A130246 n

end A130246

/-!
# A130247: Inverse Lucas (A000032) numbers: index k of a Lucas number such that Lucas(k)=n; max(k|Lucas(k) < n), if there is no such index.

The programs for A130247, the canonical program `A130247.P7336442961275218768` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130247 has offset 1).

The definition of A130247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130247.P15977748462114384395

`∑[char[A001610(n)]]-char[1]`
-/

namespace A130247.P15977748462114384395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130247.P15977748462114384395

namespace A130247

/-- `∑[char[A001610(n)]]-char[1]` -/
def P15977748462114384395.Spec : Prop :=
  ∀ n, P15977748462114384395.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P15207830803926392373

`∑[char[∑[A000032(n)]]]+1-char[1]`
-/

namespace A130247.P15207830803926392373
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130247.P15207830803926392373

namespace A130247

/-- `∑[char[∑[A000032(n)]]]+1-char[1]` -/
def P15207830803926392373.Spec : Prop :=
  ∀ n, P15207830803926392373.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P3011405006321319756

`A159075(n)+A130241(n+1)`
-/

namespace A130247.P3011405006321319756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A130241 (n + 1)

end

end A130247.P3011405006321319756

namespace A130247

/-- `A159075(n)+A130241(n+1)` -/
def P3011405006321319756.Spec : Prop :=
  ∀ n, P3011405006321319756.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P7336442961275218768

`A130241(n+1)-A063524(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130247

/-- `A130241(n+1)-A063524(n)` -/
def P7336442961275218768.Spec : Prop :=
  ∀ n, P7336442961275218768.a n = A130247 (n + 1)

theorem P7336442961275218768.correct : P7336442961275218768.Spec := by
  intro n
  simp only [A130247, Nat.add_sub_cancel]

end A130247

/-! ## A130247.P11327406129056812907

`A060576(n)*A130241(n+1)`
-/

namespace A130247.P11327406129056812907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A130241 (n + 1)

end

end A130247.P11327406129056812907

namespace A130247

/-- `A060576(n)*A130241(n+1)` -/
def P11327406129056812907.Spec : Prop :=
  ∀ n, P11327406129056812907.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P14888509705052964559

`A130241(n+1)%A036112(n)`
-/

namespace A130247.P14888509705052964559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130241 (n + 1)) (A036112 n)

end

end A130247.P14888509705052964559

namespace A130247

/-- `A130241(n+1)%A036112(n)` -/
def P14888509705052964559.Spec : Prop :=
  ∀ n, P14888509705052964559.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P10461438283042577833

`lcm(A105812(n), A130241(n+1))`
-/

namespace A130247.P10461438283042577833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A130241 (n + 1))

end

end A130247.P10461438283042577833

namespace A130247

/-- `lcm(A105812(n), A130241(n+1))` -/
def P10461438283042577833.Spec : Prop :=
  ∀ n, (P10461438283042577833.a n : ℤ) = A130247 (n + 1)

end A130247

/-! ## A130247.P13361016825937626018

`and(1, A178615(n+1))*A130241(n+1)`
-/

namespace A130247.P13361016825937626018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A178615 (n + 1)) * A130241 (n + 1)

end

end A130247.P13361016825937626018

namespace A130247

/-- `and(1, A178615(n+1))*A130241(n+1)` -/
def P13361016825937626018.Spec : Prop :=
  ∀ n, P13361016825937626018.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P1034672336099092026

`C(A130241(n+1), A130241(C(2, n)+1))`
-/

namespace A130247.P1034672336099092026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130241 (n + 1)).toNat (A130241 (Nat.choose 2 n + 1)).toNat

end

end A130247.P1034672336099092026

namespace A130247

/-- `C(A130241(n+1), A130241(C(2, n)+1))` -/
def P1034672336099092026.Spec : Prop :=
  ∀ n, (P1034672336099092026.a n : ℤ) = A130247 (n + 1)

end A130247

/-! ## A130247.P961870062180474244

`∑[char[A000204(n+1)-1]]%(2-A266223(n))`
-/

namespace A130247.P961870062180474244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (2 - A266223 n)

end

end A130247.P961870062180474244

namespace A130247

/-- `∑[char[A000204(n+1)-1]]%(2-A266223(n))` -/
def P961870062180474244.Spec : Prop :=
  ∀ n, P961870062180474244.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P5205978096183663289

`A130245(A000045(A130245(n+1)))-char[1]`
-/

namespace A130247.P5205978096183663289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A000045 (A130245 (n + 1)).toNat).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130247.P5205978096183663289

namespace A130247

/-- `A130245(A000045(A130245(n+1)))-char[1]` -/
def P5205978096183663289.Spec : Prop :=
  ∀ n, P5205978096183663289.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P250927205803493394

`A105348(n*A105348(n))*A130241(n+1)`
-/

namespace A130247.P250927205803493394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 ((n : ℤ) * A105348 n).toNat * A130241 (n + 1)

end

end A130247.P250927205803493394

namespace A130247

/-- `A105348(n*A105348(n))*A130241(n+1)` -/
def P250927205803493394.Spec : Prop :=
  ∀ n, P250927205803493394.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P13923060290607451769

`A130245(n+1)-A060588(A164449(C(2, n+1)+4))`
-/

namespace A130247.P13923060290607451769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (n + 1) - A060588 (A164449 (Nat.choose 2 (n + 1) + 4)).toNat

end

end A130247.P13923060290607451769

namespace A130247

/-- `A130245(n+1)-A060588(A164449(C(2, n+1)+4))` -/
def P13923060290607451769.Spec : Prop :=
  ∀ n, P13923060290607451769.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P12950958399706336928

`A130241(n+1)-A294878(n+1)*A296209(n+1)`
-/

namespace A130247.P12950958399706336928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 1) - A294878 (n + 1) * A296209 (n + 1)

end

end A130247.P12950958399706336928

namespace A130247

/-- `A130241(n+1)-A294878(n+1)*A296209(n+1)` -/
def P12950958399706336928.Spec : Prop :=
  ∀ n, P12950958399706336928.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P12679456259809753739

`A130241(n+1)+A130242(n+1)-A130245(n)`
-/

namespace A130247.P12679456259809753739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 1) + (A130242 (n + 1) - A130245 n)

end

end A130247.P12679456259809753739

namespace A130247

/-- `A130241(n+1)+A130242(n+1)-A130245(n)` -/
def P12679456259809753739.Spec : Prop :=
  ∀ n, P12679456259809753739.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P6983691005467386573

`A130241(n+1)-A102460(A130244(n+2))`
-/

namespace A130247.P6983691005467386573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 1) - A102460 (A130244 (n + 2)).toNat

end

end A130247.P6983691005467386573

namespace A130247

/-- `A130241(n+1)-A102460(A130244(n+2))` -/
def P6983691005467386573.Spec : Prop :=
  ∀ n, P6983691005467386573.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P499453419058459891

`A130241(n+1)-A102460(A130258(2*n))`
-/

namespace A130247.P499453419058459891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 1) - A102460 (A130258 (2 * n)).toNat

end

end A130247.P499453419058459891

namespace A130247

/-- `A130241(n+1)-A102460(A130258(2*n))` -/
def P499453419058459891.Spec : Prop :=
  ∀ n, P499453419058459891.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P13418773160090679926

`and(A130241(n+1), A283651(n))`
-/

namespace A130247.P13418773160090679926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130241 (n + 1)) (A283651 n)

end

end A130247.P13418773160090679926

namespace A130247

/-- `and(A130241(n+1), A283651(n))` -/
def P13418773160090679926.Spec : Prop :=
  ∀ n, P13418773160090679926.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P4185543257950689920

`and(A130241(n+1), A284485(n))`
-/

namespace A130247.P4185543257950689920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130241 (n + 1)) (A284485 n)

end

end A130247.P4185543257950689920

namespace A130247

/-- `and(A130241(n+1), A284485(n))` -/
def P4185543257950689920.Spec : Prop :=
  ∀ n, P4185543257950689920.a n = A130247 (n + 1)

end A130247

/-! ## A130247.P13961444111312997841

`and(A130241(n+1), A284354(n))`
-/

namespace A130247.P13961444111312997841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130241 (n + 1)) (A284354 n)

end

end A130247.P13961444111312997841

namespace A130247

/-- `and(A130241(n+1), A284354(n))` -/
def P13961444111312997841.Spec : Prop :=
  ∀ n, P13961444111312997841.a n = A130247 (n + 1)

end A130247

/-!
# A130248: Partial sums of the Lucas Inverse A130247.

The programs for A130248, the canonical program `A130248.P17937413160944975329` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130248 has offset 1).

The definition of A130248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130248.P17937413160944975329

`∑[A130247(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A130248

/-- `∑[A130247(n+1)]` -/
def P17937413160944975329.Spec : Prop :=
  ∀ n, P17937413160944975329.a n = A130248 (n + 1)

theorem P17937413160944975329.correct : P17937413160944975329.Spec := by
  intro n
  simp only [A130248, Nat.add_sub_cancel]

end A130248

/-! ## A130248.P2092495826959606800

`∑[A130245(1-char[1]+n)]-n`
-/

namespace A130248.P2092495826959606800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A130248.P2092495826959606800

namespace A130248

/-- `∑[A130245(1-char[1]+n)]-n` -/
def P2092495826959606800.Spec : Prop :=
  ∀ n, P2092495826959606800.a n = A130248 (n + 1)

end A130248

/-! ## A130248.P1031864447579330088

`A130241(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130248.P1031864447579330088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A130241 (n + 1) + a (n - 1)

end

end A130248.P1031864447579330088

namespace A130248

/-- `A130241(n+1)+a(n-1)` -/
def P1031864447579330088.Spec : Prop :=
  ∀ n, P1031864447579330088.a n = A130248 (n + 1)

end A130248

/-! ## A130248.P9871131016638825911

`A130243(n+1)+A057428(n)`
-/

namespace A130248.P9871131016638825911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130243 (n + 1) + A057428 n

end

end A130248.P9871131016638825911

namespace A130248

/-- `A130243(n+1)+A057428(n)` -/
def P9871131016638825911.Spec : Prop :=
  ∀ n, P9871131016638825911.a n = A130248 (n + 1)

end A130248

/-! ## A130248.P15018897200938057101

`A130243(n+1)-A057427(n)`
-/

namespace A130248.P15018897200938057101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130243 (n + 1) - A057427 n

end

end A130248.P15018897200938057101

namespace A130248

/-- `A130243(n+1)-A057427(n)` -/
def P15018897200938057101.Spec : Prop :=
  ∀ n, P15018897200938057101.a n = A130248 (n + 1)

end A130248

/-! ## A130248.P11017574790121786480

`∑[A130241(n+1)-A063524(n)]`
-/

namespace A130248.P11017574790121786480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 1) - A063524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130248.P11017574790121786480

namespace A130248

/-- `∑[A130241(n+1)-A063524(n)]` -/
def P11017574790121786480.Spec : Prop :=
  ∀ n, P11017574790121786480.a n = A130248 (n + 1)

end A130248

/-! ## A130248.P18190462515169088067

`A130243(n+1)-A157178(C(2, a(n-1)))` with `a(0)=1`
-/

namespace A130248.P18190462515169088067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130243 (n + 1) - A157178 (Nat.choose 2 (a (n - 1)).toNat)

end

end A130248.P18190462515169088067

namespace A130248

/-- `A130243(n+1)-A157178(C(2, a(n-1)))` -/
def P18190462515169088067.Spec : Prop :=
  ∀ n, P18190462515169088067.a n = A130248 (n + 1)

end A130248

/-! ## A130248.P6718629584796854698

`A130241(n+1)+A130243(n+1)-A130245(n+1)`
-/

namespace A130248.P6718629584796854698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 1) + (A130243 (n + 1) - A130245 (n + 1))

end

end A130248.P6718629584796854698

namespace A130248

/-- `A130241(n+1)+A130243(n+1)-A130245(n+1)` -/
def P6718629584796854698.Spec : Prop :=
  ∀ n, P6718629584796854698.a n = A130248 (n + 1)

end A130248

/-! ## A130248.P12210343855881675903

`A130244(n+1)+A130245(n+1)-n`
-/

namespace A130248.P12210343855881675903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130244 (n + 1) + (A130245 (n + 1) - (n : ℤ))

end

end A130248.P12210343855881675903

namespace A130248

/-- `A130244(n+1)+A130245(n+1)-n` -/
def P12210343855881675903.Spec : Prop :=
  ∀ n, P12210343855881675903.a n = A130248 (n + 1)

end A130248

/-! ## A130248.P784800086609095568

`A130243(n+1)+A130244(n+1)-A130246(n)`
-/

namespace A130248.P784800086609095568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130243 (n + 1) + (A130244 (n + 1) - A130246 n)

end

end A130248.P784800086609095568

namespace A130248

/-- `A130243(n+1)+A130244(n+1)-A130246(n)` -/
def P784800086609095568.Spec : Prop :=
  ∀ n, P784800086609095568.a n = A130248 (n + 1)

end A130248

/-! ## A130248.P14523643354367696337

`∑[A130241(n+1)%A000032(n)]`
-/

namespace A130248.P14523643354367696337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130241 (n + 1)) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130248.P14523643354367696337

namespace A130248

/-- `∑[A130241(n+1)%A000032(n)]` -/
def P14523643354367696337.Spec : Prop :=
  ∀ n, P14523643354367696337.a n = A130248 (n + 1)

end A130248

/-!
# A130249: Maximal index k of a Jacobsthal number such that A001045(k)<=n (the 'lower' Jacobsthal inverse).

The programs for A130249, the canonical program `A130249.P17391547216416663463` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130249 has offset 0).

The definition of A130249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130249.P17391547216416663463

`floor(log2(3*n+1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130249

/-- `floor(log2(3*n+1))` -/
def P17391547216416663463.Spec : Prop :=
  ∀ n, (P17391547216416663463.a n : ℤ) = A130249 n

theorem P17391547216416663463.correct : P17391547216416663463.Spec := by
  intro n
  simp only [A130249]

end A130249

/-! ## A130249.P3705564592868786240

`A130253(n)-1`
-/

namespace A130249.P3705564592868786240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 n - 1

end

end A130249.P3705564592868786240

namespace A130249

/-- `A130253(n)-1` -/
def P3705564592868786240.Spec : Prop :=
  ∀ n, P3705564592868786240.a n = A130249 n

end A130249

/-! ## A130249.P3982481331460419525

`A130250(n+1)-1`
-/

namespace A130249.P3982481331460419525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 (n + 1) - 1

end

end A130249.P3982481331460419525

namespace A130249

/-- `A130250(n+1)-1` -/
def P3982481331460419525.Spec : Prop :=
  ∀ n, P3982481331460419525.a n = A130249 n

end A130249

/-! ## A130249.P12688665655866212314

`A000523(3*n+1)`
-/

namespace A130249.P12688665655866212314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (3 * n + 1)

end

end A130249.P12688665655866212314

namespace A130249

/-- `A000523(3*n+1)` -/
def P12688665655866212314.Spec : Prop :=
  ∀ n, P12688665655866212314.a n = A130249 n

end A130249

/-! ## A130249.P12215431046549666203

`ceil(log2(∑[gcd(2, n+1)]))`
-/

namespace A130249.P12215431046549666203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A130249.P12215431046549666203

namespace A130249

/-- `ceil(log2(∑[gcd(2, n+1)]))` -/
def P12215431046549666203.Spec : Prop :=
  ∀ n, P12215431046549666203.a n = A130249 n

end A130249

/-! ## A130249.P11084807210929323921

`ceil(log2(comp[and(3*n, -2)]))`
-/

namespace A130249.P11084807210929323921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌉

end

end A130249.P11084807210929323921

namespace A130249

/-- `ceil(log2(comp[and(3*n, -2)]))` -/
def P11084807210929323921.Spec : Prop :=
  ∀ n, P11084807210929323921.a n = A130249 n

end A130249

/-! ## A130249.P1854284235593351245

`ceil(log2(comp[∑[2*n%3]]))`
-/

namespace A130249.P1854284235593351245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌉

end

end A130249.P1854284235593351245

namespace A130249

/-- `ceil(log2(comp[∑[2*n%3]]))` -/
def P1854284235593351245.Spec : Prop :=
  ∀ n, P1854284235593351245.a n = A130249 n

end A130249

/-! ## A130249.P6470802386709451741

`ceil(log2(or(1, ceil(3*n/2))))`
-/

namespace A130249.P6470802386709451741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Int.lor 1 ⌈3 * ((n : ℚ) / 2)⌉ : ℝ)⌉

end

end A130249.P6470802386709451741

namespace A130249

/-- `ceil(log2(or(1, ceil(3*n/2))))` -/
def P6470802386709451741.Spec : Prop :=
  ∀ n, P6470802386709451741.a n = A130249 n

end A130249

/-! ## A130249.P10739618358316482138

`ceil(log2(∑[3-a(n-1)]))` with `a(0)=1, a(1)=3`
-/

namespace A130249.P10739618358316482138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A130249.P10739618358316482138

namespace A130249

/-- `ceil(log2(∑[3-a(n-1)]))` -/
def P10739618358316482138.Spec : Prop :=
  ∀ n, P10739618358316482138.a n = A130249 n

end A130249

/-! ## A130249.P2911083231500185725

`ceil(log2(A293990(n)))`
-/

namespace A130249.P2911083231500185725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A293990 n : ℝ)⌉

end

end A130249.P2911083231500185725

namespace A130249

/-- `ceil(log2(A293990(n)))` -/
def P2911083231500185725.Spec : Prop :=
  ∀ n, P2911083231500185725.a n = A130249 n

end A130249

/-! ## A130249.P6931008069553457640

`∑[A105348(n)]-1`
-/

namespace A130249.P6931008069553457640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A130249.P6931008069553457640

namespace A130249

/-- `∑[A105348(n)]-1` -/
def P6931008069553457640.Spec : Prop :=
  ∀ n, P6931008069553457640.a n = A130249 n

end A130249

/-! ## A130249.P14830042880191191141

`ceil(log2(A003159(n+1)))`
-/

namespace A130249.P14830042880191191141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A003159 (n + 1) : ℝ)⌉

end

end A130249.P14830042880191191141

namespace A130249

/-- `ceil(log2(A003159(n+1)))` -/
def P14830042880191191141.Spec : Prop :=
  ∀ n, P14830042880191191141.a n = A130249 n

end A130249

/-! ## A130249.P15278311576615696713

`ceil(log2(A007494(n)+1))`
-/

namespace A130249.P15278311576615696713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A007494 n + 1 : ℝ)⌉

end

end A130249.P15278311576615696713

namespace A130249

/-- `ceil(log2(A007494(n)+1))` -/
def P15278311576615696713.Spec : Prop :=
  ∀ n, P15278311576615696713.a n = A130249 n

end A130249

/-! ## A130249.P9265376617430784468

`floor(log2(A016933(n)))-1`
-/

namespace A130249.P9265376617430784468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A016933 n).toNat : ℤ) - 1

end

end A130249.P9265376617430784468

namespace A130249

/-- `floor(log2(A016933(n)))-1` -/
def P9265376617430784468.Spec : Prop :=
  ∀ n, P9265376617430784468.a n = A130249 n

end A130249

/-! ## A130249.P9792318003286880053

`floor(log2(A016945(n)))-1`
-/

namespace A130249.P9792318003286880053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A016945 n).toNat : ℤ) - 1

end

end A130249.P9792318003286880053

namespace A130249

/-- `floor(log2(A016945(n)))-1` -/
def P9792318003286880053.Spec : Prop :=
  ∀ n, P9792318003286880053.a n = A130249 n

end A130249

/-! ## A130249.P16566588918447578287

`ceil(log2(A032766(n+1)))`
-/

namespace A130249.P16566588918447578287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A032766 (n + 1) : ℝ)⌉

end

end A130249.P16566588918447578287

namespace A130249

/-- `ceil(log2(A032766(n+1)))` -/
def P16566588918447578287.Spec : Prop :=
  ∀ n, P16566588918447578287.a n = A130249 n

end A130249

/-! ## A130249.P16277876106551724016

`ceil(log2(A047251(n+1)))`
-/

namespace A130249.P16277876106551724016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A047251 (n + 1) : ℝ)⌉

end

end A130249.P16277876106551724016

namespace A130249

/-- `ceil(log2(A047251(n+1)))` -/
def P16277876106551724016.Spec : Prop :=
  ∀ n, P16277876106551724016.a n = A130249 n

end A130249

/-!
# A130250: Minimal index k of a Jacobsthal number such that A001045(k) >= n (the 'upper' Jacobsthal inverse).

The programs for A130250, the canonical program `A130250.P10470076401278137826` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130250 has offset 0).

The definition of A130250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130250.P4171703338173324730

`ceil(log2(xor(1, 3*n)))`
-/

namespace A130250.P4171703338173324730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.xor 1 (3 * n) : ℝ)⌉

end

end A130250.P4171703338173324730

namespace A130250

/-- `ceil(log2(xor(1, 3*n)))` -/
def P4171703338173324730.Spec : Prop :=
  ∀ n, P4171703338173324730.a n = A130250 n

end A130250

/-! ## A130250.P9793122647920535351

`ceil(log2(abs(1-3*n)))`
-/

namespace A130250.P9793122647920535351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (|1 - (3 * n : ℤ)| : ℝ)⌉

end

end A130250.P9793122647920535351

namespace A130250

/-- `ceil(log2(abs(1-3*n)))` -/
def P9793122647920535351.Spec : Prop :=
  ∀ n, P9793122647920535351.a n = A130250 n

end A130250

/-! ## A130250.P10470076401278137826

`floor(log2(xor(2, 6*n)-1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130250

/-- `floor(log2(xor(2, 6*n)-1))` -/
def P10470076401278137826.Spec : Prop :=
  ∀ n, (P10470076401278137826.a n : ℤ) = A130250 n

theorem P10470076401278137826.correct : P10470076401278137826.Spec := by
  intro n
  simp only [A130250]

end A130250

/-! ## A130250.P8878697619596393480

`floor(log2(record[(3*n)^(n%2)]))`
-/

namespace A130250.P8878697619596393480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A130250.P8878697619596393480

namespace A130250

/-- `floor(log2(record[(3*n)^(n%2)]))` -/
def P8878697619596393480.Spec : Prop :=
  ∀ n, (P8878697619596393480.a n : ℤ) = A130250 n

end A130250

/-! ## A130250.P4559755219459786897

`floor(log2(3/acot(comp[2*(n+1)])))`
-/

namespace A130250.P4559755219459786897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (3 / SequenceMachineLib.acot (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))⌋

end

end A130250.P4559755219459786897

namespace A130250

/-- `floor(log2(3/acot(comp[2*(n+1)])))` -/
def P4559755219459786897.Spec : Prop :=
  ∀ n, P4559755219459786897.a n = A130250 n

end A130250

/-! ## A130250.P1853286982695459105

`floor(log2(2*comp[(n+1)*gcd(9, n)]+1))`
-/

namespace A130250.P1853286982695459105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 9 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A130250.P1853286982695459105

namespace A130250

/-- `floor(log2(2*comp[(n+1)*gcd(9, n)]+1))` -/
def P1853286982695459105.Spec : Prop :=
  ∀ n, (P1853286982695459105.a n : ℤ) = A130250 n

end A130250

/-! ## A130250.P699617778938258160

`floor(log2(A146512(n+1)))`
-/

namespace A130250.P699617778938258160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A146512 (n + 1)).toNat

end

end A130250.P699617778938258160

namespace A130250

/-- `floor(log2(A146512(n+1)))` -/
def P699617778938258160.Spec : Prop :=
  ∀ n, (P699617778938258160.a n : ℤ) = A130250 n

end A130250

/-! ## A130250.P818360978571604860

`comp[A001045(n)+1+n]-n`
-/

namespace A130250.P818360978571604860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130250.P818360978571604860

namespace A130250

/-- `comp[A001045(n)+1+n]-n` -/
def P818360978571604860.Spec : Prop :=
  ∀ n, P818360978571604860.a n = A130250 n

end A130250

/-! ## A130250.P6407318038298069108

`A130253(n)-A105348(n)`
-/

namespace A130250.P6407318038298069108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 n - A105348 n

end

end A130250.P6407318038298069108

namespace A130250

/-- `A130253(n)-A105348(n)` -/
def P6407318038298069108.Spec : Prop :=
  ∀ n, P6407318038298069108.a n = A130250 n

end A130250

/-! ## A130250.P447473405104587356

`A130252(n+1)-(A130252(n)+A105348(n))`
-/

namespace A130250.P447473405104587356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130252 (n + 1) - (A130252 n + A105348 n)

end

end A130250.P447473405104587356

namespace A130250

/-- `A130252(n+1)-(A130252(n)+A105348(n))` -/
def P447473405104587356.Spec : Prop :=
  ∀ n, P447473405104587356.a n = A130250 n

end A130250

/-! ## A130250.P10096415284871294448

`floor(log2(eq[3, A020639(or(2, n))]))`
-/

namespace A130250.P10096415284871294448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130250.P10096415284871294448

namespace A130250

/-- `floor(log2(eq[3, A020639(or(2, n))]))` -/
def P10096415284871294448.Spec : Prop :=
  ∀ n, (P10096415284871294448.a n : ℤ) = A130250 n

end A130250

/-! ## A130250.P11524196677770380724

`floor(log2(record[A084060(n)]))`
-/

namespace A130250.P11524196677770380724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130250.P11524196677770380724

namespace A130250

/-- `floor(log2(record[A084060(n)]))` -/
def P11524196677770380724.Spec : Prop :=
  ∀ n, (P11524196677770380724.a n : ℤ) = A130250 n

end A130250

/-! ## A130250.P18121386494376707976

`floor(log2(A008486(comp[2*(n+1)])))`
-/

namespace A130250.P18121386494376707976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A008486 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A130250.P18121386494376707976

namespace A130250

/-- `floor(log2(A008486(comp[2*(n+1)])))` -/
def P18121386494376707976.Spec : Prop :=
  ∀ n, (P18121386494376707976.a n : ℤ) = A130250 n

end A130250

/-! ## A130250.P7512569909810817714

`floor(log2(A365117(2*n+1)))`
-/

namespace A130250.P7512569909810817714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A365117 (2 * n + 1)).toNat

end

end A130250.P7512569909810817714

namespace A130250

/-- `floor(log2(A365117(2*n+1)))` -/
def P7512569909810817714.Spec : Prop :=
  ∀ n, (P7512569909810817714.a n : ℤ) = A130250 n

end A130250

/-! ## A130250.P5058750611895268535

`floor(record[log2(A078689(n))])`
-/

namespace A130250.P5058750611895268535
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A078689 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A130250.P5058750611895268535

namespace A130250

/-- `floor(record[log2(A078689(n))])` -/
def P5058750611895268535.Spec : Prop :=
  ∀ n, P5058750611895268535.a n = A130250 n

end A130250

/-! ## A130250.P16429642515509398726

`A029837(xor(1, 3*n))`
-/

namespace A130250.P16429642515509398726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (Nat.xor 1 (3 * n))

end

end A130250.P16429642515509398726

namespace A130250

/-- `A029837(xor(1, 3*n))` -/
def P16429642515509398726.Spec : Prop :=
  ∀ n, P16429642515509398726.a n = A130250 n

end A130250

/-! ## A130250.P895885966200419965

`floor(log2(A267590(3*n)))`
-/

namespace A130250.P895885966200419965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A267590 (3 * n)).toNat

end

end A130250.P895885966200419965

namespace A130250

/-- `floor(log2(A267590(3*n)))` -/
def P895885966200419965.Spec : Prop :=
  ∀ n, (P895885966200419965.a n : ℤ) = A130250 n

end A130250

/-! ## A130250.P198776967990218480

`A029837(abs(1-2*n)+n)`
-/

namespace A130250.P198776967990218480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (|1 - (2 * n : ℤ)| + (n : ℤ)).toNat

end

end A130250.P198776967990218480

namespace A130250

/-- `A029837(abs(1-2*n)+n)` -/
def P198776967990218480.Spec : Prop :=
  ∀ n, P198776967990218480.a n = A130250 n

end A130250

/-! ## A130250.P1418587866296681125

`floor(log2(record[A165202(n)]))`
-/

namespace A130250.P1418587866296681125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130250.P1418587866296681125

namespace A130250

/-- `floor(log2(record[A165202(n)]))` -/
def P1418587866296681125.Spec : Prop :=
  ∀ n, (P1418587866296681125.a n : ℤ) = A130250 n

end A130250

/-!
# A130251: Partial sums of A130249.

The programs for A130251, the canonical program `A130251.P736255258434360353` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130251 has offset 0).

The definition of A130251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130251.P736255258434360353

`(n+1)*floor(log2(3*n+1))-1/2*(A001045(floor(log2(3*n+1))+2)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130251

/-- `(n+1)*floor(log2(3*n+1))-1/2*(A001045(floor(log2(3*n+1))+2)-1)` -/
def P736255258434360353.Spec : Prop :=
  ∀ n, P736255258434360353.a n = (A130251 n : ℚ)

end A130251

/-! ## A130251.P18112567094439126866

`∑[floor(log2(3*n+1))]`
-/

namespace A130251.P18112567094439126866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130251.P18112567094439126866

namespace A130251

/-- `∑[floor(log2(3*n+1))]` -/
def P18112567094439126866.Spec : Prop :=
  ∀ n, (P18112567094439126866.a n : ℤ) = A130251 n

end A130251

/-! ## A130251.P10743529455712714828

`a(n-1)+floor(log2(3*n+1))` with `a(0)=0`
-/

namespace A130251.P10743529455712714828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.log 2 (3 * n + 1)

end

end A130251.P10743529455712714828

namespace A130251

/-- `a(n-1)+floor(log2(3*n+1))` -/
def P10743529455712714828.Spec : Prop :=
  ∀ n, (P10743529455712714828.a n : ℤ) = A130251 n

end A130251

/-! ## A130251.P14418429750494046463

`∑[∑[A147612(n)]]-1`
-/

namespace A130251.P14418429750494046463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A130251.P14418429750494046463

namespace A130251

/-- `∑[∑[A147612(n)]]-1` -/
def P14418429750494046463.Spec : Prop :=
  ∀ n, P14418429750494046463.a n = A130251 n

end A130251

/-! ## A130251.P5119450549610787890

`∑[A130253(n)]-(n+1)`
-/

namespace A130251.P5119450549610787890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A130251.P5119450549610787890

namespace A130251

/-- `∑[A130253(n)]-(n+1)` -/
def P5119450549610787890.Spec : Prop :=
  ∀ n, P5119450549610787890.a n = A130251 n

end A130251

/-! ## A130251.P13678152103977140078

`∑[∑[char[A001045(n)]]]-1`
-/

namespace A130251.P13678152103977140078
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A130251.P13678152103977140078

namespace A130251

/-- `∑[∑[char[A001045(n)]]]-1` -/
def P13678152103977140078.Spec : Prop :=
  ∀ n, P13678152103977140078.a n = A130251 n

end A130251

/-! ## A130251.P4542059172165895982

`∑[∑[char[A167167(n)]]]+n`
-/

namespace A130251.P4542059172165895982
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A130251.P4542059172165895982

namespace A130251

/-- `∑[∑[char[A167167(n)]]]+n` -/
def P4542059172165895982.Spec : Prop :=
  ∀ n, (P4542059172165895982.a n : ℤ) = A130251 n

end A130251

/-! ## A130251.P15628839953258526169

`A130249(n)+a(n-1)` with `a(0)=0`
-/

namespace A130251.P15628839953258526169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A130249 n + a (n - 1)

end

end A130251.P15628839953258526169

namespace A130251

/-- `A130249(n)+a(n-1)` -/
def P15628839953258526169.Spec : Prop :=
  ∀ n, P15628839953258526169.a n = A130251 n

end A130251

/-! ## A130251.P15546419368492416756

`∑[∑[A105348(n)]]-(n+1)`
-/

namespace A130251.P15546419368492416756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A130251.P15546419368492416756

namespace A130251

/-- `∑[∑[A105348(n)]]-(n+1)` -/
def P15546419368492416756.Spec : Prop :=
  ∀ n, P15546419368492416756.a n = A130251 n

end A130251

/-! ## A130251.P14611807370300810876

`∑[ceil(log2(A016777(n)+1))]-1-n`
-/

namespace A130251.P14611807370300810876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A016777 n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A130251.P14611807370300810876

namespace A130251

/-- `∑[ceil(log2(A016777(n)+1))]-1-n` -/
def P14611807370300810876.Spec : Prop :=
  ∀ n, P14611807370300810876.a n = A130251 n

end A130251

/-! ## A130251.P915255499477558411

`∑[∑[char[2*A000975(n)+1]]]+n`
-/

namespace A130251.P915255499477558411
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000975 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A130251.P915255499477558411

namespace A130251

/-- `∑[∑[char[2*A000975(n)+1]]]+n` -/
def P915255499477558411.Spec : Prop :=
  ∀ n, (P915255499477558411.a n : ℤ) = A130251 n

end A130251

/-! ## A130251.P16874757265761347657

`∑[A130249(n)]*A057427(n)`
-/

namespace A130251.P16874757265761347657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A130251.P16874757265761347657

namespace A130251

/-- `∑[A130249(n)]*A057427(n)` -/
def P16874757265761347657.Spec : Prop :=
  ∀ n, P16874757265761347657.a n = A130251 n

end A130251

/-! ## A130251.P13843666516643671892

`A130252(n+1)-(n+1)`
-/

namespace A130251.P13843666516643671892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130252 (n + 1) - (n + 1 : ℤ)

end

end A130251.P13843666516643671892

namespace A130251

/-- `A130252(n+1)-(n+1)` -/
def P13843666516643671892.Spec : Prop :=
  ∀ n, P13843666516643671892.a n = A130251 n

end A130251

/-! ## A130251.P2940550925280244604

`∑[A000523(3*n+1)]%C(n+2, 2)`
-/

namespace A130251.P2940550925280244604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (Nat.choose (n + 2) 2 : ℤ)

end

end A130251.P2940550925280244604

namespace A130251

/-- `∑[A000523(3*n+1)]%C(n+2, 2)` -/
def P2940550925280244604.Spec : Prop :=
  ∀ n, P2940550925280244604.a n = A130251 n

end A130251

/-! ## A130251.P17843505890891659911

`∑[A000523(A033627(n+2))]-1`
-/

namespace A130251.P17843505890891659911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A033627 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A130251.P17843505890891659911

namespace A130251

/-- `∑[A000523(A033627(n+2))]-1` -/
def P17843505890891659911.Spec : Prop :=
  ∀ n, P17843505890891659911.a n = A130251 n

end A130251

/-! ## A130251.P8463754586590431432

`∑[A070941(3*n+1)]-2*(n+1)`
-/

namespace A130251.P8463754586590431432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * (n + 1) : ℤ)

end

end A130251.P8463754586590431432

namespace A130251

/-- `∑[A070941(3*n+1)]-2*(n+1)` -/
def P8463754586590431432.Spec : Prop :=
  ∀ n, P8463754586590431432.a n = A130251 n

end A130251

/-! ## A130251.P14287346963877055297

`∑[A000523(3*n+4)]-A000523(3*n+4)`
-/

namespace A130251.P14287346963877055297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000523 (3 * n + 4)

end

end A130251.P14287346963877055297

namespace A130251

/-- `∑[A000523(3*n+4)]-A000523(3*n+4)` -/
def P14287346963877055297.Spec : Prop :=
  ∀ n, P14287346963877055297.a n = A130251 n

end A130251

/-!
# A130252: Partial sums of A130250.

The programs for A130252, the canonical program `A130252.P11183113605279075851` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130252 has offset 0).

The definition of A130252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130252.P8107017961344938588

`∑[ceil(log2(xor(1, 3*n)))]`
-/

namespace A130252.P8107017961344938588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.xor 1 (3 * n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130252.P8107017961344938588

namespace A130252

/-- `∑[ceil(log2(xor(1, 3*n)))]` -/
def P8107017961344938588.Spec : Prop :=
  ∀ n, P8107017961344938588.a n = A130252 n

end A130252

/-! ## A130252.P3210422803640201958

`∑[ceil(log2(abs(1-3*n)))]`
-/

namespace A130252.P3210422803640201958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (|1 - (3 * n : ℤ)| : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130252.P3210422803640201958

namespace A130252

/-- `∑[ceil(log2(abs(1-3*n)))]` -/
def P3210422803640201958.Spec : Prop :=
  ∀ n, P3210422803640201958.a n = A130252 n

end A130252

/-! ## A130252.P10702780673445608445

`ceil(a(n-1)+log2(xor(1, 3*n)))` with `a(0)=0`
-/

namespace A130252.P10702780673445608445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.logb 2 (Nat.xor 1 (3 * n) : ℝ)⌉

end

end A130252.P10702780673445608445

namespace A130252

/-- `ceil(a(n-1)+log2(xor(1, 3*n)))` -/
def P10702780673445608445.Spec : Prop :=
  ∀ n, P10702780673445608445.a n = A130252 n

end A130252

/-! ## A130252.P17548870659419880064

`ceil(a(n-1)+log2(abs(1-3*n)))` with `a(0)=0`
-/

namespace A130252.P17548870659419880064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.logb 2 (|1 - (3 * n : ℤ)| : ℝ)⌉

end

end A130252.P17548870659419880064

namespace A130252

/-- `ceil(a(n-1)+log2(abs(1-3*n)))` -/
def P17548870659419880064.Spec : Prop :=
  ∀ n, P17548870659419880064.a n = A130252 n

end A130252

/-! ## A130252.P4071899641451486303

`or(∑[A130250(n)], char[1])`
-/

namespace A130252.P4071899641451486303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130252.P4071899641451486303

namespace A130252

/-- `or(∑[A130250(n)], char[1])` -/
def P4071899641451486303.Spec : Prop :=
  ∀ n, P4071899641451486303.a n = A130252 n

end A130252

/-! ## A130252.P1205287607925379726

`∑[ceil(log2(A028242(n)+n))]+n`
-/

namespace A130252.P1205287607925379726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A028242 n + (n : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A130252.P1205287607925379726

namespace A130252

/-- `∑[ceil(log2(A028242(n)+n))]+n` -/
def P1205287607925379726.Spec : Prop :=
  ∀ n, P1205287607925379726.a n = A130252 n

end A130252

/-! ## A130252.P11183113605279075851

`∑[A130253(n)]-A130253(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130252

/-- `∑[A130253(n)]-A130253(n)` -/
def P11183113605279075851.Spec : Prop :=
  ∀ n, P11183113605279075851.a n = A130252 n

theorem P11183113605279075851.correct : P11183113605279075851.Spec := by
  intro n
  simp only [A130252]

end A130252

/-! ## A130252.P16021149865797452807

`A130251(n)+n-A130249(n)`
-/

namespace A130252.P16021149865797452807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130251 n + ((n : ℤ) - A130249 n)

end

end A130252.P16021149865797452807

namespace A130252

/-- `A130251(n)+n-A130249(n)` -/
def P16021149865797452807.Spec : Prop :=
  ∀ n, P16021149865797452807.a n = A130252 n

end A130252

/-! ## A130252.P16138593187432446891

`∑{d}[∑[A130250(n)], A000010(#)]`
-/

namespace A130252.P16138593187432446891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A130252.P16138593187432446891

namespace A130252

/-- `∑{d}[∑[A130250(n)], A000010(#)]` -/
def P16138593187432446891.Spec : Prop :=
  ∀ n, P16138593187432446891.a n = A130252 n

end A130252

/-! ## A130252.P11306239170750045025

`∑[A085423(2*n+1)]-A085423(2*n+1)`
-/

namespace A130252.P11306239170750045025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A085423 (2 * n + 1)

end

end A130252.P11306239170750045025

namespace A130252

/-- `∑[A085423(2*n+1)]-A085423(2*n+1)` -/
def P11306239170750045025.Spec : Prop :=
  ∀ n, P11306239170750045025.a n = A130252 n

end A130252

/-! ## A130252.P10352809115680905383

`A110654(A130251(2*n)-A130249(2*n))`
-/

namespace A130252.P10352809115680905383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A130251 (2 * n) - A130249 (2 * n)).toNat

end

end A130252.P10352809115680905383

namespace A130252

/-- `A110654(A130251(2*n)-A130249(2*n))` -/
def P10352809115680905383.Spec : Prop :=
  ∀ n, P10352809115680905383.a n = A130252 n

end A130252

/-!
# A130253: Number of Jacobsthal numbers (A001045) <=n.

The programs for A130253, the canonical program `A130253.P13667080394334210224` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130253 has offset 0).

The definition of A130253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130253.P18201303405793187748

`ceil(log2(3*n+2))`
-/

namespace A130253.P18201303405793187748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (3 * n + 2 : ℝ)⌉

end

end A130253.P18201303405793187748

namespace A130253

/-- `ceil(log2(3*n+2))` -/
def P18201303405793187748.Spec : Prop :=
  ∀ n, P18201303405793187748.a n = A130253 n

end A130253

/-! ## A130253.P13667080394334210224

`A130249(n)+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130253

/-- `A130249(n)+1` -/
def P13667080394334210224.Spec : Prop :=
  ∀ n, P13667080394334210224.a n = A130253 n

theorem P13667080394334210224.correct : P13667080394334210224.Spec := by
  intro n
  simp only [A130253]

end A130253

/-! ## A130253.P3271443561210978412

`A130250(n+1)`
-/

namespace A130253.P3271443561210978412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 (n + 1)

end

end A130253.P3271443561210978412

namespace A130253

/-- `A130250(n+1)` -/
def P3271443561210978412.Spec : Prop :=
  ∀ n, P3271443561210978412.a n = A130253 n

end A130253

/-! ## A130253.P13079053324200022354

`floor(log2(or(2, 6*n+2)))`
-/

namespace A130253.P13079053324200022354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.lor 2 (6 * n + 2))

end

end A130253.P13079053324200022354

namespace A130253

/-- `floor(log2(or(2, 6*n+2)))` -/
def P13079053324200022354.Spec : Prop :=
  ∀ n, (P13079053324200022354.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P17908235448254238076

`floor(log2(record[3*(n+1)/2^val(n+1, 2)]))`
-/

namespace A130253.P17908235448254238076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A130253.P17908235448254238076

namespace A130253

/-- `floor(log2(record[3*(n+1)/2^val(n+1, 2)]))` -/
def P17908235448254238076.Spec : Prop :=
  ∀ n, P17908235448254238076.a n = A130253 n

end A130253

/-! ## A130253.P12967231159279610412

`∑[C(a(n-2), and(2*n+1+n, n-3))]` with `a(0)=1, a(1)=2`
-/

namespace A130253.P12967231159279610412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.choose (f1 (n - 2)) (Int.land (2 * n + 1 + n : ℤ) ((n : ℤ) - 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130253.P12967231159279610412

namespace A130253

/-- `∑[C(a(n-2), and(2*n+1+n, n-3))]` -/
def P12967231159279610412.Spec : Prop :=
  ∀ n, (P12967231159279610412.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P7970998197678155758

`∑[A105348(n)]`
-/

namespace A130253.P7970998197678155758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130253.P7970998197678155758

namespace A130253

/-- `∑[A105348(n)]` -/
def P7970998197678155758.Spec : Prop :=
  ∀ n, P7970998197678155758.a n = A130253 n

end A130253

/-! ## A130253.P14621877189922684967

`floor(log2(A016933(n)))`
-/

namespace A130253.P14621877189922684967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A016933 n).toNat

end

end A130253.P14621877189922684967

namespace A130253

/-- `floor(log2(A016933(n)))` -/
def P14621877189922684967.Spec : Prop :=
  ∀ n, (P14621877189922684967.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P1111740363613988543

`floor(log2(A016945(n)))`
-/

namespace A130253.P1111740363613988543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A016945 n).toNat

end

end A130253.P1111740363613988543

namespace A130253

/-- `floor(log2(A016945(n)))` -/
def P1111740363613988543.Spec : Prop :=
  ∀ n, (P1111740363613988543.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P13853723180433155665

`floor(log2(A304803(n)))`
-/

namespace A130253.P13853723180433155665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A304803 n).toNat

end

end A130253.P13853723180433155665

namespace A130253

/-- `floor(log2(A304803(n)))` -/
def P13853723180433155665.Spec : Prop :=
  ∀ n, (P13853723180433155665.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P4030272740876758983

`floor(log2(A304807(n)))`
-/

namespace A130253.P4030272740876758983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A304807 n).toNat

end

end A130253.P4030272740876758983

namespace A130253

/-- `floor(log2(A304807(n)))` -/
def P4030272740876758983.Spec : Prop :=
  ∀ n, (P4030272740876758983.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P8824501708951406097

`floor(log2(A016777(n)))+1`
-/

namespace A130253.P8824501708951406097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A016777 n).toNat + 1

end

end A130253.P8824501708951406097

namespace A130253

/-- `floor(log2(A016777(n)))+1` -/
def P8824501708951406097.Spec : Prop :=
  ∀ n, (P8824501708951406097.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P3203253362791819238

`floor(log2(A016921(n)+1))`
-/

namespace A130253.P3203253362791819238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A016921 n + 1).toNat

end

end A130253.P3203253362791819238

namespace A130253

/-- `floor(log2(A016921(n)+1))` -/
def P3203253362791819238.Spec : Prop :=
  ∀ n, (P3203253362791819238.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P235811020105868337

`floor(log2(A022441(n)))+1`
-/

namespace A130253.P235811020105868337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A022441 n).toNat + 1

end

end A130253.P235811020105868337

namespace A130253

/-- `floor(log2(A022441(n)))+1` -/
def P235811020105868337.Spec : Prop :=
  ∀ n, (P235811020105868337.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P17854875588549734283

`floor(log2(A055046(n+1)))`
-/

namespace A130253.P17854875588549734283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A055046 (n + 1)).toNat

end

end A130253.P17854875588549734283

namespace A130253

/-- `floor(log2(A055046(n+1)))` -/
def P17854875588549734283.Spec : Prop :=
  ∀ n, (P17854875588549734283.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P2968045555629167822

`floor(log2(A063221(n+1)))`
-/

namespace A130253.P2968045555629167822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A063221 (n + 1)).toNat

end

end A130253.P2968045555629167822

namespace A130253

/-- `floor(log2(A063221(n+1)))` -/
def P2968045555629167822.Spec : Prop :=
  ∀ n, (P2968045555629167822.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P6836744181525875042

`floor(log2(A091999(n+1)))`
-/

namespace A130253.P6836744181525875042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A091999 (n + 1)).toNat

end

end A130253.P6836744181525875042

namespace A130253

/-- `floor(log2(A091999(n+1)))` -/
def P6836744181525875042.Spec : Prop :=
  ∀ n, (P6836744181525875042.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P6411593602592349870

`floor(log2(A131323(n+1)))`
-/

namespace A130253.P6411593602592349870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A131323 (n + 1)).toNat

end

end A130253.P6411593602592349870

namespace A130253

/-- `floor(log2(A131323(n+1)))` -/
def P6411593602592349870.Spec : Prop :=
  ∀ n, (P6411593602592349870.a n : ℤ) = A130253 n

end A130253

/-! ## A130253.P12647074817184824266

`floor(log2(A248057(n+1)))`
-/

namespace A130253.P12647074817184824266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A248057 (n + 1)).toNat

end

end A130253.P12647074817184824266

namespace A130253

/-- `floor(log2(A248057(n+1)))` -/
def P12647074817184824266.Spec : Prop :=
  ∀ n, (P12647074817184824266.a n : ℤ) = A130253 n

end A130253

/-!
# A130255: Maximal index k of an odd Fibonacci number (A001519) such that A001519(k) = Fibonacci(2k-1) <= n (the 'lower' odd Fibonacci Inverse).

The programs for A130255, the canonical program `A130255.P3543021114128893014` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130255 has offset 1).

The definition of A130255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130255.P11691494959923064386

`∑[char[∑[a(n-2)+1-a(n-1)]-(n+1)]]` with `a(0)=1, a(1)=0`
-/

namespace A130255.P11691494959923064386
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 2) + 1 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P11691494959923064386

namespace A130255

/-- `∑[char[∑[a(n-2)+1-a(n-1)]-(n+1)]]` -/
def P11691494959923064386.Spec : Prop :=
  ∀ n, (P11691494959923064386.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P8796623683007387289

`∑[char[A027941(n)]]`
-/

namespace A130255.P8796623683007387289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P8796623683007387289

namespace A130255

/-- `∑[char[A027941(n)]]` -/
def P8796623683007387289.Spec : Prop :=
  ∀ n, (P8796623683007387289.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P4398902893579101108

`∑[char[A119282(n)]]`
-/

namespace A130255.P4398902893579101108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P4398902893579101108

namespace A130255

/-- `∑[char[A119282(n)]]` -/
def P4398902893579101108.Spec : Prop :=
  ∀ n, (P4398902893579101108.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P8777790172155750086

`∑[char[A293064(n)]]`
-/

namespace A130255.P8777790172155750086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P8777790172155750086

namespace A130255

/-- `∑[char[A293064(n)]]` -/
def P8777790172155750086.Spec : Prop :=
  ∀ n, (P8777790172155750086.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P14065418544160514707

`∑[char[∑[A001906(n)]]]`
-/

namespace A130255.P14065418544160514707
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P14065418544160514707

namespace A130255

/-- `∑[char[∑[A001906(n)]]]` -/
def P14065418544160514707.Spec : Prop :=
  ∀ n, (P14065418544160514707.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P11494093556550648575

`∑[char[A001519(n)-1]]`
-/

namespace A130255.P11494093556550648575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P11494093556550648575

namespace A130255

/-- `∑[char[A001519(n)-1]]` -/
def P11494093556550648575.Spec : Prop :=
  ∀ n, (P11494093556550648575.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P16222601717685654754

`∑[char[A122367(n)-1]]`
-/

namespace A130255.P16222601717685654754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P16222601717685654754

namespace A130255

/-- `∑[char[A122367(n)-1]]` -/
def P16222601717685654754.Spec : Prop :=
  ∀ n, (P16222601717685654754.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P9352533206587191987

`∑[char[A000071(Δ[n²])]]`
-/

namespace A130255.P9352533206587191987
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P9352533206587191987

namespace A130255

/-- `∑[char[A000071(Δ[n²])]]` -/
def P9352533206587191987.Spec : Prop :=
  ∀ n, (P9352533206587191987.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P3543021114128893014

`floor(A108852(n+1)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130255

/-- `floor(A108852(n+1)/2)` -/
def P3543021114128893014.Spec : Prop :=
  ∀ n, P3543021114128893014.a n = A130255 (n + 1)

theorem P3543021114128893014.correct : P3543021114128893014.Spec := by
  intro n
  simp only [A130255, Nat.add_sub_cancel]

end A130255

/-! ## A130255.P5753292812672092534

`∑[char[∑[A000045(2*n)]]]`
-/

namespace A130255.P5753292812672092534
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P5753292812672092534

namespace A130255

/-- `∑[char[∑[A000045(2*n)]]]` -/
def P5753292812672092534.Spec : Prop :=
  ∀ n, (P5753292812672092534.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P13434385048100921379

`∑[char[A008346(2*n+1)]]`
-/

namespace A130255.P13434385048100921379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P13434385048100921379

namespace A130255

/-- `∑[char[A008346(2*n+1)]]` -/
def P13434385048100921379.Spec : Prop :=
  ∀ n, (P13434385048100921379.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P6092063199079323815

`∑[char[A000045(Δ[n²])-1]]`
-/

namespace A130255.P6092063199079323815
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P6092063199079323815

namespace A130255

/-- `∑[char[A000045(Δ[n²])-1]]` -/
def P6092063199079323815.Spec : Prop :=
  ∀ n, (P6092063199079323815.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P1650702399498570009

`∑[char[A005247(2*n+1)-1]]`
-/

namespace A130255.P1650702399498570009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (2 * n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P1650702399498570009

namespace A130255

/-- `∑[char[A005247(2*n+1)-1]]` -/
def P1650702399498570009.Spec : Prop :=
  ∀ n, (P1650702399498570009.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P7166080217599722724

`∑[char[A000071(2*n+3)]]+1`
-/

namespace A130255.P7166080217599722724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130255.P7166080217599722724

namespace A130255

/-- `∑[char[A000071(2*n+3)]]+1` -/
def P7166080217599722724.Spec : Prop :=
  ∀ n, (P7166080217599722724.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P1254738238218516717

`∑[char[A001611(2*n+1)-2]]`
-/

namespace A130255.P1254738238218516717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130255.P1254738238218516717

namespace A130255

/-- `∑[char[A001611(2*n+1)-2]]` -/
def P1254738238218516717.Spec : Prop :=
  ∀ n, (P1254738238218516717.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P17536306270411102780

`∑[char[∑[A212804(2*n+3)]]]+1`
-/

namespace A130255.P17536306270411102780
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130255.P17536306270411102780

namespace A130255

/-- `∑[char[∑[A212804(2*n+3)]]]+1` -/
def P17536306270411102780.Spec : Prop :=
  ∀ n, (P17536306270411102780.a n : ℤ) = A130255 (n + 1)

end A130255

/-! ## A130255.P12387283594967901935

`comp[A000045(2*n+1)-1+n]-n`
-/

namespace A130255.P12387283594967901935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130255.P12387283594967901935

namespace A130255

/-- `comp[A000045(2*n+1)-1+n]-n` -/
def P12387283594967901935.Spec : Prop :=
  ∀ n, P12387283594967901935.a n = A130255 (n + 1)

end A130255

/-! ## A130255.P14545758212202321469

`∑[char[A000045(gcd(2, n)+1+n)-1]]+1`
-/

namespace A130255.P14545758212202321469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd 2 n + 1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130255.P14545758212202321469

namespace A130255

/-- `∑[char[A000045(gcd(2, n)+1+n)-1]]+1` -/
def P14545758212202321469.Spec : Prop :=
  ∀ n, (P14545758212202321469.a n : ℤ) = A130255 (n + 1)

end A130255

/-!
# A130256: Minimal index k of an odd Fibonacci number A001519 such that A001519(k) = Fibonacci(2*k-1) >= n (the 'upper' odd Fibonacci Inverse).

The programs for A130256, the canonical program `A130256.P8888391435086218073` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130256 has offset 0).

The definition of A130256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130256.P11210960524641142976

`Δ[A130258(abs(1-n))]`
-/

namespace A130256.P11210960524641142976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130258 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130256.P11210960524641142976

namespace A130256

/-- `Δ[A130258(abs(1-n))]` -/
def P11210960524641142976.Spec : Prop :=
  ∀ n, P11210960524641142976.a n = A130256 n

end A130256

/-! ## A130256.P6647389490161927663

`comp[A001519(n)+1+n]-n`
-/

namespace A130256.P6647389490161927663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130256.P6647389490161927663

namespace A130256

/-- `comp[A001519(n)+1+n]-n` -/
def P6647389490161927663.Spec : Prop :=
  ∀ n, P6647389490161927663.a n = A130256 n

end A130256

/-! ## A130256.P5256943774468028816

`comp[A212804(2*n)+n+1]-n`
-/

namespace A130256.P5256943774468028816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130256.P5256943774468028816

namespace A130256

/-- `comp[A212804(2*n)+n+1]-n` -/
def P5256943774468028816.Spec : Prop :=
  ∀ n, P5256943774468028816.a n = A130256 n

end A130256

/-! ## A130256.P12046731610010258887

`A087156(∑[char[A000045(2*n+1)+1]]+1)`
-/

namespace A130256.P12046731610010258887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A130256.P12046731610010258887

namespace A130256

/-- `A087156(∑[char[A000045(2*n+1)+1]]+1)` -/
def P12046731610010258887.Spec : Prop :=
  ∀ n, P12046731610010258887.a n = A130256 n

end A130256

/-! ## A130256.P8888391435086218073

`A130260(A005379(n))+A057427(A005379(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130256

/-- `A130260(A005379(n))+A057427(A005379(n))` -/
def P8888391435086218073.Spec : Prop :=
  ∀ n, P8888391435086218073.a n = A130256 n

theorem P8888391435086218073.correct : P8888391435086218073.Spec := by
  intro n
  simp only [A130256]

end A130256

/-! ## A130256.P1561303227694076831

`A130260(n-(A057427(n)-A005379(n)))`
-/

namespace A130256.P1561303227694076831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 ((n : ℤ) - (A057427 n - A005379 n)).toNat

end

end A130256.P1561303227694076831

namespace A130256

/-- `A130260(n-(A057427(n)-A005379(n)))` -/
def P1561303227694076831.Spec : Prop :=
  ∀ n, P1561303227694076831.a n = A130256 n

end A130256

/-! ## A130256.P8478471036978242012

`A130260(A022342(n+1)*A060576(n))`
-/

namespace A130256.P8478471036978242012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A022342 (n + 1) * A060576 n).toNat

end

end A130256.P8478471036978242012

namespace A130256

/-- `A130260(A022342(n+1)*A060576(n))` -/
def P8478471036978242012.Spec : Prop :=
  ∀ n, P8478471036978242012.a n = A130256 n

end A130256

/-! ## A130256.P14788334953552150803

`A130260(A022342(n+1))%A026351(n)`
-/

namespace A130256.P14788334953552150803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130260 (A022342 (n + 1)).toNat) (A026351 n)

end

end A130256.P14788334953552150803

namespace A130256

/-- `A130260(A022342(n+1))%A026351(n)` -/
def P14788334953552150803.Spec : Prop :=
  ∀ n, P14788334953552150803.a n = A130256 n

end A130256

/-! ## A130256.P8856738524859544597

`A130260(A022342(n+1)%A275543(n))`
-/

namespace A130256.P8856738524859544597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (Int.tmod (A022342 (n + 1)) (A275543 n)).toNat

end

end A130256.P8856738524859544597

namespace A130256

/-- `A130260(A022342(n+1)%A275543(n))` -/
def P8856738524859544597.Spec : Prop :=
  ∀ n, P8856738524859544597.a n = A130256 n

end A130256

/-! ## A130256.P5302298976007579301

`A008619(A072649(A190723(n+1)))%A190723(n+1)`
-/

namespace A130256.P5302298976007579301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A072649 (A190723 (n + 1)).toNat).toNat) (A190723 (n + 1))

end

end A130256.P5302298976007579301

namespace A130256

/-- `A008619(A072649(A190723(n+1)))%A190723(n+1)` -/
def P5302298976007579301.Spec : Prop :=
  ∀ n, P5302298976007579301.a n = A130256 n

end A130256

/-! ## A130256.P6038200043755091968

`A084558(∑[A049780(2*n)])`
-/

namespace A130256.P6038200043755091968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130256.P6038200043755091968

namespace A130256

/-- `A084558(∑[A049780(2*n)])` -/
def P6038200043755091968.Spec : Prop :=
  ∀ n, P6038200043755091968.a n = A130256 n

end A130256

/-! ## A130256.P12984272040357959206

`A084558(A005206(n*A061800(n)))`
-/

namespace A130256.P12984272040357959206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A005206 ((n : ℤ) * A061800 n).toNat).toNat

end

end A130256.P12984272040357959206

namespace A130256

/-- `A084558(A005206(n*A061800(n)))` -/
def P12984272040357959206.Spec : Prop :=
  ∀ n, P12984272040357959206.a n = A130256 n

end A130256

/-! ## A130256.P17007989096377970918

`A084558(n*A005379(n))`
-/

namespace A130256.P17007989096377970918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 ((n : ℤ) * A005379 n).toNat

end

end A130256.P17007989096377970918

namespace A130256

/-- `A084558(n*A005379(n))` -/
def P17007989096377970918.Spec : Prop :=
  ∀ n, P17007989096377970918.a n = A130256 n

end A130256

/-!
# A130257: Partial sums of the 'lower' odd Fibonacci Inverse A130255.

The programs for A130257, the canonical program `A130257.P5155922807624854480` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130257 has offset 1).

The definition of A130257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130257.P15148304696879713204

`floor((n+2)/(n+1)*a(n-1)+ϕ)` with `a(0)=1`
-/

namespace A130257.P15148304696879713204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n + 2 : ℚ) / (n + 1 : ℚ) * (a (n - 1) : ℚ) : ℝ) + Real.goldenRatio⌋

end

end A130257.P15148304696879713204

namespace A130257

/-- `floor((n+2)/(n+1)*a(n-1)+ϕ)` -/
def P15148304696879713204.Spec : Prop :=
  ∀ n, P15148304696879713204.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P2248657912599599470

`floor(a(n-1)/(n+1)+a(n-1)+ϕ)` with `a(0)=1`
-/

namespace A130257.P2248657912599599470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((a (n - 1) : ℚ) / (n + 1 : ℚ) : ℝ) + ((a (n - 1) : ℝ) + Real.goldenRatio)⌋

end

end A130257.P2248657912599599470

namespace A130257

/-- `floor(a(n-1)/(n+1)+a(n-1)+ϕ)` -/
def P2248657912599599470.Spec : Prop :=
  ∀ n, P2248657912599599470.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P13325574463173520658

`∑[A130255(n+1)]`
-/

namespace A130257.P13325574463173520658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P13325574463173520658

namespace A130257

/-- `∑[A130255(n+1)]` -/
def P13325574463173520658.Spec : Prop :=
  ∀ n, P13325574463173520658.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P15977401686300781472

`∑[∑[char[A027941(n)]]]`
-/

namespace A130257.P15977401686300781472
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P15977401686300781472

namespace A130257

/-- `∑[∑[char[A027941(n)]]]` -/
def P15977401686300781472.Spec : Prop :=
  ∀ n, (P15977401686300781472.a n : ℤ) = A130257 (n + 1)

end A130257

/-! ## A130257.P7024303883637325972

`∑[∑[char[A119282(n)]]]`
-/

namespace A130257.P7024303883637325972
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P7024303883637325972

namespace A130257

/-- `∑[∑[char[A119282(n)]]]` -/
def P7024303883637325972.Spec : Prop :=
  ∀ n, (P7024303883637325972.a n : ℤ) = A130257 (n + 1)

end A130257

/-! ## A130257.P5333818866912480359

`∑[∑[char[A001519(n)-1]]]`
-/

namespace A130257.P5333818866912480359
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P5333818866912480359

namespace A130257

/-- `∑[∑[char[A001519(n)-1]]]` -/
def P5333818866912480359.Spec : Prop :=
  ∀ n, (P5333818866912480359.a n : ℤ) = A130257 (n + 1)

end A130257

/-! ## A130257.P11013636736805712643

`∑[∑[char[∑[A000045(2*n)]]]]`
-/

namespace A130257.P11013636736805712643
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P11013636736805712643

namespace A130257

/-- `∑[∑[char[∑[A000045(2*n)]]]]` -/
def P11013636736805712643.Spec : Prop :=
  ∀ n, (P11013636736805712643.a n : ℤ) = A130257 (n + 1)

end A130257

/-! ## A130257.P13915315711299622448

`∑[∑[char[A000071(2*n+1)]]]`
-/

namespace A130257.P13915315711299622448
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P13915315711299622448

namespace A130257

/-- `∑[∑[char[A000071(2*n+1)]]]` -/
def P13915315711299622448.Spec : Prop :=
  ∀ n, (P13915315711299622448.a n : ℤ) = A130257 (n + 1)

end A130257

/-! ## A130257.P10274471658949933933

`∑[∑[char[A008346(2*n+1)]]]`
-/

namespace A130257.P10274471658949933933
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P10274471658949933933

namespace A130257

/-- `∑[∑[char[A008346(2*n+1)]]]` -/
def P10274471658949933933.Spec : Prop :=
  ∀ n, (P10274471658949933933.a n : ℤ) = A130257 (n + 1)

end A130257

/-! ## A130257.P6189258865079302854

`∑[floor((A130233(n+1)-1)/2)+1]`
-/

namespace A130257.P6189258865079302854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130233 (n + 1) - 1 : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P6189258865079302854

namespace A130257

/-- `∑[floor((A130233(n+1)-1)/2)+1]` -/
def P6189258865079302854.Spec : Prop :=
  ∀ n, P6189258865079302854.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P5155922807624854480

`∑[A130259(A005206(n))+1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130257

/-- `∑[A130259(A005206(n))+1]` -/
def P5155922807624854480.Spec : Prop :=
  ∀ n, P5155922807624854480.a n = A130257 (n + 1)

theorem P5155922807624854480.correct : P5155922807624854480.Spec := by
  intro n
  simp only [A130257, Nat.add_sub_cancel]

end A130257

/-! ## A130257.P14183480197691467250

`∑[A110654(A095791(n))]+n`
-/

namespace A130257.P14183480197691467250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A095791 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A130257.P14183480197691467250

namespace A130257

/-- `∑[A110654(A095791(n))]+n` -/
def P14183480197691467250.Spec : Prop :=
  ∀ n, P14183480197691467250.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P11837107065293635285

`∑[A004526(A130233(n+1)+1)]`
-/

namespace A130257.P11837107065293635285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130233 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P11837107065293635285

namespace A130257

/-- `∑[A004526(A130233(n+1)+1)]` -/
def P11837107065293635285.Spec : Prop :=
  ∀ n, P11837107065293635285.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P9455217573998845915

`∑[A135817(A130312(n+1))]+n`
-/

namespace A130257.P9455217573998845915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135817 (A130312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A130257.P9455217573998845915

namespace A130257

/-- `∑[A135817(A130312(n+1))]+n` -/
def P9455217573998845915.Spec : Prop :=
  ∀ n, P9455217573998845915.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P8825907545672565196

`∑[A130256(n+2)-1]`
-/

namespace A130257.P8825907545672565196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130256 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P8825907545672565196

namespace A130257

/-- `∑[A130256(n+2)-1]` -/
def P8825907545672565196.Spec : Prop :=
  ∀ n, P8825907545672565196.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P9762859863025342900

`A130235(n+1)-A130261(n+1)`
-/

namespace A130257.P9762859863025342900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130235 (n + 1) - A130261 (n + 1)

end

end A130257.P9762859863025342900

namespace A130257

/-- `A130235(n+1)-A130261(n+1)` -/
def P9762859863025342900.Spec : Prop :=
  ∀ n, P9762859863025342900.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P5922690193100457475

`A130258(n+2)-(n+1)`
-/

namespace A130257.P5922690193100457475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130258 (n + 2) - (n + 1 : ℤ)

end

end A130257.P5922690193100457475

namespace A130257

/-- `A130258(n+2)-(n+1)` -/
def P5922690193100457475.Spec : Prop :=
  ∀ n, P5922690193100457475.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P16201149936582071310

`A130236(n+2)-A130262(n+2)`
-/

namespace A130257.P16201149936582071310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130236 (n + 2) - A130262 (n + 2)

end

end A130257.P16201149936582071310

namespace A130257

/-- `A130236(n+2)-A130262(n+2)` -/
def P16201149936582071310.Spec : Prop :=
  ∀ n, P16201149936582071310.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P8087567071035256082

`∑[∑[A010056(A000201(n+1))]]`
-/

namespace A130257.P8087567071035256082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A000201 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P8087567071035256082

namespace A130257

/-- `∑[∑[A010056(A000201(n+1))]]` -/
def P8087567071035256082.Spec : Prop :=
  ∀ n, P8087567071035256082.a n = A130257 (n + 1)

end A130257

/-! ## A130257.P11261684550020776492

`∑[∑[A147612(A003714(n))]]`
-/

namespace A130257.P11261684550020776492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (A003714 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P11261684550020776492

namespace A130257

/-- `∑[∑[A147612(A003714(n))]]` -/
def P11261684550020776492.Spec : Prop :=
  ∀ n, P11261684550020776492.a n = A130257 (n + 1)

end A130257

/-!
# A130258: Partial sums of the 'upper' odd Fibonacci Inverse A130256.

The programs for A130258, the canonical program `A130258.P9767725094634549464` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130258 has offset 0).

The definition of A130258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130258.P9767725094634549464

`∑[A130256(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A130258

/-- `∑[A130256(n)]` -/
def P9767725094634549464.Spec : Prop :=
  ∀ n, P9767725094634549464.a n = A130258 n

theorem P9767725094634549464.correct : P9767725094634549464.Spec := by
  intro n
  simp only [A130258]

end A130258

/-! ## A130258.P208498710650476418

`∑[comp[A001519(n)+1+n]-n]`
-/

namespace A130258.P208498710650476418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P208498710650476418

namespace A130258

/-- `∑[comp[A001519(n)+1+n]-n]` -/
def P208498710650476418.Spec : Prop :=
  ∀ n, P208498710650476418.a n = A130258 n

end A130258

/-! ## A130258.P12774298191822760752

`∑[A001489(n)+comp[A001519(n)+1+n]]`
-/

namespace A130258.P12774298191822760752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P12774298191822760752

namespace A130258

/-- `∑[A001489(n)+comp[A001519(n)+1+n]]` -/
def P12774298191822760752.Spec : Prop :=
  ∀ n, P12774298191822760752.a n = A130258 n

end A130258

/-! ## A130258.P6234184508997593626

`∑[A157928(n)+A004526(A130234(n))]`
-/

namespace A130258.P6234184508997593626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A004526 (A130234 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P6234184508997593626

namespace A130258

/-- `∑[A157928(n)+A004526(A130234(n))]` -/
def P6234184508997593626.Spec : Prop :=
  ∀ n, P6234184508997593626.a n = A130258 n

end A130258

/-! ## A130258.P2669342546625527426

`∑[A130260(A026355(n))%A026355(n)]`
-/

namespace A130258.P2669342546625527426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130260 (A026355 n).toNat) (A026355 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P2669342546625527426

namespace A130258

/-- `∑[A130260(A026355(n))%A026355(n)]` -/
def P2669342546625527426.Spec : Prop :=
  ∀ n, P2669342546625527426.a n = A130258 n

end A130258

/-! ## A130258.P13371414708394203117

`∑[A130260(A022342(n+1)*A060576(n))]`
-/

namespace A130258.P13371414708394203117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A022342 (n + 1) * A060576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P13371414708394203117

namespace A130258

/-- `∑[A130260(A022342(n+1)*A060576(n))]` -/
def P13371414708394203117.Spec : Prop :=
  ∀ n, P13371414708394203117.a n = A130258 n

end A130258

/-! ## A130258.P4523301089849881779

`∑[A130260(A022342(n+1))%A000070(n)]`
-/

namespace A130258.P4523301089849881779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130260 (A022342 (n + 1)).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P4523301089849881779

namespace A130258

/-- `∑[A130260(A022342(n+1))%A000070(n)]` -/
def P4523301089849881779.Spec : Prop :=
  ∀ n, P4523301089849881779.a n = A130258 n

end A130258

/-! ## A130258.P13796562291204216605

`∑[A084558(∑[A049780(2*n)])]`
-/

namespace A130258.P13796562291204216605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P13796562291204216605

namespace A130258

/-- `∑[A084558(∑[A049780(2*n)])]` -/
def P13796562291204216605.Spec : Prop :=
  ∀ n, P13796562291204216605.a n = A130258 n

end A130258

/-! ## A130258.P9984286591258952543

`∑[A084558(A008611(A168056(n)²))]`
-/

namespace A130258.P9984286591258952543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A008611 (A168056 n ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P9984286591258952543

namespace A130258

/-- `∑[A084558(A008611(A168056(n)²))]` -/
def P9984286591258952543.Spec : Prop :=
  ∀ n, P9984286591258952543.a n = A130258 n

end A130258

/-!
# A130259: Maximal index k of an even Fibonacci number (A001906) such that A001906(k) = Fib(2k) <= n (the 'lower' even Fibonacci Inverse).

The programs for A130259, the canonical program `A130259.P4827774367592535543` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130259 has offset 0).

The definition of A130259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130259.P4827774367592535543

`floor(log(sqrt(5)*n+1)/(2*log((1+sqrt(5))/2)))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130259

/-- `floor(log(sqrt(5)*n+1)/(2*log((1+sqrt(5))/2)))` -/
def P4827774367592535543.Spec : Prop :=
  ∀ n, P4827774367592535543.a n = A130259 n

theorem P4827774367592535543.correct : P4827774367592535543.Spec := by
  intro n
  simp only [A130259]

end A130259

/-! ## A130259.P495757660460419360

`A130260(n+1)-1`
-/

namespace A130259.P495757660460419360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (n + 1) - 1

end

end A130259.P495757660460419360

namespace A130259

/-- `A130260(n+1)-1` -/
def P495757660460419360.Spec : Prop :=
  ∀ n, P495757660460419360.a n = A130259 n

end A130259

/-! ## A130259.P15392071341240604369

`a(floor(n/ϕ²))+1` with `a(0)=0`
-/

namespace A130259.P15392071341240604369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋.toNat + 1

end

end A130259.P15392071341240604369

namespace A130259

/-- `a(floor(n/ϕ²))+1` -/
def P15392071341240604369.Spec : Prop :=
  ∀ n, (P15392071341240604369.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P17895157648319233516

`∑[char[ceil(ϕ²*a(n-1))]]` with `a(0)=1`
-/

namespace A130259.P17895157648319233516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌈Real.goldenRatio ^ 2 * (f2 (n - 1) : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130259.P17895157648319233516

namespace A130259

/-- `∑[char[ceil(ϕ²*a(n-1))]]` -/
def P17895157648319233516.Spec : Prop :=
  ∀ n, (P17895157648319233516.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P12489040550401615310

`∑[char[ceil(ϕ*ϕ*a(n-1))]]` with `a(0)=1`
-/

namespace A130259.P12489040550401615310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (f2 (n - 1) : ℝ))⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130259.P12489040550401615310

namespace A130259

/-- `∑[char[ceil(ϕ*ϕ*a(n-1))]]` -/
def P12489040550401615310.Spec : Prop :=
  ∀ n, (P12489040550401615310.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P11244102097644638311

`∑[char[A088305(n)]]`
-/

namespace A130259.P11244102097644638311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130259.P11244102097644638311

namespace A130259

/-- `∑[char[A088305(n)]]` -/
def P11244102097644638311.Spec : Prop :=
  ∀ n, (P11244102097644638311.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P13455712766516767642

`∑[char[A060921(∑[n])]]`
-/

namespace A130259.P13455712766516767642
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060921 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130259.P13455712766516767642

namespace A130259

/-- `∑[char[A060921(∑[n])]]` -/
def P13455712766516767642.Spec : Prop :=
  ∀ n, (P13455712766516767642.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P13938356781059756872

`∑[char[∑[A122367(n)]]]`
-/

namespace A130259.P13938356781059756872
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130259.P13938356781059756872

namespace A130259

/-- `∑[char[∑[A122367(n)]]]` -/
def P13938356781059756872.Spec : Prop :=
  ∀ n, (P13938356781059756872.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P17958631097270307683

`∑[char[A125662(∑[n])]]`
-/

namespace A130259.P17958631097270307683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125662 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130259.P17958631097270307683

namespace A130259

/-- `∑[char[A125662(∑[n])]]` -/
def P17958631097270307683.Spec : Prop :=
  ∀ n, (P17958631097270307683.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P10227604405792396082

`∑[char[A001906(n+1)]]`
-/

namespace A130259.P10227604405792396082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130259.P10227604405792396082

namespace A130259

/-- `∑[char[A001906(n+1)]]` -/
def P10227604405792396082.Spec : Prop :=
  ∀ n, (P10227604405792396082.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P1466537395207057623

`∑[char[A094966(n+1)]]`
-/

namespace A130259.P1466537395207057623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130259.P1466537395207057623

namespace A130259

/-- `∑[char[A094966(n+1)]]` -/
def P1466537395207057623.Spec : Prop :=
  ∀ n, (P1466537395207057623.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P12148528580415823109

`∑[char[A001906(n)]]-1`
-/

namespace A130259.P12148528580415823109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A130259.P12148528580415823109

namespace A130259

/-- `∑[char[A001906(n)]]-1` -/
def P12148528580415823109.Spec : Prop :=
  ∀ n, P12148528580415823109.a n = A130259 n

end A130259

/-! ## A130259.P13024427596273396019

`∑[char[A094966(n)]]-1`
-/

namespace A130259.P13024427596273396019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A130259.P13024427596273396019

namespace A130259

/-- `∑[char[A094966(n)]]-1` -/
def P13024427596273396019.Spec : Prop :=
  ∀ n, P13024427596273396019.a n = A130259 n

end A130259

/-! ## A130259.P14066902706782131720

`∑[char[A147600(n)]]-1`
-/

namespace A130259.P14066902706782131720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A130259.P14066902706782131720

namespace A130259

/-- `∑[char[A147600(n)]]-1` -/
def P14066902706782131720.Spec : Prop :=
  ∀ n, P14066902706782131720.a n = A130259 n

end A130259

/-! ## A130259.P16565391715054282361

`∑[char[A052952(2*n)]]`
-/

namespace A130259.P16565391715054282361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130259.P16565391715054282361

namespace A130259

/-- `∑[char[A052952(2*n)]]` -/
def P16565391715054282361.Spec : Prop :=
  ∀ n, (P16565391715054282361.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P2007181198836602348

`∑[char[A147600(2*n)]]`
-/

namespace A130259.P2007181198836602348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130259.P2007181198836602348

namespace A130259

/-- `∑[char[A147600(2*n)]]` -/
def P2007181198836602348.Spec : Prop :=
  ∀ n, (P2007181198836602348.a n : ℤ) = A130259 n

end A130259

/-! ## A130259.P14503566142528779666

`A004526(A130233(n))`
-/

namespace A130259.P14503566142528779666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130233 n).toNat

end

end A130259.P14503566142528779666

namespace A130259

/-- `A004526(A130233(n))` -/
def P14503566142528779666.Spec : Prop :=
  ∀ n, P14503566142528779666.a n = A130259 n

end A130259

/-! ## A130259.P3562323686673350314

`A072648(n+1)-A130255(n+1)`
-/

namespace A130259.P3562323686673350314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072648 (n + 1) - A130255 (n + 1)

end

end A130259.P3562323686673350314

namespace A130259

/-- `A072648(n+1)-A130255(n+1)` -/
def P3562323686673350314.Spec : Prop :=
  ∀ n, P3562323686673350314.a n = A130259 n

end A130259

/-!
# A130260: Minimal index k of an even Fibonacci number A001906 such that A001906(k) = Fib(2k) >= n (the 'upper' even Fibonacci Inverse).

The programs for A130260, the canonical program `A130260.P9951914605164643883` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130260 has offset 0).

The definition of A130260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130260.P7648439620473293611

`∑[char[∑[lcm(3, a(n-1))-a(n-2)]]]` with `a(0)=1, a(1)=1`
-/

namespace A130260.P7648439620473293611
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  (Int.lcm 3 (f3 (n - 1)) : ℤ) - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P7648439620473293611

namespace A130260

/-- `∑[char[∑[lcm(3, a(n-1))-a(n-2)]]]` -/
def P7648439620473293611.Spec : Prop :=
  ∀ n, (P7648439620473293611.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P15994495039812487240

`∑[char[3*a(n-1)-(a(n-2)+1)]]` with `a(0)=1, a(1)=2`
-/

namespace A130260.P15994495039812487240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  3 * f2 (n - 1) - (f2 (n - 2) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P15994495039812487240

namespace A130260

/-- `∑[char[3*a(n-1)-(a(n-2)+1)]]` -/
def P15994495039812487240.Spec : Prop :=
  ∀ n, (P15994495039812487240.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P5419719057514918018

`∑[char[A055588(n)]]`
-/

namespace A130260.P5419719057514918018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P5419719057514918018

namespace A130260

/-- `∑[char[A055588(n)]]` -/
def P5419719057514918018.Spec : Prop :=
  ∀ n, (P5419719057514918018.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P14331569143837869485

`∑[char[∑[A001519(n)]]]`
-/

namespace A130260.P14331569143837869485
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P14331569143837869485

namespace A130260

/-- `∑[char[∑[A001519(n)]]]` -/
def P14331569143837869485.Spec : Prop :=
  ∀ n, (P14331569143837869485.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P5187881574108179978

`∑[char[Δ[A036795(n)]]]`
-/

namespace A130260.P5187881574108179978
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036795 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P5187881574108179978

namespace A130260

/-- `∑[char[Δ[A036795(n)]]]` -/
def P5187881574108179978.Spec : Prop :=
  ∀ n, (P5187881574108179978.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P9951914605164643883

`a(A189663(n))+1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130260

/-- `a(A189663(n))+1` -/
def P9951914605164643883.Spec : Prop :=
  ∀ n, (P9951914605164643883.a n : ℤ) = A130260 n

theorem P9951914605164643883.correct : P9951914605164643883.Spec := by
  intro n
  simp only [A130260]

end A130260

/-! ## A130260.P8699293339208860527

`a(A227145(n))+1` with `a(0)=0`
-/

namespace A130260.P8699293339208860527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A227145 n).toNat + 1

end

end A130260.P8699293339208860527

namespace A130260

/-- `a(A227145(n))+1` -/
def P8699293339208860527.Spec : Prop :=
  ∀ n, (P8699293339208860527.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P12874609880152108414

`∑[char[A001906(n)+1]]`
-/

namespace A130260.P12874609880152108414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P12874609880152108414

namespace A130260

/-- `∑[char[A001906(n)+1]]` -/
def P12874609880152108414.Spec : Prop :=
  ∀ n, (P12874609880152108414.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P7827470875825140953

`∑[char[A094966(n)+1]]`
-/

namespace A130260.P7827470875825140953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P7827470875825140953

namespace A130260

/-- `∑[char[A094966(n)+1]]` -/
def P7827470875825140953.Spec : Prop :=
  ∀ n, (P7827470875825140953.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P14551992164493433027

`∑[char[A147600(n)+1]]`
-/

namespace A130260.P14551992164493433027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P14551992164493433027

namespace A130260

/-- `∑[char[A147600(n)+1]]` -/
def P14551992164493433027.Spec : Prop :=
  ∀ n, (P14551992164493433027.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P7653387131313806541

`∑[char[A001611(2*n)]]`
-/

namespace A130260.P7653387131313806541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P7653387131313806541

namespace A130260

/-- `∑[char[A001611(2*n)]]` -/
def P7653387131313806541.Spec : Prop :=
  ∀ n, (P7653387131313806541.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P13312651287680028435

`∑[char[A008346(2*n)]]`
-/

namespace A130260.P13312651287680028435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P13312651287680028435

namespace A130260

/-- `∑[char[A008346(2*n)]]` -/
def P13312651287680028435.Spec : Prop :=
  ∀ n, (P13312651287680028435.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P1518820555999635790

`∑[char[A000045(2*n)+1]]`
-/

namespace A130260.P1518820555999635790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P1518820555999635790

namespace A130260

/-- `∑[char[A000045(2*n)+1]]` -/
def P1518820555999635790.Spec : Prop :=
  ∀ n, (P1518820555999635790.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P10627124199056914848

`∑[char[A102875(2*n)+1]]`
-/

namespace A130260.P10627124199056914848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 (2 * n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P10627124199056914848

namespace A130260

/-- `∑[char[A102875(2*n)+1]]` -/
def P10627124199056914848.Spec : Prop :=
  ∀ n, (P10627124199056914848.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P10685314864819414312

`∑[char[A212804(2*n+1)+1]]`
-/

namespace A130260.P10685314864819414312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P10685314864819414312

namespace A130260

/-- `∑[char[A212804(2*n+1)+1]]` -/
def P10685314864819414312.Spec : Prop :=
  ∀ n, (P10685314864819414312.a n : ℤ) = A130260 n

end A130260

/-! ## A130260.P7090699751274820464

`∑[char[char[2*n]*A052952(n)+1]]`
-/

namespace A130260.P7090699751274820464
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) * A052952 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130260.P7090699751274820464

namespace A130260

/-- `∑[char[char[2*n]*A052952(n)+1]]` -/
def P7090699751274820464.Spec : Prop :=
  ∀ n, (P7090699751274820464.a n : ℤ) = A130260 n

end A130260

/-!
# A130261: Partial sums of the 'lower' even Fibonacci Inverse A130259.

The programs for A130261, the canonical program `A130261.P14879159584277744452` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130261 has offset 0).

The definition of A130261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130261.P14879159584277744452

`(n+1)*A130259(n)-A001519(A130259(n)+1)+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130261

/-- `(n+1)*A130259(n)-A001519(A130259(n)+1)+1` -/
def P14879159584277744452.Spec : Prop :=
  ∀ n, P14879159584277744452.a n = A130261 n

theorem P14879159584277744452.correct : P14879159584277744452.Spec := by
  intro n
  simp only [A130261]

end A130261

/-! ## A130261.P7691085805470769149

`∑[A130259(n)]`
-/

namespace A130261.P7691085805470769149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P7691085805470769149

namespace A130261

/-- `∑[A130259(n)]` -/
def P7691085805470769149.Spec : Prop :=
  ∀ n, P7691085805470769149.a n = A130261 n

end A130261

/-! ## A130261.P15097205773908744102

`∑[∑[char[A088305(n)]]]`
-/

namespace A130261.P15097205773908744102
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P15097205773908744102

namespace A130261

/-- `∑[∑[char[A088305(n)]]]` -/
def P15097205773908744102.Spec : Prop :=
  ∀ n, (P15097205773908744102.a n : ℤ) = A130261 n

end A130261

/-! ## A130261.P10521736431460605010

`∑[floor(A130233(n)/2)]`
-/

namespace A130261.P10521736431460605010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130233 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P10521736431460605010

namespace A130261

/-- `∑[floor(A130233(n)/2)]` -/
def P10521736431460605010.Spec : Prop :=
  ∀ n, P10521736431460605010.a n = A130261 n

end A130261

/-! ## A130261.P2233508791882958164

`∑[A130260(n+1)-1]`
-/

namespace A130261.P2233508791882958164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P2233508791882958164

namespace A130261

/-- `∑[A130260(n+1)-1]` -/
def P2233508791882958164.Spec : Prop :=
  ∀ n, P2233508791882958164.a n = A130261 n

end A130261

/-! ## A130261.P18055131807225670932

`∑[∑[char[A001906(n+1)]]]`
-/

namespace A130261.P18055131807225670932
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P18055131807225670932

namespace A130261

/-- `∑[∑[char[A001906(n+1)]]]` -/
def P18055131807225670932.Spec : Prop :=
  ∀ n, (P18055131807225670932.a n : ℤ) = A130261 n

end A130261

/-! ## A130261.P15120296336113380748

`∑[∑[char[A094966(n+1)]]]`
-/

namespace A130261.P15120296336113380748
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P15120296336113380748

namespace A130261

/-- `∑[∑[char[A094966(n+1)]]]` -/
def P15120296336113380748.Spec : Prop :=
  ∀ n, (P15120296336113380748.a n : ℤ) = A130261 n

end A130261

/-! ## A130261.P3044955881811585094

`∑[∑[char[A052952(2*n)]]]`
-/

namespace A130261.P3044955881811585094
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P3044955881811585094

namespace A130261

/-- `∑[∑[char[A052952(2*n)]]]` -/
def P3044955881811585094.Spec : Prop :=
  ∀ n, (P3044955881811585094.a n : ℤ) = A130261 n

end A130261

/-! ## A130261.P9795394477384269566

`∑[∑[char[A000045(2*(n+1))]]]`
-/

namespace A130261.P9795394477384269566
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P9795394477384269566

namespace A130261

/-- `∑[∑[char[A000045(2*(n+1))]]]` -/
def P9795394477384269566.Spec : Prop :=
  ∀ n, (P9795394477384269566.a n : ℤ) = A130261 n

end A130261

/-! ## A130261.P10384760007798106134

`∑[∑[char[A000045(2*n)]]-1]`
-/

namespace A130261.P10384760007798106134
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P10384760007798106134

namespace A130261

/-- `∑[∑[char[A000045(2*n)]]-1]` -/
def P10384760007798106134.Spec : Prop :=
  ∀ n, P10384760007798106134.a n = A130261 n

end A130261

/-! ## A130261.P17449567927329967476

`∑[∑[char[A212804(2*n+3)]]]`
-/

namespace A130261.P17449567927329967476
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P17449567927329967476

namespace A130261

/-- `∑[∑[char[A212804(2*n+3)]]]` -/
def P17449567927329967476.Spec : Prop :=
  ∀ n, (P17449567927329967476.a n : ℤ) = A130261 n

end A130261

/-! ## A130261.P2403085574763808861

`∑[∑[char[∑[A000045(n+1+n)]]]]`
-/

namespace A130261.P2403085574763808861
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1 + n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P2403085574763808861

namespace A130261

/-- `∑[∑[char[∑[A000045(n+1+n)]]]]` -/
def P2403085574763808861.Spec : Prop :=
  ∀ n, (P2403085574763808861.a n : ℤ) = A130261 n

end A130261

/-! ## A130261.P14843117618878169262

`∑[A004526(A130233(n))]`
-/

namespace A130261.P14843117618878169262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130233 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130261.P14843117618878169262

namespace A130261

/-- `∑[A004526(A130233(n))]` -/
def P14843117618878169262.Spec : Prop :=
  ∀ n, P14843117618878169262.a n = A130261 n

end A130261

/-! ## A130261.P4445700834516437862

`A130259(n)+A130262(n)-n`
-/

namespace A130261.P4445700834516437862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 n + (A130262 n - (n : ℤ))

end

end A130261.P4445700834516437862

namespace A130261

/-- `A130259(n)+A130262(n)-n` -/
def P4445700834516437862.Spec : Prop :=
  ∀ n, P4445700834516437862.a n = A130261 n

end A130261

/-! ## A130261.P10283570753698526631

`A130262(n+1)-(n+1)`
-/

namespace A130261.P10283570753698526631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130262 (n + 1) - (n + 1 : ℤ)

end

end A130261.P10283570753698526631

namespace A130261

/-- `A130262(n+1)-(n+1)` -/
def P10283570753698526631.Spec : Prop :=
  ∀ n, P10283570753698526631.a n = A130261 n

end A130261

/-!
# A130262: Partial sums of the 'upper' even Fibonacci Inverse A130260.

The programs for A130262, the canonical program `A130262.P6396722394106134302` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130262 has offset 0).

The definition of A130262 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130260, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130262.P6396722394106134302

`n*A130260(n)-A001519(A130260(n))+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130262

/-- `n*A130260(n)-A001519(A130260(n))+1` -/
def P6396722394106134302.Spec : Prop :=
  ∀ n, P6396722394106134302.a n = A130262 n

theorem P6396722394106134302.correct : P6396722394106134302.Spec := by
  intro n
  simp only [A130262]

end A130262

/-! ## A130262.P13151683616478174341

`∑[A130260(n)]`
-/

namespace A130262.P13151683616478174341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130262.P13151683616478174341

namespace A130262

/-- `∑[A130260(n)]` -/
def P13151683616478174341.Spec : Prop :=
  ∀ n, P13151683616478174341.a n = A130262 n

end A130262

/-! ## A130262.P14606904135108508731

`∑[∑[char[A055588(n)]]]`
-/

namespace A130262.P14606904135108508731
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130262.P14606904135108508731

namespace A130262

/-- `∑[∑[char[A055588(n)]]]` -/
def P14606904135108508731.Spec : Prop :=
  ∀ n, (P14606904135108508731.a n : ℤ) = A130262 n

end A130262

/-! ## A130262.P2207341605682681998

`∑[∑[char[A001906(n)+1]]]`
-/

namespace A130262.P2207341605682681998
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130262.P2207341605682681998

namespace A130262

/-- `∑[∑[char[A001906(n)+1]]]` -/
def P2207341605682681998.Spec : Prop :=
  ∀ n, (P2207341605682681998.a n : ℤ) = A130262 n

end A130262

/-! ## A130262.P5919920844772673568

`∑[∑[char[A147600(n)+1]]]`
-/

namespace A130262.P5919920844772673568
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130262.P5919920844772673568

namespace A130262

/-- `∑[∑[char[A147600(n)+1]]]` -/
def P5919920844772673568.Spec : Prop :=
  ∀ n, (P5919920844772673568.a n : ℤ) = A130262 n

end A130262

/-! ## A130262.P12174282261959819836

`∑[∑[char[A001611(2*n)]]]`
-/

namespace A130262.P12174282261959819836
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130262.P12174282261959819836

namespace A130262

/-- `∑[∑[char[A001611(2*n)]]]` -/
def P12174282261959819836.Spec : Prop :=
  ∀ n, (P12174282261959819836.a n : ℤ) = A130262 n

end A130262

/-! ## A130262.P2209635229483943935

`∑[∑[char[A000045(2*n)+1]]]`
-/

namespace A130262.P2209635229483943935
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130262.P2209635229483943935

namespace A130262

/-- `∑[∑[char[A000045(2*n)+1]]]` -/
def P2209635229483943935.Spec : Prop :=
  ∀ n, (P2209635229483943935.a n : ℤ) = A130262 n

end A130262

/-! ## A130262.P6636233094462942805

`∑[A004526(A130234(n)+1)]`
-/

namespace A130262.P6636233094462942805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130234 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130262.P6636233094462942805

namespace A130262

/-- `∑[A004526(A130234(n)+1)]` -/
def P6636233094462942805.Spec : Prop :=
  ∀ n, P6636233094462942805.a n = A130262 n

end A130262

/-! ## A130262.P3612388938250692549

`A130261(n)+n-A130259(n)`
-/

namespace A130262.P3612388938250692549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130261 n + ((n : ℤ) - A130259 n)

end

end A130262.P3612388938250692549

namespace A130262

/-- `A130261(n)+n-A130259(n)` -/
def P3612388938250692549.Spec : Prop :=
  ∀ n, P3612388938250692549.a n = A130262 n

end A130262

/-!
# A130263: Number of degree-n permutations such that number of cycles of size k is odd (or zero) for every k.

The programs for A130263, there is no canonical definition to state claims against.
-/

/-! ## A130263.P5321162828699270977

`A261585(Δ[∏[A284644(n+1)]])`
-/

namespace A130263.P5321162828699270977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284644 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (f1 (n + 1) - f1 n).toNat

end

end A130263.P5321162828699270977

/-!
# A130265: Triangle read by rows: matrix product A007318 * A051340.

The programs for A130265, the canonical program `A130265.P7668724315621306673` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130265 has offset 0).

The definition of A130265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130265.P13200490586829268851

`(A116666(n+1)+A104709(n))/2`
-/

namespace A130265.P13200490586829268851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116666 (n + 1) + A104709 n : ℚ) / 2

end

end A130265.P13200490586829268851

namespace A130265

/-- `(A116666(n+1)+A104709(n))/2` -/
def P13200490586829268851.Spec : Prop :=
  ∀ n, P13200490586829268851.a n = (A130265 n : ℚ)

end A130265

/-! ## A130265.P7668724315621306673

`A055248(n)+A103406(n)-A007318(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A130265

/-- `A055248(n)+A103406(n)-A007318(n)` -/
def P7668724315621306673.Spec : Prop :=
  ∀ n, P7668724315621306673.a n = A130265 n

theorem P7668724315621306673.correct : P7668724315621306673.Spec := by
  intro n
  simp only [A130265]

end A130265

/-! ## A130265.P16609900008916185315

`A055248(n)+A002262(n)*A007318(n)`
-/

namespace A130265.P16609900008916185315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + A002262 n * A007318 n

end

end A130265.P16609900008916185315

namespace A130265

/-- `A055248(n)+A002262(n)*A007318(n)` -/
def P16609900008916185315.Spec : Prop :=
  ∀ n, P16609900008916185315.a n = A130265 n

end A130265

/-! ## A130265.P10881322109626661757

`A055248(n)+A003056(n)*A097805(n)`
-/

namespace A130265.P10881322109626661757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + A003056 n * A097805 n

end

end A130265.P10881322109626661757

namespace A130265

/-- `A055248(n)+A003056(n)*A097805(n)` -/
def P10881322109626661757.Spec : Prop :=
  ∀ n, P10881322109626661757.a n = A130265 n

end A130265

/-! ## A130265.P8649822056968801900

`A055248(n)+A002262(n)*A135227(n)`
-/

namespace A130265.P8649822056968801900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + A002262 n * A135227 n

end

end A130265.P8649822056968801900

namespace A130265

/-- `A055248(n)+A002262(n)*A135227(n)` -/
def P8649822056968801900.Spec : Prop :=
  ∀ n, P8649822056968801900.a n = A130265 n

end A130265

/-! ## A130265.P9416967195758769510

`A055248(n)+A002262(n)*A206735(n)`
-/

namespace A130265.P9416967195758769510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + A002262 n * A206735 n

end

end A130265.P9416967195758769510

namespace A130265

/-- `A055248(n)+A002262(n)*A206735(n)` -/
def P9416967195758769510.Spec : Prop :=
  ∀ n, P9416967195758769510.a n = A130265 n

end A130265

/-! ## A130265.P15628161993634190726

`A103406(n)+A104709(n)%A103316(n)`
-/

namespace A130265.P15628161993634190726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n + Int.tmod (A104709 n) (A103316 n)

end

end A130265.P15628161993634190726

namespace A130265

/-- `A103406(n)+A104709(n)%A103316(n)` -/
def P15628161993634190726.Spec : Prop :=
  ∀ n, P15628161993634190726.a n = A130265 n

end A130265

/-! ## A130265.P1878250881075729434

`∑[A007318(n)]+A103406(n)-A221881(n+1)`
-/

namespace A130265.P1878250881075729434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A103406 n - A221881 (n + 1))

end

end A130265.P1878250881075729434

namespace A130265

/-- `∑[A007318(n)]+A103406(n)-A221881(n+1)` -/
def P1878250881075729434.Spec : Prop :=
  ∀ n, P1878250881075729434.a n = A130265 n

end A130265

/-! ## A130265.P9605085553696224

`A004525(A116666(n+1)+A104709(n))`
-/

namespace A130265.P9605085553696224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A116666 (n + 1) + A104709 n).toNat

end

end A130265.P9605085553696224

namespace A130265

/-- `A004525(A116666(n+1)+A104709(n))` -/
def P9605085553696224.Spec : Prop :=
  ∀ n, P9605085553696224.a n = A130265 n

end A130265

/-! ## A130265.P4586029352878231422

`A004526(A116666(n+1)+A104709(n))`
-/

namespace A130265.P4586029352878231422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A116666 (n + 1) + A104709 n).toNat

end

end A130265.P4586029352878231422

namespace A130265

/-- `A004526(A116666(n+1)+A104709(n))` -/
def P4586029352878231422.Spec : Prop :=
  ∀ n, P4586029352878231422.a n = A130265 n

end A130265

/-!
# A130266: A051340 * A128174.

The programs for A130266, the canonical program `A130266.P16039714885760427885` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130266 has offset 0).

The definition of A130266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130266.P11156516601590858022

`A004526(C(comp[∑[n]]-n, 2)-(n+1))+∑[char[∑[n]]]^(2-gcd(2, comp[∑[4*n]]))`
-/

namespace A130266.P11156516601590858022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℚ) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) ^ (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n) : ℤ) : ℤ)

end

end A130266.P11156516601590858022

namespace A130266

/-- `A004526(C(comp[∑[n]]-n, 2)-(n+1))+∑[char[∑[n]]]^(2-gcd(2, comp[∑[4*n]]))` -/
def P11156516601590858022.Spec : Prop :=
  ∀ n, P11156516601590858022.a n = (A130266 n : ℚ)

end A130266

/-! ## A130266.P16039714885760427885

`gcd(A100345(n)%A131507(n), C(4, n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130266

/-- `gcd(A100345(n)%A131507(n), C(4, n))` -/
def P16039714885760427885.Spec : Prop :=
  ∀ n, (P16039714885760427885.a n : ℤ) = A130266 n

theorem P16039714885760427885.correct : P16039714885760427885.Spec := by
  intro n
  simp only [A130266]

end A130266

/-! ## A130266.P13156706206867732473

`A100345(n-(2*a(n-1))%2)%A131507(n)` with `a(0)=1`
-/

namespace A130266.P13156706206867732473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A100345 ((n : ℤ) - Int.tmod (2 * a (n - 1)) 2).toNat) (A131507 n)

end

end A130266.P13156706206867732473

namespace A130266

/-- `A100345(n-(2*a(n-1))%2)%A131507(n)` -/
def P13156706206867732473.Spec : Prop :=
  ∀ n, P13156706206867732473.a n = A130266 n

end A130266

/-! ## A130266.P8562786908578637069

`A028310(A100345(n)%A131507(n))`
-/

namespace A130266.P8562786908578637069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A100345 n) (A131507 n)).toNat

end

end A130266.P8562786908578637069

namespace A130266

/-- `A028310(A100345(n)%A131507(n))` -/
def P8562786908578637069.Spec : Prop :=
  ∀ n, P8562786908578637069.a n = A130266 n

end A130266

/-! ## A130266.P12239399513282388252

`A237420(A025581(n))+A209279(n+1)`
-/

namespace A130266.P12239399513282388252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A025581 n).toNat + A209279 (n + 1)

end

end A130266.P12239399513282388252

namespace A130266

/-- `A237420(A025581(n))+A209279(n+1)` -/
def P12239399513282388252.Spec : Prop :=
  ∀ n, P12239399513282388252.a n = A130266 n

end A130266

/-! ## A130266.P18093642517414816935

`A028310(A095833(n+1)%A131507(n))`
-/

namespace A130266.P18093642517414816935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A095833 (n + 1)) (A131507 n)).toNat

end

end A130266.P18093642517414816935

namespace A130266

/-- `A028310(A095833(n+1)%A131507(n))` -/
def P18093642517414816935.Spec : Prop :=
  ∀ n, P18093642517414816935.a n = A130266 n

end A130266

/-! ## A130266.P9539974380213428068

`A237420(log2(A130321(n)))+A209279(n+1)`
-/

namespace A130266.P9539974380213428068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat + A209279 (n + 1)

end

end A130266.P9539974380213428068

namespace A130266

/-- `A237420(log2(A130321(n)))+A209279(n+1)` -/
def P9539974380213428068.Spec : Prop :=
  ∀ n, P9539974380213428068.a n = A130266 n

end A130266

/-! ## A130266.P5744778913191285980

`A075362(A038722(n+1))%A131507(n+1)`
-/

namespace A130266.P5744778913191285980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075362 (A038722 (n + 1)).toNat) (A131507 (n + 1))

end

end A130266.P5744778913191285980

namespace A130266

/-- `A075362(A038722(n+1))%A131507(n+1)` -/
def P5744778913191285980.Spec : Prop :=
  ∀ n, P5744778913191285980.a n = A130266 n

end A130266

/-!
# A130267: A051731 * A051340.

The programs for A130267, there is no canonical definition to state claims against.
-/

/-! ## A130267.P14232572596227367272

`A127093(n+1)+A135539(n+1)-A051731(n+1)`
-/

namespace A130267.P14232572596227367272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + (A135539 (n + 1) - A051731 (n + 1))

end

end A130267.P14232572596227367272

/-! ## A130267.P13104632025095947120

`A135539(n+1)+A307662(n+1)-1`
-/

namespace A130267.P13104632025095947120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (n + 1) + (A307662 (n + 1) - 1)

end

end A130267.P13104632025095947120

/-! ## A130267.P7298770044866532002

`A135539(n+1)+A023443(A307662(n+1))`
-/

namespace A130267.P7298770044866532002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (n + 1) + A023443 (A307662 (n + 1)).toNat

end

end A130267.P7298770044866532002

/-!
# A130268: Number of degree-2n permutations such that number of cycles of size k is even (or zero) for every k.

The programs for A130268, there is no canonical definition to state claims against.
-/

/-! ## A130268.P1911319264127802156

`A220274(3*a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A130268.P1911319264127802156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A220274 (3 * a (n - 1)).toNat

end

end A130268.P1911319264127802156

/-!
# A130269: A002260 * A051340.

The programs for A130269, the canonical program `A130269.P4089145140288437489` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130269 has offset 1).

The definition of A130269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130269.P2251764469127422248

`C(1-C(∑[char[∑[n]]], 2)+n, 2)+C(comp[∑[n]]-n, 2)`
-/

namespace A130269.P2251764469127422248
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat 2 + Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2

end

end A130269.P2251764469127422248

namespace A130269

/-- `C(1-C(∑[char[∑[n]]], 2)+n, 2)+C(comp[∑[n]]-n, 2)` -/
def P2251764469127422248.Spec : Prop :=
  ∀ n, (P2251764469127422248.a n : ℤ) = A130269 (n + 1)

end A130269

/-! ## A130269.P14548230456271133681

`∑[char[∑[n]]]²-A049780(n)`
-/

namespace A130269.P14548230456271133681
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A049780 n

end

end A130269.P14548230456271133681

namespace A130269

/-- `∑[char[∑[n]]]²-A049780(n)` -/
def P14548230456271133681.Spec : Prop :=
  ∀ n, P14548230456271133681.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P8287699204110966614

`comp[∑[n-1]]+C(A002262(n), 2)`
-/

namespace A130269.P8287699204110966614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + Nat.choose (A002262 n).toNat 2

end

end A130269.P8287699204110966614

namespace A130269

/-- `comp[∑[n-1]]+C(A002262(n), 2)` -/
def P8287699204110966614.Spec : Prop :=
  ∀ n, (P8287699204110966614.a n : ℤ) = A130269 (n + 1)

end A130269

/-! ## A130269.P7738198584062903152

`(A185910(n+1)+∑[char[∑[n]]]²)/2`
-/

namespace A130269.P7738198584062903152
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185910 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) : ℚ) / 2

end

end A130269.P7738198584062903152

namespace A130269

/-- `(A185910(n+1)+∑[char[∑[n]]]²)/2` -/
def P7738198584062903152.Spec : Prop :=
  ∀ n, P7738198584062903152.a n = (A130269 (n + 1) : ℚ)

end A130269

/-! ## A130269.P7874043880532843604

`A271668(n)+A143844(n)`
-/

namespace A130269.P7874043880532843604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n + A143844 n

end

end A130269.P7874043880532843604

namespace A130269

/-- `A271668(n)+A143844(n)` -/
def P7874043880532843604.Spec : Prop :=
  ∀ n, P7874043880532843604.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P881159619653699517

`A271668(n)+A002262(n)²`
-/

namespace A130269.P881159619653699517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n + A002262 n ^ 2

end

end A130269.P881159619653699517

namespace A130269

/-- `A271668(n)+A002262(n)²` -/
def P881159619653699517.Spec : Prop :=
  ∀ n, P881159619653699517.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P4089145140288437489

`A127739(n+1)+A112367(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130269

/-- `A127739(n+1)+A112367(n)` -/
def P4089145140288437489.Spec : Prop :=
  ∀ n, P4089145140288437489.a n = A130269 (n + 1)

theorem P4089145140288437489.correct : P4089145140288437489.Spec := by
  intro n
  simp only [A130269, Nat.add_sub_cancel]

end A130269

/-! ## A130269.P5717095010712063777

`A367964(n)+A002024(n+1)`
-/

namespace A130269.P5717095010712063777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 n + A002024 (n + 1)

end

end A130269.P5717095010712063777

namespace A130269

/-- `A367964(n)+A002024(n+1)` -/
def P5717095010712063777.Spec : Prop :=
  ∀ n, P5717095010712063777.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P16274675855507888868

`A131422(n+1)-A002262(n)`
-/

namespace A130269.P16274675855507888868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131422 (n + 1) - A002262 n

end

end A130269.P16274675855507888868

namespace A130269

/-- `A131422(n+1)-A002262(n)` -/
def P16274675855507888868.Spec : Prop :=
  ∀ n, P16274675855507888868.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P11333920092895710222

`A182491(n+1)-A245300(n)`
-/

namespace A130269.P11333920092895710222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182491 (n + 1) - A245300 n

end

end A130269.P11333920092895710222

namespace A130269

/-- `A182491(n+1)-A245300(n)` -/
def P11333920092895710222.Spec : Prop :=
  ∀ n, P11333920092895710222.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P5254777773907758596

`A217575(n+1)-A271668(n)`
-/

namespace A130269.P5254777773907758596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) - A271668 n

end

end A130269.P5254777773907758596

namespace A130269

/-- `A217575(n+1)-A271668(n)` -/
def P5254777773907758596.Spec : Prop :=
  ∀ n, P5254777773907758596.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P4291527027355947784

`A309559(n)+n-A004247(n)`
-/

namespace A130269.P4291527027355947784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n + ((n : ℤ) - A004247 n)

end

end A130269.P4291527027355947784

namespace A130269

/-- `A309559(n)+n-A004247(n)` -/
def P4291527027355947784.Spec : Prop :=
  ∀ n, P4291527027355947784.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P16950918886651081927

`A144216(n+1)+A141419(n+1)`
-/

namespace A130269.P16950918886651081927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (n + 1) + A141419 (n + 1)

end

end A130269.P16950918886651081927

namespace A130269

/-- `A144216(n+1)+A141419(n+1)` -/
def P16950918886651081927.Spec : Prop :=
  ∀ n, P16950918886651081927.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P18086452386437851319

`A265129(n+1)-(A049780(n)+1)`
-/

namespace A130269.P18086452386437851319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - (A049780 n + 1)

end

end A130269.P18086452386437851319

namespace A130269

/-- `A265129(n+1)-(A049780(n)+1)` -/
def P18086452386437851319.Spec : Prop :=
  ∀ n, P18086452386437851319.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P2800475893966828737

`A004736(n+1)+A112367(n)+n`
-/

namespace A130269.P2800475893966828737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A112367 n + (n : ℤ))

end

end A130269.P2800475893966828737

namespace A130269

/-- `A004736(n+1)+A112367(n)+n` -/
def P2800475893966828737.Spec : Prop :=
  ∀ n, P2800475893966828737.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P16427516063463361911

`A038722(n+1)+n-A049780(n)`
-/

namespace A130269.P16427516063463361911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + ((n : ℤ) - A049780 n)

end

end A130269.P16427516063463361911

namespace A130269

/-- `A038722(n+1)+n-A049780(n)` -/
def P16427516063463361911.Spec : Prop :=
  ∀ n, P16427516063463361911.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P10007568546867243322

`A131422(n+1)+A057944(n)-n`
-/

namespace A130269.P10007568546867243322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131422 (n + 1) + (A057944 n - (n : ℤ))

end

end A130269.P10007568546867243322

namespace A130269

/-- `A131422(n+1)+A057944(n)-n` -/
def P10007568546867243322.Spec : Prop :=
  ∀ n, P10007568546867243322.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P17460206555716646053

`n+1-(A049780(n)-A061579(n))`
-/

namespace A130269.P17460206555716646053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A049780 n - A061579 n)

end

end A130269.P17460206555716646053

namespace A130269

/-- `n+1-(A049780(n)-A061579(n))` -/
def P17460206555716646053.Spec : Prop :=
  ∀ n, P17460206555716646053.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P12432295144251296059

`A127739(n+1)+C(A002260(n+1), 2)`
-/

namespace A130269.P12432295144251296059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (Nat.choose (A002260 (n + 1)).toNat 2 : ℤ)

end

end A130269.P12432295144251296059

namespace A130269

/-- `A127739(n+1)+C(A002260(n+1), 2)` -/
def P12432295144251296059.Spec : Prop :=
  ∀ n, P12432295144251296059.a n = A130269 (n + 1)

end A130269

/-! ## A130269.P15159035333812916626

`A038722(n+1)+A000096(A002262(n))`
-/

namespace A130269.P15159035333812916626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + A000096 (A002262 n).toNat

end

end A130269.P15159035333812916626

namespace A130269

/-- `A038722(n+1)+A000096(A002262(n))` -/
def P15159035333812916626.Spec : Prop :=
  ∀ n, P15159035333812916626.a n = A130269 (n + 1)

end A130269

/-!
# A130270: Triangle read by rows, T(n) followed by 1, 2, 3, ..., n-1.

The programs for A130270, the canonical program `A130270.P2168121446390498421` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130270 has offset 1).

The definition of A130270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130270.P5342962928914948041

`A158823(n+1)-A004247(n)`
-/

namespace A130270.P5342962928914948041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158823 (n + 1) - A004247 n

end

end A130270.P5342962928914948041

namespace A130270

/-- `A158823(n+1)-A004247(n)` -/
def P5342962928914948041.Spec : Prop :=
  ∀ n, P5342962928914948041.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P15790135085228011551

`A158823(n+1)/A193592(n)`
-/

namespace A130270.P15790135085228011551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158823 (n + 1) : ℚ) / (A193592 n : ℚ)

end

end A130270.P15790135085228011551

namespace A130270

/-- `A158823(n+1)/A193592(n)` -/
def P15790135085228011551.Spec : Prop :=
  ∀ n, P15790135085228011551.a n = (A130270 (n + 1) : ℚ)

end A130270

/-! ## A130270.P15279523778120588070

`gcd(A002262(n), A158823(n+1))`
-/

namespace A130270.P15279523778120588070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A158823 (n + 1))

end

end A130270.P15279523778120588070

namespace A130270

/-- `gcd(A002262(n), A158823(n+1))` -/
def P15279523778120588070.Spec : Prop :=
  ∀ n, (P15279523778120588070.a n : ℤ) = A130270 (n + 1)

end A130270

/-! ## A130270.P2168121446390498421

`A080036(n)%A000124(∑[A010054(n)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130270

/-- `A080036(n)%A000124(∑[A010054(n)])` -/
def P2168121446390498421.Spec : Prop :=
  ∀ n, P2168121446390498421.a n = A130270 (n + 1)

theorem P2168121446390498421.correct : P2168121446390498421.Spec := by
  intro n
  simp only [A130270, Nat.add_sub_cancel]

end A130270

/-! ## A130270.P7501511874975602235

`A002262(n)+A010054(n)*A080036(n)`
-/

namespace A130270.P7501511874975602235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A010054 n * A080036 n

end

end A130270.P7501511874975602235

namespace A130270

/-- `A002262(n)+A010054(n)*A080036(n)` -/
def P7501511874975602235.Spec : Prop :=
  ∀ n, P7501511874975602235.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P10913126951254539417

`A002262(n)+A010054(n)*A158822(n)`
-/

namespace A130270.P10913126951254539417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A010054 n * A158822 n

end

end A130270.P10913126951254539417

namespace A130270

/-- `A002262(n)+A010054(n)*A158822(n)` -/
def P10913126951254539417.Spec : Prop :=
  ∀ n, P10913126951254539417.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P9273829972831067833

`A002262(n)+char[A000217(n)]*A158822(n)`
-/

namespace A130270.P9273829972831067833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A158822 n

end

end A130270.P9273829972831067833

namespace A130270

/-- `A002262(n)+char[A000217(n)]*A158822(n)` -/
def P9273829972831067833.Spec : Prop :=
  ∀ n, P9273829972831067833.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P17659392399512745944

`A002262(n)+A000217(A066182(n+1)-n)`
-/

namespace A130270.P17659392399512745944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000217 (A066182 (n + 1) - (n : ℤ)).toNat

end

end A130270.P17659392399512745944

namespace A130270

/-- `A002262(n)+A000217(A066182(n+1)-n)` -/
def P17659392399512745944.Spec : Prop :=
  ∀ n, P17659392399512745944.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P13479516846885948081

`A002262(n)+A007401(n+1)*A010054(n)`
-/

namespace A130270.P13479516846885948081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A007401 (n + 1) * A010054 n

end

end A130270.P13479516846885948081

namespace A130270

/-- `A002262(n)+A007401(n+1)*A010054(n)` -/
def P13479516846885948081.Spec : Prop :=
  ∀ n, P13479516846885948081.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P12043511446398084652

`A002262(n)+A010054(n)*A038722(n+1)`
-/

namespace A130270.P12043511446398084652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A010054 n * A038722 (n + 1)

end

end A130270.P12043511446398084652

namespace A130270

/-- `A002262(n)+A010054(n)*A038722(n+1)` -/
def P12043511446398084652.Spec : Prop :=
  ∀ n, P12043511446398084652.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P1407070583370080450

`gcd(A158823(n+1)+A109042(n), A109042(n))`
-/

namespace A130270.P1407070583370080450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158823 (n + 1) + A109042 n) (A109042 n)

end

end A130270.P1407070583370080450

namespace A130270

/-- `gcd(A158823(n+1)+A109042(n), A109042(n))` -/
def P1407070583370080450.Spec : Prop :=
  ∀ n, (P1407070583370080450.a n : ℤ) = A130270 (n + 1)

end A130270

/-! ## A130270.P10469621280232122492

`A007401(n+1)-A217575(n+1)%A007401(n+1)`
-/

namespace A130270.P10469621280232122492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) - Int.tmod (A217575 (n + 1)) (A007401 (n + 1))

end

end A130270.P10469621280232122492

namespace A130270

/-- `A007401(n+1)-A217575(n+1)%A007401(n+1)` -/
def P10469621280232122492.Spec : Prop :=
  ∀ n, P10469621280232122492.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P16025999969640633063

`A127739(n+1)-A038722(n+1)%A127739(n+1)`
-/

namespace A130270.P16025999969640633063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - Int.tmod (A038722 (n + 1)) (A127739 (n + 1))

end

end A130270.P16025999969640633063

namespace A130270

/-- `A127739(n+1)-A038722(n+1)%A127739(n+1)` -/
def P16025999969640633063.Spec : Prop :=
  ∀ n, P16025999969640633063.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P16873718137617921446

`A002262(n)+Δ[A000292(A123578(n))]`
-/

namespace A130270.P16873718137617921446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A123578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (f1 (n + 1) - f1 n)

end

end A130270.P16873718137617921446

namespace A130270

/-- `A002262(n)+Δ[A000292(A123578(n))]` -/
def P16873718137617921446.Spec : Prop :=
  ∀ n, P16873718137617921446.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P4289438847808136096

`A127739(A080036(n))%A038722(A014132(n+1))`
-/

namespace A130270.P4289438847808136096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127739 (A080036 n).toNat) (A038722 (A014132 (n + 1)).toNat)

end

end A130270.P4289438847808136096

namespace A130270

/-- `A127739(A080036(n))%A038722(A014132(n+1))` -/
def P4289438847808136096.Spec : Prop :=
  ∀ n, P4289438847808136096.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P5737142623948003057

`A135223(n+1)-A341315(C(A341315(n), 2))`
-/

namespace A130270.P5737142623948003057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) - A341315 (Nat.choose (A341315 n).toNat 2)

end

end A130270.P5737142623948003057

namespace A130270

/-- `A135223(n+1)-A341315(C(A341315(n), 2))` -/
def P5737142623948003057.Spec : Prop :=
  ∀ n, P5737142623948003057.a n = A130270 (n + 1)

end A130270

/-! ## A130270.P14893334112976961508

`A080036(n)%A069932(A140513(n))`
-/

namespace A130270.P14893334112976961508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080036 n) (A069932 (A140513 n).toNat)

end

end A130270.P14893334112976961508

namespace A130270

/-- `A080036(n)%A069932(A140513(n))` -/
def P14893334112976961508.Spec : Prop :=
  ∀ n, P14893334112976961508.a n = A130270 (n + 1)

end A130270

/-!
# A130271: Triangle read by rows: A051340^2.

The programs for A130271, the canonical program `A130271.P11867080403092129136` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130271 has offset 1).

The definition of A130271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130271.P16892301599896164599

`A079097(∑[A103451(n)])`
-/

namespace A130271.P16892301599896164599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130271.P16892301599896164599

namespace A130271

/-- `A079097(∑[A103451(n)])` -/
def P16892301599896164599.Spec : Prop :=
  ∀ n, P16892301599896164599.a n = A130271 (n + 1)

end A130271

/-! ## A130271.P9195408289521760882

`A162610(∑[A145677(n)])`
-/

namespace A130271.P9195408289521760882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130271.P9195408289521760882

namespace A130271

/-- `A162610(∑[A145677(n)])` -/
def P9195408289521760882.Spec : Prop :=
  ∀ n, P9195408289521760882.a n = A130271 (n + 1)

end A130271

/-! ## A130271.P15052324091288112385

`A051340(n)*A132778(n+1)`
-/

namespace A130271.P15052324091288112385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A132778 (n + 1)

end

end A130271.P15052324091288112385

namespace A130271

/-- `A051340(n)*A132778(n+1)` -/
def P15052324091288112385.Spec : Prop :=
  ∀ n, P15052324091288112385.a n = A130271 (n + 1)

end A130271

/-! ## A130271.P11867080403092129136

`A002024(n+1)+A003056(n)*A051340(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130271

/-- `A002024(n+1)+A003056(n)*A051340(n)` -/
def P11867080403092129136.Spec : Prop :=
  ∀ n, P11867080403092129136.a n = A130271 (n + 1)

theorem P11867080403092129136.correct : P11867080403092129136.Spec := by
  intro n
  simp only [A130271, Nat.add_sub_cancel]

end A130271

/-! ## A130271.P17960105835043539922

`(A111650(n+1)-A051340(n))*A051340(n)`
-/

namespace A130271.P17960105835043539922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111650 (n + 1) - A051340 n) * A051340 n

end

end A130271.P17960105835043539922

namespace A130271

/-- `(A111650(n+1)-A051340(n))*A051340(n)` -/
def P17960105835043539922.Spec : Prop :=
  ∀ n, P17960105835043539922.a n = A130271 (n + 1)

end A130271

/-! ## A130271.P724580434108598487

`(A004202(n+1)-A063656(n+1))*A051340(n)`
-/

namespace A130271.P724580434108598487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004202 (n + 1) - A063656 (n + 1)) * A051340 n

end

end A130271.P724580434108598487

namespace A130271

/-- `(A004202(n+1)-A063656(n+1))*A051340(n)` -/
def P724580434108598487.Spec : Prop :=
  ∀ n, P724580434108598487.a n = A130271 (n + 1)

end A130271

/-! ## A130271.P18122707072930848109

`∑[2-Δ[A161984(n)]]`
-/

namespace A130271.P18122707072930848109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130271.P18122707072930848109

namespace A130271

/-- `∑[2-Δ[A161984(n)]]` -/
def P18122707072930848109.Spec : Prop :=
  ∀ n, P18122707072930848109.a n = A130271 (n + 1)

end A130271

/-! ## A130271.P4797554110031073933

`2*(n+1)-A161984(n+1)`
-/

namespace A130271.P4797554110031073933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A161984 (n + 1)

end

end A130271.P4797554110031073933

namespace A130271

/-- `2*(n+1)-A161984(n+1)` -/
def P4797554110031073933.Spec : Prop :=
  ∀ n, P4797554110031073933.a n = A130271 (n + 1)

end A130271

/-!
# A130272: Primes p for which the period of the continued fraction of sqrt(p) increases.

The programs for A130272, there is no canonical definition to state claims against.
-/

/-! ## A130272.P2167147992467825224

`A059800(record[A054269(n+1)])`
-/

namespace A130272.P2167147992467825224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130272.P2167147992467825224

/-! ## A130272.P14723289775988580933

`A000040(A338785(record[A054269(n+1)]))`
-/

namespace A130272.P14723289775988580933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A338785 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A130272.P14723289775988580933

/-! ## A130272.P17891414319746983807

`eq[A018783(n), A240727(A260739(2*n+5))]`
-/

namespace A130272.P17891414319746983807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240727 (A260739 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130272.P17891414319746983807

/-!
# A130273: Refines A075197(n): number of partitions of n balls of n colors. The refinement has shape A000041(n).

The programs for A130273, there is no canonical definition to state claims against.
-/

/-! ## A130273.P4206391530084471315

`A096443(A153679(n+1))*A209936(n+1)`
-/

namespace A130273.P4206391530084471315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096443 (A153679 (n + 1)).toNat * A209936 (n + 1)

end

end A130273.P4206391530084471315

/-! ## A130273.P9550348529555405676

`A096443(A187829(n+1))*A209936(n+1)`
-/

namespace A130273.P9550348529555405676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096443 (A187829 (n + 1)).toNat * A209936 (n + 1)

end

end A130273.P9550348529555405676

/-! ## A130273.P13997155312102034199

`A096443(A187829(n+1))*A210238(n+1)`
-/

namespace A130273.P13997155312102034199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096443 (A187829 (n + 1)).toNat * A210238 (n + 1)

end

end A130273.P13997155312102034199

/-!
# A130275: Number of degree-n permutations such that number of cycles of size 2k is odd (or zero) for every k.

The programs for A130275, there is no canonical definition to state claims against.
-/

/-! ## A130275.P3565342035164646583

`A384049(n!)`
-/

namespace A130275.P3565342035164646583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384049 (Nat.factorial n)

end

end A130275.P3565342035164646583

/-! ## A130275.P8502102738421346696

`A384049(-∏[n-C(2, n+2)])`
-/

namespace A130275.P8502102738421346696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384049 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A130275.P8502102738421346696

/-! ## A130275.P17520750269445542995

`A384049(A000142(n))`
-/

namespace A130275.P17520750269445542995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384049 (A000142 n).toNat

end

end A130275.P17520750269445542995

/-! ## A130275.P6941160012610005928

`A384049(A033646(n))`
-/

namespace A130275.P6941160012610005928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384049 (A033646 n).toNat

end

end A130275.P6941160012610005928

/-!
# A130276: Number of degree-2n permutations such that number of cycles of size 2k-1 is even (or zero) for every k.

The programs for A130276, there is no canonical definition to state claims against.
-/

/-! ## A130276.P3089148499594935600

`A116882(A002110(n)-A184953(n))`
-/

namespace A130276.P3089148499594935600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (A002110 n - A184953 n).toNat

end

end A130276.P3089148499594935600

/-!
# A130277: Triangle read by rows: T(n, k) = A000005(n) if k divides n, T(n, k) = 0 otherwise.

The programs for A130277, the canonical program `A130277.P1302981945449131391` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130277 has offset 1).

The definition of A130277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130277.P7938090209004831982

`A000005(A049840(n+1))*A051731(n+1)`
-/

namespace A130277.P7938090209004831982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049840 (n + 1)).toNat * A051731 (n + 1)

end

end A130277.P7938090209004831982

namespace A130277

/-- `A000005(A049840(n+1))*A051731(n+1)` -/
def P7938090209004831982.Spec : Prop :=
  ∀ n, P7938090209004831982.a n = A130277 (n + 1)

end A130277

/-! ## A130277.P1302981945449131391

`A141674(n+1)/A010766(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A130277

/-- `A141674(n+1)/A010766(n+1)` -/
def P1302981945449131391.Spec : Prop :=
  ∀ n, P1302981945449131391.a n = (A130277 (n + 1) : ℚ)

end A130277

/-! ## A130277.P1796862613052269712

`A141674(n+1)/A049834(n+1)`
-/

namespace A130277.P1796862613052269712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141674 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

end

end A130277.P1796862613052269712

namespace A130277

/-- `A141674(n+1)/A049834(n+1)` -/
def P1796862613052269712.Spec : Prop :=
  ∀ n, P1796862613052269712.a n = (A130277 (n + 1) : ℚ)

end A130277

/-! ## A130277.P14876226759889324620

`A141674(n+1)/A051537(n+1)`
-/

namespace A130277.P14876226759889324620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141674 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A130277.P14876226759889324620

namespace A130277

/-- `A141674(n+1)/A051537(n+1)` -/
def P14876226759889324620.Spec : Prop :=
  ∀ n, P14876226759889324620.a n = (A130277 (n + 1) : ℚ)

end A130277

/-! ## A130277.P15591160468098612229

`A141674(n+1)/A054531(n+1)`
-/

namespace A130277.P15591160468098612229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141674 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A130277.P15591160468098612229

namespace A130277

/-- `A141674(n+1)/A054531(n+1)` -/
def P15591160468098612229.Spec : Prop :=
  ∀ n, P15591160468098612229.a n = (A130277 (n + 1) : ℚ)

end A130277

/-! ## A130277.P163154423080783191

`A141674(n+1)/A059026(n+1)`
-/

namespace A130277.P163154423080783191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141674 (n + 1) : ℚ) / (A059026 (n + 1) : ℚ)

end

end A130277.P163154423080783191

namespace A130277

/-- `A141674(n+1)/A059026(n+1)` -/
def P163154423080783191.Spec : Prop :=
  ∀ n, P163154423080783191.a n = (A130277 (n + 1) : ℚ)

end A130277

/-! ## A130277.P10250711601491863049

`A141674(n+1)/A219158(n+1)`
-/

namespace A130277.P10250711601491863049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141674 (n + 1) : ℚ) / (A219158 (n + 1) : ℚ)

end

end A130277.P10250711601491863049

namespace A130277

/-- `A141674(n+1)/A219158(n+1)` -/
def P10250711601491863049.Spec : Prop :=
  ∀ n, P10250711601491863049.a n = (A130277 (n + 1) : ℚ)

end A130277

/-! ## A130277.P3097742001053484649

`A141674(n+1)/A234575(n+1)`
-/

namespace A130277.P3097742001053484649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141674 (n + 1) : ℚ) / (A234575 (n + 1) : ℚ)

end

end A130277.P3097742001053484649

namespace A130277

/-- `A141674(n+1)/A234575(n+1)` -/
def P3097742001053484649.Spec : Prop :=
  ∀ n, P3097742001053484649.a n = (A130277 (n + 1) : ℚ)

end A130277

/-! ## A130277.P8143717517999598641

`A141674(n+1)/A372523(n+1)`
-/

namespace A130277.P8143717517999598641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141674 (n + 1) : ℚ) / (A372523 (n + 1) : ℚ)

end

end A130277.P8143717517999598641

namespace A130277

/-- `A141674(n+1)/A372523(n+1)` -/
def P8143717517999598641.Spec : Prop :=
  ∀ n, P8143717517999598641.a n = (A130277 (n + 1) : ℚ)

end A130277

/-! ## A130277.P7118280358195789242

`∑{d}[A127446(n+1), A214709(#²)]`
-/

namespace A130277.P7118280358195789242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A214709 (d ^ 2)

end

end A130277.P7118280358195789242

namespace A130277

/-- `∑{d}[A127446(n+1), A214709(#²)]` -/
def P7118280358195789242.Spec : Prop :=
  ∀ n, P7118280358195789242.a n = A130277 (n + 1)

end A130277

/-!
# A130278: Number of degree-n permutations such that number of cycles of size 2k-1 is odd (or zero) for every k.

The programs for A130278, there is no canonical definition to state claims against.
-/

/-! ## A130278.P8496219034075757858

`A115510((n-A305370(n))²)`
-/

namespace A130278.P8496219034075757858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (((n : ℤ) - A305370 n) ^ 2).toNat

end

end A130278.P8496219034075757858

/-! ## A130278.P3331191211459582229

`A245300(2*n)^A321090(A059231(n))`
-/

namespace A130278.P3331191211459582229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245300 (2 * n) : ℚ) ^ (A321090 (A059231 n).toNat : ℤ)

end

end A130278.P3331191211459582229

/-! ## A130278.P10066551634477808831

`A140997(A038748(n+1))+A038749(n+1)`
-/

namespace A130278.P10066551634477808831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (A038748 (n + 1)).toNat + A038749 (n + 1)

end

end A130278.P10066551634477808831

/-!
# A130279: Smallest number having exactly n square divisors.

The programs for A130279, there is no canonical definition to state claims against.
-/

/-! ## A130279.P11958270353851221031

`A005179(n+1)²`
-/

namespace A130279.P11958270353851221031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1) ^ 2

end

end A130279.P11958270353851221031

/-! ## A130279.P8705434702317870463

`A081532(∑[n+1])²`
-/

namespace A130279.P8705434702317870463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A130279.P8705434702317870463

/-! ## A130279.P15209610585191441484

`(A187941(n+1)/2)²`
-/

namespace A130279.P15209610585191441484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A187941 (n + 1) : ℚ) / 2) ^ 2

end

end A130279.P15209610585191441484

/-! ## A130279.P17957534443820953807

`(A305183(n+1)/4)²`
-/

namespace A130279.P17957534443820953807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A305183 (n + 1) : ℚ) / 4) ^ 2

end

end A130279.P17957534443820953807

/-! ## A130279.P4426694672001724359

`A007416(A064787(n+1))²`
-/

namespace A130279.P4426694672001724359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A064787 (n + 1)).toNat ^ 2

end

end A130279.P4426694672001724359

/-! ## A130279.P16367295580120819921

`A077569(A096276(n)+1)²`
-/

namespace A130279.P16367295580120819921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077569 (A096276 n + 1).toNat ^ 2

end

end A130279.P16367295580120819921

/-! ## A130279.P18340185043032958712

`A005179(n+1)^sqrt(A040002(n))`
-/

namespace A130279.P18340185043032958712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005179 (n + 1) : ℝ) ^ (Real.sqrt (A040002 n : ℝ))

end

end A130279.P18340185043032958712

/-! ## A130279.P3882762168973919746

`A005179(n+1)^(A000038(n)+2)`
-/

namespace A130279.P3882762168973919746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (n + 1) : ℚ) ^ (A000038 n + 2 : ℤ)

end

end A130279.P3882762168973919746

/-! ## A130279.P9291707968293042024

`(A003680(n+1)/A140605(n+1))²`
-/

namespace A130279.P9291707968293042024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003680 (n + 1) : ℚ) / (A140605 (n + 1) : ℚ)) ^ 2

end

end A130279.P9291707968293042024

/-! ## A130279.P5119520586863630343

`A005179(n+1)^A020639(A020744(n))`
-/

namespace A130279.P5119520586863630343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (n + 1) : ℚ) ^ (A020639 (A020744 n).toNat : ℤ)

end

end A130279.P5119520586863630343

/-! ## A130279.P8363572083564114739

`A005179(n+1)^A000005(A078721(n))`
-/

namespace A130279.P8363572083564114739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (n + 1) : ℚ) ^ (A000005 (A078721 n).toNat : ℤ)

end

end A130279.P8363572083564114739

/-! ## A130279.P14587778022027438124

`A005179(n+1)^A014963(A267584(n))`
-/

namespace A130279.P14587778022027438124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (n + 1) : ℚ) ^ (A014963 (A267584 n).toNat : ℤ)

end

end A130279.P14587778022027438124

/-! ## A130279.P8090172563590471086

`A005179(A000027(n+1))*A005179(n+1)`
-/

namespace A130279.P8090172563590471086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A000027 (n + 1)).toNat * A005179 (n + 1)

end

end A130279.P8090172563590471086

/-! ## A130279.P1914193430946818

`A005179(n+1)^A020639(A025487(n+1))`
-/

namespace A130279.P1914193430946818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (n + 1) : ℚ) ^ (A020639 (A025487 (n + 1)).toNat : ℤ)

end

end A130279.P1914193430946818

/-! ## A130279.P2350552889898406913

`A005179(n+1)^A020639(A061799(n+1))`
-/

namespace A130279.P2350552889898406913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (n + 1) : ℚ) ^ (A020639 (A061799 (n + 1)).toNat : ℤ)

end

end A130279.P2350552889898406913

/-! ## A130279.P9405785375327334112

`A005179(n+1)^A001222(A213020(3*n+5))`
-/

namespace A130279.P9405785375327334112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (n + 1) : ℚ) ^ (A001222 (A213020 (3 * n + 5)).toNat : ℤ)

end

end A130279.P9405785375327334112

/-! ## A130279.P15899327710446069927

`A005179(n+1)^A122375(A212483(3*n+5))`
-/

namespace A130279.P15899327710446069927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (n + 1) : ℚ) ^ (A122375 (A212483 (3 * n + 5)).toNat : ℤ)

end

end A130279.P15899327710446069927

/-!
# A130280: a(n) = smallest integer k>1 such that n(k^2-1)+1 is a perfect square, or 0 if no such number exists.

The programs for A130280, there is no canonical definition to state claims against.
-/

/-! ## A130280.P13933938987806108370

`A004525(2*round(sqrt(A084702(n+1))))`
-/

namespace A130280.P13933938987806108370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * SequenceMachineLib.roundAway (Real.sqrt (A084702 (n + 1) : ℝ))).toNat

end

end A130280.P13933938987806108370

/-! ## A130280.P10487800940931031589

`A000194(A084702(n+1))`
-/

namespace A130280.P10487800940931031589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A084702 (n + 1)).toNat

end

end A130280.P10487800940931031589

/-!
# A130283: Integers n > 0 for which A130280(n) = 0, i.e., such that there is no integer m > 1 for which n(m^2 - 1) + 1 is a square.

The programs for A130283, there is no canonical definition to state claims against.
-/

/-! ## A130283.P2705597566859172189

`record[(A267458(n)+A000122(n))²]`
-/

namespace A130283.P2705597566859172189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267458 n + A000122 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130283.P2705597566859172189

/-! ## A130283.P9617612792428495504

`A000290(record[A267458(n)+A000122(n)])`
-/

namespace A130283.P9617612792428495504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n + A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130283.P9617612792428495504

/-! ## A130283.P5143511850379421026

`record[A029579(A233583(A000037(n+1)))²]`
-/

namespace A130283.P5143511850379421026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A233583 (A000037 (n + 1)).toNat).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130283.P5143511850379421026

/-! ## A130283.P9437986111227016637

`A010000(record[A267458(n)+A000122(n)])-2`
-/

namespace A130283.P9437986111227016637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n + A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A130283.P9437986111227016637

/-! ## A130283.P8182751257934700942

`eq[A010052(A064505(n+1)), A142150(n)]²`
-/

namespace A130283.P8182751257934700942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A064505 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A130283.P8182751257934700942

/-!
# A130284: Integers j > 0 such that (2j+1)^2(m^2-1) + 1 is a square for some integer m > 1.

The programs for A130284, there is no canonical definition to state claims against.
-/

/-! ## A130284.P17521710181743354619

`lt[A209143(2*n+1), A103859(A337632(n+1))]`
-/

namespace A130284.P17521710181743354619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209143 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103859 (A337632 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130284.P17521710181743354619

/-! ## A130284.P8824928413443462835

`eq[A010815(A167499(n+5)+2), A097808(n)]`
-/

namespace A130284.P8824928413443462835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A167499 (n + 5) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130284.P8824928413443462835

/-! ## A130284.P17427789765589739730

`∩[A381435(n+1), A079326(n+2)]`
-/

namespace A130284.P17427789765589739730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130284.P17427789765589739730

/-!
# A130285: Number of divisors of A026416(n).

The programs for A130285, there is no canonical definition to state claims against.
-/

/-! ## A130285.P16206823905324067882

`∏{e}[A026416(n+1), #+1]`
-/

namespace A130285.P16206823905324067882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A130285.P16206823905324067882

/-! ## A130285.P17450251484711171758

`A000005(A026416(n+1))`
-/

namespace A130285.P17450251484711171758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A026416 (n + 1)).toNat

end

end A130285.P17450251484711171758

/-! ## A130285.P6270636560541824353

`∑{d}[A026416(n+1), A052126(A006530(#))]`
-/

namespace A130285.P6270636560541824353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A052126 (A006530 d).toNat

end

end A130285.P6270636560541824353

/-! ## A130285.P15206018186779689276

`∑{d}[A026416(n+1), A008836(#)²]`
-/

namespace A130285.P15206018186779689276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008836 d ^ 2

end

end A130285.P15206018186779689276

/-! ## A130285.P8532120042153769640

`∑{d}[A026416(n+1), A051507(#)%2]`
-/

namespace A130285.P8532120042153769640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A051507 d) 2

end

end A130285.P8532120042153769640

/-! ## A130285.P3023863920681594961

`∑{d}[A026416(n+1), A168233(#)%3]`
-/

namespace A130285.P3023863920681594961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A168233 d) 3

end

end A130285.P3023863920681594961

/-! ## A130285.P13635127251834385969

`∑{d}[A026416(n+1), A008836(#+1)*A008836(#+1)]`
-/

namespace A130285.P13635127251834385969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008836 (d + 1) * A008836 (d + 1)

end

end A130285.P13635127251834385969

/-! ## A130285.P11907226794846712545

`∑{d}[A026416(n+1), A010060(A000069(#))]`
-/

namespace A130285.P11907226794846712545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010060 (A000069 d).toNat

end

end A130285.P11907226794846712545

/-!
# A130286: Strongly-single primes: primes p such that neither previousprime(p) nor nextprime(p) is a twin prime.

The programs for A130286, the canonical program `A130286.P5033588012465865576` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130286 has offset 1).

The definition of A130286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130286.P5033588012465865576

`A008578(∩[A176656(n+1)+2, A176656(n+1)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A130286

/-- `A008578(∩[A176656(n+1)+2, A176656(n+1)])` -/
def P5033588012465865576.Spec : Prop :=
  ∀ n, P5033588012465865576.a n = A130286 (n + 1)

theorem P5033588012465865576.correct : P5033588012465865576.Spec := by
  intro n
  simp only [A130286, Nat.add_sub_cancel]

end A130286

/-! ## A130286.P9849531768385018191

`A008578(lt[4, A237260(n+1)])`
-/

namespace A130286.P9849531768385018191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A130286.P9849531768385018191

namespace A130286

/-- `A008578(lt[4, A237260(n+1)])` -/
def P9849531768385018191.Spec : Prop :=
  ∀ n, P9849531768385018191.a n = A130286 (n + 1)

end A130286

/-! ## A130286.P4771140919307295173

`A000040(lt[4, A237260(n+2)])`
-/

namespace A130286.P4771140919307295173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A130286.P4771140919307295173

namespace A130286

/-- `A000040(lt[4, A237260(n+2)])` -/
def P4771140919307295173.Spec : Prop :=
  ∀ n, P4771140919307295173.a n = A130286 (n + 1)

end A130286

/-! ## A130286.P11677744525900784935

`∩[A126095(n+1), A167278(n+1)]`
-/

namespace A130286.P11677744525900784935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130286.P11677744525900784935

namespace A130286

/-- `∩[A126095(n+1), A167278(n+1)]` -/
def P11677744525900784935.Spec : Prop :=
  ∀ n, (P11677744525900784935.a n : ℤ) = A130286 (n + 1)

end A130286

/-! ## A130286.P6471641543981611585

`∩[A126095(n+1), A227031(n+1)]`
-/

namespace A130286.P6471641543981611585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130286.P6471641543981611585

namespace A130286

/-- `∩[A126095(n+1), A227031(n+1)]` -/
def P6471641543981611585.Spec : Prop :=
  ∀ n, (P6471641543981611585.a n : ℤ) = A130286 (n + 1)

end A130286

/-!
# A130287: a(n) = A121296(n) - A121263(n).

The programs for A130287, there is no canonical definition to state claims against.
-/

/-! ## A130287.P18372307391249418360

`A121296(n)-A121263(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A130287.P18372307391249418360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121296 (n + 10) - A121263 (n + 10)

end

end A130287.P18372307391249418360

/-! ## A130287.P4283941874753979861

`A131012(n)+A122734(n)`
-/

namespace A130287.P4283941874753979861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131012 n + A122734 (n + 10)

end

end A130287.P4283941874753979861

/-! ## A130287.P9430322466482127324

`A131011(n)+A128916(n)`
-/

namespace A130287.P9430322466482127324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131011 (n + 10) + A128916 (n + 10)

end

end A130287.P9430322466482127324

/-! ## A130287.P13141134582172260282

`A121296(n)-A121266(∑[n]+n)`
-/

namespace A130287.P13141134582172260282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121296 (n + 10) - A121266 (∑ j ∈ Finset.range (n + 1), f1 j + n + 10)

end

end A130287.P13141134582172260282

/-! ## A130287.P11880952543439415140

`A121296(n)-record[A121266(A316964(n))]`
-/

namespace A130287.P11880952543439415140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A316964 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121296 (n + 10) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130287.P11880952543439415140

/-!
# A130288: Record indices of A130280: integers n>0 for which min{ m>1 | (2n+1)^2(m^2-1)+1 is a square} < oo but bigger than for all preceding n.

The programs for A130288, there is no canonical definition to state claims against.
-/

/-! ## A130288.P14860679620924896164

`∑[dr(A337983(A247061(n+3)))]`
-/

namespace A130288.P14860679620924896164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A337983 (A247061 (n + 3)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130288.P14860679620924896164

/-! ## A130288.P15980871913221316255

`A230584(n+3)%A002144(A000110(n))`
-/

namespace A130288.P15980871913221316255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230584 (n + 3)) (A002144 (A000110 n).toNat)

end

end A130288.P15980871913221316255

/-!
# A130289: Record values in A130280: minima of { m>1 | (2n+1)^2(m^2-1)+1 is a square} bigger than for all preceding n.

The programs for A130289, there is no canonical definition to state claims against.
-/

/-! ## A130289.P15467171711793528645

`record[A130280(n+3)]`
-/

namespace A130289.P15467171711793528645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130280 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130289.P15467171711793528645

/-! ## A130289.P8104693728488816156

`record[A389664(n+3)]`
-/

namespace A130289.P8104693728488816156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389664 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130289.P8104693728488816156

/-! ## A130289.P4874979699251477021

`or(1, A130280(A130288(n+1)))`
-/

namespace A130289.P4874979699251477021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A130280 (A130288 (n + 1)).toNat)

end

end A130289.P4874979699251477021

/-! ## A130289.P2139348718230289259

`A130280(A130288(n+1)+floor(acot(n)²))`
-/

namespace A130289.P2139348718230289259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130280 (A130288 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋).toNat

end

end A130289.P2139348718230289259

/-! ## A130289.P4759828683909818999

`A130280(A130288(n+1))+A008683((n+1)²)`
-/

namespace A130289.P4759828683909818999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130280 (A130288 (n + 1)).toNat + A008683 ((n + 1) ^ 2)

end

end A130289.P4759828683909818999

/-!
# A130290: Number of nonzero quadratic residues modulo the n-th prime.

The programs for A130290, the canonical program `A130290.P12006832031725450867` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130290 has offset 1).

The definition of A130290 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130290.P12006832031725450867

`floor(A000040(n+1)/2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130290

/-- `floor(A000040(n+1)/2)` -/
def P12006832031725450867.Spec : Prop :=
  ∀ n, P12006832031725450867.a n = A130290 (n + 1)

theorem P12006832031725450867.correct : P12006832031725450867.Spec := by
  intro n
  simp only [A130290, Nat.add_sub_cancel]

end A130290

/-! ## A130290.P11766941363356058638

`A130291(n+1)-1`
-/

namespace A130290.P11766941363356058638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1) - 1

end

end A130290.P11766941363356058638

namespace A130290

/-- `A130291(n+1)-1` -/
def P11766941363356058638.Spec : Prop :=
  ∀ n, P11766941363356058638.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P814964712757894961

`floor(Δ[A007504(n)/2])`
-/

namespace A130290.P814964712757894961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A130290.P814964712757894961

namespace A130290

/-- `floor(Δ[A007504(n)/2])` -/
def P814964712757894961.Spec : Prop :=
  ∀ n, P814964712757894961.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P2979018566192552236

`floor(p?[A259153(n)]/2)`
-/

namespace A130290.P2979018566192552236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A130290.P2979018566192552236

namespace A130290

/-- `floor(p?[A259153(n)]/2)` -/
def P2979018566192552236.Spec : Prop :=
  ∀ n, P2979018566192552236.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P18392401106801758610

`floor(A039915(n+1)/2)`
-/

namespace A130290.P18392401106801758610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039915 (n + 1) : ℚ) / 2⌋

end

end A130290.P18392401106801758610

namespace A130290

/-- `floor(A039915(n+1)/2)` -/
def P18392401106801758610.Spec : Prop :=
  ∀ n, P18392401106801758610.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P14082528577533629122

`ceil(A006093(n+1)/2)`
-/

namespace A130290.P14082528577533629122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006093 (n + 1) : ℚ) / 2⌉

end

end A130290.P14082528577533629122

namespace A130290

/-- `ceil(A006093(n+1)/2)` -/
def P14082528577533629122.Spec : Prop :=
  ∀ n, P14082528577533629122.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P7596404903012274143

`A175216(n+1)/2-1`
-/

namespace A130290.P7596404903012274143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175216 (n + 1) : ℚ) / 2 - 1

end

end A130290.P7596404903012274143

namespace A130290

/-- `A175216(n+1)/2-1` -/
def P7596404903012274143.Spec : Prop :=
  ∀ n, P7596404903012274143.a n = (A130290 (n + 1) : ℚ)

end A130290

/-! ## A130290.P6251224339254553283

`A078444(n)-a(n-1)` with `a(0)=1`
-/

namespace A130290.P6251224339254553283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078444 n - a (n - 1)

end

end A130290.P6251224339254553283

namespace A130290

/-- `A078444(n)-a(n-1)` -/
def P6251224339254553283.Spec : Prop :=
  ∀ n, P6251224339254553283.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P14081798858063881560

`A028334(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130290.P14081798858063881560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A028334 n + a (n - 1)

end

end A130290.P14081798858063881560

namespace A130290

/-- `A028334(n)+a(n-1)` -/
def P14081798858063881560.Spec : Prop :=
  ∀ n, P14081798858063881560.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P1966887779919817455

`A087427(n+1)/a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130290.P1966887779919817455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A087427 (n + 1) : ℚ) / a (n - 1)

end

end A130290.P1966887779919817455

namespace A130290

/-- `A087427(n+1)/a(n-1)` -/
def P1966887779919817455.Spec : Prop :=
  ∀ n, P1966887779919817455.a n = (A130290 (n + 1) : ℚ)

end A130290

/-! ## A130290.P2842773630388840721

`floor(1/2*A000040(2*n-(n-1)))`
-/

namespace A130290.P2842773630388840721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 : ℚ) / 2 * (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ)⌋

end

end A130290.P2842773630388840721

namespace A130290

/-- `floor(1/2*A000040(2*n-(n-1)))` -/
def P2842773630388840721.Spec : Prop :=
  ∀ n, P2842773630388840721.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P6263966191873607222

`A005097(A028310(n))`
-/

namespace A130290.P6263966191873607222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (A028310 n).toNat

end

end A130290.P6263966191873607222

namespace A130290

/-- `A005097(A028310(n))` -/
def P6263966191873607222.Spec : Prop :=
  ∀ n, P6263966191873607222.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P16483710485506059072

`A102781(n+1)+A000007(n)`
-/

namespace A130290.P16483710485506059072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + A000007 n

end

end A130290.P16483710485506059072

namespace A130290

/-- `A102781(n+1)+A000007(n)` -/
def P16483710485506059072.Spec : Prop :=
  ∀ n, P16483710485506059072.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P15991494495130790465

`A111333(n+1)+A057428(n)`
-/

namespace A130290.P15991494495130790465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A057428 n

end

end A130290.P15991494495130790465

namespace A130290

/-- `A111333(n+1)+A057428(n)` -/
def P15991494495130790465.Spec : Prop :=
  ∀ n, P15991494495130790465.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P301206646959726557

`A111333(n+1)-A057427(n)`
-/

namespace A130290.P301206646959726557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - A057427 n

end

end A130290.P301206646959726557

namespace A130290

/-- `A111333(n+1)-A057427(n)` -/
def P301206646959726557.Spec : Prop :=
  ∀ n, P301206646959726557.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P5239093426195903536

`A037168(n+1)/A040002(n)`
-/

namespace A130290.P5239093426195903536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037168 (n + 1) : ℚ) / (A040002 n : ℚ)

end

end A130290.P5239093426195903536

namespace A130290

/-- `A037168(n+1)/A040002(n)` -/
def P5239093426195903536.Spec : Prop :=
  ∀ n, P5239093426195903536.a n = (A130290 (n + 1) : ℚ)

end A130290

/-! ## A130290.P10764284928905334411

`A000040(n+1)-A111333(n+1)`
-/

namespace A130290.P10764284928905334411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A111333 (n + 1)

end

end A130290.P10764284928905334411

namespace A130290

/-- `A000040(n+1)-A111333(n+1)` -/
def P10764284928905334411.Spec : Prop :=
  ∀ n, P10764284928905334411.a n = A130290 (n + 1)

end A130290

/-! ## A130290.P7582888528072082512

`(A057428(n)+A000040(n+1))/2`
-/

namespace A130290.P7582888528072082512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n + A000040 (n + 1) : ℚ) / 2

end

end A130290.P7582888528072082512

namespace A130290

/-- `(A057428(n)+A000040(n+1))/2` -/
def P7582888528072082512.Spec : Prop :=
  ∀ n, P7582888528072082512.a n = (A130290 (n + 1) : ℚ)

end A130290

/-! ## A130290.P10396116671410177331

`A008837(n+1)%A039915(n+1)`
-/

namespace A130290.P10396116671410177331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008837 (n + 1)) (A039915 (n + 1))

end

end A130290.P10396116671410177331

namespace A130290

/-- `A008837(n+1)%A039915(n+1)` -/
def P10396116671410177331.Spec : Prop :=
  ∀ n, P10396116671410177331.a n = A130290 (n + 1)

end A130290

/-!
# A130291: Number of quadratic residues (including 0) modulo the n-th prime.

The programs for A130291, the canonical program `A130291.P14568566917462971400` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130291 has offset 1).

The definition of A130291 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130291.P14568566917462971400

`floor(A000040(n+1)/2)+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130291

/-- `floor(A000040(n+1)/2)+1` -/
def P14568566917462971400.Spec : Prop :=
  ∀ n, P14568566917462971400.a n = A130291 (n + 1)

theorem P14568566917462971400.correct : P14568566917462971400.Spec := by
  intro n
  simp only [A130291, Nat.add_sub_cancel]

end A130291

/-! ## A130291.P4937027337657140514

`A130290(n+1)+1`
-/

namespace A130291.P4937027337657140514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) + 1

end

end A130291.P4937027337657140514

namespace A130291

/-- `A130290(n+1)+1` -/
def P4937027337657140514.Spec : Prop :=
  ∀ n, P4937027337657140514.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P56165543129183483

`A175216(n+1)/2`
-/

namespace A130291.P56165543129183483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175216 (n + 1) : ℚ) / 2

end

end A130291.P56165543129183483

namespace A130291

/-- `A175216(n+1)/2` -/
def P56165543129183483.Spec : Prop :=
  ∀ n, P56165543129183483.a n = (A130291 (n + 1) : ℚ)

end A130291

/-! ## A130291.P16106653415136172139

`floor(A052147(n+1)/2)`
-/

namespace A130291.P16106653415136172139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052147 (n + 1) : ℚ) / 2⌋

end

end A130291.P16106653415136172139

namespace A130291

/-- `floor(A052147(n+1)/2)` -/
def P16106653415136172139.Spec : Prop :=
  ∀ n, P16106653415136172139.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P3338279771063943045

`ceil(A008864(n+1)/2)`
-/

namespace A130291.P3338279771063943045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008864 (n + 1) : ℚ) / 2⌉

end

end A130291.P3338279771063943045

namespace A130291

/-- `ceil(A008864(n+1)/2)` -/
def P3338279771063943045.Spec : Prop :=
  ∀ n, P3338279771063943045.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P3325744437385115714

`ceil(A028815(n+1)/2)`
-/

namespace A130291.P3325744437385115714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028815 (n + 1) : ℚ) / 2⌉

end

end A130291.P3325744437385115714

namespace A130291

/-- `ceil(A028815(n+1)/2)` -/
def P3325744437385115714.Spec : Prop :=
  ∀ n, P3325744437385115714.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P13538216660068377303

`ceil(cosh(log(A000040(n+1))))`
-/

namespace A130291.P13538216660068377303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A000040 (n + 1) : ℝ))⌉

end

end A130291.P13538216660068377303

namespace A130291

/-- `ceil(cosh(log(A000040(n+1))))` -/
def P13538216660068377303.Spec : Prop :=
  ∀ n, P13538216660068377303.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P8713939000030278190

`ceil(sqrt(A036690(n+1))/2)`
-/

namespace A130291.P8713939000030278190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A036690 (n + 1) : ℝ) / 2⌉

end

end A130291.P8713939000030278190

namespace A130291

/-- `ceil(sqrt(A036690(n+1))/2)` -/
def P8713939000030278190.Spec : Prop :=
  ∀ n, P8713939000030278190.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P14089158748224768410

`A028334(n)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A130291.P14089158748224768410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A028334 n + a (n - 1)

end

end A130291.P14089158748224768410

namespace A130291

/-- `A028334(n)+a(n-1)` -/
def P14089158748224768410.Spec : Prop :=
  ∀ n, P14089158748224768410.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P11300326689468083050

`A079079(n)/a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A130291.P11300326689468083050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  (A079079 n : ℚ) / a (n - 1)

end

end A130291.P11300326689468083050

namespace A130291

/-- `A079079(n)/a(n-1)` -/
def P11300326689468083050.Spec : Prop :=
  ∀ n, P11300326689468083050.a n = (A130291 (n + 1) : ℚ)

end A130291

/-! ## A130291.P4452994710613964573

`A006254(A028310(n))`
-/

namespace A130291.P4452994710613964573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (A028310 n).toNat

end

end A130291.P4452994710613964573

namespace A130291

/-- `A006254(A028310(n))` -/
def P4452994710613964573.Spec : Prop :=
  ∀ n, P4452994710613964573.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P345266263458008270

`A111333(A054977(n)+n)`
-/

namespace A130291.P345266263458008270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A054977 n + (n : ℤ)).toNat

end

end A130291.P345266263458008270

namespace A130291

/-- `A111333(A054977(n)+n)` -/
def P345266263458008270.Spec : Prop :=
  ∀ n, P345266263458008270.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P16835709611492208814

`A111333(n+1)+A000007(n)`
-/

namespace A130291.P16835709611492208814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A000007 n

end

end A130291.P16835709611492208814

namespace A130291

/-- `A111333(n+1)+A000007(n)` -/
def P16835709611492208814.Spec : Prop :=
  ∀ n, P16835709611492208814.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P2970024747875309640

`A102781(n+1)+A054977(n)`
-/

namespace A130291.P2970024747875309640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + A054977 n

end

end A130291.P2970024747875309640

namespace A130291

/-- `A102781(n+1)+A054977(n)` -/
def P2970024747875309640.Spec : Prop :=
  ∀ n, P2970024747875309640.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P12345230644359285674

`A129768(n+1)+A028310(n)`
-/

namespace A130291.P12345230644359285674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 1) + A028310 n

end

end A130291.P12345230644359285674

namespace A130291

/-- `A129768(n+1)+A028310(n)` -/
def P12345230644359285674.Spec : Prop :=
  ∀ n, P12345230644359285674.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P2275466131222544892

`A000040(n+1)-A102781(n+1)`
-/

namespace A130291.P2275466131222544892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A102781 (n + 1)

end

end A130291.P2275466131222544892

namespace A130291

/-- `A000040(n+1)-A102781(n+1)` -/
def P2275466131222544892.Spec : Prop :=
  ∀ n, P2275466131222544892.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P13330493159659613922

`A113935(n+1)%A124678(n+1)`
-/

namespace A130291.P13330493159659613922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113935 (n + 1)) (A124678 (n + 1))

end

end A130291.P13330493159659613922

namespace A130291

/-- `A113935(n+1)%A124678(n+1)` -/
def P13330493159659613922.Spec : Prop :=
  ∀ n, P13330493159659613922.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P9741230305241509634

`A138431(n+1)%A110494(n+1)`
-/

namespace A130291.P9741230305241509634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138431 (n + 1)) (A110494 (n + 1))

end

end A130291.P9741230305241509634

namespace A130291

/-- `A138431(n+1)%A110494(n+1)` -/
def P9741230305241509634.Spec : Prop :=
  ∀ n, P9741230305241509634.a n = A130291 (n + 1)

end A130291

/-! ## A130291.P986560083378590903

`A271511(n+1)%A175216(n+1)`
-/

namespace A130291.P986560083378590903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271511 (n + 1)) (A175216 (n + 1))

end

end A130291.P986560083378590903

namespace A130291

/-- `A271511(n+1)%A175216(n+1)` -/
def P986560083378590903.Spec : Prop :=
  ∀ n, P986560083378590903.a n = A130291 (n + 1)

end A130291

/-!
# A130292: Numbers that are sums of fifth powers of two distinct primes.

The programs for A130292, there is no canonical definition to state claims against.
-/

/-! ## A130292.P15515044463737870265

`∑{p}[A339116(n+2), #^5]`
-/

namespace A130292.P15515044463737870265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339116 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 5

end

end A130292.P15515044463737870265

/-! ## A130292.P14149982783735870724

`A351193(A339116(n+2))`
-/

namespace A130292.P14149982783735870724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (A339116 (n + 2)).toNat

end

end A130292.P14149982783735870724

/-!
# A130293: Number of necklaces of n beads with up to n colors, with cyclic permutation {1,..,n} of the colors taken to be equivalent.

The programs for A130293, there is no canonical definition to state claims against.
-/

/-! ## A130293.P8263084530097679669

`A342435(n+1)+A132662(A330942(3*n+2))`
-/

namespace A130293.P8263084530097679669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342435 (n + 1) + A132662 (A330942 (3 * n + 2)).toNat

end

end A130293.P8263084530097679669

/-! ## A130293.P599915707033843822

`A263082(∑[A112957(n+1)]-1)-n+1`
-/

namespace A130293.P599915707033843822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263082 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat - (n : ℤ) + 1

end

end A130293.P599915707033843822

/-!
# A130294: Degree of the n X n Brauer loop scheme. Also, the sum of components of the Brauer loop model in size n.

The programs for A130294, there is no canonical definition to state claims against.
-/

/-! ## A130294.P12245411398226324767

`A130306(n)/A060546(n)`
-/

namespace A130294.P12245411398226324767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130306 n : ℚ) / (A060546 n : ℚ)

end

end A130294.P12245411398226324767

/-! ## A130294.P11536014743556625791

`A130306(n)/Δ[A027383(n)]`
-/

namespace A130294.P11536014743556625791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130306 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A130294.P11536014743556625791

/-! ## A130294.P5829524084323895839

`A130306(n)/A016116(n+1)`
-/

namespace A130294.P5829524084323895839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130306 n : ℚ) / (A016116 (n + 1) : ℚ)

end

end A130294.P5829524084323895839

/-! ## A130294.P9220068633388153208

`A016116(n)/A000079(n)*A130306(n)`
-/

namespace A130294.P9220068633388153208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / (A000079 n : ℚ) * (A130306 n : ℚ)

end

end A130294.P9220068633388153208

/-! ## A130294.P5784093878103466270

`A130306(n)/A019554(A000079(n))`
-/

namespace A130294.P5784093878103466270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130306 n : ℚ) / (A019554 (A000079 n).toNat : ℚ)

end

end A130294.P5784093878103466270

/-!
# A130296: Triangle read by rows: T[i,1]=i, T[i,j]=1 for 1 < j <= i = 1,2,3,...

The programs for A130296, the canonical program `A130296.P7958133824011622237` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130296 has offset 1).

The definition of A130296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130296.P8908025781976880974

`Δ[C(round(sqrt(2*n)), 2)]+1`
-/

namespace A130296.P8908025781976880974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A130296.P8908025781976880974

namespace A130296

/-- `Δ[C(round(sqrt(2*n)), 2)]+1` -/
def P8908025781976880974.Spec : Prop :=
  ∀ n, P8908025781976880974.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P728489828575999279

`round(sqrt(2*n*char[∑[n]]+1))`
-/

namespace A130296.P728489828575999279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * n * (if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℝ))

end

end A130296.P728489828575999279

namespace A130296

/-- `round(sqrt(2*n*char[∑[n]]+1))` -/
def P728489828575999279.Spec : Prop :=
  ∀ n, P728489828575999279.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P12871606460505458956

`gcd(round(sqrt(2*n))+1, round(sqrt(2*n+1)))`
-/

namespace A130296.P12871606460505458956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1) (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)))

end

end A130296.P12871606460505458956

namespace A130296

/-- `gcd(round(sqrt(2*n))+1, round(sqrt(2*n+1)))` -/
def P12871606460505458956.Spec : Prop :=
  ∀ n, (P12871606460505458956.a n : ℤ) = A130296 (n + 1)

end A130296

/-! ## A130296.P3251160783522897946

`A144112(comp[∑[n]])`
-/

namespace A130296.P3251160783522897946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A130296.P3251160783522897946

namespace A130296

/-- `A144112(comp[∑[n]])` -/
def P3251160783522897946.Spec : Prop :=
  ∀ n, P3251160783522897946.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P7958133824011622237

`val(A099627(n), 2)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130296

/-- `val(A099627(n), 2)+1` -/
def P7958133824011622237.Spec : Prop :=
  ∀ n, (P7958133824011622237.a n : ℤ) = A130296 (n + 1)

theorem P7958133824011622237.correct : P7958133824011622237.Spec := by
  intro n
  simp only [A130296, Nat.add_sub_cancel]

end A130296

/-! ## A130296.P5583633498665814107

`A132119(n+1)-n`
-/

namespace A130296.P5583633498665814107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132119 (n + 1) - (n : ℤ)

end

end A130296.P5583633498665814107

namespace A130296

/-- `A132119(n+1)-n` -/
def P5583633498665814107.Spec : Prop :=
  ∀ n, P5583633498665814107.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P9067073231827160162

`A014430(n*char[∑[n]])`
-/

namespace A130296.P9067073231827160162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A130296.P9067073231827160162

namespace A130296

/-- `A014430(n*char[∑[n]])` -/
def P9067073231827160162.Spec : Prop :=
  ∀ n, P9067073231827160162.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P16586122233201336456

`A051715(n*char[∑[n]])`
-/

namespace A130296.P16586122233201336456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A130296.P16586122233201336456

namespace A130296

/-- `A051715(n*char[∑[n]])` -/
def P16586122233201336456.Spec : Prop :=
  ∀ n, P16586122233201336456.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P810929767179969294

`A101447(n*char[∑[n]])`
-/

namespace A130296.P810929767179969294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A130296.P810929767179969294

namespace A130296

/-- `A101447(n*char[∑[n]])` -/
def P810929767179969294.Spec : Prop :=
  ∀ n, P810929767179969294.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P14707392988364084630

`A101468(n*char[∑[n]])`
-/

namespace A130296.P14707392988364084630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101468 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A130296.P14707392988364084630

namespace A130296

/-- `A101468(n*char[∑[n]])` -/
def P14707392988364084630.Spec : Prop :=
  ∀ n, P14707392988364084630.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P4485027292897703883

`A131830(n*char[∑[n]])`
-/

namespace A130296.P4485027292897703883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A130296.P4485027292897703883

namespace A130296

/-- `A131830(n*char[∑[n]])` -/
def P4485027292897703883.Spec : Prop :=
  ∀ n, P4485027292897703883.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P5069054268503219741

`ceil(ratio[A340804(n+1)]/2)`
-/

namespace A130296.P5069054268503219741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2⌉

end

end A130296.P5069054268503219741

namespace A130296

/-- `ceil(ratio[A340804(n+1)]/2)` -/
def P5069054268503219741.Spec : Prop :=
  ∀ n, P5069054268503219741.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P4793597800661259866

`A002024(n*char[∑[n]]+1)`
-/

namespace A130296.P4793597800661259866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A130296.P4793597800661259866

namespace A130296

/-- `A002024(n*char[∑[n]]+1)` -/
def P4793597800661259866.Spec : Prop :=
  ∀ n, P4793597800661259866.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P14173202640424638159

`A002024(n+1)^Δ[round(sqrt(2*n))]`
-/

namespace A130296.P14173202640424638159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A130296.P14173202640424638159

namespace A130296

/-- `A002024(n+1)^Δ[round(sqrt(2*n))]` -/
def P14173202640424638159.Spec : Prop :=
  ∀ n, P14173202640424638159.a n = (A130296 (n + 1) : ℚ)

end A130296

/-! ## A130296.P798640364745945378

`A056926(A060734(n+1))`
-/

namespace A130296.P798640364745945378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A060734 (n + 1)).toNat

end

end A130296.P798640364745945378

namespace A130296

/-- `A056926(A060734(n+1))` -/
def P798640364745945378.Spec : Prop :=
  ∀ n, P798640364745945378.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P18325447453848470870

`A056926(A064801(n+1))`
-/

namespace A130296.P18325447453848470870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A064801 (n + 1)).toNat

end

end A130296.P18325447453848470870

namespace A130296

/-- `A056926(A064801(n+1))` -/
def P18325447453848470870.Spec : Prop :=
  ∀ n, P18325447453848470870.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P11139194787489284243

`A000463(A131032(n+1))`
-/

namespace A130296.P11139194787489284243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131032 (n + 1)).toNat

end

end A130296.P11139194787489284243

namespace A130296

/-- `A000463(A131032(n+1))` -/
def P11139194787489284243.Spec : Prop :=
  ∀ n, P11139194787489284243.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P16349264366223378716

`A004524(A198954(n))+1`
-/

namespace A130296.P16349264366223378716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A198954 n).toNat + 1

end

end A130296.P16349264366223378716

namespace A130296

/-- `A004524(A198954(n))+1` -/
def P16349264366223378716.Spec : Prop :=
  ∀ n, P16349264366223378716.a n = A130296 (n + 1)

end A130296

/-! ## A130296.P16371474402140002045

`A123108(A198954(n)+2)`
-/

namespace A130296.P16371474402140002045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A198954 n + 2).toNat

end

end A130296.P16371474402140002045

namespace A130296

/-- `A123108(A198954(n)+2)` -/
def P16371474402140002045.Spec : Prop :=
  ∀ n, P16371474402140002045.a n = A130296 (n + 1)

end A130296

/-!
# A130297: A130296^2.

The programs for A130297, the canonical program `A130297.P826751733099478638` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130297 has offset 1).

The definition of A130297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130297.P132262055576745858

`A130303(n+1)+n*char[∑[n]]`
-/

namespace A130297.P132262055576745858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130303 (n + 1) + ((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A130297.P132262055576745858

namespace A130297

/-- `A130303(n+1)+n*char[∑[n]]` -/
def P132262055576745858.Spec : Prop :=
  ∀ n, P132262055576745858.a n = A130297 (n + 1)

end A130297

/-! ## A130297.P13493027877100164458

`∑[2*n]%comp[∑[n]]+A135223(n+1)-n`
-/

namespace A130297.P13493027877100164458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) + (A135223 (n + 1) - (n : ℤ))

end

end A130297.P13493027877100164458

namespace A130297

/-- `∑[2*n]%comp[∑[n]]+A135223(n+1)-n` -/
def P13493027877100164458.Spec : Prop :=
  ∀ n, P13493027877100164458.a n = A130297 (n + 1)

end A130297

/-! ## A130297.P5741268568188296083

`A131414(n+1)-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A130297.P5741268568188296083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131414 (n + 1) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A130297.P5741268568188296083

namespace A130297

/-- `A131414(n+1)-(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P5741268568188296083.Spec : Prop :=
  ∀ n, P5741268568188296083.a n = A130297 (n + 1)

end A130297

/-! ## A130297.P17422808693792467592

`A000217(round(sqrt(2*n))*char[∑[n]]+1)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A130297.P17422808693792467592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A130297.P17422808693792467592

namespace A130297

/-- `A000217(round(sqrt(2*n))*char[∑[n]]+1)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P17422808693792467592.Spec : Prop :=
  ∀ n, P17422808693792467592.a n = A130297 (n + 1)

end A130297

/-! ## A130297.P826751733099478638

`A135223(n+1)+A114327(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130297

/-- `A135223(n+1)+A114327(n)` -/
def P826751733099478638.Spec : Prop :=
  ∀ n, P826751733099478638.a n = A130297 (n + 1)

theorem P826751733099478638.correct : P826751733099478638.Spec := by
  intro n
  simp only [A130297, Nat.add_sub_cancel]

end A130297

/-! ## A130297.P4745326814172154925

`A131414(n+1)-A025581(n)`
-/

namespace A130297.P4745326814172154925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131414 (n + 1) - A025581 n

end

end A130297.P4745326814172154925

namespace A130297

/-- `A131414(n+1)-A025581(n)` -/
def P4745326814172154925.Spec : Prop :=
  ∀ n, P4745326814172154925.a n = A130297 (n + 1)

end A130297

/-! ## A130297.P10541633095765656723

`A131414(n+1)-log2(A130321(n))`
-/

namespace A130297.P10541633095765656723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131414 (n + 1) : ℝ) - Real.logb 2 (A130321 n : ℝ)

end

end A130297.P10541633095765656723

namespace A130297

/-- `A131414(n+1)-log2(A130321(n))` -/
def P10541633095765656723.Spec : Prop :=
  ∀ n, P10541633095765656723.a n = (A130297 (n + 1) : ℝ)

end A130297

/-! ## A130297.P843239952711259456

`A130296(n+1)+A130302(n+1)-1`
-/

namespace A130297.P843239952711259456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + (A130302 (n + 1) - 1)

end

end A130297.P843239952711259456

namespace A130297

/-- `A130296(n+1)+A130302(n+1)-1` -/
def P843239952711259456.Spec : Prop :=
  ∀ n, P843239952711259456.a n = A130297 (n + 1)

end A130297

/-! ## A130297.P18067599563542355315

`A130296(n+1)+A131414(n+1)-A130303(n+1)`
-/

namespace A130297.P18067599563542355315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + (A131414 (n + 1) - A130303 (n + 1))

end

end A130297.P18067599563542355315

namespace A130297

/-- `A130296(n+1)+A131414(n+1)-A130303(n+1)` -/
def P18067599563542355315.Spec : Prop :=
  ∀ n, P18067599563542355315.a n = A130297 (n + 1)

end A130297

/-! ## A130297.P15774854341346015347

`A130302(n+1)+A158860(n+1)-A130303(n+1)`
-/

namespace A130297.P15774854341346015347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130302 (n + 1) + (A158860 (n + 1) - A130303 (n + 1))

end

end A130297.P15774854341346015347

namespace A130297

/-- `A130302(n+1)+A158860(n+1)-A130303(n+1)` -/
def P15774854341346015347.Spec : Prop :=
  ∀ n, P15774854341346015347.a n = A130297 (n + 1)

end A130297

/-!
# A130298: A051340 * A130296.

The programs for A130298, the canonical program `A130298.P4056533622046080156` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130298 has offset 1).

The definition of A130298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130298.P4056533622046080156

`A130302(n+1)+A003056(n)*A130296(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130298

/-- `A130302(n+1)+A003056(n)*A130296(n+1)` -/
def P4056533622046080156.Spec : Prop :=
  ∀ n, P4056533622046080156.a n = A130298 (n + 1)

theorem P4056533622046080156.correct : P4056533622046080156.Spec := by
  intro n
  simp only [A130298, Nat.add_sub_cancel]

end A130298

/-!
# A130299: A130296 * A051340.

The programs for A130299, there is no canonical definition to state claims against.
-/

/-! ## A130299.P7549497624303686774

`Δ[A051162(n)]+A131919(n)-1`
-/

namespace A130299.P7549497624303686774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A131919 n - 1)

end

end A130299.P7549497624303686774

/-! ## A130299.P15586923003731929224

`A131919(n)+1-(A132128(n+1)-n)`
-/

namespace A130299.P15586923003731929224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131919 n + 1 - (A132128 (n + 1) - (n : ℤ))

end

end A130299.P15586923003731929224

/-! ## A130299.P15802610061985910020

`ceil(A131507(n)/A006530(A059268(n)))`
-/

namespace A130299.P15802610061985910020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131507 n : ℚ) / (A006530 (A059268 n).toNat : ℚ)⌉

end

end A130299.P15802610061985910020

/-! ## A130299.P9339663841836825693

`∑[A004736(n+1)*A008683(A059268(n))]`
-/

namespace A130299.P9339663841836825693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008683 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130299.P9339663841836825693

/-! ## A130299.P8193655355434211722

`A000005(A059268(n))+(A010054(n)+1)*A025581(n)`
-/

namespace A130299.P8193655355434211722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat + (A010054 n + 1) * A025581 n

end

end A130299.P8193655355434211722

/-! ## A130299.P1459769397179551255

`A004736(n+1)+A001222(A078840(n))`
-/

namespace A130299.P1459769397179551255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A001222 (A078840 n).toNat

end

end A130299.P1459769397179551255

/-! ## A130299.P3408398264930783516

`A007814(A099627(n))+∑[A010054(n)]`
-/

namespace A130299.P3408398264930783516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A099627 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130299.P3408398264930783516

/-! ## A130299.P13637628436528309373

`A007814(A099627(n))+A002024(n+1)`
-/

namespace A130299.P13637628436528309373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A099627 n).toNat + A002024 (n + 1)

end

end A130299.P13637628436528309373

/-! ## A130299.P1586268163966815714

`A004736(n+1)+A000120(A023758(n+1))`
-/

namespace A130299.P1586268163966815714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A000120 (A023758 (n + 1)).toNat

end

end A130299.P1586268163966815714

/-! ## A130299.P9490747441231822078

`A007401(n+1)-A352520(n)`
-/

namespace A130299.P9490747441231822078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) - A352520 n

end

end A130299.P9490747441231822078

