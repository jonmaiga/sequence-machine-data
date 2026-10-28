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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C049
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C000
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
# A064503: Bisection of A064394.

The programs for A064503, there is no canonical definition to state claims against.
-/

/-! ## A064503.P6609614564247120628

`A064394(Δ[n²])`
-/

namespace A064503.P6609614564247120628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064503.P6609614564247120628

/-! ## A064503.P190030921554013623

`A064394(2*(n+1))-1`
-/

namespace A064503.P190030921554013623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (2 * (n + 1)) - 1

end

end A064503.P190030921554013623

/-! ## A064503.P13955815622421219353

`lcm(2, A064394(2*n+1))`
-/

namespace A064503.P13955815622421219353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A064394 (2 * n + 1))

end

end A064503.P13955815622421219353

/-! ## A064503.P12206521921540211769

`∩[2*n, A064393(n+1)]`
-/

namespace A064503.P12206521921540211769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P12206521921540211769

/-! ## A064503.P11898910975099603274

`∩[2*n, A064394(n+1)]`
-/

namespace A064503.P11898910975099603274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P11898910975099603274

/-! ## A064503.P15165043133381880476

`filter[A064393(n+1), A254379(#)]`
-/

namespace A064503.P15165043133381880476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254379 (f1 j).toNat = 1) n)

end

end A064503.P15165043133381880476

/-! ## A064503.P17777277468308101747

`filter[A064394(n+1), A254379(#)]`
-/

namespace A064503.P17777277468308101747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254379 (f1 j).toNat = 1) n)

end

end A064503.P17777277468308101747

/-! ## A064503.P11049450907896979493

`∩[A064393(n+1), A128309(n+1)]`
-/

namespace A064503.P11049450907896979493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P11049450907896979493

/-! ## A064503.P7037588958555411294

`∩[A064394(n+1), A128309(n+1)]`
-/

namespace A064503.P7037588958555411294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P7037588958555411294

/-! ## A064503.P2731713695666824311

`∩[A064393(n+1), A246158(n+1)]`
-/

namespace A064503.P2731713695666824311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P2731713695666824311

/-! ## A064503.P3349282373655874854

`∩[A064394(n+1), A246158(n+1)]`
-/

namespace A064503.P3349282373655874854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P3349282373655874854

/-! ## A064503.P12651353838357382421

`∩[A064393(n+1), A125495(n+1)]`
-/

namespace A064503.P12651353838357382421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P12651353838357382421

/-! ## A064503.P14460463244214192126

`∩[A064394(n+1), A125495(n+1)]`
-/

namespace A064503.P14460463244214192126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P14460463244214192126

/-! ## A064503.P1638716362865619714

`∩[A064393(n+1), A229937(n+1)]`
-/

namespace A064503.P1638716362865619714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P1638716362865619714

/-! ## A064503.P10125995738929664752

`∩[A064394(n+1), A229937(n+1)]`
-/

namespace A064503.P10125995738929664752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P10125995738929664752

/-! ## A064503.P12471149898926664369

`∩[A064393(n+1), A103517(n)]`
-/

namespace A064503.P12471149898926664369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P12471149898926664369

/-! ## A064503.P7263209621891892437

`∩[A064394(n+1), A103517(n)]`
-/

namespace A064503.P7263209621891892437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P7263209621891892437

/-! ## A064503.P4018662104568331133

`∩[A064393(n+1), A163300(n+1)]`
-/

namespace A064503.P4018662104568331133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P4018662104568331133

/-! ## A064503.P13019420029308855271

`∩[A064394(n+1), A163300(n+1)]`
-/

namespace A064503.P13019420029308855271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P13019420029308855271

/-! ## A064503.P12613132531714156484

`∩[A064393(n+1), A257282(n+1)]`
-/

namespace A064503.P12613132531714156484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064503.P12613132531714156484

/-!
# A064505: Interchange primes and their squares.

The programs for A064505, the canonical program `A064505.P8463286174945145263` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064505 has offset 1).

The definition of A064505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064505.P8463286174945145263

`(n+1)*A014963(n+1)^A189021(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A064505

/-- `(n+1)*A014963(n+1)^A189021(n+1)` -/
def P8463286174945145263.Spec : Prop :=
  ∀ n, P8463286174945145263.a n = (A064505 (n + 1) : ℚ)

end A064505

/-! ## A064505.P1184033885145024884

`(n+1)*A014963(n+1)^A008683(A002033(n))`
-/

namespace A064505.P1184033885145024884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A014963 (n + 1) : ℚ) ^ (A008683 (A002033 n).toNat : ℤ)

end

end A064505.P1184033885145024884

namespace A064505

/-- `(n+1)*A014963(n+1)^A008683(A002033(n))` -/
def P1184033885145024884.Spec : Prop :=
  ∀ n, P1184033885145024884.a n = (A064505 (n + 1) : ℚ)

end A064505

/-! ## A064505.P9053112303045475376

`(n+1)*A014963(n+1)^A008683(A003557(n+1))`
-/

namespace A064505.P9053112303045475376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A014963 (n + 1) : ℚ) ^ (A008683 (A003557 (n + 1)).toNat : ℤ)

end

end A064505.P9053112303045475376

namespace A064505

/-- `(n+1)*A014963(n+1)^A008683(A003557(n+1))` -/
def P9053112303045475376.Spec : Prop :=
  ∀ n, P9053112303045475376.a n = (A064505 (n + 1) : ℚ)

end A064505

/-! ## A064505.P15880621379381070646

`(n+1)^2^A015483(A000005(n+1)²)`
-/

namespace A064505.P15880621379381070646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((2 : ℚ) ^ (A015483 (A000005 (n + 1) ^ 2).toNat : ℤ) : ℝ)

end

end A064505.P15880621379381070646

namespace A064505

/-- `(n+1)^2^A015483(A000005(n+1)²)` -/
def P15880621379381070646.Spec : Prop :=
  ∀ n, P15880621379381070646.a n = (A064505 (n + 1) : ℝ)

end A064505

/-! ## A064505.P2360413098381751289

`(n+1)^2^A008683(A028982(A002033(n)))`
-/

namespace A064505.P2360413098381751289
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((2 : ℚ) ^ (A008683 (A028982 (A002033 n).toNat).toNat : ℤ) : ℝ)

end

end A064505.P2360413098381751289

namespace A064505

/-- `(n+1)^2^A008683(A028982(A002033(n)))` -/
def P2360413098381751289.Spec : Prop :=
  ∀ n, P2360413098381751289.a n = (A064505 (n + 1) : ℝ)

end A064505

/-! ## A064505.P7874862607174636563

`(n+1)^2^A121373(2^A070824(n+1))`
-/

namespace A064505.P7874862607174636563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((2 : ℚ) ^ (A121373 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A070824 (n + 1) : ℤ))).toNat : ℤ) : ℝ)

end

end A064505.P7874862607174636563

namespace A064505

/-- `(n+1)^2^A121373(2^A070824(n+1))` -/
def P7874862607174636563.Spec : Prop :=
  ∀ n, P7874862607174636563.a n = (A064505 (n + 1) : ℝ)

end A064505

/-! ## A064505.P4108424491733825736

`(n+1)*A014963(n+1)^A317146(n+1)`
-/

namespace A064505.P4108424491733825736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A014963 (n + 1) : ℚ) ^ (A317146 (n + 1) : ℤ)

end

end A064505.P4108424491733825736

namespace A064505

/-- `(n+1)*A014963(n+1)^A317146(n+1)` -/
def P4108424491733825736.Spec : Prop :=
  ∀ n, P4108424491733825736.a n = (A064505 (n + 1) : ℚ)

end A064505

/-!
# A064506: a(n) = Max { k | k*(k+1)/2 <= n*(n+1)/2 - k*(k+1)/2 }.

The programs for A064506, the canonical program `A064506.P13691131952425161155` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064506 has offset 1).

The definition of A064506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064506.P13691131952425161155

`floor((sqrt(2*(n+1)*(n+2)+1)-1)/2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064506

/-- `floor((sqrt(2*(n+1)*(n+2)+1)-1)/2)` -/
def P13691131952425161155.Spec : Prop :=
  ∀ n, P13691131952425161155.a n = A064506 (n + 1)

theorem P13691131952425161155.correct : P13691131952425161155.Spec := by
  intro n
  simp only [A064506, Nat.add_sub_cancel]

end A064506

/-! ## A064506.P10453413527443787803

`abs(round(sqrt(C(n+2, 2)+1))-1)`
-/

namespace A064506.P10453413527443787803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (n + 2) 2 + 1 : ℝ)) - 1|

end

end A064506.P10453413527443787803

namespace A064506

/-- `abs(round(sqrt(C(n+2, 2)+1))-1)` -/
def P10453413527443787803.Spec : Prop :=
  ∀ n, P10453413527443787803.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P3047667518292475760

`A181534(n+1)-1`
-/

namespace A064506.P3047667518292475760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181534 (n + 1) - 1

end

end A064506.P3047667518292475760

namespace A064506

/-- `A181534(n+1)-1` -/
def P3047667518292475760.Spec : Prop :=
  ∀ n, P3047667518292475760.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P4754185773984507253

`A023443(round(sqrt(∑[n+1]+1)))`
-/

namespace A064506.P4754185773984507253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ))).toNat

end

end A064506.P4754185773984507253

namespace A064506

/-- `A023443(round(sqrt(∑[n+1]+1)))` -/
def P4754185773984507253.Spec : Prop :=
  ∀ n, P4754185773984507253.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P6056891588527668689

`abs(1-round(sqrt(A000217(n+1)+1)))`
-/

namespace A064506.P6056891588527668689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - SequenceMachineLib.roundAway (Real.sqrt (A000217 (n + 1) + 1 : ℝ))|

end

end A064506.P6056891588527668689

namespace A064506

/-- `abs(1-round(sqrt(A000217(n+1)+1)))` -/
def P6056891588527668689.Spec : Prop :=
  ∀ n, P6056891588527668689.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P4670573380974565904

`round(sqrt(A000124(n+1))+n)%(n+1)`
-/

namespace A064506.P4670573380974565904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A000124 (n + 1) : ℝ) + (n : ℝ))) (n + 1 : ℤ)

end

end A064506.P4670573380974565904

namespace A064506

/-- `round(sqrt(A000124(n+1))+n)%(n+1)` -/
def P4670573380974565904.Spec : Prop :=
  ∀ n, P4670573380974565904.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P15179298025739370635

`A004526(A097432(n+1)-1)`
-/

namespace A064506.P15179298025739370635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A097432 (n + 1) - 1).toNat

end

end A064506.P15179298025739370635

namespace A064506

/-- `A004526(A097432(n+1)-1)` -/
def P15179298025739370635.Spec : Prop :=
  ∀ n, P15179298025739370635.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P13371217337982635673

`A070198(n)%A181534(n+1)`
-/

namespace A064506.P13371217337982635673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A181534 (n + 1))

end

end A064506.P13371217337982635673

namespace A064506

/-- `A070198(n)%A181534(n+1)` -/
def P13371217337982635673.Spec : Prop :=
  ∀ n, P13371217337982635673.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P11607272139454220373

`A079782(n+1)%A181534(n+1)`
-/

namespace A064506.P11607272139454220373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A181534 (n + 1))

end

end A064506.P11607272139454220373

namespace A064506

/-- `A079782(n+1)%A181534(n+1)` -/
def P11607272139454220373.Spec : Prop :=
  ∀ n, P11607272139454220373.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P18372217026623378905

`A083685(n+1)%A181534(n+1)`
-/

namespace A064506.P18372217026623378905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A181534 (n + 1))

end

end A064506.P18372217026623378905

namespace A064506

/-- `A083685(n+1)%A181534(n+1)` -/
def P18372217026623378905.Spec : Prop :=
  ∀ n, P18372217026623378905.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P11195885952842174764

`A121934(n+1)%A181534(n+1)`
-/

namespace A064506.P11195885952842174764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A181534 (n + 1))

end

end A064506.P11195885952842174764

namespace A064506

/-- `A121934(n+1)%A181534(n+1)` -/
def P11195885952842174764.Spec : Prop :=
  ∀ n, P11195885952842174764.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P9297924863265646053

`A003056(floor(∑[(n+1)/2]))`
-/

namespace A064506.P9297924863265646053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A064506.P9297924863265646053

namespace A064506

/-- `A003056(floor(∑[(n+1)/2]))` -/
def P9297924863265646053.Spec : Prop :=
  ∀ n, P9297924863265646053.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P10367734327120018138

`A000196(A028391(∑[n])+n)`
-/

namespace A064506.P10367734327120018138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028391 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A064506.P10367734327120018138

namespace A064506

/-- `A000196(A028391(∑[n])+n)` -/
def P10367734327120018138.Spec : Prop :=
  ∀ n, P10367734327120018138.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P4504126372057833258

`A259361(∑[n+1])`
-/

namespace A064506.P4504126372057833258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064506.P4504126372057833258

namespace A064506

/-- `A259361(∑[n+1])` -/
def P4504126372057833258.Spec : Prop :=
  ∀ n, P4504126372057833258.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P6680410718526846504

`A000196(A056847(∑[n+1]))`
-/

namespace A064506.P6680410718526846504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056847 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064506.P6680410718526846504

namespace A064506

/-- `A000196(A056847(∑[n+1]))` -/
def P6680410718526846504.Spec : Prop :=
  ∀ n, P6680410718526846504.a n = A064506 (n + 1)

end A064506

/-! ## A064506.P5982707224755869594

`A004526(A055086(∑[n+1]))`
-/

namespace A064506.P5982707224755869594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A055086 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064506.P5982707224755869594

namespace A064506

/-- `A004526(A055086(∑[n+1]))` -/
def P5982707224755869594.Spec : Prop :=
  ∀ n, P5982707224755869594.a n = A064506 (n + 1)

end A064506

/-!
# A064507: Numbers of more than one digit that yield primes when cast in their own base.

The programs for A064507, there is no canonical definition to state claims against.
-/

/-! ## A064507.P16737766040558576630

`lt[n+1, A020639(A122618(n+1))]+1`
-/

namespace A064507.P16737766040558576630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A122618 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A064507.P16737766040558576630

/-!
# A064508: Prime numbers generated by casting a number in its own base.

The programs for A064508, there is no canonical definition to state claims against.
-/

/-! ## A064508.P9948541730492121927

`A122618(A064507(n+1))`
-/

namespace A064508.P9948541730492121927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A064507 (n + 1)).toNat

end

end A064508.P9948541730492121927

/-! ## A064508.P555664991334905094

`p?[A122618(n+8)]`
-/

namespace A064508.P555664991334905094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064508.P555664991334905094

/-! ## A064508.P6372514792536015195

`∩[A122259(n+1), A122618(n+1)]`
-/

namespace A064508.P6372514792536015195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064508.P6372514792536015195

/-! ## A064508.P14070687338692818052

`∩[A122618(n+2), A065091(n+4)]`
-/

namespace A064508.P14070687338692818052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064508.P14070687338692818052

/-!
# A064509: Marks (in fathoms) on lead line used by ships on the Mississippi River.

The programs for A064509, there is no canonical definition to state claims against.
-/

/-! ## A064509.P16339876387423382528

`lt[A000700(n), A050379(A250120(n))]`
-/

namespace A064509.P16339876387423382528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (A250120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064509.P16339876387423382528

/-!
# A064510: Numbers m such that the sum of the first k divisors of m is equal to m for some k.

The programs for A064510, there is no canonical definition to state claims against.
-/

/-! ## A064510.P181198659810114942

`record[C(A117552(n+1), n)]`
-/

namespace A064510.P181198659810114942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A117552 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064510.P181198659810114942

/-! ## A064510.P14362849647931671896

`eq[n, A117552(A028310(n))]`
-/

namespace A064510.P14362849647931671896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117552 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064510.P14362849647931671896

/-! ## A064510.P13643292990500088367

`filter[A226476(n+1), A011750(#)]`
-/

namespace A064510.P13643292990500088367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011750 (f1 j).toNat = 1) n)

end

end A064510.P13643292990500088367

/-! ## A064510.P7269004940094484516

`filter[A226476(n+1), A091444(#)]`
-/

namespace A064510.P7269004940094484516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091444 (f1 j).toNat = 1) n)

end

end A064510.P7269004940094484516

/-!
# A064514: Write A064476(n) = 2^i(n)*3^j(n); sequence gives values of i(n).

The programs for A064514, there is no canonical definition to state claims against.
-/

/-! ## A064514.P8482706609024371098

`val(A064476(n+1), 2)`
-/

namespace A064514.P8482706609024371098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064476 (n + 1)).toNat 2

end

end A064514.P8482706609024371098

/-! ## A064514.P6092860627339933021

`val(A064518(n+1), 3)`
-/

namespace A064514.P6092860627339933021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064518 (n + 1)).toNat 3

end

end A064514.P6092860627339933021

/-! ## A064514.P1904189236327728943

`A005408(A064515(n+1))-A167287(n+1)`
-/

namespace A064514.P1904189236327728943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A064515 (n + 1)).toNat - A167287 (n + 1)

end

end A064514.P1904189236327728943

/-! ## A064514.P9488765059588714344

`A001222(gcd(2^n, A064476(n+1)))`
-/

namespace A064514.P9488765059588714344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 ^ n : ℤ) (A064476 (n + 1)))

end

end A064514.P9488765059588714344

/-! ## A064514.P10832663126577190176

`A025679(n+1)+A064515(n+1)%A064527(n+1)`
-/

namespace A064514.P10832663126577190176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025679 (n + 1) + Int.tmod (A064515 (n + 1)) (A064527 (n + 1))

end

end A064514.P10832663126577190176

/-! ## A064514.P5862173912524832013

`A064515(n+1)+A064515(n+1)-A025654(n+1)%A064527(n+1)`
-/

namespace A064514.P5862173912524832013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (n + 1) + (A064515 (n + 1) - Int.tmod (A025654 (n + 1)) (A064527 (n + 1)))

end

end A064514.P5862173912524832013

/-!
# A064515: Write A064476(n) = 2^i(n)*3^j(n); sequence gives values of j(n).

The programs for A064515, there is no canonical definition to state claims against.
-/

/-! ## A064515.P11923496968032858287

`val(A064476(n+1), 3)`
-/

namespace A064515.P11923496968032858287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064476 (n + 1)).toNat 3

end

end A064515.P11923496968032858287

/-! ## A064515.P2899825343286706233

`val(A064518(n+1), 4)`
-/

namespace A064515.P2899825343286706233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064518 (n + 1)).toNat 4

end

end A064515.P2899825343286706233

/-! ## A064515.P215558107114074729

`floor((A167287(n+1)+A064514(n+1))/2)`
-/

namespace A064515.P215558107114074729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167287 (n + 1) + A064514 (n + 1) : ℚ) / 2⌋

end

end A064515.P215558107114074729

/-! ## A064515.P8945733371282122019

`A004524(A167287(n+1)+A064514(n+1))`
-/

namespace A064515.P8945733371282122019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A167287 (n + 1) + A064514 (n + 1)).toNat

end

end A064515.P8945733371282122019

/-! ## A064515.P1508985664961099802

`A028242(A167287(n+1)+A064514(n+1))`
-/

namespace A064515.P1508985664961099802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A167287 (n + 1) + A064514 (n + 1)).toNat

end

end A064515.P1508985664961099802

/-! ## A064515.P1687343972316850260

`A026741(A064514(n+1)+A167287(n+1)-1)`
-/

namespace A064515.P1687343972316850260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A064514 (n + 1) + (A167287 (n + 1) - 1)).toNat

end

end A064515.P1687343972316850260

/-! ## A064515.P9209400248774842046

`A025654(n+1)+A025679(n+1)%A064527(n+1)`
-/

namespace A064515.P9209400248774842046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025654 (n + 1) + Int.tmod (A025679 (n + 1)) (A064527 (n + 1))

end

end A064515.P9209400248774842046

/-! ## A064515.P2864321041042069611

`(A064514(n+1)-A025679(n+1))%A064527(n+1)`
-/

namespace A064515.P2864321041042069611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064514 (n + 1) - A025679 (n + 1)) (A064527 (n + 1))

end

end A064515.P2864321041042069611

/-!
# A064516: Numbers k such that pi(k^2) is prime.

The programs for A064516, there is no canonical definition to state claims against.
-/

/-! ## A064516.P15841968106045453715

`lt[A237053(A038107(n)), 1]`
-/

namespace A064516.P15841968106045453715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A038107 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A064516.P15841968106045453715

/-! ## A064516.P2983064426035872711

`record[(n+2)*A010051(A038107(n+2))]`
-/

namespace A064516.P2983064426035872711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A010051 (A038107 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064516.P2983064426035872711

/-! ## A064516.P3095576407983779386

`record[(n+1)/a(A001222(A038107(n+1)))]` with `a(0)=2, a(1)=1, a(2)=-4`
-/

namespace A064516.P3095576407983779386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, -4] fun n f1 =>
  (n + 1 : ℚ) / f1 (A001222 (A038107 (n + 1)).toNat).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064516.P3095576407983779386

/-! ## A064516.P13726025981584771620

`record[A005843(n+2)/A305800(A038107(n+2))]`
-/

