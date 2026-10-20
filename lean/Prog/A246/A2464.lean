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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A246400: Smallest prime Q greater than prime(n+1) such that the sum prime(n)+prime(n+1)+Q is also prime, starting with n=2.

The programs for A246400, there is no canonical definition to state claims against.
-/

/-! ## A246400.P14317864250960577026

`A180101(A000053(n+2))`
-/

namespace A246400.P14317864250960577026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A000053 (n + 2)).toNat

end

end A246400.P14317864250960577026

/-! ## A246400.P3891742779258559284

`A180101(A051419(n+2))`
-/

namespace A246400.P3891742779258559284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A051419 (n + 2)).toNat

end

end A246400.P3891742779258559284

/-! ## A246400.P13000279624535305057

`A180101(A180948(n+2))`
-/

namespace A246400.P13000279624535305057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A180948 (n + 2)).toNat

end

end A246400.P13000279624535305057

/-! ## A246400.P6252947726734749764

`p?[A196252(A058218(n+5))-1]`
-/

namespace A246400.P6252947726734749764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196252 (A058218 (n + 5)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246400.P6252947726734749764

/-! ## A246400.P15690525647683575575

`A180101(A353393(2*n+3)+13)`
-/

namespace A246400.P15690525647683575575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A353393 (2 * n + 3) + 13).toNat

end

end A246400.P15690525647683575575

/-!
# A246401: Smallest prime number Q such that the sum prime(n)+prime(n+1)+Q is a prime number.

The programs for A246401, there is no canonical definition to state claims against.
-/

/-! ## A246401.P6722973499013886152

`A271353(Δ[A061802(n)]+2)`
-/

namespace A246401.P6722973499013886152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (f1 (n + 1) - f1 n + 2).toNat

end

end A246401.P6722973499013886152

/-! ## A246401.P10024347131799948421

`A271353(A092949(n+1)+1)`
-/

namespace A246401.P10024347131799948421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A092949 (n + 1) + 1).toNat

end

end A246401.P10024347131799948421

/-! ## A246401.P7481891574723386604

`A271353(A001043(n+1)+2)`
-/

namespace A246401.P7481891574723386604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A001043 (n + 1) + 2).toNat

end

end A246401.P7481891574723386604

/-! ## A246401.P12342140585766624433

`A271353(A011974(n+2)+2)`
-/

namespace A246401.P12342140585766624433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A011974 (n + 2) + 2).toNat

end

end A246401.P12342140585766624433

/-! ## A246401.P6898025346477957722

`A271353(A052147(n+1)+A000040(n+2))`
-/

namespace A246401.P6898025346477957722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A052147 (n + 1) + A000040 (n + 2)).toNat

end

end A246401.P6898025346477957722

/-! ## A246401.P10505201788799342266

`A020639(A204894(A001043(n+1))%A001043(n+1))`
-/

namespace A246401.P10505201788799342266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A204894 (A001043 (n + 1)).toNat) (A001043 (n + 1))).toNat

end

end A246401.P10505201788799342266

/-! ## A246401.P17327397198192605857

`A204895(A001043(n+1))`
-/

namespace A246401.P17327397198192605857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A001043 (n + 1)).toNat

end

end A246401.P17327397198192605857

/-! ## A246401.P16577155452387038091

`A204895(A011974(n+2))`
-/

namespace A246401.P16577155452387038091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A011974 (n + 2)).toNat

end

end A246401.P16577155452387038091

/-!
# A246404: Nonnegative integers k satisfying sec(k) < sec(k+1).

The programs for A246404, the canonical program `A246404.P4320764366957594654` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246404 has offset 1).

The definition of A246404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246404.P16360375988799706594

`∪[A246408(n+1), A246409(n+1)]`
-/

namespace A246404.P16360375988799706594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246404.P16360375988799706594

namespace A246404

/-- `∪[A246408(n+1), A246409(n+1)]` -/
def P16360375988799706594.Spec : Prop :=
  ∀ n, (P16360375988799706594.a n : ℤ) = A246404 (n + 1)

end A246404

/-! ## A246404.P4375220092483774927

`∪[A246405(n+1)+1, A246408(n+1)]`
-/

namespace A246404.P4375220092483774927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246404.P4375220092483774927

namespace A246404

/-- `∪[A246405(n+1)+1, A246408(n+1)]` -/
def P4375220092483774927.Spec : Prop :=
  ∀ n, (P4375220092483774927.a n : ℤ) = A246404 (n + 1)

end A246404

/-! ## A246404.P11689618451686992156

`comp[A246407(n+1)]`
-/

namespace A246404.P11689618451686992156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246404.P11689618451686992156

namespace A246404

/-- `comp[A246407(n+1)]` -/
def P11689618451686992156.Spec : Prop :=
  ∀ n, (P11689618451686992156.a n : ℤ) = A246404 (n + 1)

end A246404

/-! ## A246404.P4320764366957594654

`lt[0, Δ[cot(cos(n))]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246404

/-- `lt[0, Δ[cot(cos(n))]]` -/
def P4320764366957594654.Spec : Prop :=
  ∀ n, (P4320764366957594654.a n : ℤ) = A246404 (n + 1)

theorem P4320764366957594654.correct : P4320764366957594654.Spec := by
  intro n
  simp only [A246404, Nat.add_sub_cancel]

end A246404

/-! ## A246404.P5436340835142765571

`lt[0, Δ[acot(cos(n))]]`
-/

namespace A246404.P5436340835142765571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.cos (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246404.P5436340835142765571

namespace A246404

/-- `lt[0, Δ[acot(cos(n))]]` -/
def P5436340835142765571.Spec : Prop :=
  ∀ n, (P5436340835142765571.a n : ℤ) = A246404 (n + 1)

end A246404

/-! ## A246404.P5909636507080913088

`lt[0, Δ[1/cos(n)]]`
-/

namespace A246404.P5909636507080913088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246404.P5909636507080913088

namespace A246404

/-- `lt[0, Δ[1/cos(n)]]` -/
def P5909636507080913088.Spec : Prop :=
  ∀ n, (P5909636507080913088.a n : ℤ) = A246404 (n + 1)

end A246404

/-! ## A246404.P8711714452388026272

`xor(A014722(A097876(n)), A246407(n+1))`
-/

namespace A246404.P8711714452388026272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014722 (A097876 n).toNat) (A246407 (n + 1))

end

end A246404.P8711714452388026272

namespace A246404

/-- `xor(A014722(A097876(n)), A246407(n+1))` -/
def P8711714452388026272.Spec : Prop :=
  ∀ n, P8711714452388026272.a n = A246404 (n + 1)

end A246404

/-! ## A246404.P6374752614501453901

`xor(A174275(A031933(n)), A246407(n+1))`
-/

namespace A246404.P6374752614501453901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A174275 (A031933 n).toNat) (A246407 (n + 1))

end

end A246404.P6374752614501453901

namespace A246404

/-- `xor(A174275(A031933(n)), A246407(n+1))` -/
def P6374752614501453901.Spec : Prop :=
  ∀ n, P6374752614501453901.a n = A246404 (n + 1)

end A246404

/-!
# A246405: Nonnegative integers k satisfying sec(k) > sec(k+1) < sec(k+2).

The programs for A246405, the canonical program `A246405.P16491160402709366502` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246405 has offset 1).

The definition of A246405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246405.P16491160402709366502

`A004526(A246411(2*(n+1)))%A186083(A017377(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246405

/-- `A004526(A246411(2*(n+1)))%A186083(A017377(n))` -/
def P16491160402709366502.Spec : Prop :=
  ∀ n, P16491160402709366502.a n = A246405 (n + 1)

theorem P16491160402709366502.correct : P16491160402709366502.Spec := by
  intro n
  simp only [A246405, Nat.add_sub_cancel]

end A246405

/-! ## A246405.P1270355893411578134

`floor(A246411(2*(n+1))/A260218(2*n+1))`
-/

namespace A246405.P1270355893411578134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246411 (2 * (n + 1)) : ℚ) / (A260218 (2 * n + 1) : ℚ)⌋

end

end A246405.P1270355893411578134

namespace A246405

/-- `floor(A246411(2*(n+1))/A260218(2*n+1))` -/
def P1270355893411578134.Spec : Prop :=
  ∀ n, P1270355893411578134.a n = A246405 (n + 1)

end A246405

/-! ## A246405.P8358028754938987731

`A123108(A246411(2*(n+1)))%A032647(n+1)`
-/

namespace A246405.P8358028754938987731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123108 (A246411 (2 * (n + 1))).toNat) (A032647 (n + 1))

end

end A246405.P8358028754938987731

namespace A246405

/-- `A123108(A246411(2*(n+1)))%A032647(n+1)` -/
def P8358028754938987731.Spec : Prop :=
  ∀ n, P8358028754938987731.a n = A246405 (n + 1)

end A246405

/-! ## A246405.P9434471138889210301

`A002264(A246408(3*(n+1)))%record[A087747(n+1)]`
-/

namespace A246405.P9434471138889210301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002264 (A246408 (3 * (n + 1))).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A246405.P9434471138889210301

namespace A246405

/-- `A002264(A246408(3*(n+1)))%record[A087747(n+1)]` -/
def P9434471138889210301.Spec : Prop :=
  ∀ n, P9434471138889210301.a n = A246405 (n + 1)

end A246405

/-! ## A246405.P13522908444787723830

`A002264(A246408(3*(n+1)))*A199087(A246104(n))`
-/

namespace A246405.P13522908444787723830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A246408 (3 * (n + 1))).toNat * A199087 (A246104 n).toNat

end

end A246405.P13522908444787723830

namespace A246405

/-- `A002264(A246408(3*(n+1)))*A199087(A246104(n))` -/
def P13522908444787723830.Spec : Prop :=
  ∀ n, P13522908444787723830.a n = A246405 (n + 1)

end A246405

/-! ## A246405.P17495119401006925420

`A002264(A246408(3*(n+1))%A265134(n+1))`
-/

namespace A246405.P17495119401006925420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A246408 (3 * (n + 1))) (A265134 (n + 1))).toNat

end

end A246405.P17495119401006925420

namespace A246405

/-- `A002264(A246408(3*(n+1))%A265134(n+1))` -/
def P17495119401006925420.Spec : Prop :=
  ∀ n, P17495119401006925420.a n = A246405 (n + 1)

end A246405

/-!
# A246406: Nonnegative integers k satisfying sec(k) > sec(k+1) > sec(k+2) < sec(k+3).

The programs for A246406, the canonical program `A246406.P15282604472216613680` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246406 has offset 1).

The definition of A246406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246406.P15282604472216613680

`∩[A246407(n+1)-1, A246407(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246406

/-- `∩[A246407(n+1)-1, A246407(n+1)]` -/
def P15282604472216613680.Spec : Prop :=
  ∀ n, (P15282604472216613680.a n : ℤ) = A246406 (n + 1)

theorem P15282604472216613680.correct : P15282604472216613680.Spec := by
  intro n
  simp only [A246406, Nat.add_sub_cancel]

end A246406

/-!
# A246407: Nonnegative integers k satisfying sec(k) > sec(k+1).

The programs for A246407, the canonical program `A246407.P13205545743441053020` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246407 has offset 1).

The definition of A246407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246407.P13205545743441053020

`comp[A246404(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246407

/-- `comp[A246404(n+1)]` -/
def P13205545743441053020.Spec : Prop :=
  ∀ n, (P13205545743441053020.a n : ℤ) = A246407 (n + 1)

theorem P13205545743441053020.correct : P13205545743441053020.Spec := by
  intro n
  simp only [A246407, Nat.add_sub_cancel]

end A246407

/-! ## A246407.P4089084964321344452

`∪[A246405(n+1), A246406(n+1)]`
-/

namespace A246407.P4089084964321344452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246407.P4089084964321344452

namespace A246407

/-- `∪[A246405(n+1), A246406(n+1)]` -/
def P4089084964321344452.Spec : Prop :=
  ∀ n, (P4089084964321344452.a n : ℤ) = A246407 (n + 1)

end A246407

/-! ## A246407.P12927293359480994458

`comp[∪[A246408(n+1), A246409(n+1)]]`
-/

namespace A246407.P12927293359480994458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246409 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246407.P12927293359480994458

namespace A246407

/-- `comp[∪[A246408(n+1), A246409(n+1)]]` -/
def P12927293359480994458.Spec : Prop :=
  ∀ n, (P12927293359480994458.a n : ℤ) = A246407 (n + 1)

end A246407

/-! ## A246407.P7129106365874936348

`∪[A246405(n+1), A246408(n+1)+1]`
-/

namespace A246407.P7129106365874936348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246407.P7129106365874936348

namespace A246407

/-- `∪[A246405(n+1), A246408(n+1)+1]` -/
def P7129106365874936348.Spec : Prop :=
  ∀ n, (P7129106365874936348.a n : ℤ) = A246407 (n + 1)

end A246407

/-! ## A246407.P16527548132713643298

`∪[A246406(n+1), A246408(n+1)]+1`
-/

namespace A246407.P16527548132713643298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A246407.P16527548132713643298

namespace A246407

/-- `∪[A246406(n+1), A246408(n+1)]+1` -/
def P16527548132713643298.Spec : Prop :=
  ∀ n, (P16527548132713643298.a n : ℤ) = A246407 (n + 1)

end A246407

/-! ## A246407.P16893942761440253815

`lt[Δ[cot(cos(n))], 0]`
-/

namespace A246407.P16893942761440253815
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.cos (n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246407.P16893942761440253815

namespace A246407

/-- `lt[Δ[cot(cos(n))], 0]` -/
def P16893942761440253815.Spec : Prop :=
  ∀ n, (P16893942761440253815.a n : ℤ) = A246407 (n + 1)

end A246407

/-! ## A246407.P7383441489696223595

`lt[Δ[acot(cos(n))], 0]`
-/

namespace A246407.P7383441489696223595
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.cos (n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246407.P7383441489696223595

namespace A246407

/-- `lt[Δ[acot(cos(n))], 0]` -/
def P7383441489696223595.Spec : Prop :=
  ∀ n, (P7383441489696223595.a n : ℤ) = A246407 (n + 1)

end A246407

/-! ## A246407.P4422299101278747664

`xor(A014722(A097876(n)), A246404(n+1))`
-/

namespace A246407.P4422299101278747664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014722 (A097876 n).toNat) (A246404 (n + 1))

end

end A246407.P4422299101278747664

namespace A246407

/-- `xor(A014722(A097876(n)), A246404(n+1))` -/
def P4422299101278747664.Spec : Prop :=
  ∀ n, P4422299101278747664.a n = A246407 (n + 1)

end A246407

/-! ## A246407.P18174305879188427769

`xor(A160467(A031933(n)), A246404(n+1))`
-/

namespace A246407.P18174305879188427769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A160467 (A031933 n).toNat) (A246404 (n + 1))

end

end A246407.P18174305879188427769

namespace A246407

/-- `xor(A160467(A031933(n)), A246404(n+1))` -/
def P18174305879188427769.Spec : Prop :=
  ∀ n, P18174305879188427769.a n = A246407 (n + 1)

end A246407

/-!
# A246408: Nonnegative integers k satisfying sec(k) < sec(k+1) > sec(k+2).

The programs for A246408, the canonical program `A246408.P3496905763118372023` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246408 has offset 1).

The definition of A246408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246408.P3496905763118372023

`A004526(A246411(2*n+1))%A000290(A000217(n+9))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246408

/-- `A004526(A246411(2*n+1))%A000290(A000217(n+9))` -/
def P3496905763118372023.Spec : Prop :=
  ∀ n, P3496905763118372023.a n = A246408 (n + 1)

theorem P3496905763118372023.correct : P3496905763118372023.Spec := by
  intro n
  simp only [A246408, Nat.add_sub_cancel]

end A246408

/-! ## A246408.P16221526474228017493

`A004526(A246411(2*n+1))%A186083(A017377(n))`
-/

namespace A246408.P16221526474228017493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A246411 (2 * n + 1)).toNat) (A186083 (A017377 n).toNat)

end

end A246408.P16221526474228017493

namespace A246408

/-- `A004526(A246411(2*n+1))%A186083(A017377(n))` -/
def P16221526474228017493.Spec : Prop :=
  ∀ n, P16221526474228017493.a n = A246408 (n + 1)

end A246408

/-! ## A246408.P17402513466411555887

`A277024(A277015(n))+A004526(A246411(2*n+1))`
-/

namespace A246408.P17402513466411555887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 (A277015 n).toNat + A004526 (A246411 (2 * n + 1)).toNat

end

end A246408.P17402513466411555887

namespace A246408

/-- `A277024(A277015(n))+A004526(A246411(2*n+1))` -/
def P17402513466411555887.Spec : Prop :=
  ∀ n, P17402513466411555887.a n = A246408 (n + 1)

end A246408

/-! ## A246408.P3199669515649826384

`floor(A246411(2*n+1)/A260218(2*n+1))`
-/

namespace A246408.P3199669515649826384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246411 (2 * n + 1) : ℚ) / (A260218 (2 * n + 1) : ℚ)⌋

end

end A246408.P3199669515649826384

namespace A246408

/-- `floor(A246411(2*n+1)/A260218(2*n+1))` -/
def P3199669515649826384.Spec : Prop :=
  ∀ n, P3199669515649826384.a n = A246408 (n + 1)

end A246408

/-! ## A246408.P6470089044279265057

`A063695(A000695(n))+A004526(A246411(2*n+1))`
-/

namespace A246408.P6470089044279265057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 (A000695 n).toNat + A004526 (A246411 (2 * n + 1)).toNat

end

end A246408.P6470089044279265057

namespace A246408

/-- `A063695(A000695(n))+A004526(A246411(2*n+1))` -/
def P6470089044279265057.Spec : Prop :=
  ∀ n, P6470089044279265057.a n = A246408 (n + 1)

end A246408

/-! ## A246408.P14452492367153936355

`A004526(A246411(2*n+1))+A000007(A138509(n+1))`
-/

namespace A246408.P14452492367153936355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A246411 (2 * n + 1)).toNat + A000007 (A138509 (n + 1)).toNat

end

end A246408.P14452492367153936355

namespace A246408

/-- `A004526(A246411(2*n+1))+A000007(A138509(n+1))` -/
def P14452492367153936355.Spec : Prop :=
  ∀ n, P14452492367153936355.a n = A246408 (n + 1)

end A246408

/-!
# A246409: Nonnegative integers k satisfying sec(k) < sec(k+1) < sec(k+2) > sec(k+3).

The programs for A246409, there is no canonical definition to state claims against.
-/

/-! ## A246409.P11913785618892491229

`A246415(n+1)+11`
-/

namespace A246409.P11913785618892491229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246415 (n + 1) + 11

end

end A246409.P11913785618892491229

/-! ## A246409.P1477732677159750193

`∩[A246410(n+1)-1, A246410(n+1)]+11`
-/

namespace A246409.P1477732677159750193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 11

end

end A246409.P1477732677159750193

/-! ## A246409.P10028693113407259297

`∩[A246404(n+1)-1, A246404(n+1)]`
-/

namespace A246409.P10028693113407259297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246404 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246409.P10028693113407259297

/-! ## A246409.P6010579362255686134

`A123122(A246415(n+1))`
-/

namespace A246409.P6010579362255686134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123122 (A246415 (n + 1)).toNat

end

end A246409.P6010579362255686134

/-! ## A246409.P6168310721632963929

`∩[A246404(n+1), A023443(A246404(n+1))]`
-/

namespace A246409.P6168310721632963929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246404 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246409.P6168310721632963929

/-!
# A246410: Positive integers k satisfying csc(k) < csc(k+1).

The programs for A246410, the canonical program `A246410.P11643950596936545398` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246410 has offset 1).

The definition of A246410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246410.P14196568695817791010

`comp[A246413(n+1)-1]+1`
-/

namespace A246410.P14196568695817791010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A246410.P14196568695817791010

namespace A246410

/-- `comp[A246413(n+1)-1]+1` -/
def P14196568695817791010.Spec : Prop :=
  ∀ n, (P14196568695817791010.a n : ℤ) = A246410 (n + 1)

end A246410

/-! ## A246410.P15360111193037566637

`∪[A246411(n+1)+1, A246414(n+1)]`
-/

namespace A246410.P15360111193037566637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246410.P15360111193037566637

namespace A246410

/-- `∪[A246411(n+1)+1, A246414(n+1)]` -/
def P15360111193037566637.Spec : Prop :=
  ∀ n, (P15360111193037566637.a n : ℤ) = A246410 (n + 1)

end A246410

/-! ## A246410.P11643950596936545398

`A246404(n+7)-11`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246410

/-- `A246404(n+7)-11` -/
def P11643950596936545398.Spec : Prop :=
  ∀ n, P11643950596936545398.a n = A246410 (n + 1)

theorem P11643950596936545398.correct : P11643950596936545398.Spec := by
  intro n
  simp only [A246410, Nat.add_sub_cancel]

end A246410

/-! ## A246410.P16934043938871837405

`lt[0, Δ[acot(sin(n))]]`
-/

namespace A246410.P16934043938871837405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.sin (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246410.P16934043938871837405

namespace A246410

/-- `lt[0, Δ[acot(sin(n))]]` -/
def P16934043938871837405.Spec : Prop :=
  ∀ n, (P16934043938871837405.a n : ℤ) = A246410 (n + 1)

end A246410

/-! ## A246410.P13445949563435261481

`A348553(A004965(n))%2+2*n+1`
-/

namespace A246410.P13445949563435261481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348553 (A004965 n).toNat) 2 + (2 * n : ℤ) + 1

end

end A246410.P13445949563435261481

namespace A246410

/-- `A348553(A004965(n))%2+2*n+1` -/
def P13445949563435261481.Spec : Prop :=
  ∀ n, P13445949563435261481.a n = A246410 (n + 1)

end A246410

/-! ## A246410.P11401112823210211076

`lt[A274087(3*n), A057428(A005385(n+1))]`
-/

namespace A246410.P11401112823210211076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274087 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A005385 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246410.P11401112823210211076

namespace A246410

/-- `lt[A274087(3*n), A057428(A005385(n+1))]` -/
def P11401112823210211076.Spec : Prop :=
  ∀ n, (P11401112823210211076.a n : ℤ) = A246410 (n + 1)

end A246410

/-!
# A246411: Positive integers k satisfying csc(k) > csc(k+1) < csc(k+2).

The programs for A246411, the canonical program `A246411.P12957659941039480171` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246411 has offset 1).

The definition of A246411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246411.P12957659941039480171

`∩[A246410(n+1)-1, A246413(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246411

/-- `∩[A246410(n+1)-1, A246413(n+1)]` -/
def P12957659941039480171.Spec : Prop :=
  ∀ n, (P12957659941039480171.a n : ℤ) = A246411 (n + 1)

theorem P12957659941039480171.correct : P12957659941039480171.Spec := by
  intro n
  simp only [A246411, Nat.add_sub_cancel]

end A246411

/-! ## A246411.P13779354819685370244

`(A057367(A315541(n))+1)%A162652(n+1)`
-/

namespace A246411.P13779354819685370244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057367 (A315541 n).toNat + 1) (A162652 (n + 1))

end

end A246411.P13779354819685370244

namespace A246411

/-- `(A057367(A315541(n))+1)%A162652(n+1)` -/
def P13779354819685370244.Spec : Prop :=
  ∀ n, P13779354819685370244.a n = A246411 (n + 1)

end A246411

/-! ## A246411.P3894888823787844004

`(A057367(A315541(n))+1)%A061388(A098500(n))`
-/

namespace A246411.P3894888823787844004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057367 (A315541 n).toNat + 1) (A061388 (A098500 n).toNat)

end

end A246411.P3894888823787844004

namespace A246411

/-- `(A057367(A315541(n))+1)%A061388(A098500(n))` -/
def P3894888823787844004.Spec : Prop :=
  ∀ n, P3894888823787844004.a n = A246411 (n + 1)

end A246411

/-! ## A246411.P14137995282451674873

`A158333(n)+A158327(A158319(2*(n+2)))`
-/

namespace A246411.P14137995282451674873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158333 n + A158327 (A158319 (2 * (n + 2))).toNat

end

end A246411.P14137995282451674873

namespace A246411

/-- `A158333(n)+A158327(A158319(2*(n+2)))` -/
def P14137995282451674873.Spec : Prop :=
  ∀ n, P14137995282451674873.a n = A246411 (n + 1)

end A246411

/-! ## A246411.P9405426205957923911

`A158333(n)+A158327(A003215(2*n+3))`
-/

namespace A246411.P9405426205957923911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158333 n + A158327 (A003215 (2 * n + 3)).toNat

end

end A246411.P9405426205957923911

namespace A246411

/-- `A158333(n)+A158327(A003215(2*n+3))` -/
def P9405426205957923911.Spec : Prop :=
  ∀ n, P9405426205957923911.a n = A246411 (n + 1)

end A246411

/-! ## A246411.P7112259513685250796

`A158333(n)%A340118(n+1)`
-/

namespace A246411.P7112259513685250796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158333 n) (A340118 (n + 1))

end

end A246411.P7112259513685250796

namespace A246411

/-- `A158333(n)%A340118(n+1)` -/
def P7112259513685250796.Spec : Prop :=
  ∀ n, P7112259513685250796.a n = A246411 (n + 1)

end A246411

/-! ## A246411.P15009309888507401855

`A158333(n)%A000040(A001844(n))`
-/

namespace A246411.P15009309888507401855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158333 n) (A000040 (A001844 n).toNat)

end

end A246411.P15009309888507401855

namespace A246411

/-- `A158333(n)%A000040(A001844(n))` -/
def P15009309888507401855.Spec : Prop :=
  ∀ n, P15009309888507401855.a n = A246411 (n + 1)

end A246411

/-! ## A246411.P10531154699081332247

`A335460(A005117(n+1))+A158333(n)`
-/

namespace A246411.P10531154699081332247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A005117 (n + 1)).toNat + A158333 n

end

end A246411.P10531154699081332247

namespace A246411

/-- `A335460(A005117(n+1))+A158333(n)` -/
def P10531154699081332247.Spec : Prop :=
  ∀ n, P10531154699081332247.a n = A246411 (n + 1)

end A246411

/-!
# A246412: Positive integers k satisfying csc(k) > csc(k+1) > csc(k+2) < csc(k+3).

The programs for A246412, the canonical program `A246412.P12923232252521658891` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246412 has offset 1).

The definition of A246412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246412.P12923232252521658891

`∩[A246413(n+1)-1, A246413(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246412

/-- `∩[A246413(n+1)-1, A246413(n+1)]` -/
def P12923232252521658891.Spec : Prop :=
  ∀ n, (P12923232252521658891.a n : ℤ) = A246412 (n + 1)

theorem P12923232252521658891.correct : P12923232252521658891.Spec := by
  intro n
  simp only [A246412, Nat.add_sub_cancel]

end A246412

/-! ## A246412.P15943616453949754888

`A023453(A246406(n+2))`
-/

namespace A246412.P15943616453949754888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A246406 (n + 2)).toNat

end

end A246412.P15943616453949754888

namespace A246412

/-- `A023453(A246406(n+2))` -/
def P15943616453949754888.Spec : Prop :=
  ∀ n, P15943616453949754888.a n = A246412 (n + 1)

end A246412

/-! ## A246412.P3026700012492171583

`A369275(n+1)+A000122(A157404(2*(n+1)))`
-/

namespace A246412.P3026700012492171583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369275 (n + 1) + A000122 (A157404 (2 * (n + 1))).toNat

end

end A246412.P3026700012492171583

namespace A246412

/-- `A369275(n+1)+A000122(A157404(2*(n+1)))` -/
def P3026700012492171583.Spec : Prop :=
  ∀ n, P3026700012492171583.a n = A246412 (n + 1)

end A246412

/-!
# A246413: Positive integers k satisfying csc(k) > csc(k+1).

The programs for A246413, the canonical program `A246413.P8427678712717733605` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246413 has offset 1).

The definition of A246413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246413.P2993362718378092894

`∪[A246411(n+1), A246412(n+1)]`
-/

namespace A246413.P2993362718378092894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246413.P2993362718378092894

namespace A246413

/-- `∪[A246411(n+1), A246412(n+1)]` -/
def P2993362718378092894.Spec : Prop :=
  ∀ n, (P2993362718378092894.a n : ℤ) = A246413 (n + 1)

end A246413

/-! ## A246413.P16306749113408929877

`∪[A246411(n+1), A246414(n+1)+1]`
-/

namespace A246413.P16306749113408929877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246413.P16306749113408929877

namespace A246413

/-- `∪[A246411(n+1), A246414(n+1)+1]` -/
def P16306749113408929877.Spec : Prop :=
  ∀ n, (P16306749113408929877.a n : ℤ) = A246413 (n + 1)

end A246413

/-! ## A246413.P8427678712717733605

`A246407(n+7)-11`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246413

/-- `A246407(n+7)-11` -/
def P8427678712717733605.Spec : Prop :=
  ∀ n, P8427678712717733605.a n = A246413 (n + 1)

theorem P8427678712717733605.correct : P8427678712717733605.Spec := by
  intro n
  simp only [A246413, Nat.add_sub_cancel]

end A246413

/-! ## A246413.P14729179381193088163

`∑[abs(Δ[A246407(n+6)])]`
-/

namespace A246413.P14729179381193088163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246413.P14729179381193088163

namespace A246413

/-- `∑[abs(Δ[A246407(n+6)])]` -/
def P14729179381193088163.Spec : Prop :=
  ∀ n, P14729179381193088163.a n = A246413 (n + 1)

end A246413

/-! ## A246413.P5804301745455353160

`∑[A000041(Δ[A246407(n+6)])]`
-/

namespace A246413.P5804301745455353160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246413.P5804301745455353160

namespace A246413

/-- `∑[A000041(Δ[A246407(n+6)])]` -/
def P5804301745455353160.Spec : Prop :=
  ∀ n, P5804301745455353160.a n = A246413 (n + 1)

end A246413

/-! ## A246413.P16708295312222701615

`∑[A006530(Δ[A246407(n+6)])]`
-/

namespace A246413.P16708295312222701615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246413.P16708295312222701615

namespace A246413

/-- `∑[A006530(Δ[A246407(n+6)])]` -/
def P16708295312222701615.Spec : Prop :=
  ∀ n, P16708295312222701615.a n = A246413 (n + 1)

end A246413

/-! ## A246413.P5643765980733405246

`∑[A014963(Δ[A246407(n+6)])]`
-/

namespace A246413.P5643765980733405246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246413.P5643765980733405246

namespace A246413

/-- `∑[A014963(Δ[A246407(n+6)])]` -/
def P5643765980733405246.Spec : Prop :=
  ∀ n, P5643765980733405246.a n = A246413 (n + 1)

end A246413

/-! ## A246413.P18278590502781702091

`∑[A246407(n+7)%A246407(n+6)]`
-/

namespace A246413.P18278590502781702091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246407 (n + 7)) (A246407 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246413.P18278590502781702091

namespace A246413

/-- `∑[A246407(n+7)%A246407(n+6)]` -/
def P18278590502781702091.Spec : Prop :=
  ∀ n, P18278590502781702091.a n = A246413 (n + 1)

end A246413

/-!
# A246414: Positive integers k satisfying csc(k) < csc(k+1) > csc(k+2).

The programs for A246414, the canonical program `A246414.P8392572628755399728` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246414 has offset 1).

The definition of A246414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246414.P14588878438261375802

`A246408(n+7)-11`
-/

namespace A246414.P14588878438261375802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 7) - 11

end

end A246414.P14588878438261375802

namespace A246414

/-- `A246408(n+7)-11` -/
def P14588878438261375802.Spec : Prop :=
  ∀ n, P14588878438261375802.a n = A246414 (n + 1)

end A246414

/-! ## A246414.P8392572628755399728

`∩[A246410(n+1), A246413(n+1)-1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246414

/-- `∩[A246410(n+1), A246413(n+1)-1]` -/
def P8392572628755399728.Spec : Prop :=
  ∀ n, (P8392572628755399728.a n : ℤ) = A246414 (n + 1)

theorem P8392572628755399728.correct : P8392572628755399728.Spec := by
  intro n
  simp only [A246414, Nat.add_sub_cancel]

end A246414

/-! ## A246414.P4065560090076420190

`A023453(A246408(n+7))`
-/

namespace A246414.P4065560090076420190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A246408 (n + 7)).toNat

end

end A246414.P4065560090076420190

namespace A246414

/-- `A023453(A246408(n+7))` -/
def P4065560090076420190.Spec : Prop :=
  ∀ n, P4065560090076420190.a n = A246414 (n + 1)

end A246414

/-! ## A246414.P7765485843005933291

`floor(log(A086594(n+1)))`
-/

namespace A246414.P7765485843005933291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A086594 (n + 1) : ℝ)⌋

end

end A246414.P7765485843005933291

namespace A246414

/-- `floor(log(A086594(n+1)))` -/
def P7765485843005933291.Spec : Prop :=
  ∀ n, P7765485843005933291.a n = A246414 (n + 1)

end A246414

/-! ## A246414.P8278105942208488397

`A000194(A265078(n))+1+n`
-/

namespace A246414.P8278105942208488397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A265078 n).toNat + 1 + (n : ℤ)

end

end A246414.P8278105942208488397

namespace A246414

/-- `A000194(A265078(n))+1+n` -/
def P8278105942208488397.Spec : Prop :=
  ∀ n, P8278105942208488397.a n = A246414 (n + 1)

end A246414

/-! ## A246414.P7198720923292274569

`A000194(∑[A072154(n)])+n+1`
-/

namespace A246414.P7198720923292274569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n + 1 : ℤ)

end

end A246414.P7198720923292274569

namespace A246414

/-- `A000194(∑[A072154(n)])+n+1` -/
def P7198720923292274569.Spec : Prop :=
  ∀ n, P7198720923292274569.a n = A246414 (n + 1)

end A246414

/-! ## A246414.P15171307963094126034

`A025747(2*n+1)-A038722(A038722(A025747(2*n)))`
-/

namespace A246414.P15171307963094126034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (2 * n + 1) - A038722 (A038722 (A025747 (2 * n)).toNat).toNat

end

end A246414.P15171307963094126034

namespace A246414

/-- `A025747(2*n+1)-A038722(A038722(A025747(2*n)))` -/
def P15171307963094126034.Spec : Prop :=
  ∀ n, P15171307963094126034.a n = A246414 (n + 1)

end A246414

/-! ## A246414.P200338685345313699

`A091247(A091228(n))+A004526(A164086(n+1))`
-/

namespace A246414.P200338685345313699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A091228 n).toNat + A004526 (A164086 (n + 1)).toNat

end

end A246414.P200338685345313699

namespace A246414

/-- `A091247(A091228(n))+A004526(A164086(n+1))` -/
def P200338685345313699.Spec : Prop :=
  ∀ n, P200338685345313699.a n = A246414 (n + 1)

end A246414

/-!
# A246415: Positive integers k satisfying csc(k) < csc(k+1) < csc(k+2) > csc(k+3).

The programs for A246415, there is no canonical definition to state claims against.
-/

/-! ## A246415.P7670507227779627741

`A246409(n+1)-11`
-/

namespace A246415.P7670507227779627741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246409 (n + 1) - 11

end

end A246415.P7670507227779627741

/-! ## A246415.P3382405991844134717

`∩[A246410(n+1)-1, A246410(n+1)]`
-/

namespace A246415.P3382405991844134717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246415.P3382405991844134717

/-! ## A246415.P16211180869633457961

`A023453(A246409(n+1))`
-/

namespace A246415.P16211180869633457961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A246409 (n + 1)).toNat

end

end A246415.P16211180869633457961

/-! ## A246415.P13097694510662489568

`∩[A246410(n+1), A023443(A246410(n+1))]`
-/

namespace A246415.P13097694510662489568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246410 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246415.P13097694510662489568

/-!
# A246416: A permutation of essentially the duplicate nonnegative numbers: a(4n) = n + 1/2 - (-1)^n/2, a(2n+1) = a(4n+2) = 2n+1.

The programs for A246416, the canonical program `A246416.P13972767773548800976` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246416 has offset 0).

The definition of A246416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246416.P13972767773548800976

`A212831(lcm(2, n)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246416

/-- `A212831(lcm(2, n)/2)` -/
def P13972767773548800976.Spec : Prop :=
  ∀ n, P13972767773548800976.a n = A246416 n

theorem P13972767773548800976.correct : P13972767773548800976.Spec := by
  intro n
  simp only [A246416]

end A246416

/-! ## A246416.P10799241698394800693

`A212831(A026741(n))`
-/

namespace A246416.P10799241698394800693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (A026741 n).toNat

end

end A246416.P10799241698394800693

namespace A246416

/-- `A212831(A026741(n))` -/
def P10799241698394800693.Spec : Prop :=
  ∀ n, P10799241698394800693.a n = A246416 n

end A246416

/-! ## A246416.P15153959203533887941

`A212831(A109043(n)/2)`
-/

namespace A246416.P15153959203533887941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (SequenceMachineLib.roundAway ((A109043 n : ℚ) / 2)).toNat

end

end A246416.P15153959203533887941

namespace A246416

/-- `A212831(A109043(n)/2)` -/
def P15153959203533887941.Spec : Prop :=
  ∀ n, P15153959203533887941.a n = A246416 n

end A246416

/-! ## A246416.P2822128233064153529

`A145979(n)-A247617(n)`
-/

namespace A246416.P2822128233064153529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n - A247617 n

end

end A246416.P2822128233064153529

namespace A246416

/-- `A145979(n)-A247617(n)` -/
def P2822128233064153529.Spec : Prop :=
  ∀ n, P2822128233064153529.a n = A246416 n

end A246416

/-! ## A246416.P9888224850957958923

`A061037(n+2)/A247617(n)`
-/

namespace A246416.P9888224850957958923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061037 (n + 2) : ℚ) / (A247617 n : ℚ)

end

end A246416.P9888224850957958923

namespace A246416

/-- `A061037(n+2)/A247617(n)` -/
def P9888224850957958923.Spec : Prop :=
  ∀ n, P9888224850957958923.a n = (A246416 n : ℚ)

end A246416

/-! ## A246416.P5575658264577627356

`A212831(2*n/A105397(n))`
-/

namespace A246416.P5575658264577627356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / (A105397 n : ℚ)))).toNat

end

end A246416.P5575658264577627356

namespace A246416

/-- `A212831(2*n/A105397(n))` -/
def P5575658264577627356.Spec : Prop :=
  ∀ n, P5575658264577627356.a n = A246416 n

end A246416

/-! ## A246416.P6587601930914057876

`A212831(n*A110654(n)-A161680(n))`
-/

namespace A246416.P6587601930914057876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 ((n : ℤ) * A110654 n - A161680 n).toNat

end

end A246416.P6587601930914057876

namespace A246416

/-- `A212831(n*A110654(n)-A161680(n))` -/
def P6587601930914057876.Spec : Prop :=
  ∀ n, P6587601930914057876.a n = A246416 n

end A246416

/-! ## A246416.P15438494515789704840

`A026741(n)-A004524(gcd(n, A004524(n)))`
-/

namespace A246416.P15438494515789704840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n - A004524 (Int.gcd (n : ℤ) (A004524 n))

end

end A246416.P15438494515789704840

namespace A246416

/-- `A026741(n)-A004524(gcd(n, A004524(n)))` -/
def P15438494515789704840.Spec : Prop :=
  ∀ n, P15438494515789704840.a n = A246416 n

end A246416

/-! ## A246416.P9254002139227949029

`A065423(A225975(n)+2)`
-/

namespace A246416.P9254002139227949029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A225975 n + 2).toNat

end

end A246416.P9254002139227949029

namespace A246416

/-- `A065423(A225975(n)+2)` -/
def P9254002139227949029.Spec : Prop :=
  ∀ n, P9254002139227949029.a n = A246416 n

end A246416

/-! ## A246416.P14084716867110480280

`A026741(A225975(n)+2)-1`
-/

namespace A246416.P14084716867110480280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A225975 n + 2).toNat - 1

end

end A246416.P14084716867110480280

namespace A246416

/-- `A026741(A225975(n)+2)-1` -/
def P14084716867110480280.Spec : Prop :=
  ∀ n, P14084716867110480280.a n = A246416 n

end A246416

/-! ## A246416.P17934758344705055349

`A212831(A212831(2*n)-A057979(n+1))`
-/

namespace A246416.P17934758344705055349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (A212831 (2 * n) - A057979 (n + 1)).toNat

end

end A246416.P17934758344705055349

namespace A246416

/-- `A212831(A212831(2*n)-A057979(n+1))` -/
def P17934758344705055349.Spec : Prop :=
  ∀ n, P17934758344705055349.a n = A246416 n

end A246416

/-! ## A246416.P15366428440746361791

`(n*A247617(3*n))%(n+1)`
-/

namespace A246416.P15366428440746361791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A247617 (3 * n)) (n + 1 : ℤ)

end

end A246416.P15366428440746361791

namespace A246416

/-- `(n*A247617(3*n))%(n+1)` -/
def P15366428440746361791.Spec : Prop :=
  ∀ n, P15366428440746361791.a n = A246416 n

end A246416

/-!
# A246418: Number of collections F of subsets of {1,2,...,n} whose union is itself an element of F.

The programs for A246418, there is no canonical definition to state claims against.
-/

/-! ## A246418.P14036357510211554220

`2^2^n-A246537(n)`
-/

namespace A246418.P14036357510211554220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n : ℤ) - A246537 n

end

end A246418.P14036357510211554220

/-! ## A246418.P17446592002746352449

`A347405(A335069(n+1))`
-/

namespace A246418.P17446592002746352449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347405 (A335069 (n + 1)).toNat

end

end A246418.P17446592002746352449

/-!
# A246420: Numbers m such that (m + digit sum of m) is a permutation of the decimal digits of m.

The programs for A246420, there is no canonical definition to state claims against.
-/

/-! ## A246420.P17866253859962371934

`eq[A004185(n), A004185(A062028(n))]`
-/

namespace A246420.P17866253859962371934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246420.P17866253859962371934

/-! ## A246420.P5092353869707534228

`eq[A004186(n), A004186(A062028(n))]`
-/

namespace A246420.P5092353869707534228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246420.P5092353869707534228

/-! ## A246420.P6684411547703832313

`eq[A045512(n), A045512(A062028(n))]`
-/

namespace A246420.P6684411547703832313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246420.P6684411547703832313

/-! ## A246420.P4103869914720886249

`eq[A055012(n), A055012(A062028(n))]`
-/

namespace A246420.P4103869914720886249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246420.P4103869914720886249

/-! ## A246420.P13474715660185010816

`eq[A055013(n), A055013(A062028(n))]`
-/

namespace A246420.P13474715660185010816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055013 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246420.P13474715660185010816

/-! ## A246420.P6707139043267637774

`eq[A055014(n), A055014(A062028(n))]`
-/

namespace A246420.P6707139043267637774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055014 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246420.P6707139043267637774

/-! ## A246420.P17231344851213182525

`eq[A348783(A062028(n)), A348783(n)]`
-/

namespace A246420.P17231344851213182525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246420.P17231344851213182525

/-!
# A246421: Numbers n such that (n + digit sum of n) and (n + digit product of n) are nontrivial permutations of the digits of n.

The programs for A246421, there is no canonical definition to state claims against.
-/

/-! ## A246421.P9654951092838138893

`∩[A243102(n+1), A246420(n+1)]`
-/

namespace A246421.P9654951092838138893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246421.P9654951092838138893

/-!
# A246422: Numbers in which cubes may end (in base 10).

The programs for A246422, there is no canonical definition to state claims against.
-/

/-! ## A246422.P128794210007349810

`comp[A246449(n+1)]`
-/

namespace A246422.P128794210007349810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246422.P128794210007349810

/-! ## A246422.P9448593770294774204

`comp[eq[0, A077752(n+1)]+1]`
-/

namespace A246422.P9448593770294774204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246422.P9448593770294774204

/-! ## A246422.P15880874992919986666

`comp[lt[A077744(n+1), 1]+1]`
-/

namespace A246422.P15880874992919986666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077744 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246422.P15880874992919986666

/-! ## A246422.P11821245156337706006

`comp[eq[A000007(n), A077752(n)]]`
-/

namespace A246422.P11821245156337706006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246422.P11821245156337706006

/-! ## A246422.P12105468446750389924

`comp[eq[A077752(n), A130713(n)]]`
-/

namespace A246422.P12105468446750389924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246422.P12105468446750389924

/-! ## A246422.P8264642971472552576

`comp[eq[A077752(n), A143755(n)]]`
-/

namespace A246422.P8264642971472552576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143755 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246422.P8264642971472552576

/-! ## A246422.P4267080326159507720

`lt[0, A074250(A028310(n))]%A038754(n)`
-/

namespace A246422.P4267080326159507720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) (A038754 n)

end

end A246422.P4267080326159507720

/-!
# A246423: G.f.: Sum_{n>=0} x^n / (1-3*x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * 2^k * x^k] * [Sum_{k=0..n} C(n,k)^2 * 3^k * x^k].

The programs for A246423, there is no canonical definition to state claims against.
-/

/-! ## A246423.P16543471027369776603

`round(A000720(A160229(n+1))/4)+1`
-/

namespace A246423.P16543471027369776603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000720 (A160229 (n + 1)).toNat : ℚ) / 4) + 1

end

end A246423.P16543471027369776603

/-!
# A246424: Number of distinct terms by nesting the 2nd elementary symmetric polynomial in 4 variables.

The programs for A246424, there is no canonical definition to state claims against.
-/

/-! ## A246424.P464312782703513712

`A194979(xor(A005967(n+1), A363611(n+1))+4)`
-/

namespace A246424.P464312782703513712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (Int.xor (A005967 (n + 1)) (A363611 (n + 1)) + 4).toNat

end

end A246424.P464312782703513712

/-!
# A246425: In the Collatz 3x+1 problem: start at an odd number 2n+1 and find the next odd number 2m+1 in the trajectory; then a(n) = m-n.

The programs for A246425, the canonical program `A246425.P2871816530660975141` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246425 has offset 0).

The definition of A246425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246425.P2871816530660975141

`((6*n+4)/2^A087230(n)-(2*n+1))/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A246425

/-- `((6*n+4)/2^A087230(n)-(2*n+1))/2` -/
def P2871816530660975141.Spec : Prop :=
  ∀ n, P2871816530660975141.a n = (A246425 n : ℚ)

end A246425

/-! ## A246425.P1681543355885715889

`A173732(n)-n`
-/

namespace A246425.P1681543355885715889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173732 n - (n : ℤ)

end

end A246425.P1681543355885715889

namespace A246425

/-- `A173732(n)-n` -/
def P1681543355885715889.Spec : Prop :=
  ∀ n, P1681543355885715889.a n = A246425 n

end A246425

/-! ## A246425.P10974659182570071939

`A103391(3*(n+1))-(n+2)`
-/

namespace A246425.P10974659182570071939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (3 * (n + 1)) - (n + 2 : ℤ)

end

end A246425.P10974659182570071939

namespace A246425

/-- `A103391(3*(n+1))-(n+2)` -/
def P10974659182570071939.Spec : Prop :=
  ∀ n, P10974659182570071939.a n = A246425 n

end A246425

/-! ## A246425.P2283005318387383905

`A110962(A016933(n))-n`
-/

namespace A246425.P2283005318387383905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A016933 n).toNat - (n : ℤ)

end

end A246425.P2283005318387383905

namespace A246425

/-- `A110962(A016933(n))-n` -/
def P2283005318387383905.Spec : Prop :=
  ∀ n, P2283005318387383905.a n = A246425 n

end A246425

/-! ## A246425.P2820597479408892075

`A014682(A000265(3*n+2)-1)-n`
-/

namespace A246425.P2820597479408892075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000265 (3 * n + 2) - 1).toNat - (n : ℤ)

end

end A246425.P2820597479408892075

namespace A246425

/-- `A014682(A000265(3*n+2)-1)-n` -/
def P2820597479408892075.Spec : Prop :=
  ∀ n, P2820597479408892075.a n = A246425 n

end A246425

/-! ## A246425.P9285124372702926576

`A349414(A075677(n+1))-(n+1)`
-/

namespace A246425.P9285124372702926576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349414 (A075677 (n + 1)).toNat - (n + 1 : ℤ)

end

end A246425.P9285124372702926576

namespace A246425

/-- `A349414(A075677(n+1))-(n+1)` -/
def P9285124372702926576.Spec : Prop :=
  ∀ n, P9285124372702926576.a n = A246425 n

end A246425

/-! ## A246425.P7730877549743675477

`A110962(A017581(n))-n`
-/

namespace A246425.P7730877549743675477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A017581 n).toNat - (n : ℤ)

end

end A246425.P7730877549743675477

namespace A246425

/-- `A110962(A017581(n))-n` -/
def P7730877549743675477.Spec : Prop :=
  ∀ n, P7730877549743675477.a n = A246425 n

end A246425

/-! ## A246425.P7953696060336592040

`A110962(6*(2*n+1))-n`
-/

namespace A246425.P7953696060336592040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (6 * (2 * n + 1)) - (n : ℤ)

end

end A246425.P7953696060336592040

namespace A246425

/-- `A110962(6*(2*n+1))-n` -/
def P7953696060336592040.Spec : Prop :=
  ∀ n, P7953696060336592040.a n = A246425 n

end A246425

/-! ## A246425.P6057562249266159349

`(A139391(2*n+1)-(2*n+1))/2`
-/

namespace A246425.P6057562249266159349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139391 (2 * n + 1) - (2 * n + 1 : ℤ) : ℚ) / 2

end

end A246425.P6057562249266159349

namespace A246425

/-- `(A139391(2*n+1)-(2*n+1))/2` -/
def P6057562249266159349.Spec : Prop :=
  ∀ n, P6057562249266159349.a n = (A246425 n : ℚ)

end A246425

/-! ## A246425.P17065083102767566160

`(A067745(2*(n+1))+A001489(2*n+1))/2`
-/

namespace A246425.P17065083102767566160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067745 (2 * (n + 1)) + A001489 (2 * n + 1) : ℚ) / 2

end

end A246425.P17065083102767566160

namespace A246425

/-- `(A067745(2*(n+1))+A001489(2*n+1))/2` -/
def P17065083102767566160.Spec : Prop :=
  ∀ n, P17065083102767566160.a n = (A246425 n : ℚ)

end A246425

/-! ## A246425.P18118001970025028412

`A025480(3*n+1)-n`
-/

namespace A246425.P18118001970025028412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (3 * n + 1) - (n : ℤ)

end

end A246425.P18118001970025028412

namespace A246425

/-- `A025480(3*n+1)-n` -/
def P18118001970025028412.Spec : Prop :=
  ∀ n, P18118001970025028412.a n = A246425 n

end A246425

/-! ## A246425.P3721018335599393022

`A003602(3*n+2)-(n+1)`
-/

namespace A246425.P3721018335599393022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (3 * n + 2) - (n + 1 : ℤ)

end

end A246425.P3721018335599393022

namespace A246425

/-- `A003602(3*n+2)-(n+1)` -/
def P3721018335599393022.Spec : Prop :=
  ∀ n, P3721018335599393022.a n = A246425 n

end A246425

/-! ## A246425.P13333996067678265318

`A004524(A075677(n+1))-n`
-/

namespace A246425.P13333996067678265318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A075677 (n + 1)).toNat - (n : ℤ)

end

end A246425.P13333996067678265318

namespace A246425

/-- `A004524(A075677(n+1))-n` -/
def P13333996067678265318.Spec : Prop :=
  ∀ n, P13333996067678265318.a n = A246425 n

end A246425

/-! ## A246425.P10516514169638258117

`A003602(A016789(n))-1-n`
-/

namespace A246425.P10516514169638258117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A016789 n).toNat - 1 - (n : ℤ)

end

end A246425.P10516514169638258117

namespace A246425

/-- `A003602(A016789(n))-1-n` -/
def P10516514169638258117.Spec : Prop :=
  ∀ n, P10516514169638258117.a n = A246425 n

end A246425

/-! ## A246425.P17432399951668058429

`A001281(A075677(n+1)-1)-n`
-/

namespace A246425.P17432399951668058429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A075677 (n + 1) - 1).toNat - (n : ℤ)

end

end A246425.P17432399951668058429

namespace A246425

/-- `A001281(A075677(n+1)-1)-n` -/
def P17432399951668058429.Spec : Prop :=
  ∀ n, P17432399951668058429.a n = A246425 n

end A246425

/-! ## A246425.P16771588231462474443

`A004526(A075677(n+1)-1)-n`
-/

namespace A246425.P16771588231462474443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075677 (n + 1) - 1).toNat - (n : ℤ)

end

end A246425.P16771588231462474443

namespace A246425

/-- `A004526(A075677(n+1)-1)-n` -/
def P16771588231462474443.Spec : Prop :=
  ∀ n, P16771588231462474443.a n = A246425 n

end A246425

/-! ## A246425.P2690782205198337030

`A006370(A075677(n+1)-1)-n`
-/

namespace A246425.P2690782205198337030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A075677 (n + 1) - 1).toNat - (n : ℤ)

end

end A246425.P2690782205198337030

namespace A246425

/-- `A006370(A075677(n+1)-1)-n` -/
def P2690782205198337030.Spec : Prop :=
  ∀ n, P2690782205198337030.a n = A246425 n

end A246425

/-! ## A246425.P15096342449606427101

`A084964(A067745(2*(n+1)))-n`
-/

namespace A246425.P15096342449606427101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A067745 (2 * (n + 1))).toNat - (n : ℤ)

end

end A246425.P15096342449606427101

namespace A246425

/-- `A084964(A067745(2*(n+1)))-n` -/
def P15096342449606427101.Spec : Prop :=
  ∀ n, P15096342449606427101.a n = A246425 n

end A246425

/-! ## A246425.P7714056467460460403

`A004526(A153733(3*n+1))-n`
-/

namespace A246425.P7714056467460460403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A153733 (3 * n + 1)).toNat - (n : ℤ)

end

end A246425.P7714056467460460403

namespace A246425

/-- `A004526(A153733(3*n+1))-n` -/
def P7714056467460460403.Spec : Prop :=
  ∀ n, P7714056467460460403.a n = A246425 n

end A246425

/-! ## A246425.P590906252592847293

`A028242(A000265(3*n+2))-n`
-/

namespace A246425.P590906252592847293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A000265 (3 * n + 2)).toNat - (n : ℤ)

end

end A246425.P590906252592847293

namespace A246425

/-- `A028242(A000265(3*n+2))-n` -/
def P590906252592847293.Spec : Prop :=
  ∀ n, P590906252592847293.a n = A246425 n

end A246425

/-!
# A246426: Number of steps in base n after which all digits > 0 are present in x(i) where x(i) = x(i-1) + sum of missing digits of x(i-1) with x(0) = 0.

The programs for A246426, there is no canonical definition to state claims against.
-/

/-! ## A246426.P2676474688781729563

`A241087(A390738(n+2))`
-/

namespace A246426.P2676474688781729563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241087 (A390738 (n + 2)).toNat

end

end A246426.P2676474688781729563

/-!
# A246428: Primes p such that concatenation of the digit sum of p with p is also prime.

The programs for A246428, there is no canonical definition to state claims against.
-/

/-! ## A246428.P620061770170226358

`p?[(n+1)*A001221(A136613(n+1))]`
-/

namespace A246428.P620061770170226358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (A136613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246428.P620061770170226358

/-! ## A246428.P11913210846647816250

`eq[A007920(n), A072480(A136613(n))]`
-/

namespace A246428.P11913210846647816250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A136613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246428.P11913210846647816250

/-! ## A246428.P12126577503904108693

`eq[A072480(A136613(n)), A341702(n)]`
-/

namespace A246428.P12126577503904108693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A136613 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246428.P12126577503904108693

/-! ## A246428.P2489926640510106885

`p?[A001221(A136613(n+1))*A004442(n)]`
-/

namespace A246428.P2489926640510106885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A136613 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246428.P2489926640510106885

/-! ## A246428.P11241242785877199391

`eq[A007920(A136613(n)), A010816(n)]`
-/

namespace A246428.P11241242785877199391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A136613 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246428.P11241242785877199391

/-!
# A246429: List of c, where c is positive integer solutions of 1/a + 1/b = 1/c and a>b>c and gcd(a,b,c)=1, sorted by ascending a, then b.

The programs for A246429, there is no canonical definition to state claims against.
-/

/-! ## A246429.P14410888325761464164

`A280680(3*(n+1))`
-/

namespace A246429.P14410888325761464164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280680 (3 * (n + 1))

end

end A246429.P14410888325761464164

/-! ## A246429.P13217519722604707382

`sqrt(A280679(3*(n+1)))`
-/

namespace A246429.P13217519722604707382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280679 (3 * (n + 1)) : ℝ)

end

end A246429.P13217519722604707382

/-! ## A246429.P7407399888097804391

`A280680(A008585(n+1))%A173036(n)`
-/

namespace A246429.P7407399888097804391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280680 (A008585 (n + 1)).toNat) (A173036 n)

end

end A246429.P7407399888097804391

/-! ## A246429.P16115959125216073747

`A280680(A008585(n+1))+A000007(n+1)`
-/

namespace A246429.P16115959125216073747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280680 (A008585 (n + 1)).toNat + A000007 (n + 1)

end

end A246429.P16115959125216073747

/-! ## A246429.P11727467073307918740

`A280680(A008585(n+1))/A191269(A191270(n+1))`
-/

namespace A246429.P11727467073307918740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280680 (A008585 (n + 1)).toNat : ℚ) / (A191269 (A191270 (n + 1)).toNat : ℚ)

end

end A246429.P11727467073307918740

/-! ## A246429.P5593882014020216616

`A280679(A008585(n+1))^2^A008683(A020483(n))`
-/

namespace A246429.P5593882014020216616
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A280679 (A008585 (n + 1)).toNat : ℝ) ^ ((2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) : ℝ)

end

end A246429.P5593882014020216616

/-!
# A246430: Smallest number m such that the n-th prime is the median prime factor of 1..m, cf. A212300.

The programs for A246430, there is no canonical definition to state claims against.
-/

/-! ## A246430.P3153069401342734741

`A006843(A000225(2*n+1))+(2*n)²`
-/

namespace A246430.P3153069401342734741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (A000225 (2 * n + 1)).toNat + ((2 * n) ^ 2 : ℤ)

end

end A246430.P3153069401342734741

/-! ## A246430.P635636297320732343

`A320056(∑[∑[((n+1)/6^val(n+1, 6))%6]])`
-/

namespace A246430.P635636297320732343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (6 ^ SequenceMachineLib.valuation (n + 1) 6 : ℚ))) 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246430.P635636297320732343

/-!
# A246431: Smallest m such that A101403(m) = n.

The programs for A246431, there is no canonical definition to state claims against.
-/

/-! ## A246431.P10003295916719843131

`a(n-1)^6-2` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A246431.P10003295916719843131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 3] fun n a =>
  a (n - 1) ^ 6 - 2

end

end A246431.P10003295916719843131

/-!
# A246432: Convolution inverse of A001700.

The programs for A246432, the canonical program `A246432.P7367098291756528111` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246432 has offset 0).

The definition of A246432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246432.P3536089380979497914

`(4-6/n)*a(n-1)` with `a(0)=1, a(1)=-3, a(2)=-1`
-/

namespace A246432.P3536089380979497914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -3, -1] fun n a =>
  (4 - 6 / (n : ℚ)) * a (n - 1)

end

end A246432.P3536089380979497914

namespace A246432

/-- `(4-6/n)*a(n-1)` -/
def P3536089380979497914.Spec : Prop :=
  ∀ n, P3536089380979497914.a n = (A246432 n : ℚ)

end A246432

/-! ## A246432.P16462094367300311662

`A115141(n)-char[1]`
-/

namespace A246432.P16462094367300311662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115141 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A246432.P16462094367300311662

namespace A246432

/-- `A115141(n)-char[1]` -/
def P16462094367300311662.Spec : Prop :=
  ∀ n, P16462094367300311662.a n = A246432 n

end A246432

/-! ## A246432.P15222411655873093214

`A115140(n)-2*char[1]`
-/

namespace A246432.P15222411655873093214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A246432.P15222411655873093214

namespace A246432

/-- `A115140(n)-2*char[1]` -/
def P15222411655873093214.Spec : Prop :=
  ∀ n, P15222411655873093214.a n = A246432 n

end A246432

/-! ## A246432.P16573314468833827742

`floor(1/(γ-n))*A120588(n)`
-/

namespace A246432.P16573314468833827742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ * A120588 n

end

end A246432.P16573314468833827742

namespace A246432

/-- `floor(1/(γ-n))*A120588(n)` -/
def P16573314468833827742.Spec : Prop :=
  ∀ n, P16573314468833827742.a n = A246432 n