namespace A064516.P13726025981584771620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 2) : ℚ) / (A305800 (A038107 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064516.P13726025981584771620

/-! ## A064516.P4125823469181779566

`A166127(p?[A038107(n)])`
-/

namespace A064516.P4125823469181779566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166127 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064516.P4125823469181779566

/-! ## A064516.P4651763674368032423

`A166127(∩[A006093(n+1)+1, A038107(n+1)])`
-/

namespace A064516.P4651763674368032423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166127 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A064516.P4651763674368032423

/-! ## A064516.P7170147216047841314

`eq[1, A074206(A038107(n+1))]+1`
-/

namespace A064516.P7170147216047841314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A038107 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064516.P7170147216047841314

/-! ## A064516.P3700783676387295568

`A104103(p?[A038107(n)])`
-/

namespace A064516.P3700783676387295568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064516.P3700783676387295568

/-! ## A064516.P6738132646500331236

`A104103(p?[∑[A014085(n)]])`
-/

namespace A064516.P6738132646500331236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064516.P6738132646500331236

/-!
# A064517: Numbers k such that pi(k) is a square.

The programs for A064517, the canonical program `A064517.P16939115465743237855` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064517 has offset 1).

The definition of A064517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064517.P16939115465743237855

`record[(n+1)*A010052(A000720(n+1))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064517

/-- `record[(n+1)*A010052(A000720(n+1))]` -/
def P16939115465743237855.Spec : Prop :=
  ∀ n, P16939115465743237855.a n = A064517 (n + 1)

theorem P16939115465743237855.correct : P16939115465743237855.Spec := by
  intro n
  simp only [A064517, Nat.add_sub_cancel]

end A064517

/-! ## A064517.P10116983113683485336

`eq[1, A010052(A000720(n+1))]+1`
-/

namespace A064517.P10116983113683485336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064517.P10116983113683485336

namespace A064517

/-- `eq[1, A010052(A000720(n+1))]+1` -/
def P10116983113683485336.Spec : Prop :=
  ∀ n, (P10116983113683485336.a n : ℤ) = A064517 (n + 1)

end A064517

/-! ## A064517.P4716553451414135996

`eq[2, A237710(n+2)]`
-/

namespace A064517.P4716553451414135996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237710 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064517.P4716553451414135996

namespace A064517

/-- `eq[2, A237710(n+2)]` -/
def P4716553451414135996.Spec : Prop :=
  ∀ n, (P4716553451414135996.a n : ℤ) = A064517 (n + 1)

end A064517

/-! ## A064517.P11382132450373398057

`eq[1, A237612(n+1)]+1`
-/

namespace A064517.P11382132450373398057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064517.P11382132450373398057

namespace A064517

/-- `eq[1, A237612(n+1)]+1` -/
def P11382132450373398057.Spec : Prop :=
  ∀ n, (P11382132450373398057.a n : ℤ) = A064517 (n + 1)

end A064517

/-! ## A064517.P10737454175672076216

`record[1-A237710(n+1)+n]`
-/

namespace A064517.P10737454175672076216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A237710 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064517.P10737454175672076216

namespace A064517

/-- `record[1-A237710(n+1)+n]` -/
def P10737454175672076216.Spec : Prop :=
  ∀ n, P10737454175672076216.a n = A064517 (n + 1)

end A064517

/-!
# A064518: For an integer n with prime factorization p_1*p_2*p_3* ... *p_m let n* = (p_1+1)*(p_2+1)*(p_3+1)* ... *(p_m+1); sequence gives n* such that n* is divisible by n, ordered by increasing value of n.

The programs for A064518, there is no canonical definition to state claims against.
-/

/-! ## A064518.P12684033126063244878

`3^A064514(n+1)*4^A064515(n+1)`
-/

namespace A064518.P12684033126063244878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A064514 (n + 1) : ℤ) * (4 : ℚ) ^ (A064515 (n + 1) : ℤ)

end

end A064518.P12684033126063244878

/-! ## A064518.P14587170429161845697

`A000079(A064515(n+1))²*A000244(A064514(n+1))`
-/

namespace A064518.P14587170429161845697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A064515 (n + 1)).toNat ^ 2 * A000244 (A064514 (n + 1)).toNat

end

end A064518.P14587170429161845697

/-! ## A064518.P83116552622591019

`record[A380574(A380600(n+1)+1)]`
-/

namespace A064518.P83116552622591019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380574 (A380600 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064518.P83116552622591019

/-! ## A064518.P5817667069792174033

`A054977(A374687(n))*A380574(n+1)`
-/

namespace A064518.P5817667069792174033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A374687 n).toNat * A380574 (n + 1)

end

end A064518.P5817667069792174033

/-! ## A064518.P8224512393591711050

`A003959(A064476(n+1))`
-/

namespace A064518.P8224512393591711050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A064476 (n + 1)).toNat

end

end A064518.P8224512393591711050

/-!
# A064520: a(n) = + 1 - 2 - 3 + 4 + 5 + 6 - 7 - 8 - 9 - 10 + 11 + 12 + 13 + 14 + 15 - ... + (+-1)*n, where there is one plus, two minuses, three pluses, etc. (see A002024).

The programs for A064520, the canonical program `A064520.P16522075484483722400` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064520 has offset 1).

The definition of A064520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064520.P17958429291119192132

`∑[(n+1)*(-1)^A185869(n+1)]`
-/

namespace A064520.P17958429291119192132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (A185869 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064520.P17958429291119192132

namespace A064520

/-- `∑[(n+1)*(-1)^A185869(n+1)]` -/
def P17958429291119192132.Spec : Prop :=
  ∀ n, P17958429291119192132.a n = (A064520 (n + 1) : ℚ)

end A064520

/-! ## A064520.P12482291873308420614

`∑[(n+1)*(-1)^A003057(n+2)]`
-/

namespace A064520.P12482291873308420614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (A003057 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064520.P12482291873308420614

namespace A064520

/-- `∑[(n+1)*(-1)^A003057(n+2)]` -/
def P12482291873308420614.Spec : Prop :=
  ∀ n, P12482291873308420614.a n = (A064520 (n + 1) : ℚ)

end A064520

/-! ## A064520.P16522075484483722400

`∑[(n+1)*A033999(A003056(n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064520

/-- `∑[(n+1)*A033999(A003056(n))]` -/
def P16522075484483722400.Spec : Prop :=
  ∀ n, P16522075484483722400.a n = A064520 (n + 1)

theorem P16522075484483722400.correct : P16522075484483722400.Spec := by
  intro n
  simp only [A064520, Nat.add_sub_cancel]

end A064520

/-! ## A064520.P9031485674238805101

`∑[(n+1)*A033999(A049581(n))]`
-/

namespace A064520.P9031485674238805101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A049581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064520.P9031485674238805101

namespace A064520

/-- `∑[(n+1)*A033999(A049581(n))]` -/
def P9031485674238805101.Spec : Prop :=
  ∀ n, P9031485674238805101.a n = A064520 (n + 1)

end A064520

/-! ## A064520.P1633006905913048718

`∑[(n+1)*Δ[A010751(n)]]`
-/

namespace A064520.P1633006905913048718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064520.P1633006905913048718

namespace A064520

/-- `∑[(n+1)*Δ[A010751(n)]]` -/
def P1633006905913048718.Spec : Prop :=
  ∀ n, P1633006905913048718.a n = A064520 (n + 1)

end A064520

/-! ## A064520.P7542267886552690964

`∑[(n+1)*(-1)^A163336(n)]`
-/

namespace A064520.P7542267886552690964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (A163336 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064520.P7542267886552690964

namespace A064520

/-- `∑[(n+1)*(-1)^A163336(n)]` -/
def P7542267886552690964.Spec : Prop :=
  ∀ n, P7542267886552690964.a n = (A064520 (n + 1) : ℚ)

end A064520

/-!
# A064521: Number of rooted 5-connected planar triangulations with 2n faces.

The programs for A064521, there is no canonical definition to state claims against.
-/

/-! ## A064521.P3036213602814175983

`xor(n, A100196(A086871(n)))`
-/

namespace A064521.P3036213602814175983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A100196 (A086871 n).toNat)

end

end A064521.P3036213602814175983

/-!
# A064522: For an integer n with prime factorization p1*p2*p3* ... *pn let n* = (p1-1)*(p2-1)*(p3-1)* ... *(pn-1) (A003958); sequence gives n such that n is divisible by n*.

The programs for A064522, the canonical program `A064522.P867871108322155119` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064522 has offset 1).

The definition of A064522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064522.P867871108322155119

`lt[(n+1)%A003958(n+1), 1]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064522

/-- `lt[(n+1)%A003958(n+1), 1]+1` -/
def P867871108322155119.Spec : Prop :=
  ∀ n, (P867871108322155119.a n : ℤ) = A064522 (n + 1)

theorem P867871108322155119.correct : P867871108322155119.Spec := by
  intro n
  simp only [A064522, Nat.add_sub_cancel]

end A064522

/-! ## A064522.P18255925278035486073

`eq[A003958(n+1), A348928(n+1)]+1`
-/

namespace A064522.P18255925278035486073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064522.P18255925278035486073

namespace A064522

/-- `eq[A003958(n+1), A348928(n+1)]+1` -/
def P18255925278035486073.Spec : Prop :=
  ∀ n, (P18255925278035486073.a n : ℤ) = A064522 (n + 1)

end A064522

/-! ## A064522.P3191942454659369533

`record[A262504(A072000(A034807(n)))]`
-/

namespace A064522.P3191942454659369533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262504 (A072000 (A034807 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064522.P3191942454659369533

namespace A064522

/-- `record[A262504(A072000(A034807(n)))]` -/
def P3191942454659369533.Spec : Prop :=
  ∀ n, P3191942454659369533.a n = A064522 (n + 1)

end A064522

/-!
# A064523: Numbers m such that pi(m^2) is a square.

The programs for A064523, there is no canonical definition to state claims against.
-/

/-! ## A064523.P17384766802764490974

`A280882(a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A064523.P17384766802764490974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  A280882 (a (n - 1)).toNat

end

end A064523.P17384766802764490974

/-!
# A064524: Number of noncubes <= n.

The programs for A064524, the canonical program `A064524.P9633384338654413116` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064524 has offset 0).

The definition of A064524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064524.P9633384338654413116

`n-A048766(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064524

/-- `n-A048766(n)` -/
def P9633384338654413116.Spec : Prop :=
  ∀ n, P9633384338654413116.a n = A064524 n

theorem P9633384338654413116.correct : P9633384338654413116.Spec := by
  intro n
  simp only [A064524]

end A064524

/-! ## A064524.P12037510165750508928

`n-floor(root(n, 3))`
-/

namespace A064524.P12037510165750508928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A064524.P12037510165750508928

namespace A064524

/-- `n-floor(root(n, 3))` -/
def P12037510165750508928.Spec : Prop :=
  ∀ n, P12037510165750508928.a n = A064524 n

theorem P12037510165750508928.correct : P12037510165750508928.Spec := by
  intro n
  simp only [A064524, Nat.add_sub_cancel, A064524.P12037510165750508928.a, A064524.P9633384338654413116.a, A048766, A048766.P11393263195670548898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064524

/-! ## A064524.P15433700489265092316

`∑[xor(1, char[n^3])]`
-/

namespace A064524.P15433700489265092316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064524.P15433700489265092316

namespace A064524

/-- `∑[xor(1, char[n^3])]` -/
def P15433700489265092316.Spec : Prop :=
  ∀ n, (P15433700489265092316.a n : ℤ) = A064524 n

end A064524

/-! ## A064524.P642945101183605860

`∑[dr(char[n^3]-1)]`
-/

namespace A064524.P642945101183605860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064524.P642945101183605860

namespace A064524

/-- `∑[dr(char[n^3]-1)]` -/
def P642945101183605860.Spec : Prop :=
  ∀ n, (P642945101183605860.a n : ℤ) = A064524 n

end A064524

/-! ## A064524.P532831465996390497

`Δ[n²]%comp[n^3+n]`
-/

namespace A064524.P532831465996390497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A064524.P532831465996390497

namespace A064524

/-- `Δ[n²]%comp[n^3+n]` -/
def P532831465996390497.Spec : Prop :=
  ∀ n, P532831465996390497.a n = A064524 n

end A064524

/-! ## A064524.P13859327735469724916

`∑[1-A010057(n)]`
-/

namespace A064524.P13859327735469724916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064524.P13859327735469724916

namespace A064524

/-- `∑[1-A010057(n)]` -/
def P13859327735469724916.Spec : Prop :=
  ∀ n, P13859327735469724916.a n = A064524 n

end A064524

/-! ## A064524.P4642025856742022026

`∑[char[A007412(n+1)]]`
-/

namespace A064524.P4642025856742022026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064524.P4642025856742022026

namespace A064524

/-- `∑[char[A007412(n+1)]]` -/
def P4642025856742022026.Spec : Prop :=
  ∀ n, (P4642025856742022026.a n : ℤ) = A064524 n

end A064524

/-! ## A064524.P5166306427758033382

`∑[char[A121842(n+2)]]`
-/

namespace A064524.P5166306427758033382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064524.P5166306427758033382

namespace A064524

/-- `∑[char[A121842(n+2)]]` -/
def P5166306427758033382.Spec : Prop :=
  ∀ n, (P5166306427758033382.a n : ℤ) = A064524 n

end A064524

/-!
# A064525: Smallest Fibonacci number with a prime number of decimal digits.

The programs for A064525, there is no canonical definition to state claims against.
-/

/-! ## A064525.P6904906791124921185

`A072351(A000040(n+1))`
-/

namespace A064525.P6904906791124921185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072351 (A000040 (n + 1)).toNat

end

end A064525.P6904906791124921185

/-! ## A064525.P4958057441861286995

`A072351(record[A006530(n+2)])`
-/

namespace A064525.P4958057441861286995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064525.P4958057441861286995

/-! ## A064525.P9251314196921146477

`A072351(record[A014963(n+2)])`
-/

namespace A064525.P9251314196921146477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064525.P9251314196921146477

/-! ## A064525.P4796470039071376474

`A072351(record[A020639(n+2)])`
-/

namespace A064525.P4796470039071376474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064525.P4796470039071376474

/-!
# A064527: Numbers k such that there exists a finite group G of order k such that all entries in its character table are integers.

The programs for A064527, there is no canonical definition to state claims against.
-/

/-! ## A064527.P5912752774152799895

`A333978(n+1)%A105999(n+1)`
-/

namespace A064527.P5912752774152799895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333978 (n + 1)) (A105999 (n + 1))

end

end A064527.P5912752774152799895

/-! ## A064527.P6052327331878632955

`∩[A068997(n+1), A384010(n+1)]`
-/

namespace A064527.P6052327331878632955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064527.P6052327331878632955

/-!
# A064528: Positive numbers that do not appear in A064520.

The programs for A064528, the canonical program `A064528.P6641944518489254211` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064528 has offset 1).

The definition of A064528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064528.P6641944518489254211

`comp[A064520(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064528

/-- `comp[A064520(n+1)]` -/
def P6641944518489254211.Spec : Prop :=
  ∀ n, (P6641944518489254211.a n : ℤ) = A064528 (n + 1)

theorem P6641944518489254211.correct : P6641944518489254211.Spec := by
  intro n
  simp only [A064528, Nat.add_sub_cancel]

end A064528

/-!
# A064531: Number of connected components remaining when decimal expansion of the number n is cut from a piece of paper.

The programs for A064531, the canonical program `A064531.P14938962011606256932` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064531 has offset 0).

The definition of A064531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064531.P7377730155651404001

`A064532(n)+1`
-/

namespace A064531.P7377730155651404001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n + 1

end

end A064531.P7377730155651404001

namespace A064531

/-- `A064532(n)+1` -/
def P7377730155651404001.Spec : Prop :=
  ∀ n, P7377730155651404001.a n = A064531 n

theorem P7377730155651404001.correct : P7377730155651404001.Spec := by
  intro n
  simp only [A064531, Nat.add_sub_cancel, A064531.P7377730155651404001.a, A064531.P14938962011606256932.a, A064532, A064532.P10940684509799697832.a, A064693, A064693.P14262218597709513042.a, A316865, A316865.P16119977982805478621.f1, A316865.P16119977982805478621.a, A064692, A064692.P5168258694329805100.f1, A064692.P5168258694329805100.a, A029352, A029352.P935358604536330210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064531

/-! ## A064531.P119296237724655886

`∑{digits}[n, A091981(#)]+1`
-/

namespace A064531.P119296237724655886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A091981 x).sum + 1

end

end A064531.P119296237724655886

namespace A064531

/-- `∑{digits}[n, A091981(#)]+1` -/
def P119296237724655886.Spec : Prop :=
  ∀ n, P119296237724655886.a n = A064531 n

end A064531

/-! ## A064531.P14938962011606256932

`A064693(n)-A316865(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A064531

/-- `A064693(n)-A316865(n)` -/
def P14938962011606256932.Spec : Prop :=
  ∀ n, P14938962011606256932.a n = A064531 n

theorem P14938962011606256932.correct : P14938962011606256932.Spec := by
  intro n
  simp only [A064531]

end A064531

/-! ## A064531.P8169412746939316806

`A048379(∑{digits}[n, A064532(#)])`
-/

namespace A064531.P8169412746939316806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064532 x).sum.toNat

end

end A064531.P8169412746939316806

namespace A064531

/-- `A048379(∑{digits}[n, A064532(#)])` -/
def P8169412746939316806.Spec : Prop :=
  ∀ n, P8169412746939316806.a n = A064531 n

end A064531

/-! ## A064531.P11072093069391276157

`A048379(∑{digits}[n, A091981(#)])`
-/

namespace A064531.P11072093069391276157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A091981 x).sum.toNat

end

end A064531.P11072093069391276157

namespace A064531

/-- `A048379(∑{digits}[n, A091981(#)])` -/
def P11072093069391276157.Spec : Prop :=
  ∀ n, P11072093069391276157.a n = A064531 n

end A064531

/-! ## A064531.P8463429129215088967

`A256079(∑{digits}[n, A064532(#)])`
-/

namespace A064531.P8463429129215088967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256079 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064532 x).sum.toNat

end

end A064531.P8463429129215088967

namespace A064531

/-- `A256079(∑{digits}[n, A064532(#)])` -/
def P8463429129215088967.Spec : Prop :=
  ∀ n, P8463429129215088967.a n = A064531 n

end A064531

/-! ## A064531.P12643746871578397496

`1-A001489(∑{digits}[n, A064532(#)])`
-/

namespace A064531.P12643746871578397496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064532 x).sum.toNat

end

end A064531.P12643746871578397496

namespace A064531

/-- `1-A001489(∑{digits}[n, A064532(#)])` -/
def P12643746871578397496.Spec : Prop :=
  ∀ n, P12643746871578397496.a n = A064531 n

end A064531

/-! ## A064531.P5791980909743345460

`A000005(2^∑{digits}[n, A064532(#)])`
-/

namespace A064531.P5791980909743345460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064532 x).sum : ℤ))).toNat

end

end A064531.P5791980909743345460

namespace A064531

/-- `A000005(2^∑{digits}[n, A064532(#)])` -/
def P5791980909743345460.Spec : Prop :=
  ∀ n, P5791980909743345460.a n = A064531 n

end A064531

/-! ## A064531.P8677254748265340828

`A000005(2^∑{digits}[n, A091981(#)])`
-/

namespace A064531.P8677254748265340828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A091981 x).sum : ℤ))).toNat

end

end A064531.P8677254748265340828

namespace A064531

/-- `A000005(2^∑{digits}[n, A091981(#)])` -/
def P8677254748265340828.Spec : Prop :=
  ∀ n, P8677254748265340828.a n = A064531 n

end A064531

/-! ## A064531.P3657768507641272538

`2-(A007318(C(2, n))-A064532(n))`
-/

namespace A064531.P3657768507641272538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A064532 n)

end

end A064531.P3657768507641272538

namespace A064531

/-- `2-(A007318(C(2, n))-A064532(n))` -/
def P3657768507641272538.Spec : Prop :=
  ∀ n, P3657768507641272538.a n = A064531 n

end A064531

/-! ## A064531.P14718667626910852115

`A001222(2*2^∑{digits}[n, A064532(#)])`
-/

namespace A064531.P14718667626910852115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064532 x).sum : ℤ))).toNat

end

end A064531.P14718667626910852115

namespace A064531

/-- `A001222(2*2^∑{digits}[n, A064532(#)])` -/
def P14718667626910852115.Spec : Prop :=
  ∀ n, P14718667626910852115.a n = A064531 n

end A064531

/-! ## A064531.P8608937531375332818

`A001222(2*2^∑{digits}[n, A091981(#)])`
-/

namespace A064531.P8608937531375332818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A091981 x).sum : ℤ))).toNat

end

end A064531.P8608937531375332818

namespace A064531

/-- `A001222(2*2^∑{digits}[n, A091981(#)])` -/
def P8608937531375332818.Spec : Prop :=
  ∀ n, P8608937531375332818.a n = A064531 n

end A064531

/-! ## A064531.P3596519856775563019

`A005408(n)-(2*n-A064532(n))`
-/

namespace A064531.P3596519856775563019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A064532 n)

end

end A064531.P3596519856775563019

namespace A064531

/-- `A005408(n)-(2*n-A064532(n))` -/
def P3596519856775563019.Spec : Prop :=
  ∀ n, P3596519856775563019.a n = A064531 n

theorem P3596519856775563019.correct : P3596519856775563019.Spec := by
  intro n
  simp only [A064531, Nat.add_sub_cancel, A064531.P3596519856775563019.a, A064531.P14938962011606256932.a, A005408, A005408.P17437947328870227736.a, A064532, A064532.P10940684509799697832.a, A064693, A064693.P14262218597709513042.a, A316865, A316865.P16119977982805478621.f1, A316865.P16119977982805478621.a, A064692, A064692.P5168258694329805100.f1, A064692.P5168258694329805100.a, A029352, A029352.P935358604536330210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064531

/-! ## A064531.P14942624202155767956

`Δ[A000290(n)]-(2*n-A064532(n))`
-/

namespace A064531.P14942624202155767956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((2 * n : ℤ) - A064532 n)

end

end A064531.P14942624202155767956

namespace A064531

/-- `Δ[A000290(n)]-(2*n-A064532(n))` -/
def P14942624202155767956.Spec : Prop :=
  ∀ n, P14942624202155767956.a n = A064531 n

theorem P14942624202155767956.correct : P14942624202155767956.Spec := by
  intro n
  simp only [A064531, Nat.add_sub_cancel, A064531.P14942624202155767956.f1, A064531.P14942624202155767956.a, A064531.P14938962011606256932.a, A000290, A000290.P12206242496348924484.a, A064532, A064532.P10940684509799697832.a, A064693, A064693.P14262218597709513042.a, A316865, A316865.P16119977982805478621.f1, A316865.P16119977982805478621.a, A064692, A064692.P5168258694329805100.f1, A064692.P5168258694329805100.a, A029352, A029352.P935358604536330210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064531

/-! ## A064531.P14474574919897564120

`A000005(A020483(n)^A064532(n))`
-/

namespace A064531.P14474574919897564120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A020483 n : ℚ) ^ (A064532 n : ℤ))).toNat

end

end A064531.P14474574919897564120

namespace A064531

/-- `A000005(A020483(n)^A064532(n))` -/
def P14474574919897564120.Spec : Prop :=
  ∀ n, P14474574919897564120.a n = A064531 n

end A064531

/-!
# A064532: Total number of holes in decimal expansion of the number n, assuming 4 has no hole.

The programs for A064532, the canonical program `A064532.P10940684509799697832` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064532 has offset 0).

The definition of A064532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064532.P10940684509799697832