end A246432

/-! ## A246432.P8210589410738121155

`A159075(n)+A115141(n)`
-/

namespace A246432.P8210589410738121155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A115141 n

end

end A246432.P8210589410738121155

namespace A246432

/-- `A159075(n)+A115141(n)` -/
def P8210589410738121155.Spec : Prop :=
  ∀ n, P8210589410738121155.a n = A246432 n

end A246432

/-! ## A246432.P7367098291756528111

`A120588(n)*A260196(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246432

/-- `A120588(n)*A260196(n)` -/
def P7367098291756528111.Spec : Prop :=
  ∀ n, P7367098291756528111.a n = A246432 n

theorem P7367098291756528111.correct : P7367098291756528111.Spec := by
  intro n
  simp only [A246432]

end A246432

/-! ## A246432.P17117020105475905460

`and(A115140(n), A260196(n))`
-/

namespace A246432.P17117020105475905460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115140 n) (A260196 n)

end

end A246432.P17117020105475905460

namespace A246432

/-- `and(A115140(n), A260196(n))` -/
def P17117020105475905460.Spec : Prop :=
  ∀ n, P17117020105475905460.a n = A246432 n

end A246432

/-! ## A246432.P7083561444602764198

`xor(2*A063524(n), A115140(n))`
-/

namespace A246432.P7083561444602764198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A063524 n) (A115140 n)

end

end A246432.P7083561444602764198

namespace A246432

/-- `xor(2*A063524(n), A115140(n))` -/
def P7083561444602764198.Spec : Prop :=
  ∀ n, P7083561444602764198.a n = A246432 n

end A246432

/-! ## A246432.P10384421110837856697

`xor(2*char[A002420(n)], A115140(n))`
-/

namespace A246432.P10384421110837856697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) (A115140 n)

end

end A246432.P10384421110837856697

namespace A246432

/-- `xor(2*char[A002420(n)], A115140(n))` -/
def P10384421110837856697.Spec : Prop :=
  ∀ n, P10384421110837856697.a n = A246432 n

end A246432

/-! ## A246432.P680353159238375971

`xor(2*char[A004984(n)], A115140(n))`
-/

namespace A246432.P680353159238375971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004984 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) (A115140 n)

end

end A246432.P680353159238375971

namespace A246432

/-- `xor(2*char[A004984(n)], A115140(n))` -/
def P680353159238375971.Spec : Prop :=
  ∀ n, P680353159238375971.a n = A246432 n

end A246432

/-! ## A246432.P10816994826294594363

`xor(2*char[A004990(n)], A115140(n))`
-/

namespace A246432.P10816994826294594363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004990 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) (A115140 n)

end

end A246432.P10816994826294594363

namespace A246432

/-- `xor(2*char[A004990(n)], A115140(n))` -/
def P10816994826294594363.Spec : Prop :=
  ∀ n, P10816994826294594363.a n = A246432 n

end A246432

/-! ## A246432.P8864955372345340148

`xor(2*char[A004996(n)], A115140(n))`
-/

namespace A246432.P8864955372345340148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004996 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) (A115140 n)

end

end A246432.P8864955372345340148

namespace A246432

/-- `xor(2*char[A004996(n)], A115140(n))` -/
def P8864955372345340148.Spec : Prop :=
  ∀ n, P8864955372345340148.a n = A246432 n

end A246432

/-! ## A246432.P11136186375846898174

`xor(2*char[A106270(n)], A115140(n))`
-/

namespace A246432.P11136186375846898174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106270 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) (A115140 n)

end

end A246432.P11136186375846898174

namespace A246432

/-- `xor(2*char[A106270(n)], A115140(n))` -/
def P11136186375846898174.Spec : Prop :=
  ∀ n, P11136186375846898174.a n = A246432 n

end A246432

/-! ## A246432.P3749973292329194517

`xor(2*char[A292440(n)], A115140(n))`
-/

namespace A246432.P3749973292329194517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) (A115140 n)

end

end A246432.P3749973292329194517

namespace A246432

/-- `xor(2*char[A292440(n)], A115140(n))` -/
def P3749973292329194517.Spec : Prop :=
  ∀ n, P3749973292329194517.a n = A246432 n

end A246432

/-! ## A246432.P3010928048361417162

`A014963(A113127(n))*A115140(n)`
-/

namespace A246432.P3010928048361417162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A113127 n).toNat * A115140 n

end

end A246432.P3010928048361417162

namespace A246432

/-- `A014963(A113127(n))*A115140(n)` -/
def P3010928048361417162.Spec : Prop :=
  ∀ n, P3010928048361417162.a n = A246432 n

end A246432

/-! ## A246432.P1999153964093747536

`A014963(A330257(n))*A115140(n)`
-/

namespace A246432.P1999153964093747536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A330257 n).toNat * A115140 n

end

end A246432.P1999153964093747536

namespace A246432

/-- `A014963(A330257(n))*A115140(n)` -/
def P1999153964093747536.Spec : Prop :=
  ∀ n, P1999153964093747536.a n = A246432 n

end A246432

/-! ## A246432.P7833669053892866596

`(A000038(A008611(n))+1)*A115140(n)`
-/

namespace A246432.P7833669053892866596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 (A008611 n).toNat + 1) * A115140 n

end

end A246432.P7833669053892866596

namespace A246432

/-- `(A000038(A008611(n))+1)*A115140(n)` -/
def P7833669053892866596.Spec : Prop :=
  ∀ n, P7833669053892866596.a n = A246432 n

end A246432

/-! ## A246432.P16104770810985974289

`(A000038(A008624(n))+1)*A115140(n)`
-/

namespace A246432.P16104770810985974289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 (A008624 n).toNat + 1) * A115140 n

end

end A246432.P16104770810985974289

namespace A246432

/-- `(A000038(A008624(n))+1)*A115140(n)` -/
def P16104770810985974289.Spec : Prop :=
  ∀ n, P16104770810985974289.a n = A246432 n

end A246432

/-! ## A246432.P9483057650756182406

`A159075(n)+A159075(n)+A115140(n)`
-/

namespace A246432.P9483057650756182406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + (A159075 n + A115140 n)

end

end A246432.P9483057650756182406

namespace A246432

/-- `A159075(n)+A159075(n)+A115140(n)` -/
def P9483057650756182406.Spec : Prop :=
  ∀ n, P9483057650756182406.a n = A246432 n

end A246432

/-! ## A246432.P17894109503204653402

`2*A115141(n)-A115140(n)`
-/

namespace A246432.P17894109503204653402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115141 n - A115140 n

end

end A246432.P17894109503204653402

namespace A246432

/-- `2*A115141(n)-A115140(n)` -/
def P17894109503204653402.Spec : Prop :=
  ∀ n, P17894109503204653402.a n = A246432 n

end A246432

/-!
# A246434: Expansion of (3*x/2 - 1 - (7*x - 2)/(2*sqrt(1 - 4*x)))/x.

The programs for A246434, the canonical program `A246434.P16044259443453981883` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246434 has offset 1).

The definition of A246434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246434.P16044259443453981883

`2*C(2*(n+1)-1, n+2)-C(2*(n+1)-1, n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246434

/-- `2*C(2*(n+1)-1, n+2)-C(2*(n+1)-1, n+1)` -/
def P16044259443453981883.Spec : Prop :=
  ∀ n, P16044259443453981883.a n = A246434 (n + 1)

theorem P16044259443453981883.correct : P16044259443453981883.Spec := by
  intro n
  simp only [A246434, Nat.add_sub_cancel]

end A246434

/-! ## A246434.P1351880821860105602

`n*∏[2*(2*n+1)/(n+2)]-∏[4-2/(n+1)]/2`
-/

namespace A246434.P1351880821860105602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j) - (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A246434.P1351880821860105602

namespace A246434

/-- `n*∏[2*(2*n+1)/(n+2)]-∏[4-2/(n+1)]/2` -/
def P1351880821860105602.Spec : Prop :=
  ∀ n, P1351880821860105602.a n = (A246434 (n + 1) : ℚ)

end A246434

/-! ## A246434.P307271135275899163

`(n/2-1)*∑[A071724(n)]`
-/

namespace A246434.P307271135275899163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A246434.P307271135275899163

namespace A246434

/-- `(n/2-1)*∑[A071724(n)]` -/
def P307271135275899163.Spec : Prop :=
  ∀ n, P307271135275899163.a n = (A246434 (n + 1) : ℚ)

end A246434

/-! ## A246434.P4645487230180239433

`(n/2-1)*A000108(n+1)`
-/

namespace A246434.P4645487230180239433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 - 1) * (A000108 (n + 1) : ℚ)

end

end A246434.P4645487230180239433

namespace A246434

/-- `(n/2-1)*A000108(n+1)` -/
def P4645487230180239433.Spec : Prop :=
  ∀ n, P4645487230180239433.a n = (A246434 (n + 1) : ℚ)

end A246434

/-! ## A246434.P1244303977656756272

`(n-2)/2*A120588(n+2)`
-/

namespace A246434.P1244303977656756272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / 2 * (A120588 (n + 2) : ℚ)

end

end A246434.P1244303977656756272

namespace A246434

/-- `(n-2)/2*A120588(n+2)` -/
def P1244303977656756272.Spec : Prop :=
  ∀ n, P1244303977656756272.a n = (A246434 (n + 1) : ℚ)

end A246434

/-! ## A246434.P9977300110758534718

`(n-2)*A000108(2*n-(n-1))/2`
-/

namespace A246434.P9977300110758534718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) * ((A000108 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2)

end

end A246434.P9977300110758534718

namespace A246434

/-- `(n-2)*A000108(2*n-(n-1))/2` -/
def P9977300110758534718.Spec : Prop :=
  ∀ n, P9977300110758534718.a n = (A246434 (n + 1) : ℚ)

end A246434

/-! ## A246434.P5586313925290072093

`(A051945(n+1)-A240530(n+1))/2`
-/

namespace A246434.P5586313925290072093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051945 (n + 1) - A240530 (n + 1) : ℚ) / 2

end

end A246434.P5586313925290072093

namespace A246434

/-- `(A051945(n+1)-A240530(n+1))/2` -/
def P5586313925290072093.Spec : Prop :=
  ∀ n, P5586313925290072093.a n = (A246434 (n + 1) : ℚ)

end A246434

/-! ## A246434.P8626812659992621632

`(n-2)*C(2*n+1, n)/(n+2)`
-/

namespace A246434.P8626812659992621632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) * ((Nat.choose (2 * n + 1) n : ℚ) / (n + 2 : ℚ))

end

end A246434.P8626812659992621632

namespace A246434

/-- `(n-2)*C(2*n+1, n)/(n+2)` -/
def P8626812659992621632.Spec : Prop :=
  ∀ n, P8626812659992621632.a n = (A246434 (n + 1) : ℚ)

end A246434

/-! ## A246434.P17327142193381850725

`A298485(A001844(n+1))`
-/

namespace A246434.P17327142193381850725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298485 (A001844 (n + 1)).toNat

end

end A246434.P17327142193381850725

namespace A246434

/-- `A298485(A001844(n+1))` -/
def P17327142193381850725.Spec : Prop :=
  ∀ n, P17327142193381850725.a n = A246434 (n + 1)

end A246434

/-! ## A246434.P3719334019731495575

`A298485(A099776(n+1))`
-/

namespace A246434.P3719334019731495575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298485 (A099776 (n + 1)).toNat

end

end A246434.P3719334019731495575

namespace A246434

/-- `A298485(A099776(n+1))` -/
def P3719334019731495575.Spec : Prop :=
  ∀ n, P3719334019731495575.a n = A246434 (n + 1)

end A246434

/-!
# A246435: Length of representation of n in fractional base 3/2.

The programs for A246435, the canonical program `A246435.P9766186390409589666` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246435 has offset 0).

The definition of A246435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246435.P9766186390409589666

`a(2*floor(n/3))+1` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246435

/-- `a(2*floor(n/3))+1` -/
def P9766186390409589666.Spec : Prop :=
  ∀ n, (P9766186390409589666.a n : ℤ) = A246435 n

theorem P9766186390409589666.correct : P9766186390409589666.Spec := by
  intro n
  simp only [A246435]

end A246435

/-! ## A246435.P8972879947164309279

`∑[char[A070885(n+2)]]+1`
-/

namespace A246435.P8972879947164309279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A246435.P8972879947164309279

namespace A246435

/-- `∑[char[A070885(n+2)]]+1` -/
def P8972879947164309279.Spec : Prop :=
  ∀ n, (P8972879947164309279.a n : ℤ) = A246435 n

end A246435

/-! ## A246435.P16556263387316133680

`∑[char[∑[A081848(n+1)]]]+1`
-/

namespace A246435.P16556263387316133680
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A246435.P16556263387316133680

namespace A246435

/-- `∑[char[∑[A081848(n+1)]]]+1` -/
def P16556263387316133680.Spec : Prop :=
  ∀ n, (P16556263387316133680.a n : ℤ) = A246435 n

end A246435

/-! ## A246435.P11537100686080798753

`∑{digits}[A024629(n), A036372(#)]`
-/

namespace A246435.P11537100686080798753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036372 x).sum

end

end A246435.P11537100686080798753

namespace A246435

/-- `∑{digits}[A024629(n), A036372(#)]` -/
def P11537100686080798753.Spec : Prop :=
  ∀ n, P11537100686080798753.a n = A246435 n

end A246435

/-! ## A246435.P3665242391318133652

`∑{digits}[A024629(n), A147558(#+1)]`
-/

namespace A246435.P3665242391318133652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A147558 (x + 1)).sum

end

end A246435.P3665242391318133652

namespace A246435

/-- `∑{digits}[A024629(n), A147558(#+1)]` -/
def P3665242391318133652.Spec : Prop :=
  ∀ n, P3665242391318133652.a n = A246435 n

end A246435

/-! ## A246435.P16016480138351962554

`∑{digits}[A024629(n), gcd(2, A005427(#+1))]`
-/

namespace A246435.P16016480138351962554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.gcd 2 (A005427 (x + 1))).sum

end

end A246435.P16016480138351962554

namespace A246435

/-- `∑{digits}[A024629(n), gcd(2, A005427(#+1))]` -/
def P16016480138351962554.Spec : Prop :=
  ∀ n, (P16016480138351962554.a n : ℤ) = A246435 n

end A246435

/-! ## A246435.P17036333442516086663

`∑{digits}[A024629(n), A032563(#+1)-#]`
-/

namespace A246435.P17036333442516086663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A032563 (x + 1) - (x : ℤ)).sum

end

end A246435.P17036333442516086663

namespace A246435

/-- `∑{digits}[A024629(n), A032563(#+1)-#]` -/
def P17036333442516086663.Spec : Prop :=
  ∀ n, P17036333442516086663.a n = A246435 n

end A246435

/-! ## A246435.P1629871763366998698

`∑{digits}[A024629(n), A087088(A081848(#+1)+1)]`
-/

namespace A246435.P1629871763366998698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A087088 (A081848 (x + 1) + 1).toNat).sum

end

end A246435.P1629871763366998698

namespace A246435

/-- `∑{digits}[A024629(n), A087088(A081848(#+1)+1)]` -/
def P1629871763366998698.Spec : Prop :=
  ∀ n, P1629871763366998698.a n = A246435 n

end A246435

/-! ## A246435.P5264556489088888536

`A081604(A261691(n))`
-/

namespace A246435.P5264556489088888536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A261691 n).toNat

end

end A246435.P5264556489088888536

namespace A246435

/-- `A081604(A261691(n))` -/
def P5264556489088888536.Spec : Prop :=
  ∀ n, P5264556489088888536.a n = A246435 n

end A246435

/-!
# A246436: Number of numbers 1,...,n not occurring in the Collatz trajectory starting with n.

The programs for A246436, there is no canonical definition to state claims against.
-/

/-! ## A246436.P8648468738780815851

`n-A076228(n+1)`
-/

namespace A246436.P8648468738780815851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A076228 (n + 1)

end

end A246436.P8648468738780815851

/-! ## A246436.P5920122312789982546

`1-A159999(n+1)+n`
-/

namespace A246436.P5920122312789982546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A159999 (n + 1) + (n : ℤ)

end

end A246436.P5920122312789982546

/-! ## A246436.P1139419239354176963

`A213204(n+1)-A008908(n+1)+n`
-/

namespace A246436.P1139419239354176963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213204 (n + 1) - A008908 (n + 1) + (n : ℤ)

end

end A246436.P1139419239354176963

/-! ## A246436.P2108921979104566503

`A222597(n+1)-A006577(n+1)+n`
-/

namespace A246436.P2108921979104566503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222597 (n + 1) - A006577 (n + 1) + (n : ℤ)

end

end A246436.P2108921979104566503

/-! ## A246436.P17727815245151607558

`1-(A008908(n+1)-A222597(n+1))+n`
-/

namespace A246436.P17727815245151607558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A008908 (n + 1) - A222597 (n + 1)) + (n : ℤ)

end

end A246436.P17727815245151607558

/-!
# A246437: Expansion of (1/2)*(1/(x+1)+1/(sqrt(-3*x^2-2*x+1))).

The programs for A246437, the canonical program `A246437.P8274867833887097828` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246437 has offset 0).

The definition of A246437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246437.P8274867833887097828

`A257520(n)-n%2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246437

/-- `A257520(n)-n%2` -/
def P8274867833887097828.Spec : Prop :=
  ∀ n, P8274867833887097828.a n = A246437 n

theorem P8274867833887097828.correct : P8274867833887097828.Spec := by
  intro n
  simp only [A246437]

end A246437

/-! ## A246437.P11694242041276454647

`A097861(n)+log2(gcd(2, n))`
-/

namespace A246437.P11694242041276454647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A097861 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A246437.P11694242041276454647

namespace A246437

/-- `A097861(n)+log2(gcd(2, n))` -/
def P11694242041276454647.Spec : Prop :=
  ∀ n, P11694242041276454647.a n = (A246437 n : ℝ)

end A246437

/-! ## A246437.P7522949969926730821

`A005773(n)-a(n-1)` with `a(0)=1`
-/

namespace A246437.P7522949969926730821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005773 n - a (n - 1)

end

end A246437.P7522949969926730821

namespace A246437

/-- `A005773(n)-a(n-1)` -/
def P7522949969926730821.Spec : Prop :=
  ∀ n, P7522949969926730821.a n = A246437 n

end A246437

/-! ## A246437.P9900758023808650110

`A307789(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A246437.P9900758023808650110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307789 (n + 1) - a (n - 1)

end

end A246437.P9900758023808650110

namespace A246437

/-- `A307789(n+1)-a(n-1)` -/
def P9900758023808650110.Spec : Prop :=
  ∀ n, P9900758023808650110.a n = A246437 n

end A246437

/-! ## A246437.P5754060785975164321

`∑[A025566(n)-char[1]]-a(n-1)` with `a(0)=1`
-/

namespace A246437.P5754060785975164321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A246437.P5754060785975164321

namespace A246437

/-- `∑[A025566(n)-char[1]]-a(n-1)` -/
def P5754060785975164321.Spec : Prop :=
  ∀ n, P5754060785975164321.a n = A246437 n

end A246437

/-! ## A246437.P12685048244449105440

`A097861(n)+A059841(n)`
-/

namespace A246437.P12685048244449105440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + A059841 n

end

end A246437.P12685048244449105440

namespace A246437

/-- `A097861(n)+A059841(n)` -/
def P12685048244449105440.Spec : Prop :=
  ∀ n, P12685048244449105440.a n = A246437 n

end A246437

/-! ## A246437.P1608005914364759716

`A257520(n)-A000035(n)`
-/

namespace A246437.P1608005914364759716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n - A000035 n

end

end A246437.P1608005914364759716

namespace A246437

/-- `A257520(n)-A000035(n)` -/
def P1608005914364759716.Spec : Prop :=
  ∀ n, P1608005914364759716.a n = A246437 n

end A246437

/-! ## A246437.P15716705973895315867

`A097861(n)+abs(A056594(n))`
-/

namespace A246437.P15716705973895315867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + |A056594 n|

end

end A246437.P15716705973895315867

namespace A246437

/-- `A097861(n)+abs(A056594(n))` -/
def P15716705973895315867.Spec : Prop :=
  ∀ n, P15716705973895315867.a n = A246437 n

end A246437

/-! ## A246437.P12434999413795453046

`A097861(n)+Δ[A110654(n)]`
-/

namespace A246437.P12434999413795453046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + (f1 (n + 1) - f1 n)

end

end A246437.P12434999413795453046

namespace A246437

/-- `A097861(n)+Δ[A110654(n)]` -/
def P12434999413795453046.Spec : Prop :=
  ∀ n, P12434999413795453046.a n = A246437 n

end A246437

/-! ## A246437.P13373913772534702183

`A257520(n)-Δ[A004526(n)]`
-/

namespace A246437.P13373913772534702183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n - (f1 (n + 1) - f1 n)

end

end A246437.P13373913772534702183

namespace A246437

/-- `A257520(n)-Δ[A004526(n)]` -/
def P13373913772534702183.Spec : Prop :=
  ∀ n, P13373913772534702183.a n = A246437 n

end A246437

/-! ## A246437.P5460881124921983813

`A257520(n)-Δ[A008619(n)]`
-/

namespace A246437.P5460881124921983813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n - (f1 (n + 1) - f1 n)

end

end A246437.P5460881124921983813

namespace A246437

/-- `A257520(n)-Δ[A008619(n)]` -/
def P5460881124921983813.Spec : Prop :=
  ∀ n, P5460881124921983813.a n = A246437 n

end A246437

/-! ## A246437.P1025930173082181327

`A097861(n)+char[A005843(n)]`
-/

namespace A246437.P1025930173082181327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A246437.P1025930173082181327

namespace A246437

/-- `A097861(n)+char[A005843(n)]` -/
def P1025930173082181327.Spec : Prop :=
  ∀ n, P1025930173082181327.a n = A246437 n

end A246437

/-! ## A246437.P13222736734142884747

`A097861(n)+A000035(n+1)`
-/

namespace A246437.P13222736734142884747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + A000035 (n + 1)

end

end A246437.P13222736734142884747

namespace A246437

/-- `A097861(n)+A000035(n+1)` -/
def P13222736734142884747.Spec : Prop :=
  ∀ n, P13222736734142884747.a n = A246437 n

end A246437

/-! ## A246437.P10356257662034687097

`A059841(n)+A257520(n)-1`
-/

namespace A246437.P10356257662034687097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (A257520 n - 1)

end

end A246437.P10356257662034687097

namespace A246437

/-- `A059841(n)+A257520(n)-1` -/
def P10356257662034687097.Spec : Prop :=
  ∀ n, P10356257662034687097.a n = A246437 n

end A246437

/-! ## A246437.P4905223527433341630

`A097861(n)+2-A000034(n)`
-/

namespace A246437.P4905223527433341630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + (2 - A000034 n)

end

end A246437.P4905223527433341630

namespace A246437

/-- `A097861(n)+2-A000034(n)` -/
def P4905223527433341630.Spec : Prop :=
  ∀ n, P4905223527433341630.a n = A246437 n

end A246437

/-! ## A246437.P11527305771018400750

`A097861(n)-(A000035(n)-1)`
-/

namespace A246437.P11527305771018400750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n - (A000035 n - 1)

end

end A246437.P11527305771018400750

namespace A246437

/-- `A097861(n)-(A000035(n)-1)` -/
def P11527305771018400750.Spec : Prop :=
  ∀ n, P11527305771018400750.a n = A246437 n

end A246437

/-! ## A246437.P3648017428270453840

`A097861(n)+(1-A134451(n))²`
-/

namespace A246437.P3648017428270453840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + (1 - A134451 n) ^ 2

end

end A246437.P3648017428270453840

namespace A246437

/-- `A097861(n)+(1-A134451(n))²` -/
def P3648017428270453840.Spec : Prop :=
  ∀ n, P3648017428270453840.a n = A246437 n

end A246437

/-! ## A246437.P13844654207902701569

`A097861(n)+1-Δ[A004526(n)]`
-/

namespace A246437.P13844654207902701569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + 1 - (f1 (n + 1) - f1 n)

end

end A246437.P13844654207902701569

namespace A246437

/-- `A097861(n)+1-Δ[A004526(n)]` -/
def P13844654207902701569.Spec : Prop :=
  ∀ n, P13844654207902701569.a n = A246437 n

end A246437

/-! ## A246437.P8876982578551579390

`A097861(n)+1-Δ[A008619(n)]`
-/

namespace A246437.P8876982578551579390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + 1 - (f1 (n + 1) - f1 n)

end

end A246437.P8876982578551579390

namespace A246437

/-- `A097861(n)+1-Δ[A008619(n)]` -/
def P8876982578551579390.Spec : Prop :=
  ∀ n, P8876982578551579390.a n = A246437 n

end A246437

/-! ## A246437.P13482681882272833692

`A097861(n)+1-char[A005408(n)]`
-/

namespace A246437.P13482681882272833692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A246437.P13482681882272833692

namespace A246437

/-- `A097861(n)+1-char[A005408(n)]` -/
def P13482681882272833692.Spec : Prop :=
  ∀ n, P13482681882272833692.a n = A246437 n

end A246437

/-!
# A246438: Numbers m such that A164349(m) = 0.

The programs for A246438, the canonical program `A246438.P3012299356465480649` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246438 has offset 1).

The definition of A246438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246438.P3012299356465480649

`eq[0, A164349(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246438

/-- `eq[0, A164349(n)]` -/
def P3012299356465480649.Spec : Prop :=
  ∀ n, (P3012299356465480649.a n : ℤ) = A246438 (n + 1)

theorem P3012299356465480649.correct : P3012299356465480649.Spec := by
  intro n
  simp only [A246438, Nat.add_sub_cancel]

end A246438

/-! ## A246438.P4675436624918476697

`comp[∑[A101403(n)]]`
-/

namespace A246438.P4675436624918476697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246438.P4675436624918476697

namespace A246438

/-- `comp[∑[A101403(n)]]` -/
def P4675436624918476697.Spec : Prop :=
  ∀ n, (P4675436624918476697.a n : ℤ) = A246438 (n + 1)

end A246438

/-! ## A246438.P2772994277861351618

`comp[A246439(n+1)]`
-/

namespace A246438.P2772994277861351618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246438.P2772994277861351618

namespace A246438

/-- `comp[A246439(n+1)]` -/
def P2772994277861351618.Spec : Prop :=
  ∀ n, (P2772994277861351618.a n : ℤ) = A246438 (n + 1)

end A246438

/-! ## A246438.P2762139381944337802

`record[(sqrt(n+1)-A164349(n+1))²]`
-/

namespace A246438.P2762139381944337802
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (n + 1 : ℝ) - (A164349 (n + 1) : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246438.P2762139381944337802

namespace A246438

/-- `record[(sqrt(n+1)-A164349(n+1))²]` -/
def P2762139381944337802.Spec : Prop :=
  ∀ n, P2762139381944337802.a n = (A246438 (n + 1) : ℝ)

end A246438

/-! ## A246438.P7576486191932911364

`lt[A000005(A005117(n+1))*A164349(n), 1]`
-/

namespace A246438.P7576486191932911364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005117 (n + 1)).toNat * A164349 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246438.P7576486191932911364

namespace A246438

/-- `lt[A000005(A005117(n+1))*A164349(n), 1]` -/
def P7576486191932911364.Spec : Prop :=
  ∀ n, (P7576486191932911364.a n : ℤ) = A246438 (n + 1)

end A246438

/-! ## A246438.P12252490964588942331

`A101402(a(n-1)+1)+n` with `a(0)=0`
-/

namespace A246438.P12252490964588942331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A101402 (a (n - 1) + 1).toNat + (n : ℤ)

end

end A246438.P12252490964588942331

namespace A246438

/-- `A101402(a(n-1)+1)+n` -/
def P12252490964588942331.Spec : Prop :=
  ∀ n, P12252490964588942331.a n = A246438 (n + 1)

end A246438

/-! ## A246438.P8606046047520936148

`record[n-A101402(n*A164349(n))]`
-/

namespace A246438.P8606046047520936148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A101402 ((n : ℤ) * A164349 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246438.P8606046047520936148

namespace A246438

/-- `record[n-A101402(n*A164349(n))]` -/
def P8606046047520936148.Spec : Prop :=
  ∀ n, P8606046047520936148.a n = A246438 (n + 1)

end A246438

/-! ## A246438.P9077309689359617620

`record[n-A101403(n)*A164349(n)]`
-/

namespace A246438.P9077309689359617620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A101403 n * A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246438.P9077309689359617620

namespace A246438

/-- `record[n-A101403(n)*A164349(n)]` -/
def P9077309689359617620.Spec : Prop :=
  ∀ n, P9077309689359617620.a n = A246438 (n + 1)

end A246438

/-! ## A246438.P14359216135669335246

`lt[A006093(n+1)*A164349(n), 1]`
-/

namespace A246438.P14359216135669335246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A164349 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246438.P14359216135669335246

namespace A246438

/-- `lt[A006093(n+1)*A164349(n), 1]` -/
def P14359216135669335246.Spec : Prop :=
  ∀ n, (P14359216135669335246.a n : ℤ) = A246438 (n + 1)

end A246438

/-! ## A246438.P6795215928870616091

`record[n-A050034(n+1)*A164349(n)]`
-/

namespace A246438.P6795215928870616091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050034 (n + 1) * A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246438.P6795215928870616091

namespace A246438

/-- `record[n-A050034(n+1)*A164349(n)]` -/
def P6795215928870616091.Spec : Prop :=
  ∀ n, P6795215928870616091.a n = A246438 (n + 1)

end A246438

/-! ## A246438.P7925686733995894722

`record[n-A164349(n)*A246439(n+1)]`
-/

namespace A246438.P7925686733995894722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A164349 n * A246439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246438.P7925686733995894722

namespace A246438

/-- `record[n-A164349(n)*A246439(n+1)]` -/
def P7925686733995894722.Spec : Prop :=
  ∀ n, P7925686733995894722.a n = A246438 (n + 1)

end A246438

/-! ## A246438.P9911125657704158798

`lt[1, Δ[A160378(A164349(n)+n)]]`
-/

namespace A246438.P9911125657704158798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 (A164349 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246438.P9911125657704158798

namespace A246438

/-- `lt[1, Δ[A160378(A164349(n)+n)]]` -/
def P9911125657704158798.Spec : Prop :=
  ∀ n, (P9911125657704158798.a n : ℤ) = A246438 (n + 1)

end A246438

/-! ## A246438.P905542318189336486

`lt[Δ[A160378(n)]*A164349(n), 1]`
-/

namespace A246438.P905542318189336486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A164349 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A246438.P905542318189336486

namespace A246438

/-- `lt[Δ[A160378(n)]*A164349(n), 1]` -/
def P905542318189336486.Spec : Prop :=
  ∀ n, (P905542318189336486.a n : ℤ) = A246438 (n + 1)

end A246438

/-! ## A246438.P5267483811938512525

`lt[C((n+2)*A164349(n), 2), A014963(n+2)]`
-/

namespace A246438.P5267483811938512525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2 : ℤ) * A164349 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246438.P5267483811938512525

namespace A246438

/-- `lt[C((n+2)*A164349(n), 2), A014963(n+2)]` -/
def P5267483811938512525.Spec : Prop :=
  ∀ n, (P5267483811938512525.a n : ℤ) = A246438 (n + 1)

end A246438

/-! ## A246438.P254486677933454958

`lt[A164349(n), A001221(A006093(n+1)+1)]`
-/

namespace A246438.P254486677933454958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246438.P254486677933454958

namespace A246438

/-- `lt[A164349(n), A001221(A006093(n+1)+1)]` -/
def P254486677933454958.Spec : Prop :=
  ∀ n, (P254486677933454958.a n : ℤ) = A246438 (n + 1)

end A246438

/-! ## A246438.P9763144385693119912

`A092391(record[A228087(n)])`
-/

namespace A246438.P9763144385693119912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246438.P9763144385693119912

namespace A246438

/-- `A092391(record[A228087(n)])` -/
def P9763144385693119912.Spec : Prop :=
  ∀ n, P9763144385693119912.a n = A246438 (n + 1)

end A246438

/-! ## A246438.P8962126724044354085

`lt[A164349(n), A164349(A246439(n+1))]`
-/

namespace A246438.P8962126724044354085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (A246439 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246438.P8962126724044354085

namespace A246438

/-- `lt[A164349(n), A164349(A246439(n+1))]` -/
def P8962126724044354085.Spec : Prop :=
  ∀ n, (P8962126724044354085.a n : ℤ) = A246438 (n + 1)

end A246438

/-! ## A246438.P5744865123320295366

`record[A053645(A164349(n+1)+n)]`
-/

namespace A246438.P5744865123320295366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A164349 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246438.P5744865123320295366

namespace A246438

/-- `record[A053645(A164349(n+1)+n)]` -/
def P5744865123320295366.Spec : Prop :=
  ∀ n, P5744865123320295366.a n = A246438 (n + 1)

end A246438

/-! ## A246438.P7087029658237366139

`lt[A164349(n)*A313875(n), 1]`
-/

namespace A246438.P7087029658237366139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n * A313875 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246438.P7087029658237366139

namespace A246438

/-- `lt[A164349(n)*A313875(n), 1]` -/
def P7087029658237366139.Spec : Prop :=
  ∀ n, (P7087029658237366139.a n : ℤ) = A246438 (n + 1)

end A246438

/-! ## A246438.P11169453643451775446

`lt[A164349(n), A071178(A006093(n+1)+1)]`
-/

namespace A246438.P11169453643451775446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246438.P11169453643451775446

namespace A246438

/-- `lt[A164349(n), A071178(A006093(n+1)+1)]` -/
def P11169453643451775446.Spec : Prop :=
  ∀ n, (P11169453643451775446.a n : ℤ) = A246438 (n + 1)

end A246438

/-!
# A246439: Numbers m such that A164349(m) = 1.

The programs for A246439, the canonical program `A246439.P44155868527142489` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246439 has offset 1).

The definition of A246439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246439.P12173876776604178646

`∑[A101403(n)]`
-/

namespace A246439.P12173876776604178646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246439.P12173876776604178646

namespace A246439

/-- `∑[A101403(n)]` -/
def P12173876776604178646.Spec : Prop :=
  ∀ n, P12173876776604178646.a n = A246439 (n + 1)

end A246439

/-! ## A246439.P9667306080169033790

`a(n-1)+A101404(n)/n` with `a(0)=1`
-/

namespace A246439.P9667306080169033790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A101404 n : ℚ) / (n : ℚ)

end

end A246439.P9667306080169033790

namespace A246439

/-- `a(n-1)+A101404(n)/n` -/
def P9667306080169033790.Spec : Prop :=
  ∀ n, P9667306080169033790.a n = (A246439 (n + 1) : ℚ)

end A246439

/-! ## A246439.P14398342210876889641

`A101403(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A246439.P14398342210876889641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101403 (n % (n + 1)) + a (n - 1)

end

end A246439.P14398342210876889641

namespace A246439

/-- `A101403(n%(n+1))+a(n-1)` -/
def P14398342210876889641.Spec : Prop :=
  ∀ n, P14398342210876889641.a n = A246439 (n + 1)

end A246439

/-! ## A246439.P3408971653387872434

`A101403(n)+record[n*A164349(n)]`
-/

namespace A246439.P3408971653387872434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101403 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246439.P3408971653387872434

namespace A246439

/-- `A101403(n)+record[n*A164349(n)]` -/
def P3408971653387872434.Spec : Prop :=
  ∀ n, P3408971653387872434.a n = A246439 (n + 1)

end A246439

/-! ## A246439.P44155868527142489

`lt[0, A164349(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246439

/-- `lt[0, A164349(n)]` -/
def P44155868527142489.Spec : Prop :=
  ∀ n, (P44155868527142489.a n : ℤ) = A246439 (n + 1)

theorem P44155868527142489.correct : P44155868527142489.Spec := by
  intro n
  simp only [A246439, Nat.add_sub_cancel]

end A246439

/-! ## A246439.P13761677207500359975

`eq[1, A164349(n*A164349(n))]`
-/

namespace A246439.P13761677207500359975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 ((n : ℤ) * A164349 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246439.P13761677207500359975

namespace A246439

/-- `eq[1, A164349(n*A164349(n))]` -/
def P13761677207500359975.Spec : Prop :=
  ∀ n, (P13761677207500359975.a n : ℤ) = A246439 (n + 1)

end A246439

/-! ## A246439.P18321896330293135277

`filter[A065190(n+1), A164349(#)]`
-/

namespace A246439.P18321896330293135277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164349 (f1 j).toNat = 1) n)

end

end A246439.P18321896330293135277

namespace A246439

/-- `filter[A065190(n+1), A164349(#)]` -/
def P18321896330293135277.Spec : Prop :=
  ∀ n, P18321896330293135277.a n = A246439 (n + 1)

end A246439

/-! ## A246439.P12532087045995320974

`eq[1, A101266(n)]+1`
-/

namespace A246439.P12532087045995320974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246439.P12532087045995320974

namespace A246439

/-- `eq[1, A101266(n)]+1` -/
def P12532087045995320974.Spec : Prop :=
  ∀ n, (P12532087045995320974.a n : ℤ) = A246439 (n + 1)

end A246439

/-! ## A246439.P4866456025885376396

`filter[n+1, A164349(#)]`
-/

namespace A246439.P4866456025885376396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164349 (f1 j) = 1) n)

end

end A246439.P4866456025885376396

namespace A246439

/-- `filter[n+1, A164349(#)]` -/
def P4866456025885376396.Spec : Prop :=
  ∀ n, (P4866456025885376396.a n : ℤ) = A246439 (n + 1)

end A246439

/-! ## A246439.P12783521132506115646

`eq[A054977(n), A164349(n)]`
-/

namespace A246439.P12783521132506115646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246439.P12783521132506115646

namespace A246439

/-- `eq[A054977(n), A164349(n)]` -/
def P12783521132506115646.Spec : Prop :=
  ∀ n, (P12783521132506115646.a n : ℤ) = A246439 (n + 1)

end A246439

/-! ## A246439.P12782665936267224808

`eq[A158388(n), A164349(n)]`
-/

namespace A246439.P12782665936267224808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246439.P12782665936267224808

namespace A246439

/-- `eq[A158388(n), A164349(n)]` -/
def P12782665936267224808.Spec : Prop :=
  ∀ n, (P12782665936267224808.a n : ℤ) = A246439 (n + 1)

end A246439

/-! ## A246439.P15421221989266774234

`eq[A164349(n), A329684(n)]`
-/

namespace A246439.P15421221989266774234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246439.P15421221989266774234

namespace A246439

/-- `eq[A164349(n), A329684(n)]` -/
def P15421221989266774234.Spec : Prop :=
  ∀ n, (P15421221989266774234.a n : ℤ) = A246439 (n + 1)

end A246439

/-! ## A246439.P8890551018328636655

`lt[Δ[A228087(n)], 1]+1`
-/

namespace A246439.P8890551018328636655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A246439.P8890551018328636655

namespace A246439

/-- `lt[Δ[A228087(n)], 1]+1` -/
def P8890551018328636655.Spec : Prop :=
  ∀ n, (P8890551018328636655.a n : ℤ) = A246439 (n + 1)

end A246439

/-! ## A246439.P2003929636477251251

`record[A101402(n+1)*A164349(A101402(n+1))]`
-/

namespace A246439.P2003929636477251251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (n + 1) * A164349 (A101402 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246439.P2003929636477251251

namespace A246439

/-- `record[A101402(n+1)*A164349(A101402(n+1))]` -/
def P2003929636477251251.Spec : Prop :=
  ∀ n, P2003929636477251251.a n = A246439 (n + 1)

end A246439

/-!
# A246440: Nonnegative integers k satisfying cos(k) > sec(k+1).

The programs for A246440, the canonical program `A246440.P10567151151680108669` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246440 has offset 1).

The definition of A246440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246440.P10567151151680108669