`A064531(n)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A064532

/-- `A064531(n)-1` -/
def P10940684509799697832.Spec : Prop :=
  ∀ n, P10940684509799697832.a n = A064532 n

theorem P10940684509799697832.correct : P10940684509799697832.Spec := by
  intro n
  simp only [A064532]

end A064532

/-!
# A064534: If p >= 11 is prime, n is a power of one of the primes in this sequence but n is not a power of p, then the equation x^p + y^p = n*z^p has no solution in integers x,y,z.

The programs for A064534, there is no canonical definition to state claims against.
-/

/-! ## A064534.P7181158577462547693

`p?[comp[∑[4-n]²]+n]`
-/

namespace A064534.P7181158577462547693
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A064534.P7181158577462547693

/-! ## A064534.P4295665809228303168

`record[p?[n-a(n-1)%29]]` with `a(0)=3`
-/

namespace A064534.P4295665809228303168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  (n : ℤ) - Int.tmod (f2 (n - 1)) 29

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064534.P4295665809228303168

/-! ## A064534.P7703327188964085310

`p?[comp[(n+4)²]+n-1]%(n+4)²`
-/

namespace A064534.P7703327188964085310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((n + 4) ^ 2 : ℤ)

end

end A064534.P7703327188964085310

/-! ## A064534.P9361671096351045274

`char[12*or(1, n)]+p?[comp[(n+4)²]+n-1]`
-/

namespace A064534.P9361671096351045274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.lor 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A064534.P9361671096351045274

/-! ## A064534.P14278499698997252456

`record[p?[A383190(n)]]`
-/

namespace A064534.P14278499698997252456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064534.P14278499698997252456

/-!
# A064535: a(n) = (2^prime(n)-2)/prime(n); a(0) = 0 by convention.

The programs for A064535, there is no canonical definition to state claims against.
-/

/-! ## A064535.P14433673815744771045

`A052823(A008578(n+1))`
-/

namespace A064535.P14433673815744771045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (A008578 (n + 1)).toNat

end

end A064535.P14433673815744771045

/-! ## A064535.P13125784764660684980

`A052823(A015919(n+1))`
-/

namespace A064535.P13125784764660684980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (A015919 (n + 1)).toNat

end

end A064535.P13125784764660684980

/-! ## A064535.P4082627771471585608

`A060480(A075643(n+1))`
-/

namespace A064535.P4082627771471585608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060480 (A075643 (n + 1)).toNat

end

end A064535.P4082627771471585608

/-! ## A064535.P5510516839539542720

`A052823(A182986(n+1))`
-/

namespace A064535.P5510516839539542720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (A182986 (n + 1)).toNat

end

end A064535.P5510516839539542720

/-! ## A064535.P16513745223060085071

`A052823(A324050(n+1))`
-/

namespace A064535.P16513745223060085071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (A324050 (n + 1)).toNat

end

end A064535.P16513745223060085071

/-! ## A064535.P14621959441770480231

`A052823(A158611(n+2))`
-/

namespace A064535.P14621959441770480231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (A158611 (n + 2)).toNat

end

end A064535.P14621959441770480231

/-! ## A064535.P5023135009305678519

`A052823(eq[1, A078898(n)])`
-/

namespace A064535.P5023135009305678519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064535.P5023135009305678519

/-! ## A064535.P333547357890981812

`A052823(eq[1, A331885(n)])`
-/

namespace A064535.P333547357890981812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064535.P333547357890981812

/-! ## A064535.P14978745960020427904

`A052823(record[A006530(n+1)])`
-/

namespace A064535.P14978745960020427904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064535.P14978745960020427904

/-! ## A064535.P7196996862969934924

`A052823(record[A020639(n+1)])`
-/

namespace A064535.P7196996862969934924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064535.P7196996862969934924

/-!
# A064536: a(n) = (4^n mod 3^n) mod 2^n.

The programs for A064536, the canonical program `A064536.P16906778984448148347` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064536 has offset 1).

The definition of A064536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((4^(n+1))%(3^(n+1)))%(2^(n+1))` (program `A064536.P16906778984448148347`, by `A064536.P16906778984448148347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064536.P16906778984448148347

`((4^(n+1))%(3^(n+1)))%(2^(n+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064536

/-- `((4^(n+1))%(3^(n+1)))%(2^(n+1))` -/
def P16906778984448148347.Spec : Prop :=
  ∀ n, (P16906778984448148347.a n : ℤ) = A064536 (n + 1)

theorem P16906778984448148347.correct : P16906778984448148347.Spec := by
  intro n
  simp only [A064536, Nat.add_sub_cancel]

end A064536

/-! ## A064536.P14526721005250919953

`A064629(n+1)%(2^(n+1))`
-/

namespace A064536.P14526721005250919953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064629 (n + 1)) (2 ^ (n + 1) : ℤ)

end

end A064536.P14526721005250919953

namespace A064536

/-- `A064629(n+1)%(2^(n+1))` -/
def P14526721005250919953.Spec : Prop :=
  ∀ n, P14526721005250919953.a n = A064536 (n + 1)

end A064536

/-! ## A064536.P15550771298834793474

`and(A064629(n+1), A126646(n))`
-/

namespace A064536.P15550771298834793474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064629 (n + 1)) (A126646 n)

end

end A064536.P15550771298834793474

namespace A064536

/-- `and(A064629(n+1), A126646(n))` -/
def P15550771298834793474.Spec : Prop :=
  ∀ n, P15550771298834793474.a n = A064536 (n + 1)

end A064536

/-! ## A064536.P3450410586953871348

`and(∑[A000079(n)], A064629(n+1))`
-/

namespace A064536.P3450410586953871348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A064629 (n + 1))

end

end A064536.P3450410586953871348

namespace A064536

/-- `and(∑[A000079(n)], A064629(n+1))` -/
def P3450410586953871348.Spec : Prop :=
  ∀ n, P3450410586953871348.a n = A064536 (n + 1)

end A064536

/-!
# A064538: a(n) is the smallest positive integer such that a(n)*(1^n + 2^n + ... + x^n) is a polynomial in x with integer coefficients.

The programs for A064538, there is no canonical definition to state claims against.
-/

/-! ## A064538.P7066768428068681326

`(n+1)*A195441(n)`
-/

namespace A064538.P7066768428068681326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A195441 n

end

end A064538.P7066768428068681326

/-! ## A064538.P12793558220419044226

`(n+1)*A144845(n)/A324371(n+1)`
-/

namespace A064538.P12793558220419044226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A144845 n : ℚ) / (A324371 (n + 1) : ℚ))

end

end A064538.P12793558220419044226

/-! ## A064538.P14945446837057455694

`(n+1)*gcd(A144845(n), A338025(n+1))`
-/

namespace A064538.P14945446837057455694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (A144845 n) (A338025 (n + 1))

end

end A064538.P14945446837057455694

/-! ## A064538.P10723988592391516928

`A003557(n+1)*A324369(n+1)*A144845(n)`
-/

namespace A064538.P10723988592391516928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A324369 (n + 1) * A144845 n

end

end A064538.P10723988592391516928

/-! ## A064538.P9929794317275752346

`A195441(n)*A266981(2*n)`
-/

namespace A064538.P9929794317275752346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 n * A266981 (2 * n)

end

end A064538.P9929794317275752346

/-! ## A064538.P18271355799810269488

`(n+1)*A324369(n+1)*A318256(n)`
-/

namespace A064538.P18271355799810269488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324369 (n + 1) * A318256 n

end

end A064538.P18271355799810269488

/-! ## A064538.P8551066437289704821

`A195441(n)*A331886(∑[n])`
-/

namespace A064538.P8551066437289704821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 n * A331886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064538.P8551066437289704821

/-! ## A064538.P2488027778454035541

`A195441(n)*A204143(A000124(n))`
-/

namespace A064538.P2488027778454035541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 n * A204143 (A000124 n).toNat

end

end A064538.P2488027778454035541

/-! ## A064538.P8622004590192303913

`(n+1)*A079618(∑[n+1])`
-/

namespace A064538.P8622004590192303913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079618 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064538.P8622004590192303913

/-! ## A064538.P12288204069734146861

`A195441(n)*A220645(∑[n])`
-/

namespace A064538.P12288204069734146861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 n * A220645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064538.P12288204069734146861

/-!
# A064540: Leading digits in A064541.

The programs for A064540, there is no canonical definition to state claims against.
-/

/-! ## A064540.P11051505220626651578

`A133612(lt[0, n*A133612(n)])`
-/

namespace A064540.P11051505220626651578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A064540.P11051505220626651578

/-! ## A064540.P14633909725812830114

`A133612(record[(n+1)%(A133612(n+1)+n+1)])`
-/

namespace A064540.P14633909725812830114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A133612 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064540.P14633909725812830114

/-! ## A064540.P15855582178434496010

`dr(record[Δ[A206636(n+1)]])`
-/

namespace A064540.P15855582178434496010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206636 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A064540.P15855582178434496010

/-! ## A064540.P13528394275309554551

`dr(record[A109405(n+2)-A206636(n+1)])`
-/

namespace A064540.P13528394275309554551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109405 (n + 2) - A206636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A064540.P13528394275309554551

/-!
# A064541: Numbers k such that 2^k ends in k.

The programs for A064541, there is no canonical definition to state claims against.
-/

/-! ## A064541.P15161410350140991969

`record[A113627(A008616(n)+1)]`
-/

namespace A064541.P15161410350140991969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113627 (A008616 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064541.P15161410350140991969

/-! ## A064541.P17301527856620413508

`record[A109405(A128227(n)+1)]`
-/

namespace A064541.P17301527856620413508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109405 (A128227 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064541.P17301527856620413508

/-! ## A064541.P5652806811107956736

`record[A109405(A293223(n+2))]`
-/

namespace A064541.P5652806811107956736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109405 (A293223 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064541.P5652806811107956736

/-! ## A064541.P2945512677222181189

`record[A113627(A002260(n+1)+1)]`
-/

namespace A064541.P2945512677222181189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113627 (A002260 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064541.P2945512677222181189

/-! ## A064541.P2770980197951705854

`record[A109405(A008616(n+1)+2)]`
-/

namespace A064541.P2770980197951705854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109405 (A008616 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064541.P2770980197951705854

/-!
# A064542: a(n) = Max { k | k! <= n! / k! } where m! = A000142(m), factorial.

The programs for A064542, there is no canonical definition to state claims against.
-/

/-! ## A064542.P9091014186095402695

`∑[char[A121347(n+2)]]+1`
-/

namespace A064542.P9091014186095402695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121347 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A064542.P9091014186095402695

/-! ## A064542.P14057930184244522432

`∑[char[A075357(n+1)+n]]`
-/

namespace A064542.P14057930184244522432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064542.P14057930184244522432

/-! ## A064542.P15066798856350796251

`1-A075357(a(n-1)+1)+n` with `a(0)=1`
-/

namespace A064542.P15066798856350796251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A075357 (a (n - 1) + 1).toNat + (n : ℤ)

end

end A064542.P15066798856350796251

/-! ## A064542.P1360953142648300823

`n+1-A094331(a(n-1)+1)` with `a(0)=1`
-/

namespace A064542.P1360953142648300823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A094331 (a (n - 1) + 1).toNat

end

end A064542.P1360953142648300823

/-! ## A064542.P12861894719052847824

`A000196(A247915(∑[A210434(n)]))`
-/

namespace A064542.P12861894719052847824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A247915 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A064542.P12861894719052847824

/-!
# A064544: Biquanimous numbers (or biquams): group the digits into two pieces (not necessarily equal or in order) with the same sum.

The programs for A064544, there is no canonical definition to state claims against.
-/

/-! ## A064544.P15660682975790971227

`∪[A157496(n+1), A400375(n+1)]`
-/

namespace A064544.P15660682975790971227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064544.P15660682975790971227

/-! ## A064544.P13668174723203376786

`A065571(n)+A063524(A042950(n))`
-/

namespace A064544.P13668174723203376786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065571 n + A063524 (A042950 n).toNat

end

end A064544.P13668174723203376786

/-! ## A064544.P14686999883147820624

`A065571(n)+A063524(A065617(n+2))`
-/

namespace A064544.P14686999883147820624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065571 n + A063524 (A065617 (n + 2)).toNat

end

end A064544.P14686999883147820624

/-! ## A064544.P17924460219902988144

`A011655(A213893(3*n+2))*A065571(n)`
-/

namespace A064544.P17924460219902988144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A213893 (3 * n + 2)).toNat * A065571 n

end

end A064544.P17924460219902988144

/-!
# A064546: Remainder when (n!)^2 is divided by n^n.

The programs for A064546, the canonical program `A064546.P12817454430364114420` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064546 has offset 1).

The definition of A064546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064546.P12817454430364114420

`(n+1)!²%((n+1)^(n+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064546

/-- `(n+1)!²%((n+1)^(n+1))` -/
def P12817454430364114420.Spec : Prop :=
  ∀ n, (P12817454430364114420.a n : ℤ) = A064546 (n + 1)

theorem P12817454430364114420.correct : P12817454430364114420.Spec := by
  intro n
  simp only [A064546, Nat.add_sub_cancel]

end A064546

/-! ## A064546.P359938191606771451

`∏[(n+1)²]%((n+1)^(n+1))`
-/

namespace A064546.P359938191606771451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ (n + 1)

end

end A064546.P359938191606771451

namespace A064546

/-- `∏[(n+1)²]%((n+1)^(n+1))` -/
def P359938191606771451.Spec : Prop :=
  ∀ n, (P359938191606771451.a n : ℤ) = A064546 (n + 1)

end A064546

/-!
# A064547: Sum of binary digits (or count of 1-bits) in the exponents of the prime factorization of n.

The programs for A064547, the canonical program `A064547.P11832440237822956980` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064547 has offset 1).

The definition of A064547 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064547.P11832440237822956980

`log2(A037445(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064547

/-- `log2(A037445(n+1))` -/
def P11832440237822956980.Spec : Prop :=
  ∀ n, P11832440237822956980.a n = (A064547 (n + 1) : ℝ)

end A064547

/-! ## A064547.P7715117852085184959

`A000120(A007814(n+1))+a(A064989(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A064547.P7715117852085184959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000120 (A007814 (n + 1)).toNat + a (A064989 (n + 1) - 1).toNat

end

end A064547.P7715117852085184959

namespace A064547

/-- `A000120(A007814(n+1))+a(A064989(n+1)-1)` -/
def P7715117852085184959.Spec : Prop :=
  ∀ n, P7715117852085184959.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P12078161577854099517

`A000120(A067029(n+1))+a(A028234(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A064547.P12078161577854099517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000120 (A067029 (n + 1)).toNat + a (A028234 (n + 1) - 1).toNat

end

end A064547.P12078161577854099517

namespace A064547

/-- `A000120(A067029(n+1))+a(A028234(n+1)-1)` -/
def P12078161577854099517.Spec : Prop :=
  ∀ n, P12078161577854099517.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P8591611087023935447

`A286574(A156552(n+1))`
-/

namespace A064547.P8591611087023935447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (A156552 (n + 1)).toNat

end

end A064547.P8591611087023935447

namespace A064547

/-- `A286574(A156552(n+1))` -/
def P8591611087023935447.Spec : Prop :=
  ∀ n, P8591611087023935447.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P17332506834495347384

`A000120(A052331(n+1))`
-/

namespace A064547.P17332506834495347384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A052331 (n + 1)).toNat

end

end A064547.P17332506834495347384

namespace A064547

/-- `A000120(A052331(n+1))` -/
def P17332506834495347384.Spec : Prop :=
  ∀ n, P17332506834495347384.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P16284349459315818181

`∑{e}[n+1, #-val(#!, 2)]`
-/

namespace A064547.P16284349459315818181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))

end

end A064547.P16284349459315818181

namespace A064547

/-- `∑{e}[n+1, #-val(#!, 2)]` -/
def P16284349459315818181.Spec : Prop :=
  ∀ n, P16284349459315818181.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P4914624708808284191

`val(A317848(n+1), 2)`
-/

namespace A064547.P4914624708808284191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A317848 (n + 1)).toNat 2

end

end A064547.P4914624708808284191

namespace A064547

/-- `val(A317848(n+1), 2)` -/
def P4914624708808284191.Spec : Prop :=
  ∀ n, (P4914624708808284191.a n : ℤ) = A064547 (n + 1)

end A064547

/-! ## A064547.P5597491826291450061

`val(A375230(n+1), 3)`
-/

namespace A064547.P5597491826291450061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A375230 (n + 1)).toNat 3

end

end A064547.P5597491826291450061

namespace A064547

/-- `val(A375230(n+1), 3)` -/
def P5597491826291450061.Spec : Prop :=
  ∀ n, (P5597491826291450061.a n : ℤ) = A064547 (n + 1)

end A064547

/-! ## A064547.P17512226226117327167

`floor(log(A400870(n+1)))`
-/

namespace A064547.P17512226226117327167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A400870 (n + 1) : ℝ)⌋

end

end A064547.P17512226226117327167

namespace A064547

/-- `floor(log(A400870(n+1)))` -/
def P17512226226117327167.Spec : Prop :=
  ∀ n, P17512226226117327167.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P3978393667226841370

`∑{e}[n+1, A000120(#)]`
-/

namespace A064547.P3978393667226841370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000120 (Nat.factorization (f1 n) p)

end

end A064547.P3978393667226841370

namespace A064547

/-- `∑{e}[n+1, A000120(#)]` -/
def P3978393667226841370.Spec : Prop :=
  ∀ n, P3978393667226841370.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P10722319469472721053

`∑{e}[A074848(n+1), #]`
-/

namespace A064547.P10722319469472721053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A064547.P10722319469472721053

namespace A064547

/-- `∑{e}[A074848(n+1), #]` -/
def P10722319469472721053.Spec : Prop :=
  ∀ n, (P10722319469472721053.a n : ℤ) = A064547 (n + 1)

end A064547

/-! ## A064547.P17254608981367774610

`∑{e}[A160102(n+1), #]`
-/

namespace A064547.P17254608981367774610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A064547.P17254608981367774610

namespace A064547

/-- `∑{e}[A160102(n+1), #]` -/
def P17254608981367774610.Spec : Prop :=
  ∀ n, (P17254608981367774610.a n : ℤ) = A064547 (n + 1)

end A064547

/-! ## A064547.P474178638461691900

`∑{e}[A293442(n+1), #]`
-/

namespace A064547.P474178638461691900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A064547.P474178638461691900

namespace A064547

/-- `∑{e}[A293442(n+1), #]` -/
def P474178638461691900.Spec : Prop :=
  ∀ n, (P474178638461691900.a n : ℤ) = A064547 (n + 1)

end A064547

/-! ## A064547.P15858780899886123505

`∑{e}[A302024(n+1), #]`
-/

namespace A064547.P15858780899886123505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A064547.P15858780899886123505

namespace A064547

/-- `∑{e}[A302024(n+1), #]` -/
def P15858780899886123505.Spec : Prop :=
  ∀ n, (P15858780899886123505.a n : ℤ) = A064547 (n + 1)

end A064547

/-! ## A064547.P5528778648388018997

`A001222(A074848(n+1))`
-/

namespace A064547.P5528778648388018997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074848 (n + 1)).toNat

end

end A064547.P5528778648388018997

namespace A064547

/-- `A001222(A074848(n+1))` -/
def P5528778648388018997.Spec : Prop :=
  ∀ n, P5528778648388018997.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P9410535102989673520

`A001221(A160102(n+1))`
-/

namespace A064547.P9410535102989673520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A160102 (n + 1)).toNat

end

end A064547.P9410535102989673520

namespace A064547

/-- `A001221(A160102(n+1))` -/
def P9410535102989673520.Spec : Prop :=
  ∀ n, P9410535102989673520.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P2641881450441205120

`A001222(A293442(n+1))`
-/

namespace A064547.P2641881450441205120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293442 (n + 1)).toNat

end

end A064547.P2641881450441205120

namespace A064547

/-- `A001222(A293442(n+1))` -/
def P2641881450441205120.Spec : Prop :=
  ∀ n, P2641881450441205120.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P13487104462769330951

`A001222(A302024(n+1))`
-/

namespace A064547.P13487104462769330951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A302024 (n + 1)).toNat

end

end A064547.P13487104462769330951

namespace A064547

/-- `A001222(A302024(n+1))` -/
def P13487104462769330951.Spec : Prop :=
  ∀ n, P13487104462769330951.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P7655103828360622611

`A048675(A293444(n+1))`
-/

namespace A064547.P7655103828360622611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A293444 (n + 1)).toNat

end

end A064547.P7655103828360622611

namespace A064547

/-- `A048675(A293444(n+1))` -/
def P7655103828360622611.Spec : Prop :=
  ∀ n, P7655103828360622611.a n = A064547 (n + 1)

end A064547

/-! ## A064547.P17051229714576894504

`A000120(A037445(n+1)-1)`
-/

namespace A064547.P17051229714576894504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A037445 (n + 1) - 1).toNat

end

end A064547.P17051229714576894504

namespace A064547

/-- `A000120(A037445(n+1)-1)` -/
def P17051229714576894504.Spec : Prop :=
  ∀ n, P17051229714576894504.a n = A064547 (n + 1)

end A064547

/-!
# A064548: Numbers k for which the sum of the binary digits equals the number of prime factors of k + 1 counted with multiplicity.

The programs for A064548, the canonical program `A064548.P7567526874951451872` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064548 has offset 1).

The definition of A064548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064548.P7567526874951451872