`lt[cos(n+1), 0]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246440

/-- `lt[cos(n+1), 0]` -/
def P10567151151680108669.Spec : Prop :=
  ∀ n, (P10567151151680108669.a n : ℤ) = A246440 (n + 1)

theorem P10567151151680108669.correct : P10567151151680108669.Spec := by
  intro n
  simp only [A246440, Nat.add_sub_cancel]

end A246440

/-! ## A246440.P11950332101686205224

`lt[cos(n), 0]-1`
-/

namespace A246440.P11950332101686205224
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℤ) - 1

end

end A246440.P11950332101686205224

namespace A246440

/-- `lt[cos(n), 0]-1` -/
def P11950332101686205224.Spec : Prop :=
  ∀ n, P11950332101686205224.a n = A246440 (n + 1)

end A246440

/-! ## A246440.P7591713640768799321

`lt[0, sin(10-n)]`
-/

namespace A246440.P7591713640768799321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (10 - (n : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246440.P7591713640768799321

namespace A246440

/-- `lt[0, sin(10-n)]` -/
def P7591713640768799321.Spec : Prop :=
  ∀ n, (P7591713640768799321.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P15967033924939878129

`comp[n*ceil(cos(n+1))]`
-/

namespace A246440.P15967033924939878129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.cos (n + 1 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246440.P15967033924939878129

namespace A246440

/-- `comp[n*ceil(cos(n+1))]` -/
def P15967033924939878129.Spec : Prop :=
  ∀ n, (P15967033924939878129.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P1252045989641039924

`record[lcm(n-1, floor(cos(n)))]`
-/

namespace A246440.P1252045989641039924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) ⌊Real.cos (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246440.P1252045989641039924

namespace A246440

/-- `record[lcm(n-1, floor(cos(n)))]` -/
def P1252045989641039924.Spec : Prop :=
  ∀ n, (P1252045989641039924.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P4251819326673012590

`comp[lcm(n, ceil(cos(n+1)))]`
-/

namespace A246440.P4251819326673012590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌈Real.cos (n + 1 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246440.P4251819326673012590

namespace A246440

/-- `comp[lcm(n, ceil(cos(n+1)))]` -/
def P4251819326673012590.Spec : Prop :=
  ∀ n, (P4251819326673012590.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P13918861478799946492

`record[and(n-1, floor(cos(n)))]`
-/

namespace A246440.P13918861478799946492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) ⌊Real.cos (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246440.P13918861478799946492

namespace A246440

/-- `record[and(n-1, floor(cos(n)))]` -/
def P13918861478799946492.Spec : Prop :=
  ∀ n, P13918861478799946492.a n = A246440 (n + 1)

end A246440

/-! ## A246440.P5833289575625685788

`comp[or(n, floor(cos(n+1)))]`
-/

namespace A246440.P5833289575625685788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊Real.cos (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246440.P5833289575625685788

namespace A246440

/-- `comp[or(n, floor(cos(n+1)))]` -/
def P5833289575625685788.Spec : Prop :=
  ∀ n, (P5833289575625685788.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P5203726763014295715

`comp[xor(n, floor(cos(n+1)))]`
-/

namespace A246440.P5203726763014295715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊Real.cos (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246440.P5203726763014295715

namespace A246440

/-- `comp[xor(n, floor(cos(n+1)))]` -/
def P5203726763014295715.Spec : Prop :=
  ∀ n, (P5203726763014295715.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P11434581878739778001

`lt[1, tan((n+1)/2)²]`
-/

namespace A246440.P11434581878739778001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n + 1 : ℚ) / 2 : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246440.P11434581878739778001

namespace A246440

/-- `lt[1, tan((n+1)/2)²]` -/
def P11434581878739778001.Spec : Prop :=
  ∀ n, (P11434581878739778001.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P3425911335866436783

`lt[cot((n+1)/2)², 1]`
-/

namespace A246440.P3425911335866436783
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((n + 1 : ℚ) / 2 : ℝ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246440.P3425911335866436783

namespace A246440

/-- `lt[cot((n+1)/2)², 1]` -/
def P3425911335866436783.Spec : Prop :=
  ∀ n, (P3425911335866436783.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P4546009340658262844

`∪[A246393(n), A246396(n)]`
-/

namespace A246440.P4546009340658262844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246440.P4546009340658262844

namespace A246440

/-- `∪[A246393(n), A246396(n)]` -/
def P4546009340658262844.Spec : Prop :=
  ∀ n, (P4546009340658262844.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P17926995718313567114

`∪[A246394(n), A246396(n)]-1`
-/

namespace A246440.P17926995718313567114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A246440.P17926995718313567114

namespace A246440

/-- `∪[A246394(n), A246396(n)]-1` -/
def P17926995718313567114.Spec : Prop :=
  ∀ n, P17926995718313567114.a n = A246440 (n + 1)

end A246440

/-! ## A246440.P17808658090772092766

`lt[n, A134903(n+1)]`
-/

namespace A246440.P17808658090772092766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246440.P17808658090772092766

namespace A246440

/-- `lt[n, A134903(n+1)]` -/
def P17808658090772092766.Spec : Prop :=
  ∀ n, (P17808658090772092766.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P8656713445539879530

`lt[A134891(n+1), n+1]`
-/

namespace A246440.P8656713445539879530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134891 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246440.P8656713445539879530

namespace A246440

/-- `lt[A134891(n+1), n+1]` -/
def P8656713445539879530.Spec : Prop :=
  ∀ n, (P8656713445539879530.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P14322678368962261475

`lt[A134890(n+1), n+2]`
-/

namespace A246440.P14322678368962261475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134890 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246440.P14322678368962261475

namespace A246440

/-- `lt[A134890(n+1), n+2]` -/
def P14322678368962261475.Spec : Prop :=
  ∀ n, (P14322678368962261475.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P7404041702841405285

`lt[0, Δ[Δ[cos(n)]]]`
-/

namespace A246440.P7404041702841405285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246440.P7404041702841405285

namespace A246440

/-- `lt[0, Δ[Δ[cos(n)]]]` -/
def P7404041702841405285.Spec : Prop :=
  ∀ n, (P7404041702841405285.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P1798910979503077

`eq[0, A344858(n+1)]`
-/

namespace A246440.P1798910979503077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246440.P1798910979503077

namespace A246440

/-- `eq[0, A344858(n+1)]` -/
def P1798910979503077.Spec : Prop :=
  ∀ n, (P1798910979503077.a n : ℤ) = A246440 (n + 1)

end A246440

/-! ## A246440.P17447631062304728526

`lt[A344858(n), 1]-1`
-/

namespace A246440.P17447631062304728526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A246440.P17447631062304728526

namespace A246440

/-- `lt[A344858(n), 1]-1` -/
def P17447631062304728526.Spec : Prop :=
  ∀ n, P17447631062304728526.a n = A246440 (n + 1)

end A246440

/-! ## A246440.P3309220564447823159

`eq[A000480(n), A134824(n)]-1`
-/

namespace A246440.P3309220564447823159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A246440.P3309220564447823159

namespace A246440

/-- `eq[A000480(n), A134824(n)]-1` -/
def P3309220564447823159.Spec : Prop :=
  ∀ n, P3309220564447823159.a n = A246440 (n + 1)

end A246440

/-!
# A246441: Nonnegative integers k satisfying cos(k) < sec(k+1).

The programs for A246441, the canonical program `A246441.P8901421235311595011` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246441 has offset 1).

The definition of A246441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246441.P8901421235311595011

`lt[0, cos(n+1)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246441

/-- `lt[0, cos(n+1)]` -/
def P8901421235311595011.Spec : Prop :=
  ∀ n, (P8901421235311595011.a n : ℤ) = A246441 (n + 1)

theorem P8901421235311595011.correct : P8901421235311595011.Spec := by
  intro n
  simp only [A246441, Nat.add_sub_cancel]

end A246441

/-! ## A246441.P10890617785513891514

`lt[sin(n), sin(n+2)]`
-/

namespace A246441.P10890617785513891514
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246441.P10890617785513891514

namespace A246441

/-- `lt[sin(n), sin(n+2)]` -/
def P10890617785513891514.Spec : Prop :=
  ∀ n, (P10890617785513891514.a n : ℤ) = A246441 (n + 1)

end A246441

/-! ## A246441.P13689435345822452834

`lt[1, 1/cos(n)]-1`
-/

namespace A246441.P13689435345822452834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.cos (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n : ℤ) - 1

end

end A246441.P13689435345822452834

namespace A246441

/-- `lt[1, 1/cos(n)]-1` -/
def P13689435345822452834.Spec : Prop :=
  ∀ n, P13689435345822452834.a n = A246441 (n + 1)

end A246441

/-! ## A246441.P17757803930756459014

`record[n*ceil(cos(n+1))]`
-/

namespace A246441.P17757803930756459014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.cos (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246441.P17757803930756459014

namespace A246441

/-- `record[n*ceil(cos(n+1))]` -/
def P17757803930756459014.Spec : Prop :=
  ∀ n, P17757803930756459014.a n = A246441 (n + 1)

end A246441

/-! ## A246441.P4478752395109045956

`record[lcm(n, ceil(cos(n+1)))]`
-/

namespace A246441.P4478752395109045956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌈Real.cos (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246441.P4478752395109045956

namespace A246441

/-- `record[lcm(n, ceil(cos(n+1)))]` -/
def P4478752395109045956.Spec : Prop :=
  ∀ n, (P4478752395109045956.a n : ℤ) = A246441 (n + 1)

end A246441

/-! ## A246441.P16311981825548801741

`record[or(n, floor(cos(n+1)))]`
-/

namespace A246441.P16311981825548801741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊Real.cos (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246441.P16311981825548801741

namespace A246441

/-- `record[or(n, floor(cos(n+1)))]` -/
def P16311981825548801741.Spec : Prop :=
  ∀ n, P16311981825548801741.a n = A246441 (n + 1)

end A246441

/-! ## A246441.P4875786450125046223

`record[xor(n, floor(cos(n+1)))]`
-/

namespace A246441.P4875786450125046223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊Real.cos (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246441.P4875786450125046223

namespace A246441

/-- `record[xor(n, floor(cos(n+1)))]` -/
def P4875786450125046223.Spec : Prop :=
  ∀ n, P4875786450125046223.a n = A246441 (n + 1)

end A246441

/-! ## A246441.P15374540285648843580

`lt[tan((n+1)/2)², 1]`
-/

namespace A246441.P15374540285648843580
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n + 1 : ℚ) / 2 : ℝ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246441.P15374540285648843580

namespace A246441

/-- `lt[tan((n+1)/2)², 1]` -/
def P15374540285648843580.Spec : Prop :=
  ∀ n, (P15374540285648843580.a n : ℤ) = A246441 (n + 1)

end A246441

/-! ## A246441.P13899140696251024637

`lt[1, cot((n+1)/2)²]`
-/

namespace A246441.P13899140696251024637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((n + 1 : ℚ) / 2 : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246441.P13899140696251024637

namespace A246441

/-- `lt[1, cot((n+1)/2)²]` -/
def P13899140696251024637.Spec : Prop :=
  ∀ n, (P13899140696251024637.a n : ℤ) = A246441 (n + 1)

end A246441

/-! ## A246441.P13218015410601395328

`eq[abs(cos(n+1)), cos(n+1)]`
-/

namespace A246441.P13218015410601395328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (n + 1 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246441.P13218015410601395328

namespace A246441

/-- `eq[abs(cos(n+1)), cos(n+1)]` -/
def P13218015410601395328.Spec : Prop :=
  ∀ n, (P13218015410601395328.a n : ℤ) = A246441 (n + 1)

end A246441

/-! ## A246441.P8440037804992523063

`lt[cos(n-3), tanh(sin(n-2))]`
-/

namespace A246441.P8440037804992523063
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℤ) - 3 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (Real.sin ((n : ℤ) - 2 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246441.P8440037804992523063

namespace A246441

/-- `lt[cos(n-3), tanh(sin(n-2))]` -/
def P8440037804992523063.Spec : Prop :=
  ∀ n, (P8440037804992523063.a n : ℤ) = A246441 (n + 1)

end A246441

/-! ## A246441.P7544892811378368911

`lt[-cos(2*n-(n-1)), 0]`
-/

namespace A246441.P7544892811378368911
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cos ((2 * n : ℤ) - ((n : ℤ) - 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246441.P7544892811378368911

namespace A246441

/-- `lt[-cos(2*n-(n-1)), 0]` -/
def P7544892811378368911.Spec : Prop :=
  ∀ n, (P7544892811378368911.a n : ℤ) = A246441 (n + 1)

theorem P7544892811378368911.correct : P7544892811378368911.Spec := by
  intro n
  simp only [A246441, Nat.add_sub_cancel, A246441.P7544892811378368911.f1, A246441.P7544892811378368911.f2, A246441.P7544892811378368911.a, A246441.P8901421235311595011.f1, A246441.P8901421235311595011.f2, A246441.P8901421235311595011.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A246441

/-! ## A246441.P2808470600998080862

`comp[A246440(n+1)]`
-/

namespace A246441.P2808470600998080862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246441.P2808470600998080862

namespace A246441

/-- `comp[A246440(n+1)]` -/
def P2808470600998080862.Spec : Prop :=
  ∀ n, (P2808470600998080862.a n : ℤ) = A246441 (n + 1)

end A246441

/-! ## A246441.P198639652381357784

`∪[A246394(n), A246395(n)]`
-/

namespace A246441.P198639652381357784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246441.P198639652381357784

namespace A246441

/-- `∪[A246394(n), A246395(n)]` -/
def P198639652381357784.Spec : Prop :=
  ∀ n, (P198639652381357784.a n : ℤ) = A246441 (n + 1)

end A246441

/-! ## A246441.P16970857052421117790

`A131503(n+2)-1`
-/

namespace A246441.P16970857052421117790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 2) - 1

end

end A246441.P16970857052421117790

namespace A246441

/-- `A131503(n+2)-1` -/
def P16970857052421117790.Spec : Prop :=
  ∀ n, P16970857052421117790.a n = A246441 (n + 1)

end A246441

/-! ## A246441.P6768708666573295933

`A026312(n+4)-6`
-/

namespace A246441.P6768708666573295933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026312 (n + 4) - 6

end

end A246441.P6768708666573295933

namespace A246441

/-- `A026312(n+4)-6` -/
def P6768708666573295933.Spec : Prop :=
  ∀ n, P6768708666573295933.a n = A246441 (n + 1)

end A246441

/-! ## A246441.P4385504211019336176

`lt[Δ[Δ[cos(n)]], 0]`
-/

namespace A246441.P4385504211019336176
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℝ)) n

end

end A246441.P4385504211019336176

namespace A246441

/-- `lt[Δ[Δ[cos(n)]], 0]` -/
def P4385504211019336176.Spec : Prop :=
  ∀ n, (P4385504211019336176.a n : ℤ) = A246441 (n + 1)

end A246441

/-! ## A246441.P7142797348218207952

`lt[n, A134891(n+1)]`
-/

namespace A246441.P7142797348218207952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246441.P7142797348218207952

namespace A246441

/-- `lt[n, A134891(n+1)]` -/
def P7142797348218207952.Spec : Prop :=
  ∀ n, (P7142797348218207952.a n : ℤ) = A246441 (n + 1)

end A246441

/-! ## A246441.P18015444247363958993

`lt[A000007(n), cos(n)]-1`
-/

namespace A246441.P18015444247363958993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n : ℤ) - 1

end

end A246441.P18015444247363958993

namespace A246441

/-- `lt[A000007(n), cos(n)]-1` -/
def P18015444247363958993.Spec : Prop :=
  ∀ n, P18015444247363958993.a n = A246441 (n + 1)

end A246441

/-! ## A246441.P12019776228956868377

`lt[1, A344858(n+1)+1]`
-/

namespace A246441.P12019776228956868377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246441.P12019776228956868377

namespace A246441

/-- `lt[1, A344858(n+1)+1]` -/
def P12019776228956868377.Spec : Prop :=
  ∀ n, (P12019776228956868377.a n : ℤ) = A246441 (n + 1)

end A246441

/-!
# A246442: Nonnegative integers k satisfying cos(k)*sin(k+1) < 0.

The programs for A246442, the canonical program `A246442.P6002161064497421734` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246442 has offset 1).

The definition of A246442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246442.P6002161064497421734

`lt[tan(n), cot(12)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246442

/-- `lt[tan(n), cot(12)]` -/
def P6002161064497421734.Spec : Prop :=
  ∀ n, (P6002161064497421734.a n : ℤ) = A246442 (n + 1)

theorem P6002161064497421734.correct : P6002161064497421734.Spec := by
  intro n
  simp only [A246442, Nat.add_sub_cancel]

end A246442

/-! ## A246442.P2621179900889160231

`lt[(tan(n)+3)^3, 3]`
-/

namespace A246442.P2621179900889160231
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.tan (n : ℝ) + 3) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246442.P2621179900889160231

namespace A246442

/-- `lt[(tan(n)+3)^3, 3]` -/
def P2621179900889160231.Spec : Prop :=
  ∀ n, (P2621179900889160231.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P351154900707599371

`lt[acos(0), cot(-(n+1))]`
-/

namespace A246442.P351154900707599371
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (0 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (-(n + 1 : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246442.P351154900707599371

namespace A246442

/-- `lt[acos(0), cot(-(n+1))]` -/
def P351154900707599371.Spec : Prop :=
  ∀ n, (P351154900707599371.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P14794863822228678432

`lt[asin(1), cot(-(n+1))]`
-/

namespace A246442.P14794863822228678432
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (-(n + 1 : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246442.P14794863822228678432

namespace A246442

/-- `lt[asin(1), cot(-(n+1))]` -/
def P14794863822228678432.Spec : Prop :=
  ∀ n, (P14794863822228678432.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P9827761010566562046

`lt[1, atan(cot(-(n+1)))]`
-/

namespace A246442.P9827761010566562046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Real.cot (-(n + 1 : ℤ) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246442.P9827761010566562046

namespace A246442

/-- `lt[1, atan(cot(-(n+1)))]` -/
def P9827761010566562046.Spec : Prop :=
  ∀ n, (P9827761010566562046.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P15670309265410024472

`lt[acot(tan(n+1))+2, 1]`
-/

namespace A246442.P15670309265410024472
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.tan (n + 1 : ℝ)) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246442.P15670309265410024472

namespace A246442

/-- `lt[acot(tan(n+1))+2, 1]` -/
def P15670309265410024472.Spec : Prop :=
  ∀ n, (P15670309265410024472.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P17899761230233704380

`lt[(cot(n+1)+3)^3, 3]`
-/

namespace A246442.P17899761230233704380
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.cot (n + 1 : ℝ) + 3) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246442.P17899761230233704380

namespace A246442

/-- `lt[(cot(n+1)+3)^3, 3]` -/
def P17899761230233704380.Spec : Prop :=
  ∀ n, (P17899761230233704380.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P10146808592186971624

`∩[A108589(n+1), A257984(n+1)]`
-/

namespace A246442.P10146808592186971624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P10146808592186971624

namespace A246442

/-- `∩[A108589(n+1), A257984(n+1)]` -/
def P10146808592186971624.Spec : Prop :=
  ∀ n, (P10146808592186971624.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P17393785053140071874

`∩[A108589(n+1), A121381(n)-2]`
-/

namespace A246442.P17393785053140071874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P17393785053140071874

namespace A246442

/-- `∩[A108589(n+1), A121381(n)-2]` -/
def P17393785053140071874.Spec : Prop :=
  ∀ n, (P17393785053140071874.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P521362993384659610

`∩[A004084(n+1)-2, A108589(n+1)]`
-/

namespace A246442.P521362993384659610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P521362993384659610

namespace A246442

/-- `∩[A004084(n+1)-2, A108589(n+1)]` -/
def P521362993384659610.Spec : Prop :=
  ∀ n, (P521362993384659610.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P14523363240395430143

`∩[A026314(n+1)+1, A108589(n+1)]`
-/

namespace A246442.P14523363240395430143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026314 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P14523363240395430143

namespace A246442

/-- `∩[A026314(n+1)+1, A108589(n+1)]` -/
def P14523363240395430143.Spec : Prop :=
  ∀ n, (P14523363240395430143.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P5071885158808802189

`∩[A026315(n+1)+2, A108589(n+1)]`
-/

namespace A246442.P5071885158808802189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026315 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P5071885158808802189

namespace A246442

/-- `∩[A026315(n+1)+2, A108589(n+1)]` -/
def P5071885158808802189.Spec : Prop :=
  ∀ n, (P5071885158808802189.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P3758043811184976418

`∩[A108589(n+1), A327138(n+1)]`
-/

namespace A246442.P3758043811184976418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P3758043811184976418

namespace A246442

/-- `∩[A108589(n+1), A327138(n+1)]` -/
def P3758043811184976418.Spec : Prop :=
  ∀ n, (P3758043811184976418.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P18168257883116288797

`∩[A108589(n+1), A327422(n+1)+1]`
-/

namespace A246442.P18168257883116288797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P18168257883116288797

namespace A246442

/-- `∩[A108589(n+1), A327422(n+1)+1]` -/
def P18168257883116288797.Spec : Prop :=
  ∀ n, (P18168257883116288797.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P9300347614464136606

`∩[A026313(n+1)+1, A108589(n+1)]`
-/

namespace A246442.P9300347614464136606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026313 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P9300347614464136606

namespace A246442

/-- `∩[A026313(n+1)+1, A108589(n+1)]` -/
def P9300347614464136606.Spec : Prop :=
  ∀ n, (P9300347614464136606.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P6021709621971211614

`∩[A108589(n+1), A117672(n+1)]`
-/

namespace A246442.P6021709621971211614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P6021709621971211614

namespace A246442

/-- `∩[A108589(n+1), A117672(n+1)]` -/
def P6021709621971211614.Spec : Prop :=
  ∀ n, (P6021709621971211614.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P9634832168395950314

`∩[A054386(n+1), A257984(n+1)]`
-/

namespace A246442.P9634832168395950314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P9634832168395950314

namespace A246442

/-- `∩[A054386(n+1), A257984(n+1)]` -/
def P9634832168395950314.Spec : Prop :=
  ∀ n, (P9634832168395950314.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P17808136009437710885

`∩[A108589(n+1), A258048(n)-2]`
-/

namespace A246442.P17808136009437710885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P17808136009437710885

namespace A246442

/-- `∩[A108589(n+1), A258048(n)-2]` -/
def P17808136009437710885.Spec : Prop :=
  ∀ n, (P17808136009437710885.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P3424837027875847192

`∩[A108589(n+1), A246450(n+1)]`
-/

namespace A246442.P3424837027875847192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246442.P3424837027875847192

namespace A246442

/-- `∩[A108589(n+1), A246450(n+1)]` -/
def P3424837027875847192.Spec : Prop :=
  ∀ n, (P3424837027875847192.a n : ℤ) = A246442 (n + 1)

end A246442

/-! ## A246442.P979197494935555806

`lt[1, ratio[acot(tan(n))]]`
-/

namespace A246442.P979197494935555806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.tan (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246442.P979197494935555806

namespace A246442

/-- `lt[1, ratio[acot(tan(n))]]` -/
def P979197494935555806.Spec : Prop :=
  ∀ n, (P979197494935555806.a n : ℤ) = A246442 (n + 1)

end A246442

/-!
# A246443: Nonnegative integers k satisfying cos(k)*sin(k+1) > 0.

The programs for A246443, the canonical program `A246443.P10823115994232290524` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246443 has offset 1).

The definition of A246443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246443.P10823115994232290524

`lt[cot(12), tan(n)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246443

/-- `lt[cot(12), tan(n)]` -/
def P10823115994232290524.Spec : Prop :=
  ∀ n, (P10823115994232290524.a n : ℤ) = A246443 (n + 1)

theorem P10823115994232290524.correct : P10823115994232290524.Spec := by
  intro n
  simp only [A246443, Nat.add_sub_cancel]

end A246443

/-! ## A246443.P6431609950453167008

`lt[cot(12), cot(n+1)]`
-/

namespace A246443.P6431609950453167008
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (12 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246443.P6431609950453167008

namespace A246443

/-- `lt[cot(12), cot(n+1)]` -/
def P6431609950453167008.Spec : Prop :=
  ∀ n, (P6431609950453167008.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P17422831518620494002

`lt[tan(tan(2)^3), tan(n)]`
-/

namespace A246443.P17422831518620494002
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Real.tan (2 : ℝ) ^ 3)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246443.P17422831518620494002

namespace A246443

/-- `lt[tan(tan(2)^3), tan(n)]` -/
def P17422831518620494002.Spec : Prop :=
  ∀ n, (P17422831518620494002.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P12795822321742321322

`lt[tan(1-4/2), tan(n)]`
-/

namespace A246443.P12795822321742321322
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 - (4 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246443.P12795822321742321322

namespace A246443

/-- `lt[tan(1-4/2), tan(n)]` -/
def P12795822321742321322.Spec : Prop :=
  ∀ n, (P12795822321742321322.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P18231226718622955547

`lt[sin(23), sin(2*n+1)]`
-/

namespace A246443.P18231226718622955547
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (23 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246443.P18231226718622955547

namespace A246443

/-- `lt[sin(23), sin(2*n+1)]` -/
def P18231226718622955547.Spec : Prop :=
  ∀ n, (P18231226718622955547.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P12352543631749063413

`comp[A246442(n+1)]`
-/

namespace A246443.P12352543631749063413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246443.P12352543631749063413

namespace A246443

/-- `comp[A246442(n+1)]` -/
def P12352543631749063413.Spec : Prop :=
  ∀ n, (P12352543631749063413.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P1280449263335410191

`∪[A121381(n), A140758(n)]`
-/

namespace A246443.P1280449263335410191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246443.P1280449263335410191

namespace A246443

/-- `∪[A121381(n), A140758(n)]` -/
def P1280449263335410191.Spec : Prop :=
  ∀ n, (P1280449263335410191.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P12793710817294066297

`∪[A022844(n), A258048(n)]`
-/

namespace A246443.P12793710817294066297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246443.P12793710817294066297

namespace A246443

/-- `∪[A022844(n), A258048(n)]` -/
def P12793710817294066297.Spec : Prop :=
  ∀ n, (P12793710817294066297.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P2394920983623775921

`∪[A140758(n), A258048(n)]`
-/

namespace A246443.P2394920983623775921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246443.P2394920983623775921

namespace A246443

/-- `∪[A140758(n), A258048(n)]` -/
def P2394920983623775921.Spec : Prop :=
  ∀ n, (P2394920983623775921.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P13244003215717070578

`∪[A004084(n+1), A140758(n)]`
-/

namespace A246443.P13244003215717070578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246443.P13244003215717070578

namespace A246443

/-- `∪[A004084(n+1), A140758(n)]` -/
def P13244003215717070578.Spec : Prop :=
  ∀ n, (P13244003215717070578.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P1913102450183737079

`∪[A026313(n+1), A140758(n)]`
-/

namespace A246443.P1913102450183737079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246443.P1913102450183737079

namespace A246443

/-- `∪[A026313(n+1), A140758(n)]` -/
def P1913102450183737079.Spec : Prop :=
  ∀ n, (P1913102450183737079.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P9931692279412144860

`∪[A026314(n+1), A140758(n)]`
-/

namespace A246443.P9931692279412144860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246443.P9931692279412144860

namespace A246443

/-- `∪[A026314(n+1), A140758(n)]` -/
def P9931692279412144860.Spec : Prop :=
  ∀ n, (P9931692279412144860.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P16515646079740942683

`∪[A026315(n+1), A140758(n)]`
-/

namespace A246443.P16515646079740942683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246443.P16515646079740942683

namespace A246443

/-- `∪[A026315(n+1), A140758(n)]` -/
def P16515646079740942683.Spec : Prop :=
  ∀ n, (P16515646079740942683.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P14603796669642370686

`∪[A327422(n+1), A022844(n)]`
-/

namespace A246443.P14603796669642370686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246443.P14603796669642370686

namespace A246443

/-- `∪[A327422(n+1), A022844(n)]` -/
def P14603796669642370686.Spec : Prop :=
  ∀ n, (P14603796669642370686.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P16325105022517826143

`∪[A246451(n+1), A140758(n)]`
-/

namespace A246443.P16325105022517826143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246443.P16325105022517826143

namespace A246443

/-- `∪[A246451(n+1), A140758(n)]` -/
def P16325105022517826143.Spec : Prop :=
  ∀ n, (P16325105022517826143.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P17288970458220707162

`∪[A327422(n+1), A140758(n)]`
-/

namespace A246443.P17288970458220707162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246443.P17288970458220707162

namespace A246443

/-- `∪[A327422(n+1), A140758(n)]` -/
def P17288970458220707162.Spec : Prop :=
  ∀ n, (P17288970458220707162.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P15099910847116624512

`lt[ratio[acot(tan(n))], 1]`
-/

namespace A246443.P15099910847116624512
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.tan (n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246443.P15099910847116624512

namespace A246443

/-- `lt[ratio[acot(tan(n))], 1]` -/
def P15099910847116624512.Spec : Prop :=
  ∀ n, (P15099910847116624512.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P4915246499991825058

`lt[0, ∑[cos(2*n)]]`
-/

namespace A246443.P4915246499991825058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246443.P4915246499991825058

namespace A246443

/-- `lt[0, ∑[cos(2*n)]]` -/
def P4915246499991825058.Spec : Prop :=
  ∀ n, (P4915246499991825058.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P16266903932723178403

`lt[1, ∏[exp(cos(2*n))]]`
-/

namespace A246443.P16266903932723178403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.cos (2 * n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246443.P16266903932723178403

namespace A246443

/-- `lt[1, ∏[exp(cos(2*n))]]` -/
def P16266903932723178403.Spec : Prop :=
  ∀ n, (P16266903932723178403.a n : ℤ) = A246443 (n + 1)

end A246443

/-! ## A246443.P2375978080835360993

`lt[Δ[tan(cos(2*n))], 2]`
-/

namespace A246443.P2375978080835360993
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Real.cos (2 * n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246443.P2375978080835360993

namespace A246443

/-- `lt[Δ[tan(cos(2*n))], 2]` -/
def P2375978080835360993.Spec : Prop :=
  ∀ n, (P2375978080835360993.a n : ℤ) = A246443 (n + 1)

end A246443

/-!
# A246444: Nonnegative integers k satisfying sin(k) > sec(k).

The programs for A246444, the canonical program `A246444.P16006796968537660622` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246444 has offset 1).

The definition of A246444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246444.P6109632312694004197

`lt[cos(n), 0]`
-/

namespace A246444.P6109632312694004197
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246444.P6109632312694004197

namespace A246444

/-- `lt[cos(n), 0]` -/
def P6109632312694004197.Spec : Prop :=
  ∀ n, (P6109632312694004197.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P8211976370602143813

`comp[n*ceil(cos(n))]`
-/

namespace A246444.P8211976370602143813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.cos (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246444.P8211976370602143813

namespace A246444

/-- `comp[n*ceil(cos(n))]` -/
def P8211976370602143813.Spec : Prop :=
  ∀ n, (P8211976370602143813.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P6591372963589929253

`comp[lcm(n, ceil(cos(n)))]`
-/

namespace A246444.P6591372963589929253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌈Real.cos (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246444.P6591372963589929253

namespace A246444

/-- `comp[lcm(n, ceil(cos(n)))]` -/
def P6591372963589929253.Spec : Prop :=
  ∀ n, (P6591372963589929253.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P10844122093256577764

`comp[C(n, ceil(cos(n)))]`
-/

namespace A246444.P10844122093256577764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌈Real.cos (n : ℝ)⌉.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246444.P10844122093256577764

namespace A246444

/-- `comp[C(n, ceil(cos(n)))]` -/
def P10844122093256577764.Spec : Prop :=
  ∀ n, (P10844122093256577764.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P15877201023945768222

`lt[1, tan(n/2)²]`
-/

namespace A246444.P15877201023945768222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℚ) / 2 : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246444.P15877201023945768222

namespace A246444

/-- `lt[1, tan(n/2)²]` -/
def P15877201023945768222.Spec : Prop :=
  ∀ n, (P15877201023945768222.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P8773807040216971207

`record[lcm(n+2, floor(cos(n+2)))]`
-/

namespace A246444.P8773807040216971207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) ⌊Real.cos (n + 2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246444.P8773807040216971207

namespace A246444

/-- `record[lcm(n+2, floor(cos(n+2)))]` -/
def P8773807040216971207.Spec : Prop :=
  ∀ n, (P8773807040216971207.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P12013410866544717609

`record[and(n+2, floor(cos(n+2)))]`
-/

namespace A246444.P12013410866544717609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) ⌊Real.cos (n + 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246444.P12013410866544717609

namespace A246444

/-- `record[and(n+2, floor(cos(n+2)))]` -/
def P12013410866544717609.Spec : Prop :=
  ∀ n, P12013410866544717609.a n = A246444 (n + 1)

end A246444

/-! ## A246444.P156428125397994040

`comp[lt[sin(n-1), sin(n+1)]]`
-/

namespace A246444.P156428125397994040
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℤ) - 1 : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246444.P156428125397994040

namespace A246444

/-- `comp[lt[sin(n-1), sin(n+1)]]` -/
def P156428125397994040.Spec : Prop :=
  ∀ n, (P156428125397994040.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P16006796968537660622

`eq[0, A344858(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246444

/-- `eq[0, A344858(n)]` -/
def P16006796968537660622.Spec : Prop :=
  ∀ n, (P16006796968537660622.a n : ℤ) = A246444 (n + 1)

theorem P16006796968537660622.correct : P16006796968537660622.Spec := by
  intro n
  simp only [A246444, Nat.add_sub_cancel]

end A246444

/-! ## A246444.P6260701785239535590

`comp[A131503(n+1)]`
-/

namespace A246444.P6260701785239535590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246444.P6260701785239535590

namespace A246444

/-- `comp[A131503(n+1)]` -/
def P6260701785239535590.Spec : Prop :=
  ∀ n, (P6260701785239535590.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P14780406206299650556

`A246440(n+1)+1`
-/

namespace A246444.P14780406206299650556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 1) + 1

end

end A246444.P14780406206299650556

namespace A246444

/-- `A246440(n+1)+1` -/
def P14780406206299650556.Spec : Prop :=
  ∀ n, P14780406206299650556.a n = A246444 (n + 1)

end A246444

/-! ## A246444.P5330844982914890617

`comp[A246441(n+1)]+1`
-/

namespace A246444.P5330844982914890617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A246444.P5330844982914890617

namespace A246444

/-- `comp[A246441(n+1)]+1` -/
def P5330844982914890617.Spec : Prop :=
  ∀ n, (P5330844982914890617.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P6906839679280204351

`lt[n, A134903(n+1)]+1`
-/

namespace A246444.P6906839679280204351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246444.P6906839679280204351

namespace A246444

/-- `lt[n, A134903(n+1)]+1` -/
def P6906839679280204351.Spec : Prop :=
  ∀ n, (P6906839679280204351.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P5213770512040155806

`lt[A134891(abs(1-n)+1), n]`
-/

namespace A246444.P5213770512040155806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134891 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246444.P5213770512040155806

namespace A246444

/-- `lt[A134891(abs(1-n)+1), n]` -/
def P5213770512040155806.Spec : Prop :=
  ∀ n, (P5213770512040155806.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P10046224834653422054

`lt[A134890(n+1), n+2]+1`
-/

namespace A246444.P10046224834653422054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134890 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246444.P10046224834653422054

namespace A246444

/-- `lt[A134890(n+1), n+2]+1` -/
def P10046224834653422054.Spec : Prop :=
  ∀ n, (P10046224834653422054.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P7557031443245689135

`A020725(A246440(n+1))`
-/

namespace A246444.P7557031443245689135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A246440 (n + 1)).toNat

end

end A246444.P7557031443245689135

namespace A246444

/-- `A020725(A246440(n+1))` -/
def P7557031443245689135.Spec : Prop :=
  ∀ n, P7557031443245689135.a n = A246444 (n + 1)

end A246444

/-! ## A246444.P15914864368437879067

`eq[A000480(n), A134824(n)]`
-/

namespace A246444.P15914864368437879067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246444.P15914864368437879067

namespace A246444

/-- `eq[A000480(n), A134824(n)]` -/
def P15914864368437879067.Spec : Prop :=
  ∀ n, (P15914864368437879067.a n : ℤ) = A246444 (n + 1)

end A246444

/-! ## A246444.P640162389853326882

`∪[A246394(n), A246396(n)]`
-/

namespace A246444.P640162389853326882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246444.P640162389853326882

namespace A246444

/-- `∪[A246394(n), A246396(n)]` -/
def P640162389853326882.Spec : Prop :=
  ∀ n, (P640162389853326882.a n : ℤ) = A246444 (n + 1)

end A246444

/-!
# A246445: Numbers of the form (x^y - x)/y for positive x,y.

The programs for A246445, there is no canonical definition to state claims against.
-/

/-! ## A246445.P11727451032888272275

`eq[1, A122865(A267019(n+1))]`
-/

namespace A246445.P11727451032888272275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (A267019 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246445.P11727451032888272275

/-! ## A246445.P1368655429432698493

`eq[A306713(n), A316980(A017847(n))]`
-/

namespace A246445.P1368655429432698493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316980 (A017847 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246445.P1368655429432698493

/-! ## A246445.P12493963664523079853

`lt[A003415(A125105(n+1)), A003415(3*n+2)]`
-/

namespace A246445.P12493963664523079853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A125105 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246445.P12493963664523079853

/-!
# A246446: Number of nonhamiltonian graphs with n nodes.

The programs for A246446, there is no canonical definition to state claims against.
-/

/-! ## A246446.P14198498445298782422

`A000088(n+1)-A003216(n+1)`
-/

namespace A246446.P14198498445298782422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A003216 (n + 1)

end

end A246446.P14198498445298782422

/-! ## A246446.P12872206965188580988

`Δ[A006897(n)]-A003216(n+1)`
-/

namespace A246446.P12872206965188580988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003216 (n + 1)

end

end A246446.P12872206965188580988

/-! ## A246446.P3247991868592114457

`A126149(n+1)+A000719(n+1)`
-/

namespace A246446.P3247991868592114457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126149 (n + 1) + A000719 (n + 1)

end

end A246446.P3247991868592114457

/-! ## A246446.P18086610684367760826

`A006897(n+1)-(A006897(n)+A003216(n+1))`
-/

namespace A246446.P18086610684367760826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 (n + 1) - (A006897 n + A003216 (n + 1))

end

end A246446.P18086610684367760826

/-! ## A246446.P4534506256236219011

`Δ[A006897(n)]-(A001349(n+1)-A126149(n+1))`
-/

namespace A246446.P4534506256236219011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A001349 (n + 1) - A126149 (n + 1))

end

end A246446.P4534506256236219011

/-!
# A246447: The odd primes squared plus 1 and the composites squared minus 1.

The programs for A246447, the canonical program `A246447.P1059127038919390337` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246447 has offset 1).

The definition of A246447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246447.P15868637377127702938

`A008683(A107286(n+3))+(n+3)²`
-/

namespace A246447.P15868637377127702938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A107286 (n + 3)).toNat + ((n + 3) ^ 2 : ℤ)

end

end A246447.P15868637377127702938

namespace A246447

/-- `A008683(A107286(n+3))+(n+3)²` -/
def P15868637377127702938.Spec : Prop :=
  ∀ n, P15868637377127702938.a n = A246447 (n + 1)

end A246447

/-! ## A246447.P12923949039372043951

`(n+3)²-Δ[A072731(n+2)]`
-/

namespace A246447.P12923949039372043951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072731 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A246447.P12923949039372043951

namespace A246447

/-- `(n+3)²-Δ[A072731(n+2)]` -/
def P12923949039372043951.Spec : Prop :=
  ∀ n, P12923949039372043951.a n = A246447 (n + 1)

end A246447

/-! ## A246447.P8583330714605032147

`(n+3)²-Δ[A097454(n+2)]`
-/

namespace A246447.P8583330714605032147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097454 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A246447.P8583330714605032147

namespace A246447

/-- `(n+3)²-Δ[A097454(n+2)]` -/
def P8583330714605032147.Spec : Prop :=
  ∀ n, P8583330714605032147.a n = A246447 (n + 1)

end A246447

/-! ## A246447.P1059127038919390337

`(n+3)²-Δ[A118777(n+2)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246447

/-- `(n+3)²-Δ[A118777(n+2)]` -/
def P1059127038919390337.Spec : Prop :=
  ∀ n, P1059127038919390337.a n = A246447 (n + 1)

theorem P1059127038919390337.correct : P1059127038919390337.Spec := by
  intro n
  simp only [A246447, Nat.add_sub_cancel]

end A246447

/-! ## A246447.P7684177378922292953

`(n+3)²-A008683(A089026(n+3))`
-/

namespace A246447.P7684177378922292953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A008683 (A089026 (n + 3)).toNat

end

end A246447.P7684177378922292953

namespace A246447

/-- `(n+3)²-A008683(A089026(n+3))` -/
def P7684177378922292953.Spec : Prop :=
  ∀ n, P7684177378922292953.a n = A246447 (n + 1)

end A246447

/-! ## A246447.P12052443046436371706

`(n+3)²-A260196(A055672(n+3))`
-/

namespace A246447.P12052443046436371706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A260196 (A055672 (n + 3)).toNat

end

end A246447.P12052443046436371706

namespace A246447

/-- `(n+3)²-A260196(A055672(n+3))` -/
def P12052443046436371706.Spec : Prop :=
  ∀ n, P12052443046436371706.a n = A246447 (n + 1)

end A246447

/-! ## A246447.P3824398920289549615

`A005563(n+2)+2*A080339(n+3)`
-/

namespace A246447.P3824398920289549615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 2) + 2 * A080339 (n + 3)

end

end A246447.P3824398920289549615

namespace A246447

/-- `A005563(n+2)+2*A080339(n+3)` -/
def P3824398920289549615.Spec : Prop :=
  ∀ n, P3824398920289549615.a n = A246447 (n + 1)

end A246447

/-! ## A246447.P16979158602314211330

`A005563(n+3)-A005408(A014684(n+3))`
-/

namespace A246447.P16979158602314211330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 3) - A005408 (A014684 (n + 3)).toNat

end

end A246447.P16979158602314211330

namespace A246447

/-- `A005563(n+3)-A005408(A014684(n+3))` -/
def P16979158602314211330.Spec : Prop :=
  ∀ n, P16979158602314211330.a n = A246447 (n + 1)

end A246447

/-! ## A246447.P7995016299723475049

`A105700(2*(n+3))+A005563(n+2)`
-/

namespace A246447.P7995016299723475049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * (n + 3)) + A005563 (n + 2)

end

end A246447.P7995016299723475049

namespace A246447

/-- `A105700(2*(n+3))+A005563(n+2)` -/
def P7995016299723475049.Spec : Prop :=
  ∀ n, P7995016299723475049.a n = A246447 (n + 1)

end A246447

/-! ## A246447.P9483683707791925663

`A000037(A010051(n+3)+A002378(n+2))`
-/

namespace A246447.P9483683707791925663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A010051 (n + 3) + A002378 (n + 2)).toNat

end

end A246447.P9483683707791925663

namespace A246447

/-- `A000037(A010051(n+3)+A002378(n+2))` -/
def P9483683707791925663.Spec : Prop :=
  ∀ n, P9483683707791925663.a n = A246447 (n + 1)

end A246447

/-!
# A246448: Numbers n such that a square will never end in the digits of n.

The programs for A246448, there is no canonical definition to state claims against.
-/

/-! ## A246448.P12937577442459375196

`comp[A316347(n)]`
-/

namespace A246448.P12937577442459375196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246448.P12937577442459375196

/-! ## A246448.P5735254666345111130

`comp[A071176(n+1)]`
-/

namespace A246448.P5735254666345111130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246448.P5735254666345111130

/-! ## A246448.P12925399300378800526

`comp[A238712(n+1)]`
-/

namespace A246448.P12925399300378800526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246448.P12925399300378800526

/-! ## A246448.P8633318078287488232

`lt[char[A316347(n+2)], 1]`
-/

namespace A246448.P8633318078287488232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A246448.P8633318078287488232

/-! ## A246448.P14254690566644565823

`eq[0, A246560(n+1)]+1`
-/

namespace A246448.P14254690566644565823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246560 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246448.P14254690566644565823

/-! ## A246448.P10856774138245623318

`eq[0, A246560(n^floor(atan(n)))]`
-/

namespace A246448.P10856774138245623318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246448.P10856774138245623318

/-! ## A246448.P2063933872563862110

`comp[n²%A165831(2*n+3)]`
-/

namespace A246448.P2063933872563862110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A165831 (2 * n + 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246448.P2063933872563862110

/-! ## A246448.P6358763269552583709

`A028813(A057544(n+1))`
-/

namespace A246448.P6358763269552583709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028813 (A057544 (n + 1)).toNat

end

end A246448.P6358763269552583709

/-! ## A246448.P10579061251528511924

`eq[0, A246560(A028310(n))]`
-/

namespace A246448.P10579061251528511924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246560 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246448.P10579061251528511924

/-!
# A246449: Numbers k such that no cube can end in k (in the sense of the respective decimal expansions).

The programs for A246449, there is no canonical definition to state claims against.
-/

/-! ## A246449.P14442637497131368409

`lt[A077752(n), atan(n)]`
-/

namespace A246449.P14442637497131368409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246449.P14442637497131368409

/-! ## A246449.P2485469971667764977

`eq[0, A077752(n+1)]+1`
-/

namespace A246449.P2485469971667764977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246449.P2485469971667764977

/-! ## A246449.P6955539086574099992

`lt[A077744(n+1), 1]+1`
-/

namespace A246449.P6955539086574099992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077744 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246449.P6955539086574099992

/-! ## A246449.P5184535452955822975

`eq[A000038(n), A077751(n)]`
-/

namespace A246449.P5184535452955822975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P5184535452955822975

/-! ## A246449.P17828069106299928353

`eq[A000038(n), A077752(n)]`
-/

namespace A246449.P17828069106299928353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P17828069106299928353

/-! ## A246449.P9626372583044157200

`eq[A077752(n), A339579(n+1)]`
-/

namespace A246449.P9626372583044157200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P9626372583044157200

/-! ## A246449.P5831343911270123822

`eq[A000007(n), A077751(n)]`
-/

namespace A246449.P5831343911270123822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P5831343911270123822

/-! ## A246449.P7524836901052990835

`eq[A000007(n), A077752(n)]`
-/

namespace A246449.P7524836901052990835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P7524836901052990835

/-! ## A246449.P18264200830127896558

`eq[A045534(n), A077751(n)]`
-/

namespace A246449.P18264200830127896558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P18264200830127896558

/-! ## A246449.P4733345900398010188

`eq[A045534(n), A077752(n)]`
-/

namespace A246449.P4733345900398010188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P4733345900398010188

/-! ## A246449.P17063310491799248554

`eq[A066156(n), A077751(n)]`
-/

namespace A246449.P17063310491799248554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P17063310491799248554

/-! ## A246449.P11807110850098717982

`eq[A066156(n), A077752(n)]`
-/

namespace A246449.P11807110850098717982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P11807110850098717982

/-! ## A246449.P13216818743063922521

`eq[A077751(n), A130706(n)]`
-/

namespace A246449.P13216818743063922521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P13216818743063922521

/-! ## A246449.P18221259550676993462

`eq[A077751(n), A130713(n)]`
-/

namespace A246449.P18221259550676993462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P18221259550676993462

/-! ## A246449.P5783679433045877780

`eq[A077752(n), A130706(n)]`
-/

namespace A246449.P5783679433045877780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P5783679433045877780

/-! ## A246449.P17885773038733999663

`eq[A077752(n), A130713(n)]`
-/

namespace A246449.P17885773038733999663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P17885773038733999663

/-! ## A246449.P7192887465042369016

`eq[A077751(n), A143090(n)]`
-/

namespace A246449.P7192887465042369016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P7192887465042369016

/-! ## A246449.P12055076844985193675

`eq[A077752(n), A143090(n)]`
-/

namespace A246449.P12055076844985193675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P12055076844985193675

/-! ## A246449.P4282472537656475980

`eq[A077751(n), A143645(n)]`
-/

namespace A246449.P4282472537656475980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P4282472537656475980

/-! ## A246449.P9891138983047097962

`eq[A077752(n), A143645(n)]`
-/

namespace A246449.P9891138983047097962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246449.P9891138983047097962

/-!
# A246450: Nonnegative integers k satisfying sin(k)*cos(k+1) < 0.

The programs for A246450, the canonical program `A246450.P17746425195584724908` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246450 has offset 1).

The definition of A246450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246450.P17746425195584724908

`lt[acot(tan(n)), 1]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246450

/-- `lt[acot(tan(n)), 1]` -/
def P17746425195584724908.Spec : Prop :=
  ∀ n, (P17746425195584724908.a n : ℤ) = A246450 (n + 1)

theorem P17746425195584724908.correct : P17746425195584724908.Spec := by
  intro n
  simp only [A246450, Nat.add_sub_cancel]

end A246450

/-! ## A246450.P6693411201606753658

`lt[tan(n+1), tan(1)]`
-/

namespace A246450.P6693411201606753658
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246450.P6693411201606753658

namespace A246450

/-- `lt[tan(n+1), tan(1)]` -/
def P6693411201606753658.Spec : Prop :=
  ∀ n, (P6693411201606753658.a n : ℤ) = A246450 (n + 1)

end A246450

/-! ## A246450.P5366181673447156747

`lt[sin(2*n+1), sin(1)]`
-/

namespace A246450.P5366181673447156747
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246450.P5366181673447156747

namespace A246450

/-- `lt[sin(2*n+1), sin(1)]` -/
def P5366181673447156747.Spec : Prop :=
  ∀ n, (P5366181673447156747.a n : ℤ) = A246450 (n + 1)

end A246450

/-! ## A246450.P11544573113383918280

`∪[A140758(n+1), A026313(n+2)+1]`
-/

namespace A246450.P11544573113383918280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026313 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246450.P11544573113383918280

namespace A246450

/-- `∪[A140758(n+1), A026313(n+2)+1]` -/
def P11544573113383918280.Spec : Prop :=
  ∀ n, (P11544573113383918280.a n : ℤ) = A246450 (n + 1)

end A246450

/-! ## A246450.P13748015401876959564

`∪[A121381(n+1)-2, A140758(n+1)]`
-/

namespace A246450.P13748015401876959564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246450.P13748015401876959564

namespace A246450

/-- `∪[A121381(n+1)-2, A140758(n+1)]` -/
def P13748015401876959564.Spec : Prop :=
  ∀ n, (P13748015401876959564.a n : ℤ) = A246450 (n + 1)

end A246450

/-! ## A246450.P16110170964687493828

`∪[A022844(n+1), A258048(n+1)-2]`
-/

namespace A246450.P16110170964687493828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246450.P16110170964687493828

namespace A246450

/-- `∪[A022844(n+1), A258048(n+1)-2]` -/
def P16110170964687493828.Spec : Prop :=
  ∀ n, (P16110170964687493828.a n : ℤ) = A246450 (n + 1)

end A246450

/-! ## A246450.P4387865915752680052

`∪[A140758(n+1), A258048(n+1)-2]`
-/

namespace A246450.P4387865915752680052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246450.P4387865915752680052

namespace A246450

/-- `∪[A140758(n+1), A258048(n+1)-2]` -/
def P4387865915752680052.Spec : Prop :=
  ∀ n, (P4387865915752680052.a n : ℤ) = A246450 (n + 1)

end A246450

/-! ## A246450.P6323861550244181204

`∪[A140758(n+1), A004084(n+2)-2]`
-/

namespace A246450.P6323861550244181204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246450.P6323861550244181204

namespace A246450

/-- `∪[A140758(n+1), A004084(n+2)-2]` -/
def P6323861550244181204.Spec : Prop :=
  ∀ n, (P6323861550244181204.a n : ℤ) = A246450 (n + 1)

end A246450

/-! ## A246450.P12489555744093380944

`lt[∑[cos(2*n)], 1]`
-/

namespace A246450.P12489555744093380944
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246450.P12489555744093380944

namespace A246450

/-- `lt[∑[cos(2*n)], 1]` -/
def P12489555744093380944.Spec : Prop :=
  ∀ n, (P12489555744093380944.a n : ℤ) = A246450 (n + 1)

end A246450

/-! ## A246450.P8166672315460237838

`lt[∏[exp(cos(2*n))], e]`
-/

namespace A246450.P8166672315460237838
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.cos (2 * n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A246450.P8166672315460237838

namespace A246450

/-- `lt[∏[exp(cos(2*n))], e]` -/
def P8166672315460237838.Spec : Prop :=
  ∀ n, (P8166672315460237838.a n : ℤ) = A246450 (n + 1)

end A246450

/-! ## A246450.P15091974788148243517

`lt[ratio[Δ[tan(n-1)]], 1]`
-/

namespace A246450.P15091974788148243517
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℤ) - 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℝ)) n

end

end A246450.P15091974788148243517

namespace A246450

/-- `lt[ratio[Δ[tan(n-1)]], 1]` -/
def P15091974788148243517.Spec : Prop :=
  ∀ n, (P15091974788148243517.a n : ℤ) = A246450 (n + 1)

end A246450

/-! ## A246450.P10339699795187178843

`∪[A327423(n+1)-1, A327423(n+1)]`
-/

namespace A246450.P10339699795187178843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327423 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246450.P10339699795187178843

namespace A246450

/-- `∪[A327423(n+1)-1, A327423(n+1)]` -/
def P10339699795187178843.Spec : Prop :=
  ∀ n, (P10339699795187178843.a n : ℤ) = A246450 (n + 1)

end A246450

/-!
# A246451: Nonnegative integers k satisfying sin(k)*cos(k+1) > 0.

The programs for A246451, the canonical program `A246451.P12649942564739298456` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246451 has offset 1).

The definition of A246451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246451.P12649942564739298456

`lt[tan(1), tan(n+1)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246451

/-- `lt[tan(1), tan(n+1)]` -/
def P12649942564739298456.Spec : Prop :=
  ∀ n, (P12649942564739298456.a n : ℤ) = A246451 (n + 1)

theorem P12649942564739298456.correct : P12649942564739298456.Spec := by
  intro n
  simp only [A246451, Nat.add_sub_cancel]

end A246451

/-! ## A246451.P8167863513399981326

`lt[sin(1), sin(2*n+1)]`
-/

namespace A246451.P8167863513399981326
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246451.P8167863513399981326

namespace A246451

/-- `lt[sin(1), sin(2*n+1)]` -/
def P8167863513399981326.Spec : Prop :=
  ∀ n, (P8167863513399981326.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P14796384116683513723

`lt[1, cot(1)/cot(n+1)]`
-/

namespace A246451.P14796384116683513723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (1 : ℝ) / Real.cot (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246451.P14796384116683513723

namespace A246451

/-- `lt[1, cot(1)/cot(n+1)]` -/
def P14796384116683513723.Spec : Prop :=
  ∀ n, (P14796384116683513723.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P424316655367757269

`lt[tan(1), tan(n)]-1`
-/

namespace A246451.P424316655367757269
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A246451.P424316655367757269

namespace A246451

/-- `lt[tan(1), tan(n)]-1` -/
def P424316655367757269.Spec : Prop :=
  ∀ n, P424316655367757269.a n = A246451 (n + 1)

end A246451

/-! ## A246451.P3842507075276496640

`∩[A108589(n+1), A121381(n)]`
-/

namespace A246451.P3842507075276496640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P3842507075276496640

namespace A246451

/-- `∩[A108589(n+1), A121381(n)]` -/
def P3842507075276496640.Spec : Prop :=
  ∀ n, (P3842507075276496640.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P13411262536515780168

`∩[A004084(n+1), A108589(n+1)]`
-/

namespace A246451.P13411262536515780168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P13411262536515780168

namespace A246451

/-- `∩[A004084(n+1), A108589(n+1)]` -/
def P13411262536515780168.Spec : Prop :=
  ∀ n, (P13411262536515780168.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P1243669247251784889

`∩[A108589(n+1), A257984(n+1)-2]`
-/

namespace A246451.P1243669247251784889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P1243669247251784889

namespace A246451

/-- `∩[A108589(n+1), A257984(n+1)-2]` -/
def P1243669247251784889.Spec : Prop :=
  ∀ n, (P1243669247251784889.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P15993928511054525572

`∩[A026314(n+1), A108589(n+1)]`
-/

namespace A246451.P15993928511054525572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P15993928511054525572

namespace A246451

/-- `∩[A026314(n+1), A108589(n+1)]` -/
def P15993928511054525572.Spec : Prop :=
  ∀ n, (P15993928511054525572.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P2528833709728613315

`∩[A026315(n+1), A108589(n+1)]`
-/

namespace A246451.P2528833709728613315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P2528833709728613315

namespace A246451

/-- `∩[A026315(n+1), A108589(n+1)]` -/
def P2528833709728613315.Spec : Prop :=
  ∀ n, (P2528833709728613315.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P350987551113583669

`∩[A108589(n+1), A327138(n+1)+2]`
-/

namespace A246451.P350987551113583669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327138 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P350987551113583669

namespace A246451

/-- `∩[A108589(n+1), A327138(n+1)+2]` -/
def P350987551113583669.Spec : Prop :=
  ∀ n, (P350987551113583669.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P17949647236427380396

`∩[A108589(n+1), A327422(n+1)]`
-/

namespace A246451.P17949647236427380396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P17949647236427380396

namespace A246451

/-- `∩[A108589(n+1), A327422(n+1)]` -/
def P17949647236427380396.Spec : Prop :=
  ∀ n, (P17949647236427380396.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P18040200975433692044

`∩[A327422(n+2)-1, A327422(n+2)]`
-/

namespace A246451.P18040200975433692044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P18040200975433692044

namespace A246451

/-- `∩[A327422(n+2)-1, A327422(n+2)]` -/
def P18040200975433692044.Spec : Prop :=
  ∀ n, (P18040200975433692044.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P14002455028983555733

`∩[A026313(n+1), A108589(n+1)]`
-/

namespace A246451.P14002455028983555733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P14002455028983555733

namespace A246451

/-- `∩[A026313(n+1), A108589(n+1)]` -/
def P14002455028983555733.Spec : Prop :=
  ∀ n, (P14002455028983555733.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P18445134578819806406

`∩[A108589(n+1), A258048(n)]`
-/

namespace A246451.P18445134578819806406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P18445134578819806406

namespace A246451

/-- `∩[A108589(n+1), A258048(n)]` -/
def P18445134578819806406.Spec : Prop :=
  ∀ n, (P18445134578819806406.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P10843427465245892254

`∩[A054386(n+1), A257984(n+1)-2]`
-/

namespace A246451.P10843427465245892254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P10843427465245892254

namespace A246451

/-- `∩[A054386(n+1), A257984(n+1)-2]` -/
def P10843427465245892254.Spec : Prop :=
  ∀ n, (P10843427465245892254.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P1535549587396315324

`∩[A140758(2*n+1)-1, A054386(n+2)]`
-/

namespace A246451.P1535549587396315324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P1535549587396315324

namespace A246451

/-- `∩[A140758(2*n+1)-1, A054386(n+2)]` -/
def P1535549587396315324.Spec : Prop :=
  ∀ n, (P1535549587396315324.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P10741988622094521079

`∩[A108589(n+1), A246443(n+1)]`
-/

namespace A246451.P10741988622094521079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246451.P10741988622094521079

namespace A246451

/-- `∩[A108589(n+1), A246443(n+1)]` -/
def P10741988622094521079.Spec : Prop :=
  ∀ n, (P10741988622094521079.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P17844207610497367073

`filter[A108589(n+1), A126565(#)]`
-/

namespace A246451.P17844207610497367073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A126565 (f1 j).toNat = 1) n)

end

end A246451.P17844207610497367073

namespace A246451

/-- `filter[A108589(n+1), A126565(#)]` -/
def P17844207610497367073.Spec : Prop :=
  ∀ n, P17844207610497367073.a n = A246451 (n + 1)

end A246451

/-! ## A246451.P14668552405969340072

`eq[A126565(n), A195911(n+1)]`
-/

namespace A246451.P14668552405969340072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246451.P14668552405969340072

namespace A246451

/-- `eq[A126565(n), A195911(n+1)]` -/
def P14668552405969340072.Spec : Prop :=
  ∀ n, (P14668552405969340072.a n : ℤ) = A246451 (n + 1)

end A246451

/-! ## A246451.P3932833236010508014

`eq[A086867(n+1), A126565(A126565(n)+n)]`
-/

namespace A246451.P3932833236010508014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126565 (A126565 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246451.P3932833236010508014

namespace A246451

/-- `eq[A086867(n+1), A126565(A126565(n)+n)]` -/
def P3932833236010508014.Spec : Prop :=
  ∀ n, (P3932833236010508014.a n : ℤ) = A246451 (n + 1)

end A246451

/-!
# A246453: Lucas numbers (A000204) of the form n^2 + 2.

The programs for A246453, the canonical program `A246453.P10248324404777086826` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246453 has offset 1).

The definition of A246453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246453.P10248324404777086826

`7*a(n-1)-a(n-2)` with `a(0)=3, a(1)=11, a(2)=18, a(3)=123`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246453

/-- `7*a(n-1)-a(n-2)` -/
def P10248324404777086826.Spec : Prop :=
  ∀ n, P10248324404777086826.a n = A246453 (n + 1)

theorem P10248324404777086826.correct : P10248324404777086826.Spec := by
  intro n
  simp only [A246453, Nat.add_sub_cancel]

end A246453

/-! ## A246453.P2644595019781323941

`A000032(comp[2*(n+1)+1]+1)²+2`
-/

namespace A246453.P2644595019781323941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) ^ 2 + 2

end

end A246453.P2644595019781323941

namespace A246453

/-- `A000032(comp[2*(n+1)+1]+1)²+2` -/
def P2644595019781323941.Spec : Prop :=
  ∀ n, P2644595019781323941.a n = A246453 (n + 1)

end A246453

/-! ## A246453.P4956681147057409954

`A000032(record[A266595(n+1)])`
-/

namespace A246453.P4956681147057409954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246453.P4956681147057409954

namespace A246453

/-- `A000032(record[A266595(n+1)])` -/
def P4956681147057409954.Spec : Prop :=
  ∀ n, P4956681147057409954.a n = A246453 (n + 1)

end A246453

/-! ## A246453.P12833058926444257614

`A000204(record[A266595(n+1)])`
-/

namespace A246453.P12833058926444257614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246453.P12833058926444257614

namespace A246453

/-- `A000204(record[A266595(n+1)])` -/
def P12833058926444257614.Spec : Prop :=
  ∀ n, P12833058926444257614.a n = A246453 (n + 1)

end A246453

/-! ## A246453.P16919118766791714951

`A001254(A004280(n+1))+2`
-/

namespace A246453.P16919118766791714951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (A004280 (n + 1)).toNat + 2

end

end A246453.P16919118766791714951

namespace A246453

/-- `A001254(A004280(n+1))+2` -/
def P16919118766791714951.Spec : Prop :=
  ∀ n, P16919118766791714951.a n = A246453 (n + 1)

end A246453

/-! ## A246453.P12424315371902847759

`record[A000032(A141310(n))²+2]`
-/

namespace A246453.P12424315371902847759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A141310 n).toNat ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246453.P12424315371902847759

namespace A246453

/-- `record[A000032(A141310(n))²+2]` -/
def P12424315371902847759.Spec : Prop :=
  ∀ n, P12424315371902847759.a n = A246453 (n + 1)

end A246453

/-! ## A246453.P2862818549312114393

`A000032(4*n+3-A267046(2*n))`
-/

namespace A246453.P2862818549312114393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((4 * n + 3 : ℤ) - A267046 (2 * n)).toNat

end

end A246453.P2862818549312114393

namespace A246453

/-- `A000032(4*n+3-A267046(2*n))` -/
def P2862818549312114393.Spec : Prop :=
  ∀ n, P2862818549312114393.a n = A246453 (n + 1)

end A246453

/-! ## A246453.P5143612272756095646

`A000032(A341522(A004275(n)))`
-/

namespace A246453.P5143612272756095646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A341522 (A004275 n).toNat).toNat

end

end A246453.P5143612272756095646

namespace A246453

/-- `A000032(A341522(A004275(n)))` -/
def P5143612272756095646.Spec : Prop :=
  ∀ n, P5143612272756095646.a n = A246453 (n + 1)

end A246453

/-! ## A246453.P16408974014934889043

`A000032(eq[A052938(n), A212831(n)])`
-/

namespace A246453.P16408974014934889043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A246453.P16408974014934889043

namespace A246453

/-- `A000032(eq[A052938(n), A212831(n)])` -/
def P16408974014934889043.Spec : Prop :=
  ∀ n, P16408974014934889043.a n = A246453 (n + 1)

end A246453

/-! ## A246453.P5180124829615678394

`A000032(lt[A131732(n+3), A131715(n)])`
-/

namespace A246453.P5180124829615678394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A246453.P5180124829615678394

namespace A246453

/-- `A000032(lt[A131732(n+3), A131715(n)])` -/
def P5180124829615678394.Spec : Prop :=
  ∀ n, P5180124829615678394.a n = A246453 (n + 1)

end A246453

/-!
# A246454: Numbers k that divide 2*sigma(k).

The programs for A246454, there is no canonical definition to state claims against.
-/

/-! ## A246454.P16542982553114946673

`A014963(A001316(n))*A227302(A028310(n))`
-/

namespace A246454.P16542982553114946673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A227302 (A028310 n).toNat

end

end A246454.P16542982553114946673

/-! ## A246454.P6800637673248024675

`A020639(A000118(n))*A227302(A028310(n))`
-/

namespace A246454.P6800637673248024675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A227302 (A028310 n).toNat

end

end A246454.P6800637673248024675

/-! ## A246454.P7901083299742709587

`A014963(A062383(n))*A227302(A028310(n))`
-/

namespace A246454.P7901083299742709587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A062383 n).toNat * A227302 (A028310 n).toNat

end

end A246454.P7901083299742709587

/-! ## A246454.P3626114278314327454

`A020639(A102376(n))*A227302(A028310(n))`
-/

namespace A246454.P3626114278314327454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A102376 n).toNat * A227302 (A028310 n).toNat

end

end A246454.P3626114278314327454

/-! ## A246454.P3490963825555428275

`A020639(A255300(n))*A227302(A028310(n))`
-/

namespace A246454.P3490963825555428275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A255300 n).toNat * A227302 (A028310 n).toNat

end

end A246454.P3490963825555428275

/-! ## A246454.P3806694608837367552

`A020639(A059867(n+1))*A227302(A028310(n))`
-/

namespace A246454.P3806694608837367552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A059867 (n + 1)).toNat * A227302 (A028310 n).toNat

end

end A246454.P3806694608837367552

/-! ## A246454.P92594916401858895

`A348717(A020639(n+1))*A227302(A028310(n))`
-/

namespace A246454.P92594916401858895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A020639 (n + 1)).toNat * A227302 (A028310 n).toNat

end

end A246454.P92594916401858895

/-!
# A246455: G.f.: Sum_{n>=0} x^n / (1-2*x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^k] * [Sum_{k=0..n} C(n,k)^2 * 2^k * x^k].

The programs for A246455, there is no canonical definition to state claims against.
-/

/-! ## A246455.P6110413578992651754

`A163127(A163073(n)+2*n)`
-/

namespace A246455.P6110413578992651754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163127 (A163073 n + (2 * n : ℤ)).toNat

end

end A246455.P6110413578992651754

/-! ## A246455.P4935597072535090604

`A163127(A163073(n)+n+n)`
-/

namespace A246455.P4935597072535090604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163127 (A163073 n + (n : ℤ) + (n : ℤ)).toNat

end

end A246455.P4935597072535090604

/-!
# A246456: a(n) = sigma(n + sigma(n)).

The programs for A246456, the canonical program `A246456.P18408646882622694` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246456 has offset 1).

The definition of A246456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246456.P18408646882622694

`∑{d}[∑{d}[n+1, #]+1+n, #]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246456

/-- `∑{d}[∑{d}[n+1, #]+1+n, #]` -/
def P18408646882622694.Spec : Prop :=
  ∀ n, (P18408646882622694.a n : ℤ) = A246456 (n + 1)

theorem P18408646882622694.correct : P18408646882622694.Spec := by
  intro n
  simp only [A246456, Nat.add_sub_cancel]

end A246456

/-! ## A246456.P2098441846961694568

`∑{d}[A155085(n+1), #]`
-/

namespace A246456.P2098441846961694568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A246456.P2098441846961694568

namespace A246456

/-- `∑{d}[A155085(n+1), #]` -/
def P2098441846961694568.Spec : Prop :=
  ∀ n, (P2098441846961694568.a n : ℤ) = A246456 (n + 1)

end A246456

/-! ## A246456.P9582117375983672500

`∑{d}[A088580(n+1)+n, #]`
-/

namespace A246456.P9582117375983672500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A246456.P9582117375983672500

namespace A246456

/-- `∑{d}[A088580(n+1)+n, #]` -/
def P9582117375983672500.Spec : Prop :=
  ∀ n, (P9582117375983672500.a n : ℤ) = A246456 (n + 1)

end A246456

/-! ## A246456.P4379527905707005742

`∑{d}[∑[A340793(n+1)+1], #]`
-/

namespace A246456.P4379527905707005742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A246456.P4379527905707005742

namespace A246456

/-- `∑{d}[∑[A340793(n+1)+1], #]` -/
def P4379527905707005742.Spec : Prop :=
  ∀ n, (P4379527905707005742.a n : ℤ) = A246456 (n + 1)

end A246456

/-! ## A246456.P1968819682254033578

`A000203(∑{d}[n+1, #]+1+n)`
-/

namespace A246456.P1968819682254033578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), d + 1 + n)

end

end A246456.P1968819682254033578

namespace A246456

/-- `A000203(∑{d}[n+1, #]+1+n)` -/
def P1968819682254033578.Spec : Prop :=
  ∀ n, P1968819682254033578.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P15556706848702707557

`A246908(n+1)+∑{d}[n+1, #]`
-/

namespace A246456.P15556706848702707557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246908 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A246456.P15556706848702707557

namespace A246456

/-- `A246908(n+1)+∑{d}[n+1, #]` -/
def P15556706848702707557.Spec : Prop :=
  ∀ n, P15556706848702707557.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P7663503422787141543

`∑{d}[∑{d}[n+1, A000010(#)+#], #]`
-/

namespace A246456.P7663503422787141543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A000010 d + (d : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A246456.P7663503422787141543

namespace A246456

/-- `∑{d}[∑{d}[n+1, A000010(#)+#], #]` -/
def P7663503422787141543.Spec : Prop :=
  ∀ n, (P7663503422787141543.a n : ℤ) = A246456 (n + 1)

end A246456

/-! ## A246456.P12551255786051992342

`A000203(A155085(n+1))`
-/

namespace A246456.P12551255786051992342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A155085 (n + 1)).toNat

end

end A246456.P12551255786051992342

namespace A246456

/-- `A000203(A155085(n+1))` -/
def P12551255786051992342.Spec : Prop :=
  ∀ n, P12551255786051992342.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P4406288837309718949

`A000203(A088580(n+1)+n)`
-/

namespace A246456.P4406288837309718949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A088580 (n + 1) + (n : ℤ)).toNat

end

end A246456.P4406288837309718949

namespace A246456

/-- `A000203(A088580(n+1)+n)` -/
def P4406288837309718949.Spec : Prop :=
  ∀ n, P4406288837309718949.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P14292339666641060588

`A000203(Δ[A160664(n)]+n+1)`
-/

namespace A246456.P14292339666641060588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n + (n : ℤ) + 1).toNat

end

end A246456.P14292339666641060588

namespace A246456

/-- `A000203(Δ[A160664(n)]+n+1)` -/
def P14292339666641060588.Spec : Prop :=
  ∀ n, P14292339666641060588.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P10527936050090587825

`A000203(n+1+A000203(n+1))`
-/

namespace A246456.P10527936050090587825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) + A000203 (n + 1)).toNat

end

end A246456.P10527936050090587825

namespace A246456

/-- `A000203(n+1+A000203(n+1))` -/
def P10527936050090587825.Spec : Prop :=
  ∀ n, P10527936050090587825.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P1123822822483906470

`A088580(n+1)+A246908(n+1)-1`
-/

namespace A246456.P1123822822483906470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + (A246908 (n + 1) - 1)

end

end A246456.P1123822822483906470

namespace A246456

/-- `A088580(n+1)+A246908(n+1)-1` -/
def P1123822822483906470.Spec : Prop :=
  ∀ n, P1123822822483906470.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P4684847921531687704

`A246908(n+1)+A074400(n+1)/2`
-/

namespace A246456.P4684847921531687704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246908 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A246456.P4684847921531687704

namespace A246456

/-- `A246908(n+1)+A074400(n+1)/2` -/
def P4684847921531687704.Spec : Prop :=
  ∀ n, P4684847921531687704.a n = (A246456 (n + 1) : ℚ)

end A246456

/-! ## A246456.P11746242714607208830

`A000203(2*n-(n-1-A000203(2*n-(n-1))))`
-/

namespace A246456.P11746242714607208830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((2 * n : ℤ) - ((n : ℤ) - 1 - A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)).toNat

end

end A246456.P11746242714607208830

namespace A246456

/-- `A000203(2*n-(n-1-A000203(2*n-(n-1))))` -/
def P11746242714607208830.Spec : Prop :=
  ∀ n, P11746242714607208830.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P16507718296993952372

`∑{d}[∑[Δ[∑{d}[n, #]]+1], #]`
-/

namespace A246456.P16507718296993952372
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A246456.P16507718296993952372

namespace A246456

/-- `∑{d}[∑[Δ[∑{d}[n, #]]+1], #]` -/
def P16507718296993952372.Spec : Prop :=
  ∀ n, (P16507718296993952372.a n : ℤ) = A246456 (n + 1)

end A246456

/-! ## A246456.P15335140255447111421

`A000203(Δ[A160664(n)+∑[n]])`
-/

namespace A246456.P15335140255447111421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A246456.P15335140255447111421

namespace A246456

/-- `A000203(Δ[A160664(n)+∑[n]])` -/
def P15335140255447111421.Spec : Prop :=
  ∀ n, P15335140255447111421.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P6330839678887397026

`A155085(A155085(n+1))-A155085(A000027(n+1))`
-/

namespace A246456.P6330839678887397026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (A155085 (n + 1)).toNat - A155085 (A000027 (n + 1)).toNat

end

end A246456.P6330839678887397026

namespace A246456

/-- `A155085(A155085(n+1))-A155085(A000027(n+1))` -/
def P6330839678887397026.Spec : Prop :=
  ∀ n, P6330839678887397026.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P909742984794119140

`A245092(A074400(n+1)+2*n+1)`
-/

namespace A246456.P909742984794119140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A074400 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A246456.P909742984794119140

namespace A246456

/-- `A245092(A074400(n+1)+2*n+1)` -/
def P909742984794119140.Spec : Prop :=
  ∀ n, P909742984794119140.a n = A246456 (n + 1)

end A246456

/-! ## A246456.P3203879638915219693

`A245092(A005843(n+1)+A002659(n+1))`
-/

namespace A246456.P3203879638915219693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A005843 (n + 1) + A002659 (n + 1)).toNat

end

end A246456.P3203879638915219693

namespace A246456

/-- `A245092(A005843(n+1)+A002659(n+1))` -/
def P3203879638915219693.Spec : Prop :=
  ∀ n, P3203879638915219693.a n = A246456 (n + 1)

end A246456

/-!
# A246458: Catalan number analogs for A048804, the generalized binomial coefficients for the radical sequence (A007947).

The programs for A246458, there is no canonical definition to state claims against.
-/

/-! ## A246458.P8070369633676476603

`A000108(n)/A246466(n)`
-/

namespace A246458.P8070369633676476603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A246466 n : ℚ)

end

end A246458.P8070369633676476603

/-! ## A246458.P10058079351191735385

`abs(A168491(n)/A246466(n))`
-/

namespace A246458.P10058079351191735385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A168491 n : ℚ) / (A246466 n : ℚ)|

end

end A246458.P10058079351191735385

/-! ## A246458.P4215629516677926709

`Δ[A155587(n)]/A246466(n)`
-/

namespace A246458.P4215629516677926709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A246466 n : ℚ)

end

end A246458.P4215629516677926709

/-! ## A246458.P14902896718566330377

`A120588(n+1)/A246466(n)`
-/

namespace A246458.P14902896718566330377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (n + 1) : ℚ) / (A246466 n : ℚ)

end

end A246458.P14902896718566330377

/-! ## A246458.P17380899804719015433

`(A120304(n)+2)/A246466(n)`
-/

namespace A246458.P17380899804719015433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2 : ℚ) / (A246466 n : ℚ)

end

end A246458.P17380899804719015433

/-!
# A246459: a(n) = Sum_{k=0..n} C(n,k)^2*C(2k,k)*(2k+1), where C(n,k) denotes the binomial coefficient n!/(k!*(n-k)!).

The programs for A246459, there is no canonical definition to state claims against.
-/

/-! ## A246459.P12136506146012613786

`(4*n+3)*A002893(n)/3`
-/

namespace A246459.P12136506146012613786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 3 : ℤ) * A002893 n : ℚ) / 3

end

end A246459.P12136506146012613786

/-! ## A246459.P985494728479818544

`record[xor(3, n)]/3*A002893(n)`
-/

namespace A246459.P985494728479818544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3 * (A002893 n : ℚ)

end

end A246459.P985494728479818544

/-!
# A246460: a(n) = (sum_{k=0}^{n-1} (2k+1)*C(n-1,k)^2*C(n+k,k)^2)/n^2, where C(n,k) denotes the binomial coefficient n!/(k!(n-k)!).

The programs for A246460, there is no canonical definition to state claims against.
-/

/-! ## A246460.P4824336317980568462

`∑[Δ[n²]*A074635(n)]`
-/

namespace A246460.P4824336317980568462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A074635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246460.P4824336317980568462

/-! ## A246460.P15139779852996275700

`∑[A074635(n)*A115060(2*n+1)]`
-/

namespace A246460.P15139779852996275700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074635 n * A115060 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246460.P15139779852996275700

/-!
# A246462: a(n) = Sum_{k=0..n} (2k+1)*C(n,k)^2*C(n+k,k)^2, where C(n,k) denotes the binomial coefficient n!/(k!*(n-k)!).

The programs for A246462, there is no canonical definition to state claims against.
-/

/-! ## A246462.P3676823312328982960

`A005259(n)+2*A357510(n)`
-/

namespace A246462.P3676823312328982960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005259 n + 2 * A357510 n

end

end A246462.P3676823312328982960

/-! ## A246462.P17390847717505185772

`A143007(∑[4*n])+2*A357510(n)`
-/

namespace A246462.P17390847717505185772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * A357510 n

end

end A246462.P17390847717505185772

/-! ## A246462.P16960963709427023894

`or(1, A143007(2*(n²+n)))+2*A357510(n)`
-/

namespace A246462.P16960963709427023894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143007 (2 * (n ^ 2 + n))) + 2 * A357510 n

end

end A246462.P16960963709427023894

/-! ## A246462.P3981006106169624626

`record[A143007(n*A008619(n))]+2*A357510(n)`
-/

namespace A246462.P3981006106169624626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * A357510 n

end

end A246462.P3981006106169624626

/-! ## A246462.P3699728220324003715

`A257045(n)/A059416(n)+2*A357510(n)`
-/

namespace A246462.P3699728220324003715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257045 n : ℚ) / (A059416 n : ℚ) + (2 * A357510 n : ℚ)

end

end A246462.P3699728220324003715

/-!
# A246463: a(n) = min(p +- q) > 1 with p*q being equal to the n-th primorial (A002110).

The programs for A246463, there is no canonical definition to state claims against.
-/

/-! ## A246463.P10870577162487722847

`record[gcd(floor(n/6), A003681(n+3))]`
-/

namespace A246463.P10870577162487722847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 6⌋ (A003681 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246463.P10870577162487722847

/-! ## A246463.P16700133894080987414

`xor(2*6*10*C(n, 5), p?[A019565(2*(n+2))])`
-/

namespace A246463.P16700133894080987414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * (6 * (10 * Nat.choose n 5)) : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A246463.P16700133894080987414

/-!
# A246464: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^n / (1-x)^(2*n+1) * [ Sum_{k=0..n} C(n,k)^2 * x^k ]^2.

The programs for A246464, there is no canonical definition to state claims against.
-/

/-! ## A246464.P5495554160129682497

`A115392(A115087(n))+floor(n/2)`
-/

namespace A246464.P5495554160129682497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115392 (A115087 n).toNat + ⌊(n : ℚ) / 2⌋

end

end A246464.P5495554160129682497

/-! ## A246464.P10249633833995264245

`A257013(A000108(n))+A001006(2*n)`
-/

namespace A246464.P10249633833995264245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257013 (A000108 n).toNat + A001006 (2 * n)

end

end A246464.P10249633833995264245

/-!
# A246465: Triangle read by rows: T(n,k) = A085056(n)/(A085056(k) * A085056(n-k)).

The programs for A246465, there is no canonical definition to state claims against.
-/

/-! ## A246465.P1896881960616511837

`A007318(n)/A048804(n)`
-/

namespace A246465.P1896881960616511837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A048804 n : ℚ)

end

end A246465.P1896881960616511837

/-! ## A246465.P18174970075154625805

`A238453(n)/A239702(n)`
-/

namespace A246465.P18174970075154625805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238453 n : ℚ) / (A239702 n : ℚ)

end

end A246465.P18174970075154625805

/-! ## A246465.P6585535572512104060

`abs(A130595(n)/A048804(n))`
-/

namespace A246465.P6585535572512104060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A130595 n : ℚ) / (A048804 n : ℚ)|

end

end A246465.P6585535572512104060

/-! ## A246465.P6388422276472226267

`sqrt(A008459(n))/A048804(n)`
-/

namespace A246465.P6388422276472226267
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) / (A048804 n : ℝ)

end

end A246465.P6388422276472226267

/-! ## A246465.P17774973679995663888

`Δ[A102363(n)]/A048804(n)`
-/

namespace A246465.P17774973679995663888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A048804 n : ℚ)

end

end A246465.P17774973679995663888

/-! ## A246465.P14779581907858921524

`A238453(n)/A000010(A048804(n))`
-/

namespace A246465.P14779581907858921524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238453 n : ℚ) / (A000010 (A048804 n).toNat : ℚ)

end

end A246465.P14779581907858921524

/-! ## A246465.P9934051218420086877

`A238498(n)/A000203(A048804(n))`
-/

namespace A246465.P9934051218420086877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238498 n : ℚ) / (A000203 (A048804 n).toNat : ℚ)

end

end A246465.P9934051218420086877

/-! ## A246465.P13518399353391965406

`A238453(n)/A173557(2*A048804(n))`
-/

namespace A246465.P13518399353391965406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238453 n : ℚ) / (A173557 (2 * A048804 n).toNat : ℚ)

end

end A246465.P13518399353391965406

/-! ## A246465.P17783440898702918549

`A238453(n)/A173557(A048804(n)²)`
-/

namespace A246465.P17783440898702918549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238453 n : ℚ) / (A173557 (A048804 n ^ 2).toNat : ℚ)

end

end A246465.P17783440898702918549

/-!
# A246466: Catalan number analogs for A246465, the generalized binomial coefficients for A003557.

The programs for A246466, there is no canonical definition to state claims against.
-/

/-! ## A246466.P12060736398535343488

`A000108(n)/A246458(n)`
-/

namespace A246466.P12060736398535343488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A246458 n : ℚ)

end

end A246466.P12060736398535343488

/-! ## A246466.P12914206083421724950

`abs(A168491(n)/A246458(n))`
-/

namespace A246466.P12914206083421724950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A168491 n : ℚ) / (A246458 n : ℚ)|

end

end A246466.P12914206083421724950

/-! ## A246466.P1028791725959541227

`Δ[A155587(n)]/A246458(n)`
-/

namespace A246466.P1028791725959541227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A246458 n : ℚ)

end

end A246466.P1028791725959541227

/-! ## A246466.P7344112286831155343

`A120588(n+1)/A246458(n)`
-/

namespace A246466.P7344112286831155343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (n + 1) : ℚ) / (A246458 n : ℚ)

end

end A246466.P7344112286831155343

/-! ## A246466.P4369680237879608790

`(A120304(n)+2)/A246458(n)`
-/

namespace A246466.P4369680237879608790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2 : ℚ) / (A246458 n : ℚ)

end

end A246466.P4369680237879608790

/-!
# A246467: G.f.: 1 / AGM(1-5*x, sqrt((1-x)*(1-25*x))).

The programs for A246467, the canonical program `A246467.P12426944221142986197` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246467 has offset 0).

The definition of A246467 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026375, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246467.P12426944221142986197

`A026375(n)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246467

/-- `A026375(n)²` -/
def P12426944221142986197.Spec : Prop :=
  ∀ n, P12426944221142986197.a n = A246467 n

theorem P12426944221142986197.correct : P12426944221142986197.Spec := by
  intro n
  simp only [A246467]

end A246467

/-! ## A246467.P3313327819814236603

`∑[A085362(n)]²`
-/

namespace A246467.P3313327819814236603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246467.P3313327819814236603

namespace A246467

/-- `∑[A085362(n)]²` -/
def P3313327819814236603.Spec : Prop :=
  ∀ n, P3313327819814236603.a n = A246467 n

end A246467

/-! ## A246467.P11148835182604596656

`A110165(∑[n])²`
-/

namespace A246467.P11148835182604596656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110165 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246467.P11148835182604596656

namespace A246467

/-- `A110165(∑[n])²` -/
def P11148835182604596656.Spec : Prop :=
  ∀ n, P11148835182604596656.a n = A246467 n

end A246467

/-! ## A246467.P3884991851103843024

`A111965(∑[n])²`
-/

namespace A246467.P3884991851103843024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111965 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246467.P3884991851103843024

namespace A246467

/-- `A111965(∑[n])²` -/
def P3884991851103843024.Spec : Prop :=
  ∀ n, P3884991851103843024.a n = A246467 n

end A246467

/-! ## A246467.P14061823948081114961

`record[A110165(n)²]`
-/

namespace A246467.P14061823948081114961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110165 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246467.P14061823948081114961

namespace A246467

/-- `record[A110165(n)²]` -/
def P14061823948081114961.Spec : Prop :=
  ∀ n, P14061823948081114961.a n = A246467 n

end A246467

/-! ## A246467.P5505256705967226331

`A272866(∑[2*n])²`
-/

namespace A246467.P5505256705967226331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246467.P5505256705967226331

namespace A246467

/-- `A272866(∑[2*n])²` -/
def P5505256705967226331.Spec : Prop :=
  ∀ n, P5505256705967226331.a n = A246467 n

end A246467

/-! ## A246467.P8763274366808025677

`Δ[n*A181768(n)]²`
-/

namespace A246467.P8763274366808025677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A246467.P8763274366808025677

namespace A246467

/-- `Δ[n*A181768(n)]²` -/
def P8763274366808025677.Spec : Prop :=
  ∀ n, P8763274366808025677.a n = A246467 n

end A246467

/-! ## A246467.P18167169640754085425

`(1-2*A242586(n))²`
-/

namespace A246467.P18167169640754085425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A242586 n) ^ 2

end

end A246467.P18167169640754085425

namespace A246467

/-- `(1-2*A242586(n))²` -/
def P18167169640754085425.Spec : Prop :=
  ∀ n, P18167169640754085425.a n = A246467 n

end A246467

/-! ## A246467.P7656772496484009486

`A292627(∑[n+3]+n+3)²`
-/

namespace A246467.P7656772496484009486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)) ^ 2

end

end A246467.P7656772496484009486

namespace A246467

/-- `A292627(∑[n+3]+n+3)²` -/
def P7656772496484009486.Spec : Prop :=
  ∀ n, P7656772496484009486.a n = A246467 n

end A246467

/-! ## A246467.P4751848545901725298

`A026380(A004273(n))²`
-/

namespace A246467.P4751848545901725298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026380 (A004273 n).toNat ^ 2

end

end A246467.P4751848545901725298

namespace A246467

/-- `A026380(A004273(n))²` -/
def P4751848545901725298.Spec : Prop :=
  ∀ n, P4751848545901725298.a n = A246467 n

end A246467

/-!
# A246468: Given a number of k digits x = d_(k)*10^(k-1) + d_(k-1)*10^(k-2) + … + d_(2)*10 + d_(1), consider y = p_(1)^d_(1)*p_(2)^d_(2)*…*p_(k)^d_(k), where p_(i) is the i-th prime. Sequence lists the numbers x such that y / x is an integer.

The programs for A246468, there is no canonical definition to state claims against.
-/

/-! ## A246468.P1510168728103976489

`record[gcd(n, A054842(n))]`
-/

namespace A246468.P1510168728103976489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A054842 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246468.P1510168728103976489

/-! ## A246468.P8504055032692992342

`eq[A054842(n)%A028310(n), A000007(n)]`
-/

namespace A246468.P8504055032692992342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054842 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246468.P8504055032692992342

/-! ## A246468.P13245726857859484245

`record[A320111(A035206(n))]`
-/

namespace A246468.P13245726857859484245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A035206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246468.P13245726857859484245

/-! ## A246468.P13394138882458072152

`record[A366901(record[A173676(n)])]`
-/

namespace A246468.P13394138882458072152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173676 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246468.P13394138882458072152

/-! ## A246468.P9146026767804774587

`record[A167489(A093037(n+1))]`
-/

namespace A246468.P9146026767804774587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A093037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246468.P9146026767804774587

/-!
# A246469: Given a number of k digits x = d_(k)*10^(k-1) + d_(k-1)*10^(k-2) + … + d_(2)*10 + d_(1), consider y = p_(1)^d_(k)*p_(2)^d_(k-1)*…*p_(k)^d_(1), where p_(i) is the i-th prime. Sequence lists the numbers x such that y / x is an integer.

The programs for A246469, there is no canonical definition to state claims against.
-/

/-! ## A246469.P10228016508320499089

`record[gcd(n+1, A189398(n+1))]`
-/

namespace A246469.P10228016508320499089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A189398 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246469.P10228016508320499089

/-! ## A246469.P14804469585056547384

`record[gcd(n, A054842(A004086(n)))]`
-/

namespace A246469.P14804469585056547384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A054842 (A004086 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246469.P14804469585056547384

/-! ## A246469.P2969686360808514974

`A003586(lt[A008683(n+1), A058348(2*(n+1))])`
-/

namespace A246469.P2969686360808514974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A246469.P2969686360808514974

/-! ## A246469.P15074344788291209685

`record[gcd(A118765(n), A212638(n+1))]`
-/

namespace A246469.P15074344788291209685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118765 n) (A212638 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246469.P15074344788291209685

/-!
# A246472: Number of order-preserving (monotone) functions from the power set of 1 = {0} to the power set of n = {0, ..., n-1}.

The programs for A246472, the canonical program `A246472.P17510670641983713962` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246472 has offset 0).

The definition of A246472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246472.P17510670641983713962

`2^(2*n-1)+2^n-C(2*n, n)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246472

/-- `2^(2*n-1)+2^n-C(2*n, n)/2` -/
def P17510670641983713962.Spec : Prop :=
  ∀ n, P17510670641983713962.a n = (A246472 n : ℚ)

end A246472

/-! ## A246472.P6267608912403828532

`A058622(2*n)+2^n`
-/

namespace A246472.P6267608912403828532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n) + (2 ^ n : ℤ)

end

end A246472.P6267608912403828532

namespace A246472

/-- `A058622(2*n)+2^n` -/
def P6267608912403828532.Spec : Prop :=
  ∀ n, P6267608912403828532.a n = A246472 n

end A246472

/-! ## A246472.P14264172876596848684

`2^n+A068551(n)/2`
-/

namespace A246472.P14264172876596848684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (A068551 n : ℚ) / 2

end

end A246472.P14264172876596848684

namespace A246472

/-- `2^n+A068551(n)/2` -/
def P14264172876596848684.Spec : Prop :=
  ∀ n, P14264172876596848684.a n = (A246472 n : ℚ)

end A246472

/-! ## A246472.P7666526359640040058

`2^n+A045621(2*n)/2`
-/

namespace A246472.P7666526359640040058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (A045621 (2 * n) : ℚ) / 2

end

end A246472.P7666526359640040058

namespace A246472

/-- `2^n+A045621(2*n)/2` -/
def P7666526359640040058.Spec : Prop :=
  ∀ n, P7666526359640040058.a n = (A246472 n : ℚ)

end A246472

/-! ## A246472.P56487550730210404

`A045621(comp[2*(n+1)])+2^n`
-/

namespace A246472.P56487550730210404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (2 ^ n : ℤ)

end

end A246472.P56487550730210404

namespace A246472

/-- `A045621(comp[2*(n+1)])+2^n` -/
def P56487550730210404.Spec : Prop :=
  ∀ n, P56487550730210404.a n = A246472 n

end A246472

/-! ## A246472.P9218684632649261526

`A161168(n)-A032443(n)`
-/

namespace A246472.P9218684632649261526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 n - A032443 n

end

end A246472.P9218684632649261526

namespace A246472

/-- `A161168(n)-A032443(n)` -/
def P9218684632649261526.Spec : Prop :=
  ∀ n, P9218684632649261526.a n = A246472 n

end A246472

/-! ## A246472.P1849370374520256948

`A257273(n)-A005317(n)`
-/

namespace A246472.P1849370374520256948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n - A005317 n

end

end A246472.P1849370374520256948

namespace A246472

/-- `A257273(n)-A005317(n)` -/
def P1849370374520256948.Spec : Prop :=
  ∀ n, P1849370374520256948.a n = A246472 n

end A246472

/-! ## A246472.P13062360812462286553

`A001576(n)-(A032443(n)+1)`
-/

namespace A246472.P13062360812462286553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n - (A032443 n + 1)

end

end A246472.P13062360812462286553

namespace A246472

/-- `A001576(n)-(A032443(n)+1)` -/
def P13062360812462286553.Spec : Prop :=
  ∀ n, P13062360812462286553.a n = A246472 n

end A246472

/-! ## A246472.P528103278149615350

`A277924(n)-A108958(n+1)`
-/

namespace A246472.P528103278149615350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277924 n - A108958 (n + 1)

end

end A246472.P528103278149615350

namespace A246472

/-- `A277924(n)-A108958(n+1)` -/
def P528103278149615350.Spec : Prop :=
  ∀ n, P528103278149615350.a n = A246472 n

end A246472

/-! ## A246472.P9482730378776997280

`A294175(2*n)+A000079(n)`
-/

namespace A246472.P9482730378776997280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (2 * n) + A000079 n

end

end A246472.P9482730378776997280

namespace A246472

/-- `A294175(2*n)+A000079(n)` -/
def P9482730378776997280.Spec : Prop :=
  ∀ n, P9482730378776997280.a n = A246472 n

end A246472

/-! ## A246472.P3608328170066820425

`A007008(2*n+1)+A000079(n)`
-/

namespace A246472.P3608328170066820425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007008 (2 * n + 1) + A000079 n

end

end A246472.P3608328170066820425

namespace A246472

/-- `A007008(2*n+1)+A000079(n)` -/
def P3608328170066820425.Spec : Prop :=
  ∀ n, P3608328170066820425.a n = A246472 n

end A246472

/-! ## A246472.P293907819063912805

`A294175(2*n)+A011782(n+1)`
-/

namespace A246472.P293907819063912805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (2 * n) + A011782 (n + 1)

end

end A246472.P293907819063912805

namespace A246472

/-- `A294175(2*n)+A011782(n+1)` -/
def P293907819063912805.Spec : Prop :=
  ∀ n, P293907819063912805.a n = A246472 n

end A246472

/-! ## A246472.P13980399999445928186

`A052957(2*n)-A027306(2*n)`
-/

namespace A246472.P13980399999445928186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 (2 * n) - A027306 (2 * n)

end

end A246472.P13980399999445928186

namespace A246472

/-- `A052957(2*n)-A027306(2*n)` -/
def P13980399999445928186.Spec : Prop :=
  ∀ n, P13980399999445928186.a n = A246472 n

end A246472

/-! ## A246472.P2465785841811944578

`2^n+A000302(n)-A032443(n)`
-/

namespace A246472.P2465785841811944578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A000302 n - A032443 n)

end

end A246472.P2465785841811944578

namespace A246472

/-- `2^n+A000302(n)-A032443(n)` -/
def P2465785841811944578.Spec : Prop :=
  ∀ n, P2465785841811944578.a n = A246472 n

end A246472

/-! ## A246472.P6834354960818870337

`A011782(n+1)+A007008(2*n+1)`
-/

namespace A246472.P6834354960818870337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + A007008 (2 * n + 1)

end

end A246472.P6834354960818870337

namespace A246472

/-- `A011782(n+1)+A007008(2*n+1)` -/
def P6834354960818870337.Spec : Prop :=
  ∀ n, P6834354960818870337.a n = A246472 n

end A246472

/-! ## A246472.P2900000793612226159

`A005418(2*(n+1))-A027306(2*n)`
-/

namespace A246472.P2900000793612226159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (2 * (n + 1)) - A027306 (2 * n)

end

end A246472.P2900000793612226159

namespace A246472

/-- `A005418(2*(n+1))-A027306(2*n)` -/
def P2900000793612226159.Spec : Prop :=
  ∀ n, P2900000793612226159.a n = A246472 n

end A246472

/-! ## A246472.P4177833641819924155

`(A045621(2*n)+A000079(n+1))/2`
-/

namespace A246472.P4177833641819924155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045621 (2 * n) + A000079 (n + 1) : ℚ) / 2

end

end A246472.P4177833641819924155

namespace A246472

/-- `(A045621(2*n)+A000079(n+1))/2` -/
def P4177833641819924155.Spec : Prop :=
  ∀ n, P4177833641819924155.a n = (A246472 n : ℚ)

end A246472

/-! ## A246472.P1145304061376284697

`A045621(2*n)/2+A011782(n+1)`
-/

namespace A246472.P1145304061376284697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045621 (2 * n) : ℚ) / 2 + (A011782 (n + 1) : ℚ)

end

end A246472.P1145304061376284697

namespace A246472

/-- `A045621(2*n)/2+A011782(n+1)` -/
def P1145304061376284697.Spec : Prop :=
  ∀ n, P1145304061376284697.a n = (A246472 n : ℚ)

end A246472

/-! ## A246472.P766193290977918483

`(A307768(2*n)+A000079(n+1))/2`
-/

namespace A246472.P766193290977918483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307768 (2 * n) + A000079 (n + 1) : ℚ) / 2

end

end A246472.P766193290977918483

namespace A246472

/-- `(A307768(2*n)+A000079(n+1))/2` -/
def P766193290977918483.Spec : Prop :=
  ∀ n, P766193290977918483.a n = (A246472 n : ℚ)

end A246472

/-!
# A246473: Number of length n+3 0..2 arrays with no pair in any consecutive four terms totalling exactly 2.

The programs for A246473, the canonical program `A246473.P15196848937078665932` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246473 has offset 1).

The definition of A246473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246473.P15196848937078665932

`a(n-1)+a(n-4)` with `a(0)=10, a(1)=14, a(2)=20, a(3)=28`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246473

/-- `a(n-1)+a(n-4)` -/
def P15196848937078665932.Spec : Prop :=
  ∀ n, (P15196848937078665932.a n : ℤ) = A246473 (n + 1)

theorem P15196848937078665932.correct : P15196848937078665932.Spec := by
  intro n
  simp only [A246473, Nat.add_sub_cancel]

end A246473

/-! ## A246473.P8065819353667900485

`2*A003269(n+8)`
-/

namespace A246473.P8065819353667900485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003269 (n + 8)

end

end A246473.P8065819353667900485

namespace A246473

/-- `2*A003269(n+8)` -/
def P8065819353667900485.Spec : Prop :=
  ∀ n, P8065819353667900485.a n = A246473 (n + 1)

end A246473

/-! ## A246473.P4146614243436169948

`2*A017898(n+11)`
-/

namespace A246473.P4146614243436169948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017898 (n + 11)

end

end A246473.P4146614243436169948

namespace A246473

/-- `2*A017898(n+11)` -/
def P4146614243436169948.Spec : Prop :=
  ∀ n, P4146614243436169948.a n = A246473 (n + 1)

end A246473

/-! ## A246473.P10251883253912500866

`2*(A098578(n+4)+1)`
-/

namespace A246473.P10251883253912500866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A098578 (n + 4) + 1)

end

end A246473.P10251883253912500866

namespace A246473

/-- `2*(A098578(n+4)+1)` -/
def P10251883253912500866.Spec : Prop :=
  ∀ n, P10251883253912500866.a n = A246473 (n + 1)

end A246473

/-! ## A246473.P11294293357960610726

`A017898(n+11)+A017898(n+11)%A017898(n+12)`
-/

namespace A246473.P11294293357960610726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 11) + Int.tmod (A017898 (n + 11)) (A017898 (n + 12))

end

end A246473.P11294293357960610726

namespace A246473

/-- `A017898(n+11)+A017898(n+11)%A017898(n+12)` -/
def P11294293357960610726.Spec : Prop :=
  ∀ n, P11294293357960610726.a n = A246473 (n + 1)

end A246473

/-! ## A246473.P5788692755551057326

`A017898(n+11)+Δ[A017898(n+14)]`
-/

namespace A246473.P5788692755551057326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 11) + (f1 (n + 1) - f1 n)