`eq[A000079(A001222(n+2)), A001316(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064548

/-- `eq[A000079(A001222(n+2)), A001316(n+1)]+1` -/
def P7567526874951451872.Spec : Prop :=
  ∀ n, (P7567526874951451872.a n : ℤ) = A064548 (n + 1)

theorem P7567526874951451872.correct : P7567526874951451872.Spec := by
  intro n
  simp only [A064548, Nat.add_sub_cancel]

end A064548

/-! ## A064548.P3360691381511587152

`eq[2*(abs(1-n)+1)-A005187(n), A001222(n+1)]`
-/

namespace A064548.P3360691381511587152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (|1 - (n : ℤ)| + 1) - A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P3360691381511587152

namespace A064548

/-- `eq[2*(abs(1-n)+1)-A005187(n), A001222(n+1)]` -/
def P3360691381511587152.Spec : Prop :=
  ∀ n, (P3360691381511587152.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P10451986348703369129

`eq[A000120(n), A086436(n+1)]`
-/

namespace A064548.P10451986348703369129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P10451986348703369129

namespace A064548

/-- `eq[A000120(n), A086436(n+1)]` -/
def P10451986348703369129.Spec : Prop :=
  ∀ n, (P10451986348703369129.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P4533450318753389719

`eq[A252736(n+1)+1, A000120(n)]`
-/

namespace A064548.P4533450318753389719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P4533450318753389719

namespace A064548

/-- `eq[A252736(n+1)+1, A000120(n)]` -/
def P4533450318753389719.Spec : Prop :=
  ∀ n, (P4533450318753389719.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P13727758194025766181

`eq[A001222(abs(1-n)+2), A000120(n)]`
-/

namespace A064548.P13727758194025766181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P13727758194025766181

namespace A064548

/-- `eq[A001222(abs(1-n)+2), A000120(n)]` -/
def P13727758194025766181.Spec : Prop :=
  ∀ n, (P13727758194025766181.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P14669492248966128585

`eq[A000120(n+1), A001222(n+2)]+1`
-/

namespace A064548.P14669492248966128585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064548.P14669492248966128585

namespace A064548

/-- `eq[A000120(n+1), A001222(n+2)]+1` -/
def P14669492248966128585.Spec : Prop :=
  ∀ n, (P14669492248966128585.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P10011743927790830123

`eq[A001316(n+1), A061142(n+2)]+1`
-/

namespace A064548.P10011743927790830123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064548.P10011743927790830123

namespace A064548

/-- `eq[A001316(n+1), A061142(n+2)]+1` -/
def P10011743927790830123.Spec : Prop :=
  ∀ n, (P10011743927790830123.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P10781331348060250467

`eq[A001316(A004277(n)), A061142(n+1)]`
-/

namespace A064548.P10781331348060250467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P10781331348060250467

namespace A064548

/-- `eq[A001316(A004277(n)), A061142(n+1)]` -/
def P10781331348060250467.Spec : Prop :=
  ∀ n, (P10781331348060250467.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P7852949360787313301

`eq[A001222(A032742(n+1))+1, A000120(n)]`
-/

namespace A064548.P7852949360787313301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032742 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P7852949360787313301

namespace A064548

/-- `eq[A001222(A032742(n+1))+1, A000120(n)]` -/
def P7852949360787313301.Spec : Prop :=
  ∀ n, (P7852949360787313301.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P3771812595663101562

`eq[A000120(n)+1, A307408(A068794(n+1))]`
-/

namespace A064548.P3771812595663101562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307408 (A068794 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P3771812595663101562

namespace A064548

/-- `eq[A000120(n)+1, A307408(A068794(n+1))]` -/
def P3771812595663101562.Spec : Prop :=
  ∀ n, (P3771812595663101562.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P13811129580027595093

`eq[A005187(n)+A001222(n+1), A004277(n)]`
-/

namespace A064548.P13811129580027595093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P13811129580027595093

namespace A064548

/-- `eq[A005187(n)+A001222(n+1), A004277(n)]` -/
def P13811129580027595093.Spec : Prop :=
  ∀ n, (P13811129580027595093.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P6674018045585374546

`eq[2*n-A005187(n)-A130713(n+2), A001222(n+1)]`
-/

namespace A064548.P6674018045585374546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n - A130713 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P6674018045585374546

namespace A064548

/-- `eq[2*n-A005187(n)-A130713(n+2), A001222(n+1)]` -/
def P6674018045585374546.Spec : Prop :=
  ∀ n, (P6674018045585374546.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P17437115315929402499

`eq[A000120(A004277(n)), A001222(n+1)]`
-/

namespace A064548.P17437115315929402499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P17437115315929402499

namespace A064548

/-- `eq[A000120(A004277(n)), A001222(n+1)]` -/
def P17437115315929402499.Spec : Prop :=
  ∀ n, (P17437115315929402499.a n : ℤ) = A064548 (n + 1)

end A064548

/-! ## A064548.P16553192459156153296

`eq[A000120(A008574(n)), A001222(n+1)]`
-/

namespace A064548.P16553192459156153296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064548.P16553192459156153296

namespace A064548

/-- `eq[A000120(A008574(n)), A001222(n+1)]` -/
def P16553192459156153296.Spec : Prop :=
  ∀ n, (P16553192459156153296.a n : ℤ) = A064548 (n + 1)

end A064548

/-!
# A064549: a(n) = n * Product_{primes p|n} p.

The programs for A064549, the canonical program `A064549.P18019400484953624932` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064549 has offset 1).

The definition of A064549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064549.P13343482294113510915

`A078310(n+1)-1`
-/

namespace A064549.P13343482294113510915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (n + 1) - 1

end

end A064549.P13343482294113510915

namespace A064549

/-- `A078310(n+1)-1` -/
def P13343482294113510915.Spec : Prop :=
  ∀ n, P13343482294113510915.a n = A064549 (n + 1)

theorem P13343482294113510915.correct : P13343482294113510915.Spec := by
  intro n
  simp only [A064549, Nat.add_sub_cancel, A064549.P13343482294113510915.a, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A078310, A078310.P14219530768046252322.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064549

/-! ## A064549.P18019400484953624932

`(n+1)*A007947(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064549

/-- `(n+1)*A007947(n+1)` -/
def P18019400484953624932.Spec : Prop :=
  ∀ n, P18019400484953624932.a n = A064549 (n + 1)

theorem P18019400484953624932.correct : P18019400484953624932.Spec := by
  intro n
  simp only [A064549, Nat.add_sub_cancel]

end A064549

/-! ## A064549.P14102762587041074032

`(n+1)²/A003557(n+1)`
-/

namespace A064549.P14102762587041074032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ)

end

end A064549.P14102762587041074032

namespace A064549

/-- `(n+1)²/A003557(n+1)` -/
def P14102762587041074032.Spec : Prop :=
  ∀ n, P14102762587041074032.a n = (A064549 (n + 1) : ℚ)

end A064549

/-! ## A064549.P16322380563537332917

`(n+1)*∏{p}[n+1, #]`
-/

namespace A064549.P16322380563537332917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A064549.P16322380563537332917

namespace A064549

/-- `(n+1)*∏{p}[n+1, #]` -/
def P16322380563537332917.Spec : Prop :=
  ∀ n, (P16322380563537332917.a n : ℤ) = A064549 (n + 1)

theorem P16322380563537332917.correct : P16322380563537332917.Spec := by
  intro n
  simp only [A064549, Nat.add_sub_cancel, A064549.P16322380563537332917.f1, A064549.P16322380563537332917.a, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064549

/-! ## A064549.P5458612067223405999

`(n+1)/∏{p}[n+1, 1/#]`
-/

namespace A064549.P5458612067223405999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ))

end

end A064549.P5458612067223405999

namespace A064549

/-- `(n+1)/∏{p}[n+1, 1/#]` -/
def P5458612067223405999.Spec : Prop :=
  ∀ n, P5458612067223405999.a n = (A064549 (n + 1) : ℚ)

end A064549

/-! ## A064549.P13485330729805332104

`(n+1)*2^∑{p}[n+1, log2(#)]`
-/

namespace A064549.P13485330729805332104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ))

end

end A064549.P13485330729805332104

namespace A064549

/-- `(n+1)*2^∑{p}[n+1, log2(#)]` -/
def P13485330729805332104.Spec : Prop :=
  ∀ n, P13485330729805332104.a n = (A064549 (n + 1) : ℝ)

end A064549

/-! ## A064549.P3290850921017450325

`lcm(n+1, ∏{p}[n+1, #]+1)-n-1`
-/

namespace A064549.P3290850921017450325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p + 1) : ℤ) - (n : ℤ) - 1

end

end A064549.P3290850921017450325

namespace A064549

/-- `lcm(n+1, ∏{p}[n+1, #]+1)-n-1` -/
def P3290850921017450325.Spec : Prop :=
  ∀ n, P3290850921017450325.a n = A064549 (n + 1)

end A064549

/-! ## A064549.P16680251627737408617

`A355038(n+1)/(n+1)`
-/

namespace A064549.P16680251627737408617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355038 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A064549.P16680251627737408617

namespace A064549

/-- `A355038(n+1)/(n+1)` -/
def P16680251627737408617.Spec : Prop :=
  ∀ n, P16680251627737408617.a n = (A064549 (n + 1) : ℚ)

end A064549

/-! ## A064549.P16831992825072257707

`abs((n+1)*A062953(n+1))`
-/

namespace A064549.P16831992825072257707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A062953 (n + 1)|

end

end A064549.P16831992825072257707

namespace A064549

/-- `abs((n+1)*A062953(n+1))` -/
def P16831992825072257707.Spec : Prop :=
  ∀ n, P16831992825072257707.a n = A064549 (n + 1)

end A064549

/-! ## A064549.P7195437411578685232

`(n+1)*sqrt(A078615(n+1))`
-/

namespace A064549.P7195437411578685232
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A078615 (n + 1) : ℝ)

end

end A064549.P7195437411578685232

namespace A064549

/-- `(n+1)*sqrt(A078615(n+1))` -/
def P7195437411578685232.Spec : Prop :=
  ∀ n, P7195437411578685232.a n = (A064549 (n + 1) : ℝ)

end A064549

/-! ## A064549.P13930496286869047328

`sqrt((n+1)*A361264(n+1))`
-/

namespace A064549.P13930496286869047328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A361264 (n + 1) : ℝ)

end

end A064549.P13930496286869047328

namespace A064549

/-- `sqrt((n+1)*A361264(n+1))` -/
def P13930496286869047328.Spec : Prop :=
  ∀ n, P13930496286869047328.a n = (A064549 (n + 1) : ℝ)

end A064549

/-! ## A064549.P12419999356847464960

`(n+1)*(A075423(n+1)+1)`
-/

namespace A064549.P12419999356847464960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A075423 (n + 1) + 1)

end

end A064549.P12419999356847464960

namespace A064549

/-- `(n+1)*(A075423(n+1)+1)` -/
def P12419999356847464960.Spec : Prop :=
  ∀ n, P12419999356847464960.a n = A064549 (n + 1)

theorem P12419999356847464960.correct : P12419999356847464960.Spec := by
  intro n
  simp only [A064549, Nat.add_sub_cancel, A064549.P12419999356847464960.a, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064549

/-! ## A064549.P8025818761609287837

`(n+1)*(A076618(n+1)-1)`
-/

namespace A064549.P8025818761609287837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A076618 (n + 1) - 1)

end

end A064549.P8025818761609287837

namespace A064549

/-- `(n+1)*(A076618(n+1)-1)` -/
def P8025818761609287837.Spec : Prop :=
  ∀ n, P8025818761609287837.a n = A064549 (n + 1)

theorem P8025818761609287837.correct : P8025818761609287837.Spec := by
  intro n
  simp only [A064549, Nat.add_sub_cancel, A064549.P8025818761609287837.a, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076618, A076618.P8099091245670450071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064549

/-! ## A064549.P11670874017076963320

`(n+1)^3/A102631(n+1)`
-/

namespace A064549.P11670874017076963320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A102631 (n + 1) : ℚ)

end

end A064549.P11670874017076963320

namespace A064549

/-- `(n+1)^3/A102631(n+1)` -/
def P11670874017076963320.Spec : Prop :=
  ∀ n, P11670874017076963320.a n = (A064549 (n + 1) : ℚ)

end A064549

/-! ## A064549.P17474921946377666865

`(n+1)*(n+1-A066503(n+1))`
-/

namespace A064549.P17474921946377666865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A066503 (n + 1))

end

end A064549.P17474921946377666865

namespace A064549

/-- `(n+1)*(n+1-A066503(n+1))` -/
def P17474921946377666865.Spec : Prop :=
  ∀ n, P17474921946377666865.a n = A064549 (n + 1)

theorem P17474921946377666865.correct : P17474921946377666865.Spec := by
  intro n
  simp only [A064549, Nat.add_sub_cancel, A064549.P17474921946377666865.a, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A066503, A066503.P17588364347287804265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064549

/-! ## A064549.P9740023129189048396

`(n+1)*(A073353(n+1)-(n+1))`
-/

namespace A064549.P9740023129189048396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A073353 (n + 1) - (n + 1 : ℤ))

end

end A064549.P9740023129189048396

namespace A064549

/-- `(n+1)*(A073353(n+1)-(n+1))` -/
def P9740023129189048396.Spec : Prop :=
  ∀ n, P9740023129189048396.a n = A064549 (n + 1)

theorem P9740023129189048396.correct : P9740023129189048396.Spec := by
  intro n
  simp only [A064549, Nat.add_sub_cancel, A064549.P9740023129189048396.a, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A073353, A073353.P4516188460080726977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064549

/-! ## A064549.P13521347180812352887

`∑{d}[n+1, #*A202535((n+1)/#)]`
-/

namespace A064549.P13521347180812352887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A202535 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064549.P13521347180812352887

namespace A064549

/-- `∑{d}[n+1, #*A202535((n+1)/#)]` -/
def P13521347180812352887.Spec : Prop :=
  ∀ n, P13521347180812352887.a n = A064549 (n + 1)

end A064549

/-! ## A064549.P13177384317925068788

`A011264(n+1)*A055491(n+1)`
-/

namespace A064549.P13177384317925068788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (n + 1) * A055491 (n + 1)

end

end A064549.P13177384317925068788

namespace A064549

/-- `A011264(n+1)*A055491(n+1)` -/
def P13177384317925068788.Spec : Prop :=
  ∀ n, P13177384317925068788.a n = A064549 (n + 1)

end A064549

/-! ## A064549.P5499046713315161136

`A003557(n+1)*A078615(n+1)`
-/

namespace A064549.P5499046713315161136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A078615 (n + 1)

end

end A064549.P5499046713315161136

namespace A064549

/-- `A003557(n+1)*A078615(n+1)` -/
def P5499046713315161136.Spec : Prop :=
  ∀ n, P5499046713315161136.a n = A064549 (n + 1)

end A064549

/-! ## A064549.P7537615618963198230

`A007913(n+1)*A356191(n+1)`
-/

namespace A064549.P7537615618963198230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A356191 (n + 1)

end

end A064549.P7537615618963198230

namespace A064549

/-- `A007913(n+1)*A356191(n+1)` -/
def P7537615618963198230.Spec : Prop :=
  ∀ n, P7537615618963198230.a n = A064549 (n + 1)

end A064549

/-!
# A064550: a(1) = 2, a(n)=a(n-1)+2*Q(n)-n, n > 1 where Q = A005185.

The programs for A064550, the canonical program `A064550.P4635487846824870834` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064550 has offset 0).

The definition of A064550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064550.P6188754819619740741

`∑[n+1-A004273(A239913(n+1))]`
-/

namespace A064550.P6188754819619740741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004273 (A239913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064550.P6188754819619740741

namespace A064550

/-- `∑[n+1-A004273(A239913(n+1))]` -/
def P6188754819619740741.Spec : Prop :=
  ∀ n, P6188754819619740741.a n = A064550 n

end A064550

/-! ## A064550.P4635487846824870834

`∑[2*A005185(n+1)]-A000124(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064550

/-- `∑[2*A005185(n+1)]-A000124(n)` -/
def P4635487846824870834.Spec : Prop :=
  ∀ n, P4635487846824870834.a n = A064550 n

theorem P4635487846824870834.correct : P4635487846824870834.Spec := by
  intro n
  simp only [A064550]

end A064550

/-! ## A064550.P4075944437108319552

`∑[2*A005185(n+1)-A028310(n)]`
-/

namespace A064550.P4075944437108319552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005185 (n + 1) - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064550.P4075944437108319552

namespace A064550

/-- `∑[2*A005185(n+1)-A028310(n)]` -/
def P4075944437108319552.Spec : Prop :=
  ∀ n, P4075944437108319552.a n = A064550 n

end A064550

/-! ## A064550.P10346674863821616973

`∑[A005843(A005185(n+1))]-A000124(n)`
-/

namespace A064550.P10346674863821616973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000124 n

end

end A064550.P10346674863821616973

namespace A064550

/-- `∑[A005843(A005185(n+1))]-A000124(n)` -/
def P10346674863821616973.Spec : Prop :=
  ∀ n, P10346674863821616973.a n = A064550 n

end A064550

/-! ## A064550.P14461067685400434960

`∑[A005843(A005185(n+1))-A028310(n)]`
-/

namespace A064550.P14461067685400434960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005185 (n + 1)).toNat - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064550.P14461067685400434960

namespace A064550

/-- `∑[A005843(A005185(n+1))-A028310(n)]` -/
def P14461067685400434960.Spec : Prop :=
  ∀ n, P14461067685400434960.a n = A064550 n

end A064550

/-! ## A064550.P17916712784724681915

`∑[A004273(A005185(n+1))]-A161680(n)`
-/

namespace A064550.P17916712784724681915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161680 n

end

end A064550.P17916712784724681915

namespace A064550

/-- `∑[A004273(A005185(n+1))]-A161680(n)` -/
def P17916712784724681915.Spec : Prop :=
  ∀ n, P17916712784724681915.a n = A064550 n

end A064550

/-! ## A064550.P3041775873957409731

`∑[A004273(A005185(n+1))-(A004273(n)-n)]`
-/

namespace A064550.P3041775873957409731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005185 (n + 1)).toNat - (A004273 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064550.P3041775873957409731

namespace A064550

/-- `∑[A004273(A005185(n+1))-(A004273(n)-n)]` -/
def P3041775873957409731.Spec : Prop :=
  ∀ n, P3041775873957409731.a n = A064550 n

end A064550

/-! ## A064550.P17831312392765845251

`∑[A005843(A005185(n+1))]-(A080956(n)+n²)`
-/

namespace A064550.P17831312392765845251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A080956 n + (n ^ 2 : ℤ))

end

end A064550.P17831312392765845251

namespace A064550

/-- `∑[A005843(A005185(n+1))]-(A080956(n)+n²)` -/
def P17831312392765845251.Spec : Prop :=
  ∀ n, P17831312392765845251.a n = A064550 n

end A064550

/-! ## A064550.P6621126293384577537

`A004273(∑[A005185(n+1)])-∑[n]`
-/

namespace A064550.P6621126293384577537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A064550.P6621126293384577537

namespace A064550

/-- `A004273(∑[A005185(n+1)])-∑[n]` -/
def P6621126293384577537.Spec : Prop :=
  ∀ n, P6621126293384577537.a n = A064550 n

end A064550

/-! ## A064550.P18005150541614357516

`∑[A362257(n+1)]+n`
-/

namespace A064550.P18005150541614357516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A064550.P18005150541614357516

namespace A064550

/-- `∑[A362257(n+1)]+n` -/
def P18005150541614357516.Spec : Prop :=
  ∀ n, P18005150541614357516.a n = A064550 n

end A064550

/-!
# A064551: Ado [Simone Caramel]'s function: a(0) = 1, a(n) = a(n-1) + 2*(Fibonacci(n+1)-n), n > 0.

The programs for A064551, the canonical program `A064551.P14090621973476221920` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064551 has offset 0).

The definition of A064551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*(A000045(n+1)-n)` (program `A064551.P14090621973476221920`, by `A064551.P14090621973476221920.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064551.P13202939089221774994

`2*A000045(n+3)-n²-n-3`
-/

namespace A064551.P13202939089221774994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 3) - (n ^ 2 : ℤ) - (n : ℤ) - 3

end

end A064551.P13202939089221774994

namespace A064551

/-- `2*A000045(n+3)-n²-n-3` -/
def P13202939089221774994.Spec : Prop :=
  ∀ n, P13202939089221774994.a n = A064551 n

end A064551

/-! ## A064551.P14090621973476221920

`a(n-1)+2*(A000045(n+1)-n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064551

/-- `a(n-1)+2*(A000045(n+1)-n)` -/
def P14090621973476221920.Spec : Prop :=
  ∀ n, P14090621973476221920.a n = A064551 n

theorem P14090621973476221920.correct : P14090621973476221920.Spec := by
  intro n
  simp only [A064551]

end A064551

/-! ## A064551.P7506212579190201349

`ogf((1-3x+2x^2+x^3+x^4)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A064551.P7506212579190201349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2, 1, 1] [1, -4, 5, -1, -2, 1] n

end

end A064551.P7506212579190201349

namespace A064551

/-- `ogf((1-3x+2x^2+x^3+x^4)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P7506212579190201349.Spec : Prop :=
  ∀ n, P7506212579190201349.a n = A064551 n

end A064551

/-! ## A064551.P2947192802145306770

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A064551.P2947192802145306770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 3] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + a (n - 3) + 2 * a (n - 4) - a (n - 5)

end

end A064551.P2947192802145306770

namespace A064551

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P2947192802145306770.Spec : Prop :=
  ∀ n, P2947192802145306770.a n = A064551 n

end A064551

/-! ## A064551.P12934335862314231275

`∑[A001595(n)]-n²`
-/

namespace A064551.P12934335862314231275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A064551.P12934335862314231275

namespace A064551

/-- `∑[A001595(n)]-n²` -/
def P12934335862314231275.Spec : Prop :=
  ∀ n, P12934335862314231275.a n = A064551 n

end A064551

/-! ## A064551.P6456581006885576151

`A104161(n+1)-n²`
-/

namespace A064551.P6456581006885576151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 (n + 1) - (n ^ 2 : ℤ)

end

end A064551.P6456581006885576151

namespace A064551

/-- `A104161(n+1)-n²` -/
def P6456581006885576151.Spec : Prop :=
  ∀ n, P6456581006885576151.a n = A064551 n

end A064551

/-! ## A064551.P4651830068737338483

`A192760(n)+1-n²`
-/

namespace A064551.P4651830068737338483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 n + (1 - (n ^ 2 : ℤ))

end

end A064551.P4651830068737338483

namespace A064551

/-- `A192760(n)+1-n²` -/
def P4651830068737338483.Spec : Prop :=
  ∀ n, P4651830068737338483.a n = A064551 n

end A064551

/-! ## A064551.P15763689881171933946

`A154691(n)-∑[2*n]`
-/

namespace A064551.P15763689881171933946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A064551.P15763689881171933946

namespace A064551

/-- `A154691(n)-∑[2*n]` -/
def P15763689881171933946.Spec : Prop :=
  ∀ n, P15763689881171933946.a n = A064551 n

end A064551

/-! ## A064551.P7717991730554223598

`∑[∑[A006355(n)]]-n²`
-/

namespace A064551.P7717991730554223598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A064551.P7717991730554223598

namespace A064551

/-- `∑[∑[A006355(n)]]-n²` -/
def P7717991730554223598.Spec : Prop :=
  ∀ n, P7717991730554223598.a n = A064551 n

end A064551

/-! ## A064551.P17173918126145141353

`∑[A128588(n+1)-2*n]`
-/

namespace A064551.P17173918126145141353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064551.P17173918126145141353

namespace A064551

/-- `∑[A128588(n+1)-2*n]` -/
def P17173918126145141353.Spec : Prop :=
  ∀ n, P17173918126145141353.a n = A064551 n

end A064551

/-! ## A064551.P1325590973798146408

`∑[2*(A000045(n+1)-n)]-1`
-/

namespace A064551.P1325590973798146408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A064551.P1325590973798146408

namespace A064551

/-- `∑[2*(A000045(n+1)-n)]-1` -/
def P1325590973798146408.Spec : Prop :=
  ∀ n, P1325590973798146408.a n = A064551 n

end A064551

/-! ## A064551.P7890177033374726894

`A030119(n)+A014283(n)`
-/

namespace A064551.P7890177033374726894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 n + A014283 n

end

end A064551.P7890177033374726894

namespace A064551

/-- `A030119(n)+A014283(n)` -/
def P7890177033374726894.Spec : Prop :=
  ∀ n, P7890177033374726894.a n = A064551 n

end A064551

/-! ## A064551.P17782828373577614936

`A168193(n)+A110331(n)`
-/

namespace A064551.P17782828373577614936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n + A110331 n

end

end A064551.P17782828373577614936

namespace A064551

/-- `A168193(n)+A110331(n)` -/
def P17782828373577614936.Spec : Prop :=
  ∀ n, P17782828373577614936.a n = A064551 n

end A064551

/-! ## A064551.P6951013898168155816

`A258837(n)+A192760(n)`
-/

namespace A064551.P6951013898168155816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 n + A192760 n

end

end A064551.P6951013898168155816

namespace A064551

/-- `A258837(n)+A192760(n)` -/
def P6951013898168155816.Spec : Prop :=
  ∀ n, P6951013898168155816.a n = A064551 n

end A064551

/-! ## A064551.P14582223742099492199

`∑[A001595(n)-A004273(n)]`
-/

namespace A064551.P14582223742099492199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064551.P14582223742099492199

namespace A064551

/-- `∑[A001595(n)-A004273(n)]` -/
def P14582223742099492199.Spec : Prop :=
  ∀ n, P14582223742099492199.a n = A064551 n

end A064551

/-! ## A064551.P12485278310227785483

`A078642(n+1)-A027688(n)`
-/

namespace A064551.P12485278310227785483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) - A027688 n

end

end A064551.P12485278310227785483

namespace A064551

/-- `A078642(n+1)-A027688(n)` -/
def P12485278310227785483.Spec : Prop :=
  ∀ n, P12485278310227785483.a n = A064551 n

end A064551

/-! ## A064551.P11965530673118934068

`A066982(n+2)-A160536(n)`
-/

namespace A064551.P11965530673118934068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 2) - A160536 n

end

end A064551.P11965530673118934068

namespace A064551

/-- `A066982(n+2)-A160536(n)` -/
def P11965530673118934068.Spec : Prop :=
  ∀ n, P11965530673118934068.a n = A064551 n

end A064551

/-! ## A064551.P3931716519981686556

`∑[∑[A118658(n)]-A004277(n)]`
-/

namespace A064551.P3931716519981686556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064551.P3931716519981686556

namespace A064551

/-- `∑[∑[A118658(n)]-A004277(n)]` -/
def P3931716519981686556.Spec : Prop :=
  ∀ n, P3931716519981686556.a n = A064551 n

end A064551

/-! ## A064551.P3818651190027423912

`A019274(n+3)-∑[A004277(n)]`
-/

namespace A064551.P3818651190027423912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064551.P3818651190027423912

namespace A064551

/-- `A019274(n+3)-∑[A004277(n)]` -/
def P3818651190027423912.Spec : Prop :=
  ∀ n, P3818651190027423912.a n = A064551 n

end A064551

/-! ## A064551.P15557390727246421913

`A000045(n)+A030119(n)-n²`
-/

namespace A064551.P15557390727246421913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A030119 n - (n ^ 2 : ℤ))