end

end A246473.P5788692755551057326

namespace A246473

/-- `A017898(n+11)+Δ[A017898(n+14)]` -/
def P5788692755551057326.Spec : Prop :=
  ∀ n, P5788692755551057326.a n = A246473 (n + 1)

end A246473

/-! ## A246473.P7671299650356515314

`Δ[2*A164466(n+3)]`
-/

namespace A246473.P7671299650356515314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164466 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246473.P7671299650356515314

namespace A246473

/-- `Δ[2*A164466(n+3)]` -/
def P7671299650356515314.Spec : Prop :=
  ∀ n, P7671299650356515314.a n = A246473 (n + 1)

end A246473

/-! ## A246473.P4327960062871579940

`A249707(∑[n+1])`
-/

namespace A246473.P4327960062871579940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246473.P4327960062871579940

namespace A246473

/-- `A249707(∑[n+1])` -/
def P4327960062871579940.Spec : Prop :=
  ∀ n, P4327960062871579940.a n = A246473 (n + 1)

end A246473

/-! ## A246473.P12787249626313957555

`record[(2-A004736(n+1))*A249707(n+1)]`
-/

namespace A246473.P12787249626313957555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * A249707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246473.P12787249626313957555

namespace A246473

/-- `record[(2-A004736(n+1))*A249707(n+1)]` -/
def P12787249626313957555.Spec : Prop :=
  ∀ n, P12787249626313957555.a n = A246473 (n + 1)