end

end A064551.P15557390727246421913

namespace A064551

/-- `A000045(n)+A030119(n)-n²` -/
def P15557390727246421913.Spec : Prop :=
  ∀ n, P15557390727246421913.a n = A064551 n

end A064551

/-!
# A064553: a(1) = 1, a(prime(i)) = i + 1 for i > 0 and a(u * v) = a(u) * a(v) for u, v > 0.

The programs for A064553, the canonical program `A064553.P13324500715989758241` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064553 has offset 1).

The definition of A064553 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064553.P13324500715989758241

`A003963(A003961(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A064553

/-- `A003963(A003961(n+1))` -/
def P13324500715989758241.Spec : Prop :=
  ∀ n, P13324500715989758241.a n = A064553 (n + 1)

theorem P13324500715989758241.correct : P13324500715989758241.Spec := by
  intro n
  simp only [A064553, Nat.add_sub_cancel]

end A064553

/-! ## A064553.P9484789229586394522

`A064558(A008578(n+1))`
-/

namespace A064553.P9484789229586394522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (A008578 (n + 1)).toNat

end

end A064553.P9484789229586394522

namespace A064553

/-- `A064558(A008578(n+1))` -/
def P9484789229586394522.Spec : Prop :=
  ∀ n, P9484789229586394522.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P12953529285200501221

`A064558(A064554(n+1))`
-/

namespace A064553.P12953529285200501221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (A064554 (n + 1)).toNat

end

end A064553.P12953529285200501221

namespace A064553

/-- `A064558(A064554(n+1))` -/
def P12953529285200501221.Spec : Prop :=
  ∀ n, P12953529285200501221.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P3550164942287394447

`A064558(A158611(n+2))`
-/

namespace A064553.P3550164942287394447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (A158611 (n + 2)).toNat

end

end A064553.P3550164942287394447

namespace A064553

/-- `A064558(A158611(n+2))` -/
def P3550164942287394447.Spec : Prop :=
  ∀ n, P3550164942287394447.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P6112564314225184451

`A064558(record[A006530(n+1)])`
-/

namespace A064553.P6112564314225184451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064553.P6112564314225184451

namespace A064553

/-- `A064558(record[A006530(n+1)])` -/
def P6112564314225184451.Spec : Prop :=
  ∀ n, P6112564314225184451.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P9443835461778678746

`A064558(record[A014963(n+1)])`
-/

namespace A064553.P9443835461778678746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064553.P9443835461778678746

namespace A064553

/-- `A064558(record[A014963(n+1)])` -/
def P9443835461778678746.Spec : Prop :=
  ∀ n, P9443835461778678746.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P3235000939738459105

`A064558(record[A020639(n+1)])`
-/

namespace A064553.P3235000939738459105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064553.P3235000939738459105

namespace A064553

/-- `A064558(record[A020639(n+1)])` -/
def P3235000939738459105.Spec : Prop :=
  ∀ n, P3235000939738459105.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P7416631254101746596

`A064558(A290641(n+1))`
-/

namespace A064553.P7416631254101746596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (A290641 (n + 1)).toNat

end

end A064553.P7416631254101746596

namespace A064553

/-- `A064558(A290641(n+1))` -/
def P7416631254101746596.Spec : Prop :=
  ∀ n, P7416631254101746596.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P1880792834701711089

`A064558(A064555(n+1))`
-/

namespace A064553.P1880792834701711089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (A064555 (n + 1)).toNat

end

end A064553.P1880792834701711089

namespace A064553

/-- `A064558(A064555(n+1))` -/
def P1880792834701711089.Spec : Prop :=
  ∀ n, P1880792834701711089.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P11428994562265796231

`A064558(A000040(2*n+1))/2`
-/

namespace A064553.P11428994562265796231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064558 (A000040 (2 * n + 1)).toNat : ℚ) / 2

end

end A064553.P11428994562265796231

namespace A064553

/-- `A064558(A000040(2*n+1))/2` -/
def P11428994562265796231.Spec : Prop :=
  ∀ n, P11428994562265796231.a n = (A064553 (n + 1) : ℚ)

end A064553

/-! ## A064553.P7349818211811896493

`A003963(A045965(n+1))`
-/

namespace A064553.P7349818211811896493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A045965 (n + 1)).toNat

end

end A064553.P7349818211811896493

namespace A064553

/-- `A003963(A045965(n+1))` -/
def P7349818211811896493.Spec : Prop :=
  ∀ n, P7349818211811896493.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P9030606356334870958

`A003963(A253885(n)+1)`
-/

namespace A064553.P9030606356334870958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A253885 n + 1).toNat

end

end A064553.P9030606356334870958

namespace A064553

/-- `A003963(A253885(n)+1)` -/
def P9030606356334870958.Spec : Prop :=
  ∀ n, P9030606356334870958.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P9762130821277421845

`A003963(A297166(2*(n+1)))`
-/

namespace A064553.P9762130821277421845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A297166 (2 * (n + 1))).toNat

end

end A064553.P9762130821277421845

namespace A064553

/-- `A003963(A297166(2*(n+1)))` -/
def P9762130821277421845.Spec : Prop :=
  ∀ n, P9762130821277421845.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P5762520017965560724

`A003963(2*A048673(n+1)-1)`
-/

namespace A064553.P5762520017965560724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A048673 (n + 1) - 1).toNat

end

end A064553.P5762520017965560724

namespace A064553

/-- `A003963(2*A048673(n+1)-1)` -/
def P5762520017965560724.Spec : Prop :=
  ∀ n, P5762520017965560724.a n = A064553 (n + 1)

theorem P5762520017965560724.correct : P5762520017965560724.Spec := by
  intro n
  simp only [A064553, Nat.add_sub_cancel, A064553.P5762520017965560724.a, A064553.P13324500715989758241.a, A003961, A003961.P5996473960037614004.a, A003963, A003963.P6853423646423809573.a, A048673, A048673.P3613002930333742504.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A249745, A249745.P11390172490975782238.a, A249824, A249824.P7083060918856720053.a, A253885, A253885.P16715555451856890624.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007310, A007310.P9946423629536973135.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A064989, A064989.P13349672914146769936.a, A243071, A243071.P12484383641158862297.a, A243501, A243501.P10707292738867961998.a, A275716, A275716.P7951773903952206727.a, A000120, A000120.P2816527436160941581.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A070939, A070939.P14677302147902843740.a, A122111, A122111.P18124015185857335041.a, A163511, A163511.P5635496813650871695.a, A253566, A253566.P9103107584596957047.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064553

/-! ## A064553.P6053890529721991875

`A003963(A336853(n+1)+1+n)`
-/

namespace A064553.P6053890529721991875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A336853 (n + 1) + 1 + (n : ℤ)).toNat

end

end A064553.P6053890529721991875

namespace A064553

/-- `A003963(A336853(n+1)+1+n)` -/
def P6053890529721991875.Spec : Prop :=
  ∀ n, P6053890529721991875.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P2206301942172575569

`A003963(A283980(n+1)/A006519(n+1))`
-/

namespace A064553.P2206301942172575569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((A283980 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A064553.P2206301942172575569

namespace A064553

/-- `A003963(A283980(n+1)/A006519(n+1))` -/
def P2206301942172575569.Spec : Prop :=
  ∀ n, P2206301942172575569.a n = A064553 (n + 1)

end A064553

/-! ## A064553.P9142818350502828051

`A003963(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A064553.P9142818350502828051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A064553.P9142818350502828051

namespace A064553

/-- `A003963(A048673(n+1)+A048673(n+1)-1)` -/
def P9142818350502828051.Spec : Prop :=
  ∀ n, P9142818350502828051.a n = A064553 (n + 1)

theorem P9142818350502828051.correct : P9142818350502828051.Spec := by
  intro n
  simp only [A064553, Nat.add_sub_cancel, A064553.P9142818350502828051.a, A064553.P13324500715989758241.a, A003961, A003961.P5996473960037614004.a, A003963, A003963.P6853423646423809573.a, A048673, A048673.P3613002930333742504.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A249745, A249745.P11390172490975782238.a, A249824, A249824.P7083060918856720053.a, A253885, A253885.P16715555451856890624.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007310, A007310.P9946423629536973135.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A064989, A064989.P13349672914146769936.a, A243071, A243071.P12484383641158862297.a, A243501, A243501.P10707292738867961998.a, A275716, A275716.P7951773903952206727.a, A000120, A000120.P2816527436160941581.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A070939, A070939.P14677302147902843740.a, A122111, A122111.P18124015185857335041.a, A163511, A163511.P5635496813650871695.a, A253566, A253566.P9103107584596957047.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064553

/-! ## A064553.P17402143825010295731

`A146288(A361808(n+1))`
-/

namespace A064553.P17402143825010295731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (A361808 (n + 1)).toNat

end

end A064553.P17402143825010295731

namespace A064553

/-- `A146288(A361808(n+1))` -/
def P17402143825010295731.Spec : Prop :=
  ∀ n, P17402143825010295731.a n = A064553 (n + 1)

end A064553

/-!
# A064554: a(n) = Min {k | A064553(k) = n}.

The programs for A064554, there is no canonical definition to state claims against.
-/

/-! ## A064554.P1602234836410289464

`A080688(A096276(n)+1)`
-/

namespace A064554.P1602234836410289464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080688 (A096276 n + 1).toNat

end

end A064554.P1602234836410289464

/-! ## A064554.P14109359783446841244

`A290641(record[A151878(n)+n])`
-/

namespace A064554.P14109359783446841244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064554.P14109359783446841244

/-! ## A064554.P13578104589742336133

`A290641(A162401(∑[A016825(n)]))`
-/

namespace A064554.P13578104589742336133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (A162401 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A064554.P13578104589742336133

/-! ## A064554.P392825792247705725

`A057427(A099575(n))*A290641(n+1)`
-/

namespace A064554.P392825792247705725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A099575 n).toNat * A290641 (n + 1)

end

end A064554.P392825792247705725

/-! ## A064554.P1582823320213600790

`A290641(n+1)+A000038(A248625(n)+1)`
-/

namespace A064554.P1582823320213600790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1) + A000038 (A248625 n + 1).toNat

end

end A064554.P1582823320213600790

/-! ## A064554.P3149805779291654828

`A290641(n+1)%A019582(A005050(n+6))`
-/

namespace A064554.P3149805779291654828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290641 (n + 1)) (A019582 (A005050 (n + 6)).toNat)

end

end A064554.P3149805779291654828

/-! ## A064554.P2846252788031553089

`A290641(n+1)+A091577(n)%2`
-/

namespace A064554.P2846252788031553089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1) + Int.tmod (A091577 n) 2

end

end A064554.P2846252788031553089

/-! ## A064554.P417045014324015051

`A290641(n+1)+A000007(A025487(n+1))`
-/

namespace A064554.P417045014324015051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1) + A000007 (A025487 (n + 1)).toNat

end

end A064554.P417045014324015051

/-! ## A064554.P2861213111976505540

`A290641(n+1)+A010054(A142042(n+1))`
-/

namespace A064554.P2861213111976505540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1) + A010054 (A142042 (n + 1)).toNat

end

end A064554.P2861213111976505540

/-! ## A064554.P4449794209395206291

`A290641(n+1)%A002189(n)`
-/

namespace A064554.P4449794209395206291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290641 (n + 1)) (A002189 n)

end

end A064554.P4449794209395206291

/-!
# A064555: a(n) = max { k | A064553(k) = n }.

The programs for A064555, there is no canonical definition to state claims against.
-/

/-! ## A064555.P13027336696786138509

`A080688(A096276(n+1))`
-/

namespace A064555.P13027336696786138509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080688 (A096276 (n + 1)).toNat

end

end A064555.P13027336696786138509

/-! ## A064555.P4892966734594618123

`A080688(∑[A001055(n+1)])`
-/

namespace A064555.P4892966734594618123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080688 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064555.P4892966734594618123

/-! ## A064555.P10827167578416161580

`A008578(n+1)+6*A102683(A339060(n))`
-/

namespace A064555.P10827167578416161580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 6 * A102683 (A339060 n).toNat

end

end A064555.P10827167578416161580

/-! ## A064555.P17374022980321570335

`Δ[A175965(n+1)]+6*A102683(A339060(n))`
-/

namespace A064555.P17374022980321570335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 6 * A102683 (A339060 n).toNat

end

end A064555.P17374022980321570335

/-! ## A064555.P725842536711810443

`record[A006530(n+1)]+6*A102683(A339060(n))`
-/

namespace A064555.P725842536711810443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 6 * A102683 (A339060 n).toNat

end

end A064555.P725842536711810443

/-! ## A064555.P17805027231340532849

`record[A014963(n+1)]+6*A102683(A339060(n))`
-/

namespace A064555.P17805027231340532849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 6 * A102683 (A339060 n).toNat

end

end A064555.P17805027231340532849

/-! ## A064555.P18168878730353027369

`record[A020639(n+1)]+6*A102683(A339060(n))`
-/

namespace A064555.P18168878730353027369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 6 * A102683 (A339060 n).toNat

end

end A064555.P18168878730353027369

/-! ## A064555.P13320389338343007771

`record[A057859(n+1)]+6*A102683(A339060(n))`
-/

namespace A064555.P13320389338343007771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 6 * A102683 (A339060 n).toNat

end

end A064555.P13320389338343007771

/-! ## A064555.P12413180869288400767

`or(A008578(n+1), A331218(A222464(n+6)))`
-/

namespace A064555.P12413180869288400767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008578 (n + 1)) (A331218 (A222464 (n + 6)).toNat)

end

end A064555.P12413180869288400767

/-! ## A064555.P4112064449479052938

`A165071(A000925(A001105(n)))+A008578(n+1)`
-/

namespace A064555.P4112064449479052938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 (A000925 (A001105 n).toNat).toNat + A008578 (n + 1)

end

end A064555.P4112064449479052938

/-!
# A064556: 

The programs for A064556, there is no canonical definition to state claims against.
-/

/-! ## A064556.P3881266978237398594

`A000594(10^n)`
-/

namespace A064556.P3881266978237398594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (10 ^ n)

end

end A064556.P3881266978237398594

/-!
# A064557: a(n) = # { p | A064553(k) = p prime and k <= n}.

The programs for A064557, the canonical program `A064557.P3776744572660076995` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064557 has offset 1).

The definition of A064557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064557.P7111619210968496144

`∑[char[A140853(n+1)]]`
-/

namespace A064557.P7111619210968496144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064557.P7111619210968496144

namespace A064557

/-- `∑[char[A140853(n+1)]]` -/
def P7111619210968496144.Spec : Prop :=
  ∀ n, (P7111619210968496144.a n : ℤ) = A064557 (n + 1)

end A064557

/-! ## A064557.P2937326949962489017

`∑[char[A055003(n+1)-1]]`
-/

namespace A064557.P2937326949962489017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064557.P2937326949962489017

namespace A064557

/-- `∑[char[A055003(n+1)-1]]` -/
def P2937326949962489017.Spec : Prop :=
  ∀ n, (P2937326949962489017.a n : ℤ) = A064557 (n + 1)

end A064557

/-! ## A064557.P8513774958759456042

`A000720(∑[∑{e}[n+1, #]!%2])`
-/

namespace A064557.P8513774958759456042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064557.P8513774958759456042

namespace A064557

/-- `A000720(∑[∑{e}[n+1, #]!%2])` -/
def P8513774958759456042.Spec : Prop :=
  ∀ n, P8513774958759456042.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P1765746268529001271

`A000720(∑[C(2, ∑{e}[n+1, #+1])])`
-/

namespace A064557.P1765746268529001271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064557.P1765746268529001271

namespace A064557

/-- `A000720(∑[C(2, ∑{e}[n+1, #+1])])` -/
def P1765746268529001271.Spec : Prop :=
  ∀ n, P1765746268529001271.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P6631572574648516193

`A056172(2*∑[C(2, ∑{e}[n+1, #+1])])`
-/

namespace A064557.P6631572574648516193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A064557.P6631572574648516193

namespace A064557

/-- `A056172(2*∑[C(2, ∑{e}[n+1, #+1])])` -/
def P6631572574648516193.Spec : Prop :=
  ∀ n, P6631572574648516193.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P13042481311386411919

`A000720(∑[∑{p}[n+1, val(#, n+1)]]+1)`
-/

namespace A064557.P13042481311386411919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A064557.P13042481311386411919

namespace A064557

/-- `A000720(∑[∑{p}[n+1, val(#, n+1)]]+1)` -/
def P13042481311386411919.Spec : Prop :=
  ∀ n, P13042481311386411919.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P5040954785751836267

`A000720(∑[∑{p}[n+1, C(#, n+1)]]+1)`
-/

namespace A064557.P5040954785751836267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A064557.P5040954785751836267

namespace A064557

/-- `A000720(∑[∑{p}[n+1, C(#, n+1)]]+1)` -/
def P5040954785751836267.Spec : Prop :=
  ∀ n, P5040954785751836267.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P16833446203953472363

`A000720(∑[C(n, ∏{e}[n+1, n*#])]+1)`
-/

namespace A064557.P16833446203953472363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A064557.P16833446203953472363

namespace A064557

/-- `A000720(∑[C(n, ∏{e}[n+1, n*#])]+1)` -/
def P16833446203953472363.Spec : Prop :=
  ∀ n, P16833446203953472363.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P5923884413288809348

`A000720(∑[floor(∑{e}[n+1, #]^(4-n))%2]+1)`
-/

namespace A064557.P5923884413288809348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A064557.P5923884413288809348

namespace A064557

/-- `A000720(∑[floor(∑{e}[n+1, #]^(4-n))%2]+1)` -/
def P5923884413288809348.Spec : Prop :=
  ∀ n, P5923884413288809348.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P772684580276245862

`A000720(∑[char[p?[2*n+1]-1]]+2)%(n+1)`
-/

namespace A064557.P772684580276245862
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (n + 1 : ℤ)

end

end A064557.P772684580276245862

namespace A064557

/-- `A000720(∑[char[p?[2*n+1]-1]]+2)%(n+1)` -/
def P772684580276245862.Spec : Prop :=
  ∀ n, P772684580276245862.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P2303758589509717605

`A000720(Δ[A002815(n)])`
-/

namespace A064557.P2303758589509717605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A064557.P2303758589509717605

namespace A064557

/-- `A000720(Δ[A002815(n)])` -/
def P2303758589509717605.Spec : Prop :=
  ∀ n, P2303758589509717605.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P18197753077990298849

`A000720(A036234(n+1))`
-/

namespace A064557.P18197753077990298849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A036234 (n + 1)).toNat

end

end A064557.P18197753077990298849

namespace A064557

/-- `A000720(A036234(n+1))` -/
def P18197753077990298849.Spec : Prop :=
  ∀ n, P18197753077990298849.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P3259634495927334296

`A000720(∑[A080339(n+1)])`
-/

namespace A064557.P3259634495927334296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064557.P3259634495927334296

namespace A064557

/-- `A000720(∑[A080339(n+1)])` -/
def P3259634495927334296.Spec : Prop :=
  ∀ n, P3259634495927334296.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P3776744572660076995