end A246473

/-! ## A246473.P15536981146790861364

`2*A213118(∑[n+2])`
-/

namespace A246473.P15536981146790861364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213118 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246473.P15536981146790861364

namespace A246473

/-- `2*A213118(∑[n+2])` -/
def P15536981146790861364.Spec : Prop :=
  ∀ n, P15536981146790861364.a n = A246473 (n + 1)

end A246473

/-!
# A246474: Number of length n+3 0..3 arrays with no pair in any consecutive four terms totalling exactly 3.

The programs for A246474, the canonical program `A246474.P13139515424268179774` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246474 has offset 1).

The definition of A246474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246474.P13139515424268179774

`2*a(n-1)+a(n-3)` with `a(0)=60, a(1)=132, a(2)=292`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246474

/-- `2*a(n-1)+a(n-3)` -/
def P13139515424268179774.Spec : Prop :=
  ∀ n, (P13139515424268179774.a n : ℤ) = A246474 (n + 1)

theorem P13139515424268179774.correct : P13139515424268179774.Spec := by
  intro n
  simp only [A246474, Nat.add_sub_cancel]

end A246474

/-! ## A246474.P15558008210055160746

`2*A232059(n+4)`
-/

namespace A246474.P15558008210055160746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232059 (n + 4)

end

end A246474.P15558008210055160746

namespace A246474

/-- `2*A232059(n+4)` -/
def P15558008210055160746.Spec : Prop :=
  ∀ n, P15558008210055160746.a n = A246474 (n + 1)

end A246474

/-! ## A246474.P13394567201197141753

`4*A193641(n+4)`
-/

namespace A246474.P13394567201197141753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A193641 (n + 4)

end

end A246474.P13394567201197141753

namespace A246474

/-- `4*A193641(n+4)` -/
def P13394567201197141753.Spec : Prop :=
  ∀ n, P13394567201197141753.a n = A246474 (n + 1)

end A246474

/-! ## A246474.P1769275018271036073

`4*(2*A019489(n+1)+1)`
-/

namespace A246474.P1769275018271036073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * A019489 (n + 1) + 1)

end

end A246474.P1769275018271036073

namespace A246474

/-- `4*(2*A019489(n+1)+1)` -/
def P1769275018271036073.Spec : Prop :=
  ∀ n, P1769275018271036073.a n = A246474 (n + 1)

end A246474

/-! ## A246474.P7159868071564351797

`lcm(4, A193641(A020705(n)))`
-/

namespace A246474.P7159868071564351797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A193641 (A020705 n).toNat)

end

end A246474.P7159868071564351797

namespace A246474

/-- `lcm(4, A193641(A020705(n)))` -/
def P7159868071564351797.Spec : Prop :=
  ∀ n, (P7159868071564351797.a n : ℤ) = A246474 (n + 1)

end A246474

/-! ## A246474.P17464928504476752603

`4*A193648(A000217(n+4))`
-/

namespace A246474.P17464928504476752603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A193648 (A000217 (n + 4)).toNat

end

end A246474.P17464928504476752603

namespace A246474

/-- `4*A193648(A000217(n+4))` -/
def P17464928504476752603.Spec : Prop :=
  ∀ n, P17464928504476752603.a n = A246474 (n + 1)

end A246474

/-! ## A246474.P4165523926274827231

`A246479(∑[n+3]+1)`
-/

namespace A246474.P4165523926274827231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A246474.P4165523926274827231

namespace A246474

/-- `A246479(∑[n+3]+1)` -/
def P4165523926274827231.Spec : Prop :=
  ∀ n, P4165523926274827231.a n = A246474 (n + 1)

end A246474

/-!
# A246475: Number of length n+3 0..4 arrays with no pair in any consecutive four terms totalling exactly 4.

The programs for A246475, there is no canonical definition to state claims against.
-/

/-! ## A246475.P1430507346319089264

`A246479(A027379(n+2))`
-/

namespace A246475.P1430507346319089264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A027379 (n + 2)).toNat

end

end A246475.P1430507346319089264

/-! ## A246475.P10965751526526983269

`A246479(A055998(n+2))`
-/

namespace A246475.P10965751526526983269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A055998 (n + 2)).toNat

end

end A246475.P10965751526526983269

/-! ## A246475.P17062602970785062218

`A246479(A155212(n)+5)`
-/

namespace A246475.P17062602970785062218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A155212 n + 5).toNat

end

end A246475.P17062602970785062218

/-! ## A246475.P608519392085042406

`A246479(Δ[A006416(n+2)])`
-/

namespace A246475.P608519392085042406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (f1 (n + 1) - f1 n).toNat

end

end A246475.P608519392085042406

/-! ## A246475.P8924840326519300698

`A246479(A052905(n+1)+2)`
-/

namespace A246475.P8924840326519300698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A052905 (n + 1) + 2).toNat

end

end A246475.P8924840326519300698

/-! ## A246475.P17823996212933046263

`A246479(A000217(n+4)-3)`
-/

namespace A246475.P17823996212933046263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000217 (n + 4) - 3).toNat

end

end A246475.P17823996212933046263

/-! ## A246475.P16546037313935026024

`A246479(A000124(n+4)-4)`
-/

namespace A246475.P16546037313935026024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000124 (n + 4) - 4).toNat

end

end A246475.P16546037313935026024

/-! ## A246475.P4477719754215209370

`A246479(eq[3, A033185(n+1)])`
-/

namespace A246475.P4477719754215209370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246475.P4477719754215209370

/-! ## A246475.P6081313429053999137

`A246479(A167614(n+1)+2*n+1)`
-/

namespace A246475.P6081313429053999137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A246475.P6081313429053999137

/-!
# A246476: Number of length n+3 0..5 arrays with no pair in any consecutive four terms totalling exactly 5.

The programs for A246476, there is no canonical definition to state claims against.
-/

/-! ## A246476.P7404954188711232810

`A246479(A046691(n+3))`
-/

namespace A246476.P7404954188711232810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A046691 (n + 3)).toNat

end

end A246476.P7404954188711232810

/-! ## A246476.P1791066998654345459

`A246479(Δ[A023545(n+1)])`
-/

namespace A246476.P1791066998654345459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (f1 (n + 1) - f1 n).toNat

end

end A246476.P1791066998654345459

/-! ## A246476.P3338008999934610687

`A246479(A155212(n+1)+4)`
-/

namespace A246476.P3338008999934610687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A155212 (n + 1) + 4).toNat

end

end A246476.P3338008999934610687

/-! ## A246476.P18322861334515263608

`A246479(A000217(n+5)-4)`
-/

namespace A246476.P18322861334515263608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000217 (n + 5) - 4).toNat

end

end A246476.P18322861334515263608

/-! ## A246476.P6388542314416329210

`A246479(Δ[A006416(n+3)]-1)`
-/

namespace A246476.P6388542314416329210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (f1 (n + 1) - f1 n - 1).toNat

end

end A246476.P6388542314416329210

/-! ## A246476.P3388812232172550608

`A246479(A099392(n+7)-A110654(n+15))`
-/

namespace A246476.P3388812232172550608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A099392 (n + 7) - A110654 (n + 15)).toNat

end

end A246476.P3388812232172550608

/-!
# A246477: Number of length n+3 0..6 arrays with no pair in any consecutive four terms totaling exactly 6.

The programs for A246477, there is no canonical definition to state claims against.
-/

/-! ## A246477.P10305899567301388117

`A246479(A052905(n+3))`
-/

namespace A246477.P10305899567301388117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A052905 (n + 3)).toNat

end

end A246477.P10305899567301388117

/-! ## A246477.P1008612225196037081

`A246479(A055999(n+3)+1)`
-/

namespace A246477.P1008612225196037081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A055999 (n + 3) + 1).toNat

end

end A246477.P1008612225196037081

/-! ## A246477.P8759753036868224380

`A246479(A155212(n+2)+3)`
-/

namespace A246477.P8759753036868224380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A155212 (n + 2) + 3).toNat

end

end A246477.P8759753036868224380

/-! ## A246477.P10609545500985316449

`A246479(A046691(n+4)-1)`
-/

namespace A246477.P10609545500985316449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A046691 (n + 4) - 1).toNat

end

end A246477.P10609545500985316449

/-! ## A246477.P10999491545461915739

`A246479(A000217(n+6)-5)`
-/

namespace A246477.P10999491545461915739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000217 (n + 6) - 5).toNat

end

end A246477.P10999491545461915739

/-! ## A246477.P884463192772675802

`A246479(A000124(n+6)-6)`
-/

namespace A246477.P884463192772675802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000124 (n + 6) - 6).toNat

end

end A246477.P884463192772675802

/-! ## A246477.P17643706220550339178

`A246479(Δ[Δ[A006504(n+1)]])`
-/

namespace A246477.P17643706220550339178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (f1 (n + 1) - f1 n).toNat

end

end A246477.P17643706220550339178

/-! ## A246477.P9700320014510751194

`A246479(Δ[A023545(n+2)]-1)`
-/