`A230980(∑[A080339(n+1)])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064557

/-- `A230980(∑[A080339(n+1)])` -/
def P3776744572660076995.Spec : Prop :=
  ∀ n, P3776744572660076995.a n = A064557 (n + 1)

theorem P3776744572660076995.correct : P3776744572660076995.Spec := by
  intro n
  simp only [A064557, Nat.add_sub_cancel]

end A064557

/-! ## A064557.P2989878670192768161

`A000720(A000720(n+1)+1)`
-/

namespace A064557.P2989878670192768161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (n + 1) + 1).toNat

end

end A064557.P2989878670192768161

namespace A064557

/-- `A000720(A000720(n+1)+1)` -/
def P2989878670192768161.Spec : Prop :=
  ∀ n, P2989878670192768161.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P13083467133634043746

`A056172(2*A036234(n+1))`
-/

namespace A064557.P13083467133634043746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A036234 (n + 1)).toNat

end

end A064557.P13083467133634043746

namespace A064557

/-- `A056172(2*A036234(n+1))` -/
def P13083467133634043746.Spec : Prop :=
  ∀ n, P13083467133634043746.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P17867648324382663985

`∑[char[A006093(A006093(n+1))]]`
-/

namespace A064557.P17867648324382663985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064557.P17867648324382663985

namespace A064557

/-- `∑[char[A006093(A006093(n+1))]]` -/
def P17867648324382663985.Spec : Prop :=
  ∀ n, (P17867648324382663985.a n : ℤ) = A064557 (n + 1)

end A064557

/-! ## A064557.P6663591213786408522

`∑[A010051(A049084(n+1)+1)]`
-/

namespace A064557.P6663591213786408522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A049084 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064557.P6663591213786408522

namespace A064557

/-- `∑[A010051(A049084(n+1)+1)]` -/
def P6663591213786408522.Spec : Prop :=
  ∀ n, P6663591213786408522.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P15521970329743578851

`A230980(∑[A010051(n+1)]+1)`
-/

namespace A064557.P15521970329743578851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A064557.P15521970329743578851

namespace A064557

/-- `A230980(∑[A010051(n+1)]+1)` -/
def P15521970329743578851.Spec : Prop :=
  ∀ n, P15521970329743578851.a n = A064557 (n + 1)

end A064557

/-! ## A064557.P4811478726153819390

`A000720(A000720(A151800(n+1)))`
-/

namespace A064557.P4811478726153819390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A151800 (n + 1)).toNat).toNat

end

end A064557.P4811478726153819390

namespace A064557

/-- `A000720(A000720(A151800(n+1)))` -/
def P4811478726153819390.Spec : Prop :=
  ∀ n, P4811478726153819390.a n = A064557 (n + 1)

end A064557

/-!
# A064558: a(n) = A064553(A064553(n)).

The programs for A064558, the canonical program `A064558.P17666427282558717256` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064558 has offset 1).

The definition of A064558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064553, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064558.P17666427282558717256

`A064553(A064553(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A064558

/-- `A064553(A064553(n+1))` -/
def P17666427282558717256.Spec : Prop :=
  ∀ n, P17666427282558717256.a n = A064558 (n + 1)

theorem P17666427282558717256.correct : P17666427282558717256.Spec := by
  intro n
  simp only [A064558, Nat.add_sub_cancel]

end A064558

/-! ## A064558.P5035347270073760363

`A003963(A003961(A003963(A003961(n+1))))`
-/

namespace A064558.P5035347270073760363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A003961 (A003963 (A003961 (n + 1)).toNat).toNat).toNat

end

end A064558.P5035347270073760363

namespace A064558

/-- `A003963(A003961(A003963(A003961(n+1))))` -/
def P5035347270073760363.Spec : Prop :=
  ∀ n, P5035347270073760363.a n = A064558 (n + 1)

end A064558

/-! ## A064558.P17739805493826354071

`∏{e}[A181821(∏{e}[A181821(n+1), #+1]), #+1]`
-/

namespace A064558.P17739805493826354071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A064558.P17739805493826354071

namespace A064558

/-- `∏{e}[A181821(∏{e}[A181821(n+1), #+1]), #+1]` -/
def P17739805493826354071.Spec : Prop :=
  ∀ n, (P17739805493826354071.a n : ℤ) = A064558 (n + 1)

end A064558

/-! ## A064558.P4227218892224594306

`∏{e}[A304660(∏{e}[A304660(n+1), #+1]), #+1]`
-/

namespace A064558.P4227218892224594306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A064558.P4227218892224594306

namespace A064558

/-- `∏{e}[A304660(∏{e}[A304660(n+1), #+1]), #+1]` -/
def P4227218892224594306.Spec : Prop :=
  ∀ n, (P4227218892224594306.a n : ℤ) = A064558 (n + 1)

end A064558

/-! ## A064558.P16382443805967465515

`A000005(A181821(A000005(A181821(n+1))))`
-/

namespace A064558.P16382443805967465515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181821 (A000005 (A181821 (n + 1)).toNat).toNat).toNat

end

end A064558.P16382443805967465515

namespace A064558

/-- `A000005(A181821(A000005(A181821(n+1))))` -/
def P16382443805967465515.Spec : Prop :=
  ∀ n, P16382443805967465515.a n = A064558 (n + 1)

end A064558

/-!
# A064559: Number of iterations in A064553 to reach a fixed point.

The programs for A064559, there is no canonical definition to state claims against.
-/

/-! ## A064559.P7905432206808164902

`A005087(xor(A005072(n+1), A005075(2*(n+1))))`
-/

namespace A064559.P7905432206808164902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (Int.xor (A005072 (n + 1)) (A005075 (2 * (n + 1)))).toNat

end

end A064559.P7905432206808164902

/-! ## A064559.P2245693273048061853

`A001221(A141740((n+1)/gcd(n+1, 6^(n+1))))`
-/

namespace A064559.P2245693273048061853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A141740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (6 ^ (n + 1)) : ℚ))).toNat).toNat

end

end A064559.P2245693273048061853

/-! ## A064559.P4395198096183898870

`A241917(A236165(A065330(n+1)-1))`
-/

namespace A064559.P4395198096183898870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A236165 (A065330 (n + 1) - 1).toNat).toNat

end

end A064559.P4395198096183898870

/-! ## A064559.P927813511756853156

`dr(A379302(A243055(2*(n+1))²))`
-/

namespace A064559.P927813511756853156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A379302 (A243055 (2 * (n + 1)) ^ 2).toNat)

end

end A064559.P927813511756853156

/-! ## A064559.P9312736266468446489

`A276417(A212804(A006530(n+1)))`
-/

namespace A064559.P9312736266468446489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 (A212804 (A006530 (n + 1)).toNat).toNat

end

end A064559.P9312736266468446489

/-!
# A064560: Numbers n such that reciprocal of n terminates with an infinite repetition of digit 1. Multiples of 10 are omitted.

The programs for A064560, there is no canonical definition to state claims against.
-/

/-! ## A064560.P12128571351072919975

`A064562(n+1)^3/3`
-/

namespace A064560.P12128571351072919975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064562 (n + 1) ^ 3 : ℚ) / 3

end

end A064560.P12128571351072919975

/-! ## A064560.P7516304648608716877

`A059479(3*∪[5^n, 2^n]²)`
-/

namespace A064560.P7516304648608716877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059479 (3 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n ^ 2)

end

end A064560.P7516304648608716877

/-! ## A064560.P9249947217368337801

`A131476(3*∪[5^n, 2^n]²)`
-/

namespace A064560.P9249947217368337801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131476 (3 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n ^ 2)

end

end A064560.P9249947217368337801

/-! ## A064560.P6546407196934452856

`A059479(A064562(n+1))`
-/

namespace A064560.P6546407196934452856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059479 (A064562 (n + 1)).toNat

end

end A064560.P6546407196934452856

/-!
# A064562: Reciprocal of n terminates with an infinite repetition of digit 3. Multiples of 10 are omitted.

The programs for A064562, there is no canonical definition to state claims against.
-/

/-! ## A064562.P11448479876357636043

`A257997(eq[3, dr(A257997(n+1))]+1)`
-/

namespace A064562.P11448479876357636043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A257997 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A064562.P11448479876357636043

/-! ## A064562.P5061813247045463323

`∩[9*n+3, A081306(n+1)]`
-/

namespace A064562.P5061813247045463323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064562.P5061813247045463323

/-! ## A064562.P9474108095968017325

`∩[A069899(n+1), A017197(n)]`
-/

namespace A064562.P9474108095968017325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064562.P9474108095968017325

/-! ## A064562.P7813346552024364730

`∩[A081306(n+1), A017197(n)]`
-/

namespace A064562.P7813346552024364730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064562.P7813346552024364730

/-! ## A064562.P1195628660534150466

`∩[A257997(n+1), A017197(n)]`
-/

namespace A064562.P1195628660534150466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064562.P1195628660534150466

/-!
# A064563: Reciprocal of n terminates with an infinite repetition of digit 4. Multiples of 10 are omitted.

The programs for A064563, there is no canonical definition to state claims against.
-/

/-! ## A064563.P5713641006597388049

`A064566(n+2)²/A064560(n+3)`
-/

namespace A064563.P5713641006597388049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064566 (n + 2) ^ 2 : ℚ) / (A064560 (n + 3) : ℚ)

end

end A064563.P5713641006597388049

/-!
# A064565: Reciprocal of n terminates with an infinite repetition of digit 6. Multiples of 10 are omitted.

The programs for A064565, there is no canonical definition to state claims against.
-/

/-! ## A064565.P6860804842701017501

`∩[A069899(n+1), A017233(n)]`
-/

namespace A064565.P6860804842701017501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064565.P6860804842701017501

/-! ## A064565.P11844089945490966881

`∩[A081306(n+1), A017233(n)]`
-/

namespace A064565.P11844089945490966881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064565.P11844089945490966881

/-! ## A064565.P10678509993239938828

`∩[A089341(n+1), A017233(n)]`
-/

namespace A064565.P10678509993239938828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064565.P10678509993239938828

/-! ## A064565.P12667411917340812107

`∩[A089341(n+1), A122709(n)]`
-/

namespace A064565.P12667411917340812107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064565.P12667411917340812107

/-! ## A064565.P11799093951251928309

`∩[A089341(n+1), A179805(n)]`
-/

namespace A064565.P11799093951251928309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064565.P11799093951251928309

/-!
# A064566: Reciprocal of n terminates with an infinite repetition of digit 7. Multiples of 10 are omitted.

The programs for A064566, there is no canonical definition to state claims against.
-/

/-! ## A064566.P16239882589631937577

`A000290(∪[A007283(3*n+1), A202257(3*n+1)])`
-/

namespace A064566.P16239882589631937577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202257 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A064566.P16239882589631937577

/-!
# A064567: Reciprocal of n terminates with an infinite repetition of digit 8. Multiples of 10 are omitted.

The programs for A064567, there is no canonical definition to state claims against.
-/

/-! ## A064567.P5281520208643822932

`A064565(n+1)^3/3`
-/

namespace A064567.P5281520208643822932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064565 (n + 1) ^ 3 : ℚ) / 3

end

end A064567.P5281520208643822932

/-! ## A064567.P1692040462885905338

`A131476(A064565(n+1))`
-/

namespace A064567.P1692040462885905338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131476 (A064565 (n + 1)).toNat

end

end A064567.P1692040462885905338

/-! ## A064567.P1872573362603164074

`A131476(∩[A081306(n+1), A017233(n)])`
-/

namespace A064567.P1872573362603164074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131476 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A064567.P1872573362603164074

/-! ## A064567.P17706673357908100375

`A131476(∩[A089341(n+1), A017233(n)])`
-/

namespace A064567.P17706673357908100375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131476 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A064567.P17706673357908100375

/-! ## A064567.P15250651802777986195

`A131476(∩[A089341(n+1), A122709(n)])`
-/

namespace A064567.P15250651802777986195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131476 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A064567.P15250651802777986195

/-!
# A064568: n-th term in Recamán's sequence A005132 is divisible by n.

The programs for A064568, there is no canonical definition to state claims against.
-/

/-! ## A064568.P8894636920404760303

`eq[n, gcd(A005132(n), A008706(n))]`
-/

namespace A064568.P8894636920404760303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005132 n) (A008706 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064568.P8894636920404760303

/-! ## A064568.P2298574864608696918

`eq[n, gcd(n, A334951(A028310(n)))]`
-/

namespace A064568.P2298574864608696918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A334951 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064568.P2298574864608696918

/-! ## A064568.P3875384362337648617

`lt[lcm(n, A005132(n)), A209386(n)]`
-/

namespace A064568.P3875384362337648617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A005132 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209386 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A064568.P3875384362337648617

/-! ## A064568.P12250080401040096878

`eq[A005132(n)%A028310(n), A000007(n)]`
-/

namespace A064568.P12250080401040096878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005132 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064568.P12250080401040096878

/-! ## A064568.P8793019762230317067

`eq[A334951(n)%A028310(n), A000007(n)]`
-/

namespace A064568.P8793019762230317067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334951 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064568.P8793019762230317067

/-!
# A064569: Quotients A005132(k)/k for k=A064568(n).

The programs for A064569, there is no canonical definition to state claims against.
-/

/-! ## A064569.P17348841099054495281

`A005132(A064568(n+1))/A064568(n+1)`
-/

namespace A064569.P17348841099054495281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005132 (A064568 (n + 1)).toNat : ℚ) / (A064568 (n + 1) : ℚ)

end

end A064569.P17348841099054495281

/-! ## A064569.P899167254439739106

`A349483(A212257(n))`
-/

namespace A064569.P899167254439739106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349483 (A212257 n).toNat

end

end A064569.P899167254439739106

/-! ## A064569.P6964043115982282302

`A066099(A089782(n+1)+A006054(n))`
-/

namespace A064569.P6964043115982282302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A089782 (n + 1) + A006054 n).toNat

end

end A064569.P6964043115982282302

/-! ## A064569.P10788618294559116770

`A001221(A337049(n+1)+A077168(n))`
-/

namespace A064569.P10788618294559116770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A337049 (n + 1) + A077168 n).toNat

end

end A064569.P10788618294559116770

/-! ## A064569.P215555616800796667

`A100996(A351977(n)+A101003(n+1))`
-/

namespace A064569.P215555616800796667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100996 (A351977 n + A101003 (n + 1)).toNat

end

end A064569.P215555616800796667

/-!
# A064570: Binomial transform of (2n)!.

The programs for A064570, the canonical program `A064570.P4458009571227666389` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064570 has offset 0).

The definition of A064570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064570.P12077309388549546596

`∑{#}[n, C(n, #)*(2*#)!]`
-/

namespace A064570.P12077309388549546596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.factorial (2 * k)

end

end A064570.P12077309388549546596

namespace A064570

/-- `∑{#}[n, C(n, #)*(2*#)!]` -/
def P12077309388549546596.Spec : Prop :=
  ∀ n, (P12077309388549546596.a n : ℤ) = A064570 n

end A064570

/-! ## A064570.P4458009571227666389

`1+2*n*(2*n-1)*a(n-1)-2*n*(2*n-2)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064570

/-- `1+2*n*(2*n-1)*a(n-1)-2*n*(2*n-2)*a(n-2)` -/
def P4458009571227666389.Spec : Prop :=
  ∀ n, P4458009571227666389.a n = A064570 n

theorem P4458009571227666389.correct : P4458009571227666389.Spec := by
  intro n
  simp only [A064570]

end A064570

/-!
# A064571: Binomial transform of (3n)!.

The programs for A064571, the canonical program `A064571.P8415255296049215525` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064571 has offset 0).

The definition of A064571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064571.P8415255296049215525

`∑{#}[n, C(n, #)*(3*#)!]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064571

/-- `∑{#}[n, C(n, #)*(3*#)!]` -/
def P8415255296049215525.Spec : Prop :=
  ∀ n, (P8415255296049215525.a n : ℤ) = A064571 n

theorem P8415255296049215525.correct : P8415255296049215525.Spec := by
  intro n
  simp only [A064571]

end A064571

/-!
# A064572: Number of ways to partition n into parts which are all powers of some integer k.

The programs for A064572, there is no canonical definition to state claims against.
-/

/-! ## A064572.P3918939572307956071

`A102432(n+1)-1`
-/

namespace A064572.P3918939572307956071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 1) - 1

end

end A064572.P3918939572307956071

/-! ## A064572.P10987991587703228496

`∑[A064575(A028310(n))]-1`
-/

namespace A064572.P10987991587703228496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A064572.P10987991587703228496

/-! ## A064572.P9127907524730128205

`A064574(n+1)+A064573(n+1)`
-/

namespace A064572.P9127907524730128205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064574 (n + 1) + A064573 (n + 1)

end

end A064572.P9127907524730128205

/-! ## A064572.P3570783257332332060

`A153881(n+2)+A102432(n+1)`
-/

namespace A064572.P3570783257332332060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A102432 (n + 1)

end

end A064572.P3570783257332332060

/-! ## A064572.P15149054640817205558

`∑[A064575(n+1)]-A064575(n+1)`
-/

namespace A064572.P15149054640817205558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064575 (n + 1)

end

end A064572.P15149054640817205558

/-! ## A064572.P12892909468196024810

`A190611(gcd(n, n+1))+A102432(n+1)`
-/

namespace A064572.P12892909468196024810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (Nat.gcd n (n + 1)) + A102432 (n + 1)

end

end A064572.P12892909468196024810

/-! ## A064572.P7628052831507433709

`A107393(A000040(n+1))+A102432(n+1)`
-/

namespace A064572.P7628052831507433709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A000040 (n + 1)).toNat + A102432 (n + 1)

end

end A064572.P7628052831507433709

/-! ## A064572.P505363503415914135

`A299990(A172528(C(2, n+2)))+A102432(n+1)`
-/

namespace A064572.P505363503415914135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A172528 (Nat.choose 2 (n + 2))).toNat + A102432 (n + 1)

end

end A064572.P505363503415914135

/-! ## A064572.P14532773490136616414

`A064573(n+1)+∑[A064577(n+1)]-A064577(n+1)`
-/

namespace A064572.P14532773490136616414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A064577 (n + 1))

end

end A064572.P14532773490136616414

/-! ## A064572.P14150743648795029740

`A107393(A046118(n+1))+A102432(n+1)`
-/

namespace A064572.P14150743648795029740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A046118 (n + 1)).toNat + A102432 (n + 1)

end

end A064572.P14150743648795029740

/-! ## A064572.P5312111061552513735

`A102434(n+1)-(A001700(n)+n)`
-/

namespace A064572.P5312111061552513735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102434 (n + 1) - (A001700 n + (n : ℤ))

end

end A064572.P5312111061552513735

/-!
# A064573: Number of partitions of n into parts which are all powers of the same prime.

The programs for A064573, there is no canonical definition to state claims against.
-/

/-! ## A064573.P498294779150244452

`A064576(n)+a(n-1)` with `a(0)=0`
-/

namespace A064573.P498294779150244452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064576 n + a (n - 1)

end

end A064573.P498294779150244452

/-! ## A064573.P907708900401889859

`∑[A064576(A028310(n))]-1`
-/

namespace A064573.P907708900401889859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064576 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A064573.P907708900401889859

/-! ## A064573.P6563745213009990209

`A064572(n+1)-A064574(n+1)`
-/

namespace A064573.P6563745213009990209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1) - A064574 (n + 1)

end

end A064573.P6563745213009990209

/-! ## A064573.P4991346877269714687

`∑[A064576(n+1)]-A064576(n+1)`
-/

namespace A064573.P4991346877269714687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064576 (n + 1)

end

end A064573.P4991346877269714687

/-! ## A064573.P7137278388451737269

`A102432(n+1)-(A064574(n+1)+1)`
-/

namespace A064573.P7137278388451737269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 1) - (A064574 (n + 1) + 1)

end

end A064573.P7137278388451737269

/-! ## A064573.P18431132285277966912

`∑[A057427(n)*A064576(A028310(n))]`
-/

namespace A064573.P18431132285277966912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A064576 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064573.P18431132285277966912

/-! ## A064573.P8602159930207373782

`A064572(n+1)-∑[A064577(A000007(n)+n)]`
-/

namespace A064573.P8602159930207373782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064573.P8602159930207373782

/-! ## A064573.P5824543534556491503

`A102432(n+1)-1-∑[A064577(A000007(n)+n)]`
-/

namespace A064573.P5824543534556491503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 1) - 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064573.P5824543534556491503

/-! ## A064573.P6117385195147723562

`A064572(n+1)+A064577(n+1)-∑[A064577(n+1)]`
-/

namespace A064573.P6117385195147723562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1) + (A064577 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064573.P6117385195147723562

/-! ## A064573.P16981628985151845239

`A102432(n+1)-1-(∑[A064577(n+1)]-A064577(n+1))`
-/

namespace A064573.P16981628985151845239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 1) - 1 - (∑ j ∈ Finset.range (n + 1), f1 j - A064577 (n + 1))

end

end A064573.P16981628985151845239

/-!
# A064574: Number of partitions of n into parts which are all powers of the same composite.

The programs for A064574, there is no canonical definition to state claims against.
-/

/-! ## A064574.P1444175527396196391

`A064577(n)+a(n-1)` with `a(0)=0`
-/

namespace A064574.P1444175527396196391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064577 n + a (n - 1)

end

end A064574.P1444175527396196391

/-! ## A064574.P9898812547141806288

`∑[A064577(abs(1-n)+1)]`
-/

namespace A064574.P9898812547141806288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064574.P9898812547141806288

/-! ## A064574.P6808043379663434122

`A064572(n+1)-A064573(n+1)`
-/

namespace A064574.P6808043379663434122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1) - A064573 (n + 1)

end

end A064574.P6808043379663434122

/-! ## A064574.P1737382609465815414

`∑[A064577(n+1)]-A064577(n+1)`
-/

namespace A064574.P1737382609465815414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064577 (n + 1)

end

end A064574.P1737382609465815414

/-! ## A064574.P6188594192004659171

`A102432(n+1)-(A064573(n+1)+1)`
-/

namespace A064574.P6188594192004659171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 1) - (A064573 (n + 1) + 1)

end

end A064574.P6188594192004659171

/-! ## A064574.P13902831022708924111

`A064572(n+2)%(A064577(n+1)+A064573(n+2))`
-/

namespace A064574.P13902831022708924111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064572 (n + 2)) (A064577 (n + 1) + A064573 (n + 2))

end

end A064574.P13902831022708924111

/-!
# A064575: First differences of A064572, where A064572(n) is the number of ways to partition n into parts which are all powers of some integer.

The programs for A064575, there is no canonical definition to state claims against.
-/

/-! ## A064575.P8532608703558416316

`A064572(n+2)-A064572(n+1)`
-/

namespace A064575.P8532608703558416316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 2) - A064572 (n + 1)

end

end A064575.P8532608703558416316

/-! ## A064575.P2526053535932991174

`A064577(n+1)+A064576(n+1)`
-/

namespace A064575.P2526053535932991174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (n + 1) + A064576 (n + 1)

end

end A064575.P2526053535932991174

/-! ## A064575.P16627065050180045436

`Δ[A064572(n+1)]`
-/

namespace A064575.P16627065050180045436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064575.P16627065050180045436

/-! ## A064575.P14782526139533964632

`Δ[A102432(n+1)]`
-/

namespace A064575.P14782526139533964632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064575.P14782526139533964632

/-! ## A064575.P17669232139667130940

`abs(Δ[A102432(A080513(2*n))])`
-/

namespace A064575.P17669232139667130940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (A080513 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A064575.P17669232139667130940

/-! ## A064575.P15010362905207133418

`abs(Δ[A064572(A005408(n)-n)])`
-/

namespace A064575.P15010362905207133418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A064575.P15010362905207133418

/-! ## A064575.P11454107819739839587

`A102432(n+2)-A102432(n+1)`
-/

namespace A064575.P11454107819739839587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 2) - A102432 (n + 1)

end

end A064575.P11454107819739839587

/-! ## A064575.P6281287689121345387

`Δ[A064574(n+1)+A064573(n+1)]`
-/

namespace A064575.P6281287689121345387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064574 (n + 1) + A064573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064575.P6281287689121345387

/-! ## A064575.P18398537167913036270

`A064576(n+1)+Δ[A064574(n+1)]`
-/

namespace A064575.P18398537167913036270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064576 (n + 1) + (f1 (n + 1) - f1 n)

end

end A064575.P18398537167913036270

/-! ## A064575.P13479506967535274618

`A064577(n+1)+Δ[A064573(n+1)]`
-/

namespace A064575.P13479506967535274618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (n + 1) + (f1 (n + 1) - f1 n)

end

end A064575.P13479506967535274618

/-! ## A064575.P703422846306659089

`A064577(n+1)+A064573(n+2)-A064573(n+1)`
-/

namespace A064575.P703422846306659089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (n + 1) + (A064573 (n + 2) - A064573 (n + 1))

end

end A064575.P703422846306659089

/-! ## A064575.P15081829970542897799

`A064576(n+1)+A064574(n+2)-A064574(n+1)`
-/

namespace A064575.P15081829970542897799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064576 (n + 1) + (A064574 (n + 2) - A064574 (n + 1))

end

end A064575.P15081829970542897799

/-!
# A064576: First differences of A064573, where A064573(n) is the number of partitions of n into parts which are all powers of the same prime.

The programs for A064576, there is no canonical definition to state claims against.
-/

/-! ## A064576.P14347809620526019127

`A064573(n+2)-A064573(n+1)`
-/

namespace A064576.P14347809620526019127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 2) - A064573 (n + 1)

end

end A064576.P14347809620526019127

/-! ## A064576.P15333890699026085619

`A064575(n+1)-A064577(n+1)`
-/

namespace A064576.P15333890699026085619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (n + 1) - A064577 (n + 1)

end

end A064576.P15333890699026085619

/-! ## A064576.P12967710850129772562

`Δ[A064573(n+1)]`
-/

namespace A064576.P12967710850129772562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064576.P12967710850129772562

/-! ## A064576.P4797220722257919508

`Δ[record[A064573(A133310(n))]]`
-/

namespace A064576.P4797220722257919508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064576.P4797220722257919508

/-! ## A064576.P4608879120549876283

`Δ[A064572(n+1)-A064574(n+1)]`
-/

namespace A064576.P4608879120549876283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1) - A064574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064576.P4608879120549876283

/-! ## A064576.P5532540488743427354

`Δ[A064572(n+1)]-A064577(n+1)`
-/

namespace A064576.P5532540488743427354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064577 (n + 1)

end

end A064576.P5532540488743427354

/-! ## A064576.P6564589066990304278

`A064575(n+1)-Δ[A064574(n+1)]`
-/

namespace A064576.P6564589066990304278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (n + 1) - (f1 (n + 1) - f1 n)

end

end A064576.P6564589066990304278

/-! ## A064576.P2247993556224103121

`A064572(n+2)-(A064577(n+1)+A064572(n+1))`
-/

namespace A064576.P2247993556224103121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 2) - (A064577 (n + 1) + A064572 (n + 1))

end

end A064576.P2247993556224103121

/-! ## A064576.P16798097640369811928

`A064574(n+1)+A064575(n+1)-A064574(n+2)`
-/

namespace A064576.P16798097640369811928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064574 (n + 1) + (A064575 (n + 1) - A064574 (n + 2))

end

end A064576.P16798097640369811928

/-!
# A064577: First differences of A064574.

The programs for A064577, there is no canonical definition to state claims against.
-/

/-! ## A064577.P4755683853802216771

`A064574(n+2)-A064574(n+1)`
-/

namespace A064577.P4755683853802216771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064574 (n + 2) - A064574 (n + 1)

end

end A064577.P4755683853802216771

/-! ## A064577.P3348333328671668026

`A064575(n+1)-A064576(n+1)`
-/

namespace A064577.P3348333328671668026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (n + 1) - A064576 (n + 1)

end

end A064577.P3348333328671668026

/-! ## A064577.P13357435828326316635

`Δ[A064574(n+1)]`
-/

namespace A064577.P13357435828326316635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064577.P13357435828326316635

/-! ## A064577.P17322380826579122401

`Δ[A064572(n+1)-A064573(n+1)]`
-/

namespace A064577.P17322380826579122401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1) - A064573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064577.P17322380826579122401

/-! ## A064577.P5624515829845193527

`Δ[A064572(n+1)]-A064576(n+1)`
-/

namespace A064577.P5624515829845193527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064576 (n + 1)

end

end A064577.P5624515829845193527

/-! ## A064577.P7634728092167625419

`A064575(n+1)-Δ[A064573(n+1)]`
-/

namespace A064577.P7634728092167625419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (n + 1) - (f1 (n + 1) - f1 n)

end

end A064577.P7634728092167625419

/-! ## A064577.P15342631573512180562

`Δ[A102432(n+1)-A064573(n+1)]`
-/

namespace A064577.P15342631573512180562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 1) - A064573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064577.P15342631573512180562

/-! ## A064577.P6108165076889946493

`A064572(n+2)-(A064576(n+1)+A064572(n+1))`
-/

namespace A064577.P6108165076889946493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 2) - (A064576 (n + 1) + A064572 (n + 1))

end

end A064577.P6108165076889946493

/-! ## A064577.P10408899972786503912

`A064573(n+1)+A064575(n+1)-A064573(n+2)`
-/

namespace A064577.P10408899972786503912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 1) + (A064575 (n + 1) - A064573 (n + 2))

end

end A064577.P10408899972786503912

/-! ## A064577.P14230708934458416675

`A064572(n+2)%(A064574(n+1)+A064573(n+2))`
-/

namespace A064577.P14230708934458416675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064572 (n + 2)) (A064574 (n + 1) + A064573 (n + 2))

end

end A064577.P14230708934458416675

/-!
# A064578: Inverse permutation to A057027.

The programs for A064578, the canonical program `A064578.P5706132154226791949` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064578 has offset 1).

The definition of A064578 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064578.P5706132154226791949

`A057944(n)+A194959(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A064578

/-- `A057944(n)+A194959(n+1)` -/
def P5706132154226791949.Spec : Prop :=
  ∀ n, P5706132154226791949.a n = A064578 (n + 1)

theorem P5706132154226791949.correct : P5706132154226791949.Spec := by
  intro n
  simp only [A064578, Nat.add_sub_cancel]

end A064578

/-! ## A064578.P17070496754002574851

`A038722(A064789(n+1))`
-/

namespace A064578.P17070496754002574851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A064789 (n + 1)).toNat

end

end A064578.P17070496754002574851

namespace A064578

/-- `A038722(A064789(n+1))` -/
def P17070496754002574851.Spec : Prop :=
  ∀ n, P17070496754002574851.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P11067861067908357963

`A194959(n+1)+A057944(n)`
-/

namespace A064578.P11067861067908357963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) + A057944 n

end

end A064578.P11067861067908357963

namespace A064578

/-- `A194959(n+1)+A057944(n)` -/
def P11067861067908357963.Spec : Prop :=
  ∀ n, P11067861067908357963.a n = A064578 (n + 1)

theorem P11067861067908357963.correct : P11067861067908357963.Spec := by
  intro n
  simp only [A064578, Nat.add_sub_cancel, A064578.P11067861067908357963.a, A064578.P5706132154226791949.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A064578

/-! ## A064578.P13013211356278381343

`A265129(n+1)-A064789(n+1)`
-/

namespace A064578.P13013211356278381343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A064789 (n + 1)

end

end A064578.P13013211356278381343

namespace A064578

/-- `A265129(n+1)-A064789(n+1)` -/
def P13013211356278381343.Spec : Prop :=
  ∀ n, P13013211356278381343.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P15960226314050736273

`A093995(n+1)+1-A064789(n+1)`
-/

namespace A064578.P15960226314050736273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (1 - A064789 (n + 1))

end

end A064578.P15960226314050736273

namespace A064578

/-- `A093995(n+1)+1-A064789(n+1)` -/
def P15960226314050736273.Spec : Prop :=
  ∀ n, P15960226314050736273.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P13080942947073756723

`A127739(n+1)+1-A130517(n+1)`
-/

namespace A064578.P13080942947073756723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (1 - A130517 (n + 1))

end

end A064578.P13080942947073756723

namespace A064578

/-- `A127739(n+1)+1-A130517(n+1)` -/
def P13080942947073756723.Spec : Prop :=
  ∀ n, P13080942947073756723.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P3071957295287994864

`A004736(n+1)+n+1-A130517(n+1)`
-/

namespace A064578.P3071957295287994864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + ((n + 1 : ℤ) - A130517 (n + 1))

end

end A064578.P3071957295287994864

namespace A064578

/-- `A004736(n+1)+n+1-A130517(n+1)` -/
def P3071957295287994864.Spec : Prop :=
  ∀ n, P3071957295287994864.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P4573206809925955581

`A000124(round(sqrt(2*(n+1))))-A130517(n+1)`
-/

namespace A064578.P4573206809925955581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat - A130517 (n + 1)

end

end A064578.P4573206809925955581

namespace A064578

/-- `A000124(round(sqrt(2*(n+1))))-A130517(n+1)` -/
def P4573206809925955581.Spec : Prop :=
  ∀ n, P4573206809925955581.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P15271835143222892734

`A056011(n+1)+A056023(n+1)-A064789(n+1)`
-/

namespace A064578.P15271835143222892734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) + (A056023 (n + 1) - A064789 (n + 1))

end

end A064578.P15271835143222892734

namespace A064578

/-- `A056011(n+1)+A056023(n+1)-A064789(n+1)` -/
def P15271835143222892734.Spec : Prop :=
  ∀ n, P15271835143222892734.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P17560340454557398931

`A038722(A185180(A038722(n+1)))`
-/

namespace A064578.P17560340454557398931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A185180 (A038722 (n + 1)).toNat).toNat

end

end A064578.P17560340454557398931

namespace A064578

/-- `A038722(A185180(A038722(n+1)))` -/
def P17560340454557398931.Spec : Prop :=
  ∀ n, P17560340454557398931.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P161881375555317507

`A057028(n+1)+A209293(n+1)-A064789(n+1)`
-/

namespace A064578.P161881375555317507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1) + (A209293 (n + 1) - A064789 (n + 1))

end

end A064578.P161881375555317507

namespace A064578

/-- `A057028(n+1)+A209293(n+1)-A064789(n+1)` -/
def P161881375555317507.Spec : Prop :=
  ∀ n, P161881375555317507.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P12284049919472307669

`A185180(n+1)+A210535(n+1)-A130517(n+1)`
-/

namespace A064578.P12284049919472307669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1) + (A210535 (n + 1) - A130517 (n + 1))

end

end A064578.P12284049919472307669

namespace A064578

/-- `A185180(n+1)+A210535(n+1)-A130517(n+1)` -/
def P12284049919472307669.Spec : Prop :=
  ∀ n, P12284049919472307669.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P17715109969209391815

`A056023(A056011(A185180(A056023(A056011(n+1)))))`
-/

namespace A064578.P17715109969209391815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A056011 (A185180 (A056023 (A056011 (n + 1)).toNat).toNat).toNat).toNat

end

end A064578.P17715109969209391815

namespace A064578

/-- `A056023(A056011(A185180(A056023(A056011(n+1)))))` -/
def P17715109969209391815.Spec : Prop :=
  ∀ n, P17715109969209391815.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P7897192278056167151

`A057028(A185180(A185180(A057028(A185180(n+1)))))`
-/

namespace A064578.P7897192278056167151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A185180 (A185180 (A057028 (A185180 (n + 1)).toNat).toNat).toNat).toNat

end

end A064578.P7897192278056167151

namespace A064578

/-- `A057028(A185180(A185180(A057028(A185180(n+1)))))` -/
def P7897192278056167151.Spec : Prop :=
  ∀ n, P7897192278056167151.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P16833272501889708815

`A057944(n)+A004739(2*n+1)`
-/

namespace A064578.P16833272501889708815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004739 (2 * n + 1)

end

end A064578.P16833272501889708815

namespace A064578

/-- `A057944(n)+A004739(2*n+1)` -/
def P16833272501889708815.Spec : Prop :=
  ∀ n, P16833272501889708815.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P706433904241137696

`A004739(Δ[n²])+n-A002262(n)`
-/

namespace A064578.P706433904241137696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ) - A002262 n

end

end A064578.P706433904241137696

namespace A064578

/-- `A004739(Δ[n²])+n-A002262(n)` -/
def P706433904241137696.Spec : Prop :=
  ∀ n, P706433904241137696.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P2187997398245647828

`A004739(2*n+1)+n-A002262(n)`
-/

namespace A064578.P2187997398245647828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (2 * n + 1) + ((n : ℤ) - A002262 n)

end

end A064578.P2187997398245647828

namespace A064578

/-- `A004739(2*n+1)+n-A002262(n)` -/
def P2187997398245647828.Spec : Prop :=
  ∀ n, P2187997398245647828.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P6532250237890317012

`A000124(round(sqrt(2*(n+1))))-A004737(2*n+1)`
-/

namespace A064578.P6532250237890317012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat - A004737 (2 * n + 1)

end

end A064578.P6532250237890317012

namespace A064578

/-- `A000124(round(sqrt(2*(n+1))))-A004737(2*n+1)` -/
def P6532250237890317012.Spec : Prop :=
  ∀ n, P6532250237890317012.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P14564062739872966340

`A194959(n+1)+A194963(n+1)-A194961(n+1)`
-/

namespace A064578.P14564062739872966340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) + (A194963 (n + 1) - A194961 (n + 1))

end

end A064578.P14564062739872966340

namespace A064578

/-- `A194959(n+1)+A194963(n+1)-A194961(n+1)` -/
def P14564062739872966340.Spec : Prop :=
  ∀ n, P14564062739872966340.a n = A064578 (n + 1)

end A064578

/-! ## A064578.P5847343683441065694

`A194959(n+1)+A195071(n+1)-A194921(n+1)`
-/

namespace A064578.P5847343683441065694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) + (A195071 (n + 1) - A194921 (n + 1))

end

end A064578.P5847343683441065694

namespace A064578

/-- `A194959(n+1)+A195071(n+1)-A194921(n+1)` -/
def P5847343683441065694.Spec : Prop :=
  ∀ n, P5847343683441065694.a n = A064578 (n + 1)

end A064578

/-!
# A064579: Inverse permutation to A054082.

The programs for A064579, the canonical program `A064579.P6357362564671584677` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064579 has offset 1).

The definition of A064579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8090 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064579.P6357362564671584677

`A064786(A054082(A064786(n+1)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064579

/-- `A064786(A054082(A064786(n+1)))` -/
def P6357362564671584677.Spec : Prop :=
  ∀ n, P6357362564671584677.a n = A064579 (n + 1)

theorem P6357362564671584677.correct : P6357362564671584677.Spec := by
  intro n
  simp only [A064579, Nat.add_sub_cancel]

end A064579

/-!
# A064580: Triangle associated with rooted trees with a degree constraint (A036765).

The programs for A064580, there is no canonical definition to state claims against.
-/

/-! ## A064580.P9002696579787401745

`A330780(or(1, A008955(n)))`
-/

namespace A064580.P9002696579787401745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330780 (Int.lor 1 (A008955 n)).toNat

end

end A064580.P9002696579787401745

/-! ## A064580.P3546890045988013474

`A240467(A084631(n))+A009766(n)`
-/

namespace A064580.P3546890045988013474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A084631 n).toNat + A009766 n

end

end A064580.P3546890045988013474

/-! ## A064580.P17913591335272959076

`A048266(A009766(n)-A025437(n))`
-/

namespace A064580.P17913591335272959076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A009766 n - A025437 n).toNat

end

end A064580.P17913591335272959076

/-! ## A064580.P2829298330980656357

`A009766(n)-A025466(A113025(n))`
-/

namespace A064580.P2829298330980656357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n - A025466 (A113025 n).toNat

end

end A064580.P2829298330980656357

/-! ## A064580.P12395764274833977946

`A009766(n)-A285007(A205497(n))`
-/

namespace A064580.P12395764274833977946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n - A285007 (A205497 n).toNat

end

end A064580.P12395764274833977946

/-!
# A064583: a(n) = n^4*(n^4+1)*(n^2-1).

The programs for A064583, the canonical program `A064583.P3825221408506686579` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064583 has offset 0).

The definition of A064583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^4+1)*(n²-1)` (program `A064583.P3825221408506686579`, by `A064583.P3825221408506686579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064583.P3825221408506686579