namespace A246477.P9700320014510751194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (f1 (n + 1) - f1 n - 1).toNat

end

end A246477.P9700320014510751194

/-!
# A246478: Number of length n+3 0..7 arrays with no pair in any consecutive four terms totalling exactly 7.

The programs for A246478, there is no canonical definition to state claims against.
-/

/-! ## A246478.P3347230561000962016

`A246479(A055999(n+4))`
-/

namespace A246478.P3347230561000962016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A055999 (n + 4)).toNat

end

end A246478.P3347230561000962016

/-! ## A246478.P11418639345578073381

`A246479(A046691(n+5)-2)`
-/

namespace A246478.P11418639345578073381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A046691 (n + 5) - 2).toNat

end

end A246478.P11418639345578073381

/-! ## A246478.P7318392680036616754

`A246479(A000096(n+6)-5)`
-/

namespace A246478.P7318392680036616754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000096 (n + 6) - 5).toNat

end

end A246478.P7318392680036616754

/-! ## A246478.P17774828667783166711

`A246479(A000124(n+7)-7)`
-/

namespace A246478.P17774828667783166711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000124 (n + 7) - 7).toNat

end

end A246478.P17774828667783166711

/-! ## A246478.P14945497785977051447

`A246479(A000217(n+6)+n+1)`
-/

namespace A246478.P14945497785977051447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A246478.P14945497785977051447

/-! ## A246478.P1784668057188737158

`A246479(A005408(n)+A000124(n+5)+5)`
-/

namespace A246478.P1784668057188737158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A005408 n + (A000124 (n + 5) + 5)).toNat

end

end A246478.P1784668057188737158

/-! ## A246478.P14124585348445316618

`A246479(A005408(n)+A000096(n+4)+7)`
-/

namespace A246478.P14124585348445316618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A005408 n + (A000096 (n + 4) + 7)).toNat

end

end A246478.P14124585348445316618

/-!
# A246480: Number of length 1+3 0..n arrays with no pair in any consecutive four terms totalling exactly n.

The programs for A246480, there is no canonical definition to state claims against.
-/

/-! ## A246480.P15591010247451886644

`(n+2)^4-A245951(n+1)`
-/

namespace A246480.P15591010247451886644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - A245951 (n + 1)

end

end A246480.P15591010247451886644

/-! ## A246480.P1236397870732514548

`A246479(∑[n]+1)`
-/

namespace A246480.P1236397870732514548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A246480.P1236397870732514548

/-! ## A246480.P13682105301281516982

`lcm(2, A246479(A000124(n)))`
-/

namespace A246480.P13682105301281516982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A246479 (A000124 n).toNat)

end

end A246480.P13682105301281516982

/-! ## A246480.P5347670215108771586

`record[root(A246479(n+1), A047110(n))]`
-/

namespace A246480.P5347670215108771586
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A246479 (n + 1) : ℝ) ^ (1 / (A047110 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246480.P5347670215108771586

/-! ## A246480.P4134222125284593970

`record[gcd(A002262(n), A246479(n+1))]`
-/

namespace A246480.P4134222125284593970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A246479 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246480.P4134222125284593970

/-!
# A246481: Number of length 2+3 0..n arrays with no pair in any consecutive four terms totalling exactly n.

The programs for A246481, there is no canonical definition to state claims against.
-/

/-! ## A246481.P1416037924119074709

`A246479(∑[n+1]+2)`
-/

namespace A246481.P1416037924119074709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A246481.P1416037924119074709

/-! ## A246481.P7112498855272269008

`lcm(2, A246479(A133263(n+1)))`
-/

namespace A246481.P7112498855272269008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A246479 (A133263 (n + 1)).toNat)

end

end A246481.P7112498855272269008

/-! ## A246481.P16144737328932534776

`A246479(A000096(n)+3)%((n²+2)^3)`
-/

namespace A246481.P16144737328932534776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246479 (A000096 n + 3).toNat) ((n ^ 2 + 2) ^ 3 : ℤ)

end

end A246481.P16144737328932534776

/-! ## A246481.P8881305509506094061

`A000034(24*n)*A246479(A000096(n)+3)`
-/

namespace A246481.P8881305509506094061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (24 * n) * A246479 (A000096 n + 3).toNat

end

end A246481.P8881305509506094061

/-! ## A246481.P762172260424313294

`A246479(A000096(n)+3)+1-A007318(C(n, 2))`
-/

namespace A246481.P762172260424313294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000096 n + 3).toNat + 1 - A007318 (Nat.choose n 2)

end

end A246481.P762172260424313294

/-! ## A246481.P15564099796453244227

`A246479(A152948(n+3))+A129947(A004736(n+1))`
-/

namespace A246481.P15564099796453244227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A152948 (n + 3)).toNat + A129947 (A004736 (n + 1)).toNat

end

end A246481.P15564099796453244227

/-! ## A246481.P5159005307568327982

`A009531(A002972(n+1))²*A246479(A000096(n)+3)`
-/

namespace A246481.P5159005307568327982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A002972 (n + 1)).toNat ^ 2 * A246479 (A000096 n + 3).toNat

end

end A246481.P5159005307568327982

/-! ## A246481.P11422664680938245232

`A007913(A001248(n+1))*A246479(A000096(n)+3)`
-/

namespace A246481.P11422664680938245232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001248 (n + 1)).toNat * A246479 (A000096 n + 3).toNat

end

end A246481.P11422664680938245232

/-!
# A246482: Number of length 3+3 0..n arrays with no pair in any consecutive four terms totalling exactly n.

The programs for A246482, there is no canonical definition to state claims against.
-/

/-! ## A246482.P11493023476937720646

`A246479(∑[n+2]+4)`
-/

namespace A246482.P11493023476937720646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A246482.P11493023476937720646

/-! ## A246482.P10099218769658449006

`lcm(2, A246479(A167614(n+1)))`
-/

namespace A246482.P10099218769658449006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A246479 (A167614 (n + 1)).toNat)

end

end A246482.P10099218769658449006

/-! ## A246482.P10804542480816000873

`record[gcd(2-A002262(n), A246479(n+1))]`
-/

namespace A246482.P10804542480816000873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A002262 n) (A246479 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246482.P10804542480816000873

/-! ## A246482.P9151631335935246018

`gcd(A000038(n), A246479(A167499(n)+n))`
-/

namespace A246482.P9151631335935246018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A246479 (A167499 n + (n : ℤ)).toNat)

end

end A246482.P9151631335935246018

/-! ## A246482.P13038814763268606697

`A246479(A167614(n+1))+A000038(n+1)`
-/

namespace A246482.P13038814763268606697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A246482.P13038814763268606697

/-! ## A246482.P6207733175600875289

`A246479(A167614(n+1))+A008683(A185359(n+2))`
-/

namespace A246482.P6207733175600875289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A167614 (n + 1)).toNat + A008683 (A185359 (n + 2)).toNat

end

end A246482.P6207733175600875289

/-! ## A246482.P10005574470643434438

`A001221(A111744(n+1))*A246479(A167614(n+1))`
-/

namespace A246482.P10005574470643434438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A111744 (n + 1)).toNat * A246479 (A167614 (n + 1)).toNat

end

end A246482.P10005574470643434438

/-! ## A246482.P15603680412827016725

`A140437(A001222(n+2))*A246479(A167614(n+1))`
-/

namespace A246482.P15603680412827016725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140437 (A001222 (n + 2)).toNat * A246479 (A167614 (n + 1)).toNat

end

end A246482.P15603680412827016725

/-! ## A246482.P12663089791848572931

`A140437(A000005(2*n+3))*A246479(A167614(n+1))`
-/

namespace A246482.P12663089791848572931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140437 (A000005 (2 * n + 3)).toNat * A246479 (A167614 (n + 1)).toNat

end

end A246482.P12663089791848572931

/-!
# A246483: Number of length 4+3 0..n arrays with no pair in any consecutive four terms totalling exactly n.

The programs for A246483, there is no canonical definition to state claims against.
-/

/-! ## A246483.P13061606109046911829

`A246479(A052905(n)+9)`
-/

namespace A246483.P13061606109046911829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A052905 n + 9).toNat

end

end A246483.P13061606109046911829

/-! ## A246483.P7075960906133359657

`A246479(A055999(n)+10)`
-/

namespace A246483.P7075960906133359657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A055999 n + 10).toNat

end

end A246483.P7075960906133359657

/-! ## A246483.P3280652076516557377

`A246479(A167614(n+2)+1)`
-/

namespace A246483.P3280652076516557377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A167614 (n + 2) + 1).toNat

end

end A246483.P3280652076516557377

/-! ## A246483.P10237971249097248547

`A246479(A000217(n+3)+4)`
-/

namespace A246483.P10237971249097248547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000217 (n + 3) + 4).toNat

end

end A246483.P10237971249097248547

/-! ## A246483.P8106244603692468116

`A246479(Δ[A023545(n+1)-n²])`
-/

namespace A246483.P8106244603692468116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (f1 (n + 1) - f1 n).toNat

end

end A246483.P8106244603692468116

/-! ## A246483.P15280264863553095957

`A246479(A046691(n+5)-A016825(n+3))`
-/

namespace A246483.P15280264863553095957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A046691 (n + 5) - A016825 (n + 3)).toNat

end

end A246483.P15280264863553095957

/-! ## A246483.P16766540347397094881

`A246479(A110654(n+9)+A099392(n+4))`
-/

namespace A246483.P16766540347397094881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A110654 (n + 9) + A099392 (n + 4)).toNat

end

end A246483.P16766540347397094881

/-!
# A246484: Number of length 5+3 0..n arrays with no pair in any consecutive four terms totalling exactly n.

The programs for A246484, there is no canonical definition to state claims against.
-/

/-! ## A246484.P6121309325884345872

`A246479(A167499(n+3))`
-/

namespace A246484.P6121309325884345872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A167499 (n + 3)).toNat

end

end A246484.P6121309325884345872

/-! ## A246484.P15849297847645593844

`A246479(A000124(n+4)+4)`
-/

namespace A246484.P15849297847645593844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000124 (n + 4) + 4).toNat

end

end A246484.P15849297847645593844

/-! ## A246484.P11764152485012045530

`A246479(A000096(n+3)+6)`
-/

namespace A246484.P11764152485012045530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000096 (n + 3) + 6).toNat

end

end A246484.P11764152485012045530

/-! ## A246484.P18005495234344741134

`A246479(A000217(n+4)+5)`
-/

namespace A246484.P18005495234344741134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000217 (n + 4) + 5).toNat

end

end A246484.P18005495234344741134

/-! ## A246484.P15803442127486948234

`A246479(A055998(n+2)+8)`
-/

namespace A246484.P15803442127486948234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A055998 (n + 2) + 8).toNat

end

end A246484.P15803442127486948234

/-! ## A246484.P8594070024219329402

`A246479(eq[3, A033185(n+1)]+8)`
-/

namespace A246484.P8594070024219329402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 8)

end

end A246484.P8594070024219329402

/-! ## A246484.P18057558260824481070

`A246479(A110654(n)+6+A099392(n+5))`
-/

namespace A246484.P18057558260824481070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A110654 n + 6 + A099392 (n + 5)).toNat

end

end A246484.P18057558260824481070

/-!
# A246485: Number of length 6+3 0..n arrays with no pair in any consecutive four terms totalling exactly n.

The programs for A246485, there is no canonical definition to state claims against.
-/

/-! ## A246485.P7628356699330192389

`A246479(A167499(n+4)+1)`
-/

namespace A246485.P7628356699330192389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A167499 (n + 4) + 1).toNat

end

end A246485.P7628356699330192389

/-! ## A246485.P1522495916349697216

`A246479(A000124(n+5)+5)`
-/

namespace A246485.P1522495916349697216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000124 (n + 5) + 5).toNat

end

end A246485.P1522495916349697216

/-! ## A246485.P17309421233861073967

`A246479(A000217(n+5)+6)`
-/

namespace A246485.P17309421233861073967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000217 (n + 5) + 6).toNat

end

end A246485.P17309421233861073967

/-! ## A246485.P5156473278152752676

`A246479(A034856(n+6)-A005408(n+2))`
-/

namespace A246485.P5156473278152752676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A034856 (n + 6) - A005408 (n + 2)).toNat

end

end A246485.P5156473278152752676

/-! ## A246485.P411464673158839095

`A246479(A110654(n+15)+A099392(n+6))`
-/

namespace A246485.P411464673158839095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A110654 (n + 15) + A099392 (n + 6)).toNat

end

end A246485.P411464673158839095

/-!
# A246486: Number of length 7+3 0..n arrays with no pair in any consecutive four terms totalling exactly n.

The programs for A246486, there is no canonical definition to state claims against.
-/

/-! ## A246486.P12190587919966194516

`A246479(A167499(n+5)+2)`
-/

namespace A246486.P12190587919966194516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A167499 (n + 5) + 2).toNat

end

end A246486.P12190587919966194516

/-! ## A246486.P17986258614838170816

`A246479(A133263(n+6)+5)`
-/

namespace A246486.P17986258614838170816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A133263 (n + 6) + 5).toNat

end

end A246486.P17986258614838170816

/-! ## A246486.P18254713466502287132

`A246479(A000217(n+6)+7)`
-/

namespace A246486.P18254713466502287132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000217 (n + 6) + 7).toNat

end

end A246486.P18254713466502287132

/-! ## A246486.P1222275824948650049

`A246479(A000124(n+7)-(n+1))`
-/

namespace A246486.P1222275824948650049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A246486.P1222275824948650049

/-! ## A246486.P12285630554304330182

`A246479(A005408(n+8)+A000124(n+4))`
-/

namespace A246486.P12285630554304330182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A246486.P12285630554304330182

/-!
# A246488: Gridgeman pairs in increasing order: pairs of palindromic primes which differ only in their middle digits whose difference is equal to 1.

The programs for A246488, there is no canonical definition to state claims against.
-/

/-! ## A246488.P15725424141724801643

`A006530(∪[A032593(n+1), A032594(n+1)])`
-/

namespace A246488.P15725424141724801643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032594 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A246488.P15725424141724801643

/-! ## A246488.P3149873805120518955

`A020639(∪[A032593(n+1), A032594(n+1)])`
-/

namespace A246488.P3149873805120518955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032594 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A246488.P3149873805120518955

/-! ## A246488.P6724999603771226676

`A004086(∪[A032593(n+1), A032594(n+1)])`
-/

namespace A246488.P6724999603771226676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032594 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A246488.P6724999603771226676

/-! ## A246488.P7402160682445427516

`∪[A032593(A032555(n+1)), A032594(n+1)]`
-/

namespace A246488.P7402160682445427516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032593 (A032555 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246488.P7402160682445427516

/-! ## A246488.P5652707042254626466

`A097246(∪[A032593(n+1), A032594(n+1)])`
-/

namespace A246488.P5652707042254626466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032594 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A246488.P5652707042254626466

/-!
# A246489: Duodecimal period of 1/(n-th prime) (0 by convention for the primes 2 and 3).

The programs for A246489, there is no canonical definition to state claims against.
-/

/-! ## A246489.P1363954277320170496

`A070683(A102781(n+1))`
-/

namespace A246489.P1363954277320170496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 (A102781 (n + 1)).toNat

end

end A246489.P1363954277320170496

/-! ## A246489.P15437184582906849956

`A070683(A130290(n+1))`
-/

namespace A246489.P15437184582906849956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 (A130290 (n + 1)).toNat

end

end A246489.P15437184582906849956

/-! ## A246489.P2641749441641709136

`A246004(A000040(n+1))`
-/

namespace A246489.P2641749441641709136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A000040 (n + 1)).toNat

end

end A246489.P2641749441641709136

/-! ## A246489.P3569368156844184011

`A246004(A006005(n+1))`
-/

namespace A246489.P3569368156844184011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A006005 (n + 1)).toNat

end

end A246489.P3569368156844184011

/-! ## A246489.P14190033274726715069

`A246004(A008578(n+2))`
-/

namespace A246489.P14190033274726715069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A008578 (n + 2)).toNat

end

end A246489.P14190033274726715069

/-! ## A246489.P9748236537512296348

`A246004(record[A006530(n+2)])`
-/

namespace A246489.P9748236537512296348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246489.P9748236537512296348

/-! ## A246489.P2520172451235072353

`A246004(record[A014963(n+2)])`
-/

namespace A246489.P2520172451235072353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246489.P2520172451235072353

/-! ## A246489.P2407612523267236856

`A246004(record[A020639(n+2)])`
-/

namespace A246489.P2407612523267236856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246489.P2407612523267236856

/-! ## A246489.P12937166208040109500

`A246004(A006093(n+1)+1)`
-/

namespace A246489.P12937166208040109500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A006093 (n + 1) + 1).toNat

end

end A246489.P12937166208040109500

/-! ## A246489.P10964780805037611715

`A246004(A073582(n+1)/2)`
-/

namespace A246489.P10964780805037611715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (SequenceMachineLib.roundAway ((A073582 (n + 1) : ℚ) / 2)).toNat

end

end A246489.P10964780805037611715

/-! ## A246489.P7780506731891560586

`A246004(A100484(n+1)/2)`
-/

namespace A246489.P7780506731891560586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A246489.P7780506731891560586

/-! ## A246489.P14087911454660297871

`A246004(A001747(n+2)/2)`
-/

namespace A246489.P14087911454660297871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A246489.P14087911454660297871

/-! ## A246489.P8165008734090811533

`A246004(A006530(A001748(n+1)))`
-/

namespace A246489.P8165008734090811533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A006530 (A001748 (n + 1)).toNat).toNat

end

end A246489.P8165008734090811533

/-! ## A246489.P13366529033748486079

`A246004(A006530(A001749(n+1)))`
-/

namespace A246489.P13366529033748486079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A006530 (A001749 (n + 1)).toNat).toNat

end

end A246489.P13366529033748486079

/-! ## A246489.P3254405370193804675

`A246004(A006530(A062876(n+1)))`
-/

namespace A246489.P3254405370193804675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A006530 (A062876 (n + 1)).toNat).toNat

end

end A246489.P3254405370193804675

/-! ## A246489.P273934068251113556

`A246004(A006530(A063534(n+1)))`
-/

namespace A246489.P273934068251113556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A006530 (A063534 (n + 1)).toNat).toNat

end

end A246489.P273934068251113556

/-! ## A246489.P11403428352296777905

`A246004(A006530(A001747(n+2)))`
-/

namespace A246489.P11403428352296777905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A006530 (A001747 (n + 2)).toNat).toNat

end

end A246489.P11403428352296777905

/-! ## A246489.P9883897268356061529

`A246004(A073582(n+1))`
-/

namespace A246489.P9883897268356061529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A073582 (n + 1)).toNat

end

end A246489.P9883897268356061529

/-! ## A246489.P4264451067352329714

`A246004(A100484(n+1))`
-/

namespace A246489.P4264451067352329714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A100484 (n + 1)).toNat

end

end A246489.P4264451067352329714

/-! ## A246489.P15864210055320888789

`A246004(A001747(n+2))`
-/

namespace A246489.P15864210055320888789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A001747 (n + 2)).toNat

end

end A246489.P15864210055320888789

/-!
# A246490: Fixed points of A249129: numbers n such that A249129(n) = n.

The programs for A246490, there is no canonical definition to state claims against.
-/

/-! ## A246490.P16708926376013304653

`eq[0, A249161(n)]`
-/

namespace A246490.P16708926376013304653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246490.P16708926376013304653

/-! ## A246490.P17472103733066856400

`eq[n, A249029(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A246490.P17472103733066856400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A249029 (n - 1) + f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246490.P17472103733066856400

/-! ## A246490.P13084673463648361785

`eq[n, A245057(n)]`
-/

namespace A246490.P13084673463648361785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246490.P13084673463648361785

/-! ## A246490.P6290282939594965699

`eq[n, A249129(n)]`
-/

namespace A246490.P6290282939594965699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246490.P6290282939594965699

/-! ## A246490.P18405127190142137842

`record[gcd(n+2, A245057(n+2))]`
-/

namespace A246490.P18405127190142137842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A245057 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246490.P18405127190142137842

/-! ## A246490.P17672264316675444593

`record[gcd(n, A249129(A233583(n+1)))]`
-/

namespace A246490.P17672264316675444593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A249129 (A233583 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246490.P17672264316675444593

/-!
# A246491: Smallest k such that 3^^n is not congruent to 3^^(n-1) mod k, where 3^^n denotes the power tower 3^3^...^3 (in which 3 appears n times).

The programs for A246491, there is no canonical definition to state claims against.
-/

/-! ## A246491.P7039626148043808788

`A246496(n+1)+C(2, n²)`
-/

namespace A246491.P7039626148043808788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246496 (n + 1) + (Nat.choose 2 (n ^ 2) : ℤ)

end

end A246491.P7039626148043808788

/-! ## A246491.P4281583597484276356

`A246496(n+1)+A130706(n)`
-/

namespace A246491.P4281583597484276356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246496 (n + 1) + A130706 n

end

end A246491.P4281583597484276356

/-! ## A246491.P14241455967576422824

`A246496(n+1)+A028629(∑[(2*n)²])`
-/

namespace A246491.P14241455967576422824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246496 (n + 1) + A028629 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246491.P14241455967576422824

/-! ## A246491.P5537036936771181345

`A246496(n+1)+A000095(A000079(n))`
-/

namespace A246491.P5537036936771181345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246496 (n + 1) + A000095 (A000079 n).toNat

end

end A246491.P5537036936771181345

/-! ## A246491.P8143921502916367404

`A246496(n+1)+A000122(A000225(n))`
-/

namespace A246491.P8143921502916367404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246496 (n + 1) + A000122 (A000225 n).toNat

end

end A246491.P8143921502916367404

/-!
# A246492: Smallest k such that 4^^n is not congruent to 4^^(n-1) mod k, where 4^^n denotes the power tower 4^4^...^4 (in which 4 appears n times).

The programs for A246492, there is no canonical definition to state claims against.
-/

/-! ## A246492.P737294272596800749

`xor(-A246495(n+1), -2)`
-/

namespace A246492.P737294272596800749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A246495 (n + 1)) (-2)

end

end A246492.P737294272596800749

/-! ## A246492.P17126709231779614348

`A246495(n+1)-A000038(n)`
-/

namespace A246492.P17126709231779614348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246495 (n + 1) - A000038 n

end

end A246492.P17126709231779614348

/-! ## A246492.P10322119685970413845

`A246495(n+1)/A054977(n)`
-/

namespace A246492.P10322119685970413845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246495 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A246492.P10322119685970413845

/-! ## A246492.P13787300993615634399

`A246495(n+1)/(A000007(n)+1)`
-/

namespace A246492.P13787300993615634399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246495 (n + 1) : ℚ) / (A000007 n + 1 : ℚ)

end

end A246492.P13787300993615634399

/-! ## A246492.P7532964510476399108

`A246495(n+1)/Δ[A026505(n+1)]`
-/

namespace A246492.P7532964510476399108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026505 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246495 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A246492.P7532964510476399108

/-!
# A246493: Smallest k such that 5^^n is not congruent to 5^^(n-1) mod k, where 5^^n denotes the power tower 5^5^...^5 (in which 5 appears n times).

The programs for A246493, there is no canonical definition to state claims against.
-/

/-! ## A246493.P7342279256169566131

`or(1, A276517(3^n))`
-/

namespace A246493.P7342279256169566131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276517 (3 ^ n))

end

end A246493.P7342279256169566131

/-!
# A246494: Smallest k such that 6^^n is not congruent to 6^^(n-1) mod k, where 6^^n denotes the power tower 6^6^...^6 (in which 6 appears n times).

The programs for A246494, there is no canonical definition to state claims against.
-/

/-! ## A246494.P7909511255564971825

`A020986((n+4)!/8)`
-/

namespace A246494.P7909511255564971825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (SequenceMachineLib.roundAway ((Nat.factorial (n + 4) : ℚ) / 8)).toNat

end

end A246494.P7909511255564971825

/-!
# A246495: Smallest k such that 7^^n is not congruent to 7^^(n-1) mod k, where 7^^n denotes the power tower 7^7^...^7 (in which 7 appears n times).

The programs for A246495, there is no canonical definition to state claims against.
-/

/-! ## A246495.P352507333561440220

`abs(xor(-2, A246492(n+1)))`
-/

namespace A246495.P352507333561440220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (A246492 (n + 1))|

end

end A246495.P352507333561440220

/-! ## A246495.P17799904360314440896

`A246492(n+1)+A000038(n)`
-/

namespace A246495.P17799904360314440896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246492 (n + 1) + A000038 n

end

end A246495.P17799904360314440896

/-! ## A246495.P2766380121701264908

`A054977(n)*A246492(n+1)`
-/

namespace A246495.P2766380121701264908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A246492 (n + 1)

end

end A246495.P2766380121701264908

/-! ## A246495.P5883224321166306134

`A246492(n+1)+A130706(n+1)`
-/

namespace A246495.P5883224321166306134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246492 (n + 1) + A130706 (n + 1)

end

end A246495.P5883224321166306134

/-! ## A246495.P10798521210609807578

`(A000007(n)+1)*A246492(n+1)`
-/

namespace A246495.P10798521210609807578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A246492 (n + 1)

end

end A246495.P10798521210609807578

/-!
# A246496: Smallest k such that 8^^n is not congruent to 8^^(n-1) mod k, where 8^^n denotes the power tower 8^8^...^8 (in which 8 appears n times).

The programs for A246496, there is no canonical definition to state claims against.
-/

/-! ## A246496.P1502546815888530068

`A246491(n+1)-C(2, n²)`
-/

namespace A246496.P1502546815888530068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246491 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ)

end

end A246496.P1502546815888530068

/-! ## A246496.P10729750006333194421

`A056637(round(sqrt(n²+1)))+char[1]`
-/

namespace A246496.P10729750006333194421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056637 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A246496.P10729750006333194421

/-! ## A246496.P2970217529145142249

`A246491(n+1)-A130706(n)`
-/

namespace A246496.P2970217529145142249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246491 (n + 1) - A130706 n

end

end A246496.P2970217529145142249

/-! ## A246496.P7836313588977380063

`A246491(n+1)-A071147(n)%3`
-/

namespace A246496.P7836313588977380063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246491 (n + 1) - Int.tmod (A071147 n) 3

end

end A246496.P7836313588977380063

/-! ## A246496.P14741702641252135419

`∪[or(1, A056637(n+1)), A056637(n+1)]`
-/

namespace A246496.P14741702641252135419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056637 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246496.P14741702641252135419

/-!
# A246497: Smallest k such that 9^^n is not congruent to 9^^(n-1) mod k, where 9^^n denotes the power tower 9^9^...^9 (in which 9 appears n times).

The programs for A246497, there is no canonical definition to state claims against.
-/

/-! ## A246497.P11350400210745431229

`A082449(n+1)`
-/

namespace A246497.P11350400210745431229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082449 (n + 1)

end

end A246497.P11350400210745431229

/-! ## A246497.P15822579568804496082

`record[A082449(abs(1-n))]`
-/

namespace A246497.P15822579568804496082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082449 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246497.P15822579568804496082

/-! ## A246497.P8753348875790098547

`-Δ[-∑[A082449(n)]]`
-/

namespace A246497.P8753348875790098547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A246497.P8753348875790098547

/-! ## A246497.P6851282432469463431

`or(1, A082449(Δ[n²]-n))`
-/

namespace A246497.P6851282432469463431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A082449 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A246497.P6851282432469463431

/-! ## A246497.P14318567313239343939

`record[xor(A082449(n), A130706(n))]`
-/

namespace A246497.P14318567313239343939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082449 n) (A130706 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246497.P14318567313239343939

/-!
# A246498: Numerator of the harmonic mean of the first n squares.

The programs for A246498, the canonical program `A246498.P3117156610869488528` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246498 has offset 1).

The definition of A246498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246498.P3117156610869488528

`(n+1)*A007407(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246498

/-- `(n+1)*A007407(n+1)` -/
def P3117156610869488528.Spec : Prop :=
  ∀ n, P3117156610869488528.a n = A246498 (n + 1)

theorem P3117156610869488528.correct : P3117156610869488528.Spec := by
  intro n
  simp only [A246498, Nat.add_sub_cancel]

end A246498

/-! ## A246498.P8068665092483109400

`A007407(A028242(2*n))*A131830(∑[n])`
-/

namespace A246498.P8068665092483109400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A028242 (2 * n)).toNat * A131830 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246498.P8068665092483109400

namespace A246498

/-- `A007407(A028242(2*n))*A131830(∑[n])` -/
def P8068665092483109400.Spec : Prop :=
  ∀ n, P8068665092483109400.a n = A246498 (n + 1)

end A246498

/-! ## A246498.P231776104836082024

`A007407(A008619(2*n))*A008619(2*n)`
-/

namespace A246498.P231776104836082024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A246498.P231776104836082024

namespace A246498

/-- `A007407(A008619(2*n))*A008619(2*n)` -/
def P231776104836082024.Spec : Prop :=
  ∀ n, P231776104836082024.a n = A246498 (n + 1)

end A246498

/-! ## A246498.P7805005977700346800

`A007407(A028242(2*n))*A176743(2*n)`
-/

namespace A246498.P7805005977700346800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A028242 (2 * n)).toNat * A176743 (2 * n)

end

end A246498.P7805005977700346800

namespace A246498

/-- `A007407(A028242(2*n))*A176743(2*n)` -/
def P7805005977700346800.Spec : Prop :=
  ∀ n, P7805005977700346800.a n = A246498 (n + 1)

end A246498

/-! ## A246498.P1506541753577833955

`A007407(n+1)/(n+1)^A163805(A016813(n))`
-/

namespace A246498.P1506541753577833955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007407 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A163805 (A016813 n).toNat : ℤ)

end

end A246498.P1506541753577833955

namespace A246498

/-- `A007407(n+1)/(n+1)^A163805(A016813(n))` -/
def P1506541753577833955.Spec : Prop :=
  ∀ n, P1506541753577833955.a n = (A246498 (n + 1) : ℚ)

end A246498

/-! ## A246498.P17144749221812876007

`A007407(A028242(2*n))*A008619(A005408(n))`
-/

namespace A246498.P17144749221812876007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A028242 (2 * n)).toNat * A008619 (A005408 n).toNat

end

end A246498.P17144749221812876007

namespace A246498

/-- `A007407(A028242(2*n))*A008619(A005408(n))` -/
def P17144749221812876007.Spec : Prop :=
  ∀ n, P17144749221812876007.a n = A246498 (n + 1)

end A246498