`n^4*(n^4+1)*(n²-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064583

/-- `n^4*(n^4+1)*(n²-1)` -/
def P3825221408506686579.Spec : Prop :=
  ∀ n, P3825221408506686579.a n = A064583 n

theorem P3825221408506686579.correct : P3825221408506686579.Spec := by
  intro n
  simp only [A064583]

end A064583

/-! ## A064583.P12696231555852372396

`n²*A060892(n)-n²`
-/

namespace A064583.P12696231555852372396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A060892 n - (n ^ 2 : ℤ)

end

end A064583.P12696231555852372396

namespace A064583

/-- `n²*A060892(n)-n²` -/
def P12696231555852372396.Spec : Prop :=
  ∀ n, P12696231555852372396.a n = A064583 n

theorem P12696231555852372396.correct : P12696231555852372396.Spec := by
  intro n
  simp only [A064583, Nat.add_sub_cancel, A064583.P12696231555852372396.a, A064583.P3825221408506686579.a, A060892, A060892.P2885025687055146704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064583

/-! ## A064583.P10999525268770176332

`A133754(n)²+A034262(n)*A133754(n)`
-/

namespace A064583.P10999525268770176332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133754 n ^ 2 + A034262 n * A133754 n

end

end A064583.P10999525268770176332

namespace A064583

/-- `A133754(n)²+A034262(n)*A133754(n)` -/
def P10999525268770176332.Spec : Prop :=
  ∀ n, P10999525268770176332.a n = A064583 n

theorem P10999525268770176332.correct : P10999525268770176332.Spec := by
  intro n
  simp only [A064583, Nat.add_sub_cancel, A064583.P10999525268770176332.a, A064583.P3825221408506686579.a, A034262, A034262.P1986901683698587680.a, A133754, A133754.P2736997531486272654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064583

/-! ## A064583.P17027002736531815703

`A002523(n)*A002604(n)-A002523(n)²`
-/

namespace A064583.P17027002736531815703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n * A002604 n - A002523 n ^ 2

end

end A064583.P17027002736531815703

namespace A064583

/-- `A002523(n)*A002604(n)-A002523(n)²` -/
def P17027002736531815703.Spec : Prop :=
  ∀ n, P17027002736531815703.a n = A064583 n

theorem P17027002736531815703.correct : P17027002736531815703.Spec := by
  intro n
  simp only [A064583, Nat.add_sub_cancel, A064583.P17027002736531815703.a, A064583.P3825221408506686579.a, A002523, A002523.P178649398705969946.a, A002604, A002604.P7413616626921950618.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064583

/-! ## A064583.P5988840759198571631

`A131471(n)²-A034262(n)*A131471(n)`
-/

namespace A064583.P5988840759198571631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131471 n ^ 2 - A034262 n * A131471 n

end

end A064583.P5988840759198571631

namespace A064583

/-- `A131471(n)²-A034262(n)*A131471(n)` -/
def P5988840759198571631.Spec : Prop :=
  ∀ n, P5988840759198571631.a n = A064583 n

theorem P5988840759198571631.correct : P5988840759198571631.Spec := by
  intro n
  simp only [A064583, Nat.add_sub_cancel, A064583.P5988840759198571631.a, A064583.P3825221408506686579.a, A034262, A034262.P1986901683698587680.a, A131471, A131471.P12482115226042697987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064583

/-! ## A064583.P18337851652177871789

`A037250(n²)`
-/

namespace A064583.P18337851652177871789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037250 (n ^ 2)

end

end A064583.P18337851652177871789

namespace A064583

/-- `A037250(n²)` -/
def P18337851652177871789.Spec : Prop :=
  ∀ n, P18337851652177871789.a n = A064583 n

theorem P18337851652177871789.correct : P18337851652177871789.Spec := by
  intro n
  simp only [A064583, Nat.add_sub_cancel, A064583.P18337851652177871789.a, A064583.P3825221408506686579.a, A037250, A037250.P16915158763133105816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064583

/-! ## A064583.P18431939891845980689

`A136038(n)+A085538(n²)`
-/

namespace A064583.P18431939891845980689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136038 n + A085538 (n ^ 2)

end

end A064583.P18431939891845980689

namespace A064583

/-- `A136038(n)+A085538(n²)` -/
def P18431939891845980689.Spec : Prop :=
  ∀ n, P18431939891845980689.a n = A064583 n

theorem P18431939891845980689.correct : P18431939891845980689.Spec := by
  intro n
  simp only [A064583, Nat.add_sub_cancel, A064583.P18431939891845980689.a, A064583.P3825221408506686579.a, A085538, A085538.P4728706090558992157.a, A136038, A136038.P15305248472403964533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064583

/-! ## A064583.P18412292184133718950

`A191012(n²)-n²`
-/

namespace A064583.P18412292184133718950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191012 (n ^ 2) - (n ^ 2 : ℤ)

end

end A064583.P18412292184133718950

namespace A064583

/-- `A191012(n²)-n²` -/
def P18412292184133718950.Spec : Prop :=
  ∀ n, P18412292184133718950.a n = A064583 n

theorem P18412292184133718950.correct : P18412292184133718950.Spec := by
  intro n
  simp only [A064583, Nat.add_sub_cancel, A064583.P18412292184133718950.a, A064583.P3825221408506686579.a, A191012, A191012.P3049009521135598509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064583

/-! ## A064583.P18402485192685953126

`A085538(n²)+A045991(n²)`
-/

namespace A064583.P18402485192685953126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085538 (n ^ 2) + A045991 (n ^ 2)

end

end A064583.P18402485192685953126

namespace A064583

/-- `A085538(n²)+A045991(n²)` -/
def P18402485192685953126.Spec : Prop :=
  ∀ n, P18402485192685953126.a n = A064583 n

theorem P18402485192685953126.correct : P18402485192685953126.Spec := by
  intro n
  simp only [A064583, Nat.add_sub_cancel, A064583.P18402485192685953126.a, A064583.P3825221408506686579.a, A045991, A045991.P16915764248010155243.a, A085538, A085538.P4728706090558992157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064583

/-! ## A064583.P5231895574072638541

`A133072(n²)-A000583(n²)`
-/

namespace A064583.P5231895574072638541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133072 (n ^ 2) - A000583 (n ^ 2)

end

end A064583.P5231895574072638541

namespace A064583

/-- `A133072(n²)-A000583(n²)` -/
def P5231895574072638541.Spec : Prop :=
  ∀ n, P5231895574072638541.a n = A064583 n

theorem P5231895574072638541.correct : P5231895574072638541.Spec := by
  intro n
  simp only [A064583, Nat.add_sub_cancel, A064583.P5231895574072638541.a, A064583.P3825221408506686579.a, A000583, A000583.P14547500281748394449.a, A133072, A133072.P17384567826697917406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064583

/-! ## A064583.P10656433819961914713

`A000584(n²)-A309372(n²)`
-/

namespace A064583.P10656433819961914713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (n ^ 2) - A309372 (n ^ 2)

end

end A064583.P10656433819961914713

namespace A064583

/-- `A000584(n²)-A309372(n²)` -/
def P10656433819961914713.Spec : Prop :=
  ∀ n, P10656433819961914713.a n = A064583 n

theorem P10656433819961914713.correct : P10656433819961914713.Spec := by
  intro n
  simp only [A064583, Nat.add_sub_cancel, A064583.P10656433819961914713.a, A064583.P3825221408506686579.a, A000584, A000584.P5477385692209315495.a, A309372, A309372.P14598993035271615198.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064583

/-! ## A064583.P10576818962580357124

`A136008(n²)/(A253909(n)+1)`
-/

namespace A064583.P10576818962580357124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136008 (n ^ 2) : ℚ) / (A253909 n + 1 : ℚ)

end

end A064583.P10576818962580357124

namespace A064583

/-- `A136008(n²)/(A253909(n)+1)` -/
def P10576818962580357124.Spec : Prop :=
  ∀ n, P10576818962580357124.a n = (A064583 n : ℚ)

end A064583

/-!
# A064585: 

The programs for A064585, there is no canonical definition to state claims against.
-/

/-! ## A064585.P9077924757685076691

`n^24*(n²-1)*(n^6+1)*(n^8-1)*(n^12+1)`
-/

namespace A064585.P9077924757685076691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 24 : ℤ) * (((n ^ 2 : ℤ) - 1) * ((n ^ 6 + 1 : ℤ) * (((n ^ 8 : ℤ) - 1) * (n ^ 12 + 1 : ℤ))))

end

end A064585.P9077924757685076691

/-! ## A064585.P11985177063438573058

`A037252(n²)`
-/

namespace A064585.P11985177063438573058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037252 (n ^ 2)

end

end A064585.P11985177063438573058

/-!
# A064586: 

The programs for A064586, there is no canonical definition to state claims against.
-/

/-! ## A064586.P3629156735894617648

`A037252(2^Δ[n²])`
-/

namespace A064586.P3629156735894617648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037252 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ))).toNat

end

end A064586.P3629156735894617648

/-!
# A064587: a(n) = n^6*(n^4 + n^2 + 1)*(n^3 - 1)*(n - 1).

The programs for A064587, the canonical program `A064587.P17766132244439687028` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064587 has offset 0).

The definition of A064587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^4+n²+1)*(n^3-1)*(n-1)` (program `A064587.P17766132244439687028`, by `A064587.P17766132244439687028.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064587.P17766132244439687028

`n^6*(n^4+n²+1)*(n^3-1)*(n-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064587

/-- `n^6*(n^4+n²+1)*(n^3-1)*(n-1)` -/
def P17766132244439687028.Spec : Prop :=
  ∀ n, P17766132244439687028.a n = A064587 n

theorem P17766132244439687028.correct : P17766132244439687028.Spec := by
  intro n
  simp only [A064587]

end A064587

/-! ## A064587.P4585114143006057086

`lcm((1-n)²+n, (2*C(n^3, 2))²)`
-/

namespace A064587.P4585114143006057086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ((2 * Nat.choose (n ^ 3) 2) ^ 2 : ℤ)

end

end A064587.P4585114143006057086

namespace A064587

/-- `lcm((1-n)²+n, (2*C(n^3, 2))²)` -/
def P4585114143006057086.Spec : Prop :=
  ∀ n, (P4585114143006057086.a n : ℤ) = A064587 n

end A064587

/-! ## A064587.P5738961665828066257

`lcm(A136006(n)², A002061(n))`
-/

namespace A064587.P5738961665828066257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136006 n ^ 2) (A002061 n)

end

end A064587.P5738961665828066257

namespace A064587

/-- `lcm(A136006(n)², A002061(n))` -/
def P5738961665828066257.Spec : Prop :=
  ∀ n, (P5738961665828066257.a n : ℤ) = A064587 n

end A064587

/-! ## A064587.P12205410306006528576

`A000038(n+1)+A136006(n)²*A002061(n)`
-/

namespace A064587.P12205410306006528576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + A136006 n ^ 2 * A002061 n

end

end A064587.P12205410306006528576

namespace A064587

/-- `A000038(n+1)+A136006(n)²*A002061(n)` -/
def P12205410306006528576.Spec : Prop :=
  ∀ n, P12205410306006528576.a n = A064587 n

theorem P12205410306006528576.correct : P12205410306006528576.Spec := by
  intro n
  simp only [A064587, Nat.add_sub_cancel, A064587.P12205410306006528576.a, A064587.P17766132244439687028.a, A000038, A000038.P13734959004655594922.a, A002061, A002061.P13016590216674735232.a, A136006, A136006.P5387375116084023798.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064587

/-!
# A064588: 

The programs for A064588, there is no canonical definition to state claims against.
-/

/-! ## A064588.P12638441281168794395

`A064587(4^n)`
-/

namespace A064588.P12638441281168794395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064587 (4 ^ n)

end

end A064588.P12638441281168794395

/-!
# A064590: Ordered values of A064494.

The programs for A064590, there is no canonical definition to state claims against.
-/

/-! ## A064590.P4204947402857117183

`comp[A064627(n+1)-1]+1`
-/

namespace A064590.P4204947402857117183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064627 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064590.P4204947402857117183

/-! ## A064590.P6227283804934377427

`eq[char[A064627(n+1)], A000007(n)]`
-/

namespace A064590.P6227283804934377427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064627 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064590.P6227283804934377427

/-!
# A064591: Nonunitary perfect numbers: k is the sum of its nonunitary divisors; i.e., k = sigma(k) - usigma(k).

The programs for A064591, there is no canonical definition to state claims against.
-/

/-! ## A064591.P7348748708313732244

`2*A139256(n+1)`
-/

namespace A064591.P7348748708313732244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139256 (n + 1)

end

end A064591.P7348748708313732244

/-! ## A064591.P4265326408935207242

`2*A065125(n+2)`
-/

namespace A064591.P4265326408935207242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065125 (n + 2)

end

end A064591.P4265326408935207242

/-! ## A064591.P7141376525905139021

`4*A000396(n+1)`
-/

namespace A064591.P7141376525905139021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000396 (n + 1)

end

end A064591.P7141376525905139021

/-! ## A064591.P14090167881414481097

`8*A133028(n+1)`
-/

namespace A064591.P14090167881414481097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A133028 (n + 1)

end

end A064591.P14090167881414481097

/-!
# A064594: Nonunitary multiply perfect numbers: the sum of the nonunitary divisors of n is a multiple of n; i.e., n divides sigma(n) - usigma(n).

The programs for A064594, the canonical program `A064594.P14338933010286859949` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064594 has offset 1).

The definition of A064594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064594.P6257050424136246206

`eq[1, A323154(n+1)]+1`
-/

namespace A064594.P6257050424136246206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064594.P6257050424136246206

namespace A064594

/-- `eq[1, A323154(n+1)]+1` -/
def P6257050424136246206.Spec : Prop :=
  ∀ n, (P6257050424136246206.a n : ℤ) = A064594 (n + 1)

end A064594

/-! ## A064594.P14338933010286859949

`record[gcd(n+1, A048146(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A064594

/-- `record[gcd(n+1, A048146(n+1))]` -/
def P14338933010286859949.Spec : Prop :=
  ∀ n, (P14338933010286859949.a n : ℤ) = A064594 (n + 1)

theorem P14338933010286859949.correct : P14338933010286859949.Spec := by
  intro n
  simp only [A064594, Nat.add_sub_cancel]

end A064594

/-! ## A064594.P13488922508655534534

`record[n/a(A048146(n)%n)]` with `a(0)=1`
-/

namespace A064594.P13488922508655534534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (Int.tmod (A048146 n) (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064594.P13488922508655534534

namespace A064594

/-- `record[n/a(A048146(n)%n)]` -/
def P13488922508655534534.Spec : Prop :=
  ∀ n, P13488922508655534534.a n = (A064594 (n + 1) : ℚ)

end A064594

/-! ## A064594.P15590380838848758867

`record[n+1-(A325814(n+1)%(n+1))²]`
-/

namespace A064594.P15590380838848758867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A325814 (n + 1)) (n + 1 : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064594.P15590380838848758867

namespace A064594

/-- `record[n+1-(A325814(n+1)%(n+1))²]` -/
def P15590380838848758867.Spec : Prop :=
  ∀ n, P15590380838848758867.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P14716769172872623384

`record[A000027(n+1)*A323154(n+1)]`
-/

namespace A064594.P14716769172872623384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A323154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064594.P14716769172872623384

namespace A064594

/-- `record[A000027(n+1)*A323154(n+1)]` -/
def P14716769172872623384.Spec : Prop :=
  ∀ n, P14716769172872623384.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P5276335636386679570

`filter[A046841(n+1), A323154(#)]`
-/

namespace A064594.P5276335636386679570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P5276335636386679570

namespace A064594

/-- `filter[A046841(n+1), A323154(#)]` -/
def P5276335636386679570.Spec : Prop :=
  ∀ n, P5276335636386679570.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P3330998117404995265

`filter[A047588(n+2), A323154(#)]`
-/

namespace A064594.P3330998117404995265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P3330998117404995265

namespace A064594

/-- `filter[A047588(n+2), A323154(#)]` -/
def P3330998117404995265.Spec : Prop :=
  ∀ n, P3330998117404995265.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P11555552902998361380

`filter[A242031(n+1), A323154(#)]`
-/

namespace A064594.P11555552902998361380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P11555552902998361380

namespace A064594

/-- `filter[A242031(n+1), A323154(#)]` -/
def P11555552902998361380.Spec : Prop :=
  ∀ n, P11555552902998361380.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P12217658776467692063

`filter[A093618(n+1), A323154(#)]`
-/

namespace A064594.P12217658776467692063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P12217658776467692063

namespace A064594

/-- `filter[A093618(n+1), A323154(#)]` -/
def P12217658776467692063.Spec : Prop :=
  ∀ n, P12217658776467692063.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P11934860491658381152

`filter[A273058(n+1), A323154(#)]`
-/

namespace A064594.P11934860491658381152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P11934860491658381152

namespace A064594

/-- `filter[A273058(n+1), A323154(#)]` -/
def P11934860491658381152.Spec : Prop :=
  ∀ n, P11934860491658381152.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P2149841847633634661

`filter[A390538(n+1), A323154(#)]`
-/

namespace A064594.P2149841847633634661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P2149841847633634661

namespace A064594

/-- `filter[A390538(n+1), A323154(#)]` -/
def P2149841847633634661.Spec : Prop :=
  ∀ n, P2149841847633634661.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P3115083749514643132

`filter[A386807(n+1), A323154(#)]`
-/

namespace A064594.P3115083749514643132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P3115083749514643132

namespace A064594

/-- `filter[A386807(n+1), A323154(#)]` -/
def P3115083749514643132.Spec : Prop :=
  ∀ n, P3115083749514643132.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P15579520159379727446

`filter[A175082(n+1), A323154(#)]`
-/

namespace A064594.P15579520159379727446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P15579520159379727446

namespace A064594

/-- `filter[A175082(n+1), A323154(#)]` -/
def P15579520159379727446.Spec : Prop :=
  ∀ n, P15579520159379727446.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P11804674175470122983

`filter[A164514(n+1), A323154(#)]`
-/

namespace A064594.P11804674175470122983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P11804674175470122983

namespace A064594

/-- `filter[A164514(n+1), A323154(#)]` -/
def P11804674175470122983.Spec : Prop :=
  ∀ n, P11804674175470122983.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P4302834247652258798

`filter[A068937(n+1), A323154(#)]`
-/

namespace A064594.P4302834247652258798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P4302834247652258798

namespace A064594

/-- `filter[A068937(n+1), A323154(#)]` -/
def P4302834247652258798.Spec : Prop :=
  ∀ n, P4302834247652258798.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P4178728984878057867

`filter[A213367(n+1), A323154(#)]`
-/

namespace A064594.P4178728984878057867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P4178728984878057867

namespace A064594

/-- `filter[A213367(n+1), A323154(#)]` -/
def P4178728984878057867.Spec : Prop :=
  ∀ n, P4178728984878057867.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P16052875542414482820

`filter[A367615(n+1), A323154(#)]`
-/

namespace A064594.P16052875542414482820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P16052875542414482820

namespace A064594

/-- `filter[A367615(n+1), A323154(#)]` -/
def P16052875542414482820.Spec : Prop :=
  ∀ n, P16052875542414482820.a n = A064594 (n + 1)

end A064594

/-! ## A064594.P12837302788098026529

`filter[A038459(n+1), A323154(#)]`
-/

namespace A064594.P12837302788098026529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064594.P12837302788098026529

namespace A064594

/-- `filter[A038459(n+1), A323154(#)]` -/
def P12837302788098026529.Spec : Prop :=
  ∀ n, P12837302788098026529.a n = A064594 (n + 1)

end A064594

/-!
# A064595: Nontrivial nonunitary multiply perfect numbers: the sum of the nonunitary divisors of n is a positive multiple of n; i.e., (sigma(n) - usigma(n))/n is a positive integer.

The programs for A064595, there is no canonical definition to state claims against.
-/

/-! ## A064595.P2140065180783038016

`∪[A064591(n+1), A064592(A270929(n+1))]`
-/

namespace A064595.P2140065180783038016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064592 (A270929 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064595.P2140065180783038016

/-! ## A064595.P10468585979260706140

`filter[A319745(n+1), A323154(#)]`
-/

namespace A064595.P10468585979260706140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A064595.P10468585979260706140

/-!
# A064597: Nonunitary abundant numbers: the sum of the nonunitary divisors of k is larger than k; i.e., sigma(k) - usigma(k) > k.

The programs for A064597, the canonical program `A064597.P7941161019768686173` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064597 has offset 1).

The definition of A064597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4045 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064597.P7941161019768686173

`lt[n+1, A048146(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A064597

/-- `lt[n+1, A048146(n+1)]+1` -/
def P7941161019768686173.Spec : Prop :=
  ∀ n, (P7941161019768686173.a n : ℤ) = A064597 (n + 1)

theorem P7941161019768686173.correct : P7941161019768686173.Spec := by
  intro n
  simp only [A064597, Nat.add_sub_cancel]

end A064597

/-! ## A064597.P7013240920463514583

`lt[A325814(n+2), 0]+2`
-/

namespace A064597.P7013240920463514583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A064597.P7013240920463514583

namespace A064597

/-- `lt[A325814(n+2), 0]+2` -/
def P7013240920463514583.Spec : Prop :=
  ∀ n, (P7013240920463514583.a n : ℤ) = A064597 (n + 1)

end A064597

/-! ## A064597.P2927570657691723510

`lt[A325814(A028310(n)), 0]`
-/

namespace A064597.P2927570657691723510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A064597.P2927570657691723510

namespace A064597

/-- `lt[A325814(A028310(n)), 0]` -/
def P2927570657691723510.Spec : Prop :=
  ∀ n, (P2927570657691723510.a n : ℤ) = A064597 (n + 1)

end A064597

/-! ## A064597.P12440154088690351159

`A014681(lt[A325814(n+1), 0])`
-/

namespace A064597.P12440154088690351159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A064597.P12440154088690351159

namespace A064597

/-- `A014681(lt[A325814(n+1), 0])` -/
def P12440154088690351159.Spec : Prop :=
  ∀ n, P12440154088690351159.a n = A064597 (n + 1)

end A064597

/-! ## A064597.P3505410023270818718

`A153152(lt[A325814(n+1), 0])`
-/

namespace A064597.P3505410023270818718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A064597.P3505410023270818718

namespace A064597

/-- `A153152(lt[A325814(n+1), 0])` -/
def P3505410023270818718.Spec : Prop :=
  ∀ n, P3505410023270818718.a n = A064597 (n + 1)

end A064597

/-! ## A064597.P11877504616732753631

`lt[n, A048146(A014681(n)+1)]`
-/

namespace A064597.P11877504616732753631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A014681 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A064597.P11877504616732753631

namespace A064597

/-- `lt[n, A048146(A014681(n)+1)]` -/
def P11877504616732753631.Spec : Prop :=
  ∀ n, (P11877504616732753631.a n : ℤ) = A064597 (n + 1)

end A064597

/-! ## A064597.P9969262227315123340

`A020725(lt[n+1, A048146(n+1)])`
-/

namespace A064597.P9969262227315123340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A064597.P9969262227315123340

namespace A064597

/-- `A020725(lt[n+1, A048146(n+1)])` -/
def P9969262227315123340.Spec : Prop :=
  ∀ n, P9969262227315123340.a n = A064597 (n + 1)

end A064597

/-! ## A064597.P5415787223755259967

`lt[A034448(n+1), A001065(n+1)]+1`
-/

namespace A064597.P5415787223755259967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A064597.P5415787223755259967

namespace A064597

/-- `lt[A034448(n+1), A001065(n+1)]+1` -/
def P5415787223755259967.Spec : Prop :=
  ∀ n, (P5415787223755259967.a n : ℤ) = A064597 (n + 1)

end A064597

/-! ## A064597.P4326715095624826595

`A014681(lt[A034448(n+1), A001065(n+1)])`
-/

namespace A064597.P4326715095624826595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064597.P4326715095624826595

namespace A064597

/-- `A014681(lt[A034448(n+1), A001065(n+1)])` -/
def P4326715095624826595.Spec : Prop :=
  ∀ n, P4326715095624826595.a n = A064597 (n + 1)

end A064597

/-! ## A064597.P18039017844960132712

`A153152(lt[A034448(n+1), A001065(n+1)])`
-/

namespace A064597.P18039017844960132712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064597.P18039017844960132712

namespace A064597

/-- `A153152(lt[A034448(n+1), A001065(n+1)])` -/
def P18039017844960132712.Spec : Prop :=
  ∀ n, P18039017844960132712.a n = A064597 (n + 1)

end A064597

/-!
# A064598: Nonunitary deficient numbers: the sum of the nonunitary divisors of n is less than n; i.e., sigma(n) - usigma(n) < n.

The programs for A064598, the canonical program `A064598.P8686075922530309048` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064598 has offset 1).

The definition of A064598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064598.P5096308124473264045

`lt[A048146(round(acot(n)+n)), n]`
-/

namespace A064598.P5096308124473264045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A064598.P5096308124473264045

namespace A064598

/-- `lt[A048146(round(acot(n)+n)), n]` -/
def P5096308124473264045.Spec : Prop :=
  ∀ n, (P5096308124473264045.a n : ℤ) = A064598 (n + 1)

end A064598

/-! ## A064598.P8686075922530309048

`lt[A048146(n+1), n+1]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A064598

/-- `lt[A048146(n+1), n+1]+1` -/
def P8686075922530309048.Spec : Prop :=
  ∀ n, (P8686075922530309048.a n : ℤ) = A064598 (n + 1)

theorem P8686075922530309048.correct : P8686075922530309048.Spec := by
  intro n
  simp only [A064598, Nat.add_sub_cancel]

end A064598

/-! ## A064598.P18223560942948931126

`lt[A048146(A028310(n)), n]`
-/

namespace A064598.P18223560942948931126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A064598.P18223560942948931126

namespace A064598

/-- `lt[A048146(A028310(n)), n]` -/
def P18223560942948931126.Spec : Prop :=
  ∀ n, (P18223560942948931126.a n : ℤ) = A064598 (n + 1)

end A064598

/-! ## A064598.P2730938638046646357

`lt[A000007(n), A325814(A028310(n))]`
-/

namespace A064598.P2730938638046646357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064598.P2730938638046646357

namespace A064598

/-- `lt[A000007(n), A325814(A028310(n))]` -/
def P2730938638046646357.Spec : Prop :=
  ∀ n, (P2730938638046646357.a n : ℤ) = A064598 (n + 1)

end A064598

/-! ## A064598.P17623577738850378233

`lt[A056594(n), A325814(A028310(n))]`
-/

namespace A064598.P17623577738850378233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064598.P17623577738850378233

namespace A064598

/-- `lt[A056594(n), A325814(A028310(n))]` -/
def P17623577738850378233.Spec : Prop :=
  ∀ n, (P17623577738850378233.a n : ℤ) = A064598 (n + 1)

end A064598

/-! ## A064598.P4747044407429348864

`lt[A048146(A233583(n+1)), n]`
-/

namespace A064598.P4747044407429348864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A064598.P4747044407429348864

namespace A064598

/-- `lt[A048146(A233583(n+1)), n]` -/
def P4747044407429348864.Spec : Prop :=
  ∀ n, (P4747044407429348864.a n : ℤ) = A064598 (n + 1)

end A064598

/-! ## A064598.P7249023047810808992

`lt[A000038(n), A325814(A233583(n+1))]`
-/

namespace A064598.P7249023047810808992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064598.P7249023047810808992

namespace A064598

/-- `lt[A000038(n), A325814(A233583(n+1))]` -/
def P7249023047810808992.Spec : Prop :=
  ∀ n, (P7249023047810808992.a n : ℤ) = A064598 (n + 1)

end A064598

/-! ## A064598.P17387755071547319253

`lt[A301829(n+1)-1, n+1]+1`
-/

namespace A064598.P17387755071547319253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301829 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064598.P17387755071547319253

namespace A064598

/-- `lt[A301829(n+1)-1, n+1]+1` -/
def P17387755071547319253.Spec : Prop :=
  ∀ n, (P17387755071547319253.a n : ℤ) = A064598 (n + 1)

end A064598

/-! ## A064598.P12458891793106903493

`A295866(A064356(n+1))`
-/

namespace A064598.P12458891793106903493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A064356 (n + 1)).toNat

end

end A064598.P12458891793106903493

namespace A064598

/-- `A295866(A064356(n+1))` -/
def P12458891793106903493.Spec : Prop :=
  ∀ n, P12458891793106903493.a n = A064598 (n + 1)

end A064598

