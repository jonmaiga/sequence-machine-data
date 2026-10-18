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
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A273401: Numbers n such that n and n + 1 have exactly the same number of odd divisors.

The programs for A273401, the canonical program `A273401.P1165814043605019566` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273401 has offset 1).

The definition of A273401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273401.P1165814043605019566

`eq[A054844(n+2), A054844(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A273401

/-- `eq[A054844(n+2), A054844(n+1)]+1` -/
def P1165814043605019566.Spec : Prop :=
  ∀ n, (P1165814043605019566.a n : ℤ) = A273401 (n + 1)

theorem P1165814043605019566.correct : P1165814043605019566.Spec := by
  intro n
  simp only [A273401, Nat.add_sub_cancel]

end A273401

/-! ## A273401.P2478248329816671556

`eq[A054844(n+1), A129574(n+1)]`
-/

namespace A273401.P2478248329816671556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273401.P2478248329816671556

namespace A273401

/-- `eq[A054844(n+1), A129574(n+1)]` -/
def P2478248329816671556.Spec : Prop :=
  ∀ n, (P2478248329816671556.a n : ℤ) = A273401 (n + 1)

end A273401

/-! ## A273401.P10762698763807739234

`eq[A001227(n+1), A001227(n+2)]+1`
-/

namespace A273401.P10762698763807739234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273401.P10762698763807739234

namespace A273401

/-- `eq[A001227(n+1), A001227(n+2)]+1` -/
def P10762698763807739234.Spec : Prop :=
  ∀ n, (P10762698763807739234.a n : ℤ) = A273401 (n + 1)

end A273401

/-! ## A273401.P1720423047056707705

`eq[A069283(n+1), A069283(n+2)]+1`
-/

namespace A273401.P1720423047056707705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273401.P1720423047056707705

namespace A273401

/-- `eq[A069283(n+1), A069283(n+2)]+1` -/
def P1720423047056707705.Spec : Prop :=
  ∀ n, (P1720423047056707705.a n : ℤ) = A273401 (n + 1)

end A273401

/-! ## A273401.P8047013761652216541

`eq[A010054(n)+A001227(n+1), A054843(n)]`
-/

namespace A273401.P8047013761652216541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273401.P8047013761652216541

namespace A273401

/-- `eq[A010054(n)+A001227(n+1), A054843(n)]` -/
def P8047013761652216541.Spec : Prop :=
  ∀ n, (P8047013761652216541.a n : ℤ) = A273401 (n + 1)

end A273401

/-! ## A273401.P2665693524864097999

`eq[A129574(2*n+1), A129574(2*(n+1))]`
-/

namespace A273401.P2665693524864097999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129574 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129574 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273401.P2665693524864097999

namespace A273401

/-- `eq[A129574(2*n+1), A129574(2*(n+1))]` -/
def P2665693524864097999.Spec : Prop :=
  ∀ n, (P2665693524864097999.a n : ℤ) = A273401 (n + 1)

end A273401

/-! ## A273401.P4702973749999616675

`eq[A091954(2*(n+1)), A091954(A092535(n+1))]`
-/

namespace A273401.P4702973749999616675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A092535 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273401.P4702973749999616675

namespace A273401

/-- `eq[A091954(2*(n+1)), A091954(A092535(n+1))]` -/
def P4702973749999616675.Spec : Prop :=
  ∀ n, (P4702973749999616675.a n : ℤ) = A273401 (n + 1)

end A273401

/-! ## A273401.P14095040078464796428

`A008621(4*eq[A318874(n+2), A318874(n+1)])`
-/

namespace A273401.P14095040078464796428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A273401.P14095040078464796428

namespace A273401

/-- `A008621(4*eq[A318874(n+2), A318874(n+1)])` -/
def P14095040078464796428.Spec : Prop :=
  ∀ n, P14095040078464796428.a n = A273401 (n + 1)

end A273401

/-! ## A273401.P1806607880492158120

`eq[A000005(n+1), A000005(A161151(n+1))]+1`
-/

namespace A273401.P1806607880492158120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A161151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273401.P1806607880492158120

namespace A273401

/-- `eq[A000005(n+1), A000005(A161151(n+1))]+1` -/
def P1806607880492158120.Spec : Prop :=
  ∀ n, (P1806607880492158120.a n : ℤ) = A273401 (n + 1)

end A273401

/-!
# A273402: Squarefree numbers n such that n is divisible by the product of digits of prime(n).

The programs for A273402, there is no canonical definition to state claims against.
-/

/-! ## A273402.P5742978927294818346

`A002271((n+2)*∑[char[∑[n+1]]]!+2)`
-/

namespace A273402.P5742978927294818346
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002271 ((n + 2) * Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) + 2)

end

end A273402.P5742978927294818346

/-! ## A273402.P15420800354390429298

`∩[A018676(n+1), A325364(A005117(n+4))]`
-/

namespace A273402.P15420800354390429298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (A005117 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273402.P15420800354390429298

/-!
# A273405: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 673", based on the 5-celled von Neumann neighborhood.

The programs for A273405, the canonical program `A273405.P13706734512638851345` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273405 has offset 0).

The definition of A273405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273405.P13706734512638851345

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=21, a(3)=44, a(4)=77`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273405

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P13706734512638851345.Spec : Prop :=
  ∀ n, P13706734512638851345.a n = A273405 n

theorem P13706734512638851345.correct : P13706734512638851345.Spec := by
  intro n
  simp only [A273405]

end A273405

/-! ## A273405.P9642912125998066110

`xor(1, a(n-1)+8*n)` with `a(0)=1, a(1)=4`
-/

namespace A273405.P9642912125998066110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.xor 1 (a (n - 1) + 8 * n)

end

end A273405.P9642912125998066110

namespace A273405

/-- `xor(1, a(n-1)+8*n)` -/
def P9642912125998066110.Spec : Prop :=
  ∀ n, (P9642912125998066110.a n : ℤ) = A273405 n

end A273405

/-! ## A273405.P10796565743518300685

`(2*n+1)²-and(5, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A273405.P10796565743518300685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.land 5 (a (n - 1))

end

end A273405.P10796565743518300685

namespace A273405

/-- `(2*n+1)²-and(5, a(n-1))` -/
def P10796565743518300685.Spec : Prop :=
  ∀ n, P10796565743518300685.a n = A273405 n

end A273405

/-! ## A273405.P6556643185666673014

`A265056(n)-n%2`
-/

namespace A273405.P6556643185666673014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - ((n % 2 : ℕ) : ℤ)

end

end A273405.P6556643185666673014

namespace A273405

/-- `A265056(n)-n%2` -/
def P6556643185666673014.Spec : Prop :=
  ∀ n, P6556643185666673014.a n = A273405 n

end A273405

/-! ## A273405.P17400056166597564221

`∑[A234275(n)]-and(1, n)`
-/

namespace A273405.P17400056166597564221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 1 n : ℤ)

end

end A273405.P17400056166597564221

namespace A273405

/-- `∑[A234275(n)]-and(1, n)` -/
def P17400056166597564221.Spec : Prop :=
  ∀ n, P17400056166597564221.a n = A273405 n

end A273405

/-! ## A273405.P2772269843411898400

`A273407(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273405.P2772269843411898400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273407 (n - 1) + a (n - 1)

end

end A273405.P2772269843411898400

namespace A273405

/-- `A273407(n-1)+a(n-1)` -/
def P2772269843411898400.Spec : Prop :=
  ∀ n, P2772269843411898400.a n = A273405 n

end A273405

/-! ## A273405.P4415576909239207648

`A265056(n)-A000035(n)`
-/

namespace A273405.P4415576909239207648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - A000035 n

end

end A273405.P4415576909239207648

namespace A273405

/-- `A265056(n)-A000035(n)` -/
def P4415576909239207648.Spec : Prop :=
  ∀ n, P4415576909239207648.a n = A273405 n

end A273405

/-! ## A273405.P9179393753655858457

`A298041(n)-A266725(n)`
-/

namespace A273405.P9179393753655858457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298041 n - A266725 n

end

end A273405.P9179393753655858457

namespace A273405

/-- `A298041(n)-A266725(n)` -/
def P9179393753655858457.Spec : Prop :=
  ∀ n, P9179393753655858457.a n = A273405 n

end A273405

/-! ## A273405.P13010850990720846668

`A265056(n)-log2(A000034(n))`
-/

namespace A273405.P13010850990720846668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265056 n : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A273405.P13010850990720846668

namespace A273405

/-- `A265056(n)-log2(A000034(n))` -/
def P13010850990720846668.Spec : Prop :=
  ∀ n, P13010850990720846668.a n = (A273405 n : ℝ)

end A273405

/-! ## A273405.P4508268639330325675

`∑[A234275(n)]-A000035(n)`
-/

namespace A273405.P4508268639330325675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000035 n

end

end A273405.P4508268639330325675

namespace A273405

/-- `∑[A234275(n)]-A000035(n)` -/
def P4508268639330325675.Spec : Prop :=
  ∀ n, P4508268639330325675.a n = A273405 n

end A273405

/-! ## A273405.P13701479724757065901

`A265056(n)-Δ[A004526(n)]`
-/

namespace A273405.P13701479724757065901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - (f1 (n + 1) - f1 n)

end

end A273405.P13701479724757065901

namespace A273405

/-- `A265056(n)-Δ[A004526(n)]` -/
def P13701479724757065901.Spec : Prop :=
  ∀ n, P13701479724757065901.a n = A273405 n

end A273405

/-! ## A273405.P8651440373978365006

`A265056(n)-Δ[A008619(n)]`
-/

namespace A273405.P8651440373978365006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - (f1 (n + 1) - f1 n)

end

end A273405.P8651440373978365006

namespace A273405

/-- `A265056(n)-Δ[A008619(n)]` -/
def P8651440373978365006.Spec : Prop :=
  ∀ n, P8651440373978365006.a n = A273405 n

end A273405

/-! ## A273405.P5776495766800828159

`Δ[A273406(n)]-A273407(n)`
-/

namespace A273405.P5776495766800828159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273407 n

end

end A273405.P5776495766800828159

namespace A273405

/-- `Δ[A273406(n)]-A273407(n)` -/
def P5776495766800828159.Spec : Prop :=
  ∀ n, P5776495766800828159.a n = A273405 n

end A273405

/-! ## A273405.P10689719393758244074

`A265056(n)-char[A005408(n)]`
-/

namespace A273405.P10689719393758244074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273405.P10689719393758244074

namespace A273405

/-- `A265056(n)-char[A005408(n)]` -/
def P10689719393758244074.Spec : Prop :=
  ∀ n, P10689719393758244074.a n = A273405 n

end A273405

/-! ## A273405.P560141728842155245

`A059841(n)+A265056(n)-1`
-/

namespace A273405.P560141728842155245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (A265056 n - 1)

end

end A273405.P560141728842155245

namespace A273405

/-- `A059841(n)+A265056(n)-1` -/
def P560141728842155245.Spec : Prop :=
  ∀ n, P560141728842155245.a n = A273405 n

end A273405

/-! ## A273405.P925012423686863967

`A273309(n)+4%A273309(n)`
-/

namespace A273405.P925012423686863967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273309 n + Int.tmod 4 (A273309 n)

end

end A273405.P925012423686863967

namespace A273405

/-- `A273309(n)+4%A273309(n)` -/
def P925012423686863967.Spec : Prop :=
  ∀ n, P925012423686863967.a n = A273405 n

end A273405

/-! ## A273405.P10767803386533394086

`lcm(2, A142463(n))-A000034(n)`
-/

namespace A273405.P10767803386533394086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A142463 n) : ℤ) - A000034 n

end

end A273405.P10767803386533394086

namespace A273405

/-- `lcm(2, A142463(n))-A000034(n)` -/
def P10767803386533394086.Spec : Prop :=
  ∀ n, P10767803386533394086.a n = A273405 n

end A273405

/-! ## A273405.P8108045357827264010

`or(1, A273831(n))-A000035(n)`
-/

namespace A273405.P8108045357827264010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273831 n) - A000035 n

end

end A273405.P8108045357827264010

namespace A273405

/-- `or(1, A273831(n))-A000035(n)` -/
def P8108045357827264010.Spec : Prop :=
  ∀ n, P8108045357827264010.a n = A273405 n

end A273405

/-! ## A273405.P18125081650753031137

`A056594(n)²+A265056(n)-1`
-/

namespace A273405.P18125081650753031137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 + (A265056 n - 1)

end

end A273405.P18125081650753031137

namespace A273405

/-- `A056594(n)²+A265056(n)-1` -/
def P18125081650753031137.Spec : Prop :=
  ∀ n, P18125081650753031137.a n = A273405 n

end A273405

/-! ## A273405.P4610314096865115474

`2*A179207(2*n+1)-A047409(2*(n+1))`
-/

namespace A273405.P4610314096865115474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179207 (2 * n + 1) - A047409 (2 * (n + 1))

end

end A273405.P4610314096865115474

namespace A273405

/-- `2*A179207(2*n+1)-A047409(2*(n+1))` -/
def P4610314096865115474.Spec : Prop :=
  ∀ n, P4610314096865115474.a n = A273405 n

end A273405

/-!
# A273406: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 673", based on the 5-celled von Neumann neighborhood.

The programs for A273406, the canonical program `A273406.P13587396254995147973` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273406 has offset 0).

The definition of A273406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273406.P16667544679788607435

`(9+3*(-1)^n-10*n+48*n²+16*n^3)/12`
-/

namespace A273406.P16667544679788607435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 + 3 * (-1) ^ n - (10 * n : ℤ) + (48 * n ^ 2 : ℤ) + (16 * n ^ 3 : ℤ) : ℚ) / 12

end

end A273406.P16667544679788607435

namespace A273406

/-- `(9+3*(-1)^n-10*n+48*n²+16*n^3)/12` -/
def P16667544679788607435.Spec : Prop :=
  ∀ n, P16667544679788607435.a n = (A273406 n : ℚ)

theorem P16667544679788607435.correct : P16667544679788607435.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A273406, Nat.add_sub_cancel, A273406.P16667544679788607435.a, A273406.P13587396254995147973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A273406, Nat.add_sub_cancel, A273406.P16667544679788607435.a, A273406.P13587396254995147973.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A273406

/-! ## A273406.P13587396254995147973

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=26, a(3)=70, a(4)=147`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273406

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P13587396254995147973.Spec : Prop :=
  ∀ n, P13587396254995147973.a n = A273406 n

theorem P13587396254995147973.correct : P13587396254995147973.Spec := by
  intro n
  simp only [A273406]

end A273406

/-! ## A273406.P1362006575931052386

`a(n-2)+8*n²-7` with `a(0)=1, a(1)=5`
-/

namespace A273406.P1362006575931052386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + ((8 * n ^ 2 : ℤ) - 7)

end

end A273406.P1362006575931052386

namespace A273406

/-- `a(n-2)+8*n²-7` -/
def P1362006575931052386.Spec : Prop :=
  ∀ n, P1362006575931052386.a n = A273406 n

end A273406

/-! ## A273406.P838090076616336383

`floor(A273408(n)-n/2)`
-/

namespace A273406.P838090076616336383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A273408 n : ℚ) - (n : ℚ) / 2⌋

end

end A273406.P838090076616336383

namespace A273406

/-- `floor(A273408(n)-n/2)` -/
def P838090076616336383.Spec : Prop :=
  ∀ n, P838090076616336383.a n = A273406 n

end A273406

/-! ## A273406.P4251058981226302671

`∑[A265056(n)-n%2]`
-/

namespace A273406.P4251058981226302671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273406.P4251058981226302671

namespace A273406

/-- `∑[A265056(n)-n%2]` -/
def P4251058981226302671.Spec : Prop :=
  ∀ n, P4251058981226302671.a n = A273406 n

end A273406

/-! ## A273406.P7742330237675241263

`A322594(n)+A004526(n)`
-/

namespace A273406.P7742330237675241263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322594 n + A004526 n

end

end A273406.P7742330237675241263

namespace A273406

/-- `A322594(n)+A004526(n)` -/
def P7742330237675241263.Spec : Prop :=
  ∀ n, P7742330237675241263.a n = A273406 n

end A273406

/-! ## A273406.P17092687608950062214

`A273408(n)-A110654(n)`
-/

namespace A273406.P17092687608950062214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273408 n - A110654 n

end

end A273406.P17092687608950062214

namespace A273406

/-- `A273408(n)-A110654(n)` -/
def P17092687608950062214.Spec : Prop :=
  ∀ n, P17092687608950062214.a n = A273406 n

end A273406

/-! ## A273406.P13761332940890662953

`∑[A265056(n)-A000035(n)]`
-/

namespace A273406.P13761332940890662953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273406.P13761332940890662953

namespace A273406

/-- `∑[A265056(n)-A000035(n)]` -/
def P13761332940890662953.Spec : Prop :=
  ∀ n, P13761332940890662953.a n = A273406 n

end A273406

/-! ## A273406.P11276381422893801263

`A273316(n)-A047345(n+1)`
-/

namespace A273406.P11276381422893801263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n - A047345 (n + 1)

end

end A273406.P11276381422893801263

namespace A273406

/-- `A273316(n)-A047345(n+1)` -/
def P11276381422893801263.Spec : Prop :=
  ∀ n, P11276381422893801263.a n = A273406 n

end A273406

/-! ## A273406.P18346394318432821853

`A273408(n)-A123108(n+1)`
-/

namespace A273406.P18346394318432821853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273408 n - A123108 (n + 1)

end

end A273406.P18346394318432821853

namespace A273406

/-- `A273408(n)-A123108(n+1)` -/
def P18346394318432821853.Spec : Prop :=
  ∀ n, P18346394318432821853.a n = A273406 n

end A273406

/-! ## A273406.P11228675935149229955

`∑[∑[A234275(n)]-A000035(n)]`
-/

namespace A273406.P11228675935149229955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273406.P11228675935149229955

namespace A273406

/-- `∑[∑[A234275(n)]-A000035(n)]` -/
def P11228675935149229955.Spec : Prop :=
  ∀ n, P11228675935149229955.a n = A273406 n

end A273406

/-! ## A273406.P11397826930449970126

`∑[A059841(n)+A265056(n)-1]`
-/

namespace A273406.P11397826930449970126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (A265056 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273406.P11397826930449970126

namespace A273406

/-- `∑[A059841(n)+A265056(n)-1]` -/
def P11397826930449970126.Spec : Prop :=
  ∀ n, P11397826930449970126.a n = A273406 n

end A273406

/-! ## A273406.P1333111198274368831

`∑[A265056(n)]-A123108(n+1)`
-/

namespace A273406.P1333111198274368831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A123108 (n + 1)

end

end A273406.P1333111198274368831

namespace A273406

/-- `∑[A265056(n)]-A123108(n+1)` -/
def P1333111198274368831.Spec : Prop :=
  ∀ n, P1333111198274368831.a n = A273406 n

end A273406

/-! ## A273406.P12437882383485647604

`∑[A265056(n)]-A152467(3*(n+1))`
-/

namespace A273406.P12437882383485647604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A152467 (3 * (n + 1))

end

end A273406.P12437882383485647604

namespace A273406

/-- `∑[A265056(n)]-A152467(3*(n+1))` -/
def P12437882383485647604.Spec : Prop :=
  ∀ n, P12437882383485647604.a n = A273406 n

end A273406

/-! ## A273406.P6297610887562917834

`A000292(2*n+1)-A007494(3*n)`
-/

namespace A273406.P6297610887562917834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) - A007494 (3 * n)

end

end A273406.P6297610887562917834

namespace A273406

/-- `A000292(2*n+1)-A007494(3*n)` -/
def P6297610887562917834.Spec : Prop :=
  ∀ n, P6297610887562917834.a n = A273406 n

end A273406

/-! ## A273406.P14650244693448604162

`∑[A273405(n)]`
-/

namespace A273406.P14650244693448604162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273406.P14650244693448604162

namespace A273406

/-- `∑[A273405(n)]` -/
def P14650244693448604162.Spec : Prop :=
  ∀ n, P14650244693448604162.a n = A273406 n

end A273406

/-!
# A273407: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 673", based on the 5-celled von Neumann neighborhood.

The programs for A273407, the canonical program `A273407.P14488624745841829213` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273407 has offset 0).

The definition of A273407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273407.P14488624745841829213

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=17, a(2)=23, a(3)=33`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273407

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P14488624745841829213.Spec : Prop :=
  ∀ n, P14488624745841829213.a n = A273407 n

theorem P14488624745841829213.correct : P14488624745841829213.Spec := by
  intro n
  simp only [A273407]

end A273407

/-! ## A273407.P8966030092483042741

`a(n-2)+16` with `a(0)=3, a(1)=17, a(2)=23`
-/

namespace A273407.P8966030092483042741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 17, 23] fun n a =>
  a (n - 2) + 16

end

end A273407.P8966030092483042741

namespace A273407

/-- `a(n-2)+16` -/
def P8966030092483042741.Spec : Prop :=
  ∀ n, (P8966030092483042741.a n : ℤ) = A273407 n

end A273407

/-! ## A273407.P6203429499922232676

`∑[16-a(n-1)]` with `a(0)=3, a(1)=14, a(2)=6`
-/

namespace A273407.P6203429499922232676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 14, 6] fun n f1 =>
  16 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273407.P6203429499922232676

namespace A273407

/-- `∑[16-a(n-1)]` -/
def P6203429499922232676.Spec : Prop :=
  ∀ n, P6203429499922232676.a n = A273407 n

end A273407

/-! ## A273407.P5790686779825226122

`record[xor(5, n-2)]+4*(n+2)`
-/

namespace A273407.P5790686779825226122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (4 * (n + 2) : ℤ)

end

end A273407.P5790686779825226122

namespace A273407

/-- `record[xor(5, n-2)]+4*(n+2)` -/
def P5790686779825226122.Spec : Prop :=
  ∀ n, P5790686779825226122.a n = A273407 n

end A273407

/-! ## A273407.P8650631064295540802

`9-xor(6, or(4, 1-a(n-1)))` with `a(0)=3`
-/

namespace A273407.P8650631064295540802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  9 - Int.xor 6 (Int.lor 4 (1 - a (n - 1)))

end

end A273407.P8650631064295540802

namespace A273407

/-- `9-xor(6, or(4, 1-a(n-1)))` -/
def P8650631064295540802.Spec : Prop :=
  ∀ n, P8650631064295540802.a n = A273407 n

end A273407

/-! ## A273407.P754371202067820172

`Δ[A265056(n)-n%2]`
-/

namespace A273407.P754371202067820172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273407.P754371202067820172

namespace A273407

/-- `Δ[A265056(n)-n%2]` -/
def P754371202067820172.Spec : Prop :=
  ∀ n, P754371202067820172.a n = A273407 n

end A273407

/-! ## A273407.P15338841467004015958

`4*A103517(n)-(-1)^n`
-/

namespace A273407.P15338841467004015958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A103517 n - (-1) ^ n

end

end A273407.P15338841467004015958

namespace A273407

/-- `4*A103517(n)-(-1)^n` -/
def P15338841467004015958.Spec : Prop :=
  ∀ n, P15338841467004015958.a n = A273407 n

end A273407

/-! ## A273407.P15975257997068097659

`Δ[A273309(n)+(2%(n+1))²]`
-/

namespace A273407.P15975257997068097659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273309 n + (((2 % (n + 1)) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273407.P15975257997068097659

namespace A273407

/-- `Δ[A273309(n)+(2%(n+1))²]` -/
def P15975257997068097659.Spec : Prop :=
  ∀ n, P15975257997068097659.a n = A273407 n

end A273407

/-! ## A273407.P13173826456171864235

`Δ[A265056(n)-A000034(n)]`
-/

namespace A273407.P13173826456171864235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273407.P13173826456171864235

namespace A273407

/-- `Δ[A265056(n)-A000034(n)]` -/
def P13173826456171864235.Spec : Prop :=
  ∀ n, P13173826456171864235.a n = A273407 n

end A273407

/-! ## A273407.P9212645333678104186

`Δ[A265056(n)-A000035(n)]`
-/

namespace A273407.P9212645333678104186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273407.P9212645333678104186

namespace A273407

/-- `Δ[A265056(n)-A000035(n)]` -/
def P9212645333678104186.Spec : Prop :=
  ∀ n, P9212645333678104186.a n = A273407 n

end A273407

/-! ## A273407.P12140967250343119197

`2*A003485(A103517(n))-1`
-/

namespace A273407.P12140967250343119197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003485 (A103517 n).toNat - 1

end

end A273407.P12140967250343119197

namespace A273407

/-- `2*A003485(A103517(n))-1` -/
def P12140967250343119197.Spec : Prop :=
  ∀ n, P12140967250343119197.a n = A273407 n

end A273407

/-! ## A273407.P4283096542628731034

`A017353(n)-4*A123108(n)`
-/

namespace A273407.P4283096542628731034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - 4 * A123108 n

end

end A273407.P4283096542628731034

namespace A273407

/-- `A017353(n)-4*A123108(n)` -/
def P4283096542628731034.Spec : Prop :=
  ∀ n, P4283096542628731034.a n = A273407 n

end A273407

/-! ## A273407.P6039133148372563250

`Δ[A265056(n)-Δ[A004526(n)]]`
-/

namespace A273407.P6039133148372563250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273407.P6039133148372563250

namespace A273407

/-- `Δ[A265056(n)-Δ[A004526(n)]]` -/
def P6039133148372563250.Spec : Prop :=
  ∀ n, P6039133148372563250.a n = A273407 n

end A273407

/-! ## A273407.P18305054795496711575

`Δ[A265056(n)-Δ[A008619(n)]]`
-/

namespace A273407.P18305054795496711575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273407.P18305054795496711575

namespace A273407

/-- `Δ[A265056(n)-Δ[A008619(n)]]` -/
def P18305054795496711575.Spec : Prop :=
  ∀ n, P18305054795496711575.a n = A273407 n

end A273407

/-! ## A273407.P2865232499965080260

`A234275(n+1)-A034947(2*n+1)`
-/

namespace A273407.P2865232499965080260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 (n + 1) - A034947 (2 * n + 1)

end

end A273407.P2865232499965080260

namespace A273407

/-- `A234275(n+1)-A034947(2*n+1)` -/
def P2865232499965080260.Spec : Prop :=
  ∀ n, P2865232499965080260.a n = A273407 n

end A273407

/-! ## A273407.P288007868777231466

`A276283(2*n+1)+2*A267530(2*n)`
-/

namespace A273407.P288007868777231466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 (2 * n + 1) + 2 * A267530 (2 * n)

end

end A273407.P288007868777231466

namespace A273407

/-- `A276283(2*n+1)+2*A267530(2*n)` -/
def P288007868777231466.Spec : Prop :=
  ∀ n, P288007868777231466.a n = A273407 n

end A273407

/-! ## A273407.P1103405509502781293

`A017377(n)-A016825(A123108(n))`
-/

namespace A273407.P1103405509502781293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A016825 (A123108 n).toNat

end

end A273407.P1103405509502781293

namespace A273407

/-- `A017377(n)-A016825(A123108(n))` -/
def P1103405509502781293.Spec : Prop :=
  ∀ n, P1103405509502781293.a n = A273407 n

end A273407

/-! ## A273407.P7981063075207913271

`Δ[A273405(n)]`
-/

namespace A273407.P7981063075207913271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273407.P7981063075207913271

namespace A273407

/-- `Δ[A273405(n)]` -/
def P7981063075207913271.Spec : Prop :=
  ∀ n, P7981063075207913271.a n = A273407 n

end A273407

/-! ## A273407.P14232669767992240157

`A273405(n+1)-A273405(n)`
-/

namespace A273407.P14232669767992240157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273405 (n + 1) - A273405 n

end

end A273407.P14232669767992240157

namespace A273407

/-- `A273405(n+1)-A273405(n)` -/
def P14232669767992240157.Spec : Prop :=
  ∀ n, P14232669767992240157.a n = A273407 n

end A273407

/-! ## A273407.P17510784666978822938

`A004273(A003485(A103517(n)))`
-/

namespace A273407.P17510784666978822938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A003485 (A103517 n).toNat).toNat

end

end A273407.P17510784666978822938

namespace A273407

/-- `A004273(A003485(A103517(n)))` -/
def P17510784666978822938.Spec : Prop :=
  ∀ n, P17510784666978822938.a n = A273407 n

end A273407

/-!
# A273408: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 675", based on the 5-celled von Neumann neighborhood.

The programs for A273408, the canonical program `A273408.P2036072724317000925` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273408 has offset 0).

The definition of A273408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273408.P2036072724317000925

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=27, a(3)=72`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273408

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2036072724317000925.Spec : Prop :=
  ∀ n, P2036072724317000925.a n = A273408 n

theorem P2036072724317000925.correct : P2036072724317000925.Spec := by
  intro n
  simp only [A273408]

end A273408

/-! ## A273408.P10394804506564441123

`∑[∑[8*n]-3]+4`
-/

namespace A273408.P10394804506564441123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A273408.P10394804506564441123

namespace A273408

/-- `∑[∑[8*n]-3]+4` -/
def P10394804506564441123.Spec : Prop :=
  ∀ n, P10394804506564441123.a n = A273408 n

end A273408

/-! ## A273408.P14147981297628875998

`∑[record[(n²-4)^(n%2)]]`
-/

namespace A273408.P14147981297628875998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 4) ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273408.P14147981297628875998

namespace A273408

/-- `∑[record[(n²-4)^(n%2)]]` -/
def P14147981297628875998.Spec : Prop :=
  ∀ n, P14147981297628875998.a n = A273408 n

end A273408

/-! ## A273408.P4165497315018974215

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A273408.P4165497315018974215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273408.P4165497315018974215

namespace A273408

/-- `∑[∑[a(n-1)+8]]` -/
def P4165497315018974215.Spec : Prop :=
  ∀ n, (P4165497315018974215.a n : ℤ) = A273408 n

end A273408

/-! ## A273408.P9321925708056769141

`∑[∑[ogf((1+2x+9x^2-4x^3)/(1-2x+x^2))]]`
-/

namespace A273408.P9321925708056769141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 9, -4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273408.P9321925708056769141

namespace A273408

/-- `∑[∑[ogf((1+2x+9x^2-4x^3)/(1-2x+x^2))]]` -/
def P9321925708056769141.Spec : Prop :=
  ∀ n, P9321925708056769141.a n = A273408 n

end A273408

/-! ## A273408.P18114720432281243923

`abs((2*n+1)²+a(n-1)-4)` with `a(0)=1`
-/

namespace A273408.P18114720432281243923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |((2 * n + 1) ^ 2 : ℤ) + (a (n - 1) - 4)|

end

end A273408.P18114720432281243923

namespace A273408

/-- `abs((2*n+1)²+a(n-1)-4)` -/
def P18114720432281243923.Spec : Prop :=
  ∀ n, P18114720432281243923.a n = A273408 n

end A273408

/-! ## A273408.P12231189598706721545

`floor((2*n+1)²+a(n-1)-4)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A273408.P12231189598706721545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1) ^ 2 : ℤ) + (a (n - 1) - 4)

end

end A273408.P12231189598706721545

namespace A273408

/-- `floor((2*n+1)²+a(n-1)-4)` -/
def P12231189598706721545.Spec : Prop :=
  ∀ n, P12231189598706721545.a n = A273408 n

end A273408

/-! ## A273408.P18263918988109418334

`ceil((2*n+1)²+a(n-1)-4)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A273408.P18263918988109418334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1) ^ 2 : ℤ) + (a (n - 1) - 4)

end

end A273408.P18263918988109418334

namespace A273408

/-- `ceil((2*n+1)²+a(n-1)-4)` -/
def P18263918988109418334.Spec : Prop :=
  ∀ n, P18263918988109418334.a n = A273408 n

end A273408

/-! ## A273408.P15573721192675661058

`round((2*n+1)²+a(n-1)-4)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A273408.P15573721192675661058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1) ^ 2 : ℤ) + (a (n - 1) - 4)

end

end A273408.P15573721192675661058

namespace A273408

/-- `round((2*n+1)²+a(n-1)-4)` -/
def P15573721192675661058.Spec : Prop :=
  ∀ n, P15573721192675661058.a n = A273408 n

end A273408

/-! ## A273408.P3797939881895923814

`∑[∑[A234275(n)]]`
-/

namespace A273408.P3797939881895923814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273408.P3797939881895923814

namespace A273408

/-- `∑[∑[A234275(n)]]` -/
def P3797939881895923814.Spec : Prop :=
  ∀ n, P3797939881895923814.a n = A273408 n

end A273408

/-! ## A273408.P1122028663541522015

`∑[abs(2-abs(A184882(n)))]`
-/

namespace A273408.P1122028663541522015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |A184882 n|)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273408.P1122028663541522015

namespace A273408

/-- `∑[abs(2-abs(A184882(n)))]` -/
def P1122028663541522015.Spec : Prop :=
  ∀ n, P1122028663541522015.a n = A273408 n

end A273408

/-! ## A273408.P4128264872402640026

`A121968(Δ[n²])`
-/

namespace A273408.P4128264872402640026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A273408.P4128264872402640026

namespace A273408

/-- `A121968(Δ[n²])` -/
def P4128264872402640026.Spec : Prop :=
  ∀ n, P4128264872402640026.a n = A273408 n

end A273408

/-! ## A273408.P7446389127593685179

`record[A067046(n+1)-2*n]`
-/

namespace A273408.P7446389127593685179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067046 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273408.P7446389127593685179

namespace A273408

/-- `record[A067046(n+1)-2*n]` -/
def P7446389127593685179.Spec : Prop :=
  ∀ n, P7446389127593685179.a n = A273408 n

end A273408

/-! ## A273408.P16078014168696166709

`abs(A081498(2*(n+2))-7)`
-/

namespace A273408.P16078014168696166709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081498 (2 * (n + 2)) - 7|

end

end A273408.P16078014168696166709

namespace A273408

/-- `abs(A081498(2*(n+2))-7)` -/
def P16078014168696166709.Spec : Prop :=
  ∀ n, P16078014168696166709.a n = A273408 n

end A273408

/-! ## A273408.P10218123049874906346

`Δ[A050407(2*n+1)+∑[A050407(2*n)]]`
-/

namespace A273408.P10218123049874906346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273408.P10218123049874906346

namespace A273408

/-- `Δ[A050407(2*n+1)+∑[A050407(2*n)]]` -/
def P10218123049874906346.Spec : Prop :=
  ∀ n, P10218123049874906346.a n = A273408 n

end A273408

/-! ## A273408.P15399194021901503135

`∑[A265056(n)]`
-/

namespace A273408.P15399194021901503135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273408.P15399194021901503135

namespace A273408

/-- `∑[A265056(n)]` -/
def P15399194021901503135.Spec : Prop :=
  ∀ n, P15399194021901503135.a n = A273408 n

end A273408

/-! ## A273408.P17408496431376850511

`∑[A129647(2*(2*n+1))]`
-/

namespace A273408.P17408496431376850511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129647 (2 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273408.P17408496431376850511

namespace A273408

/-- `∑[A129647(2*(2*n+1))]` -/
def P17408496431376850511.Spec : Prop :=
  ∀ n, P17408496431376850511.a n = A273408 n

end A273408

/-! ## A273408.P11688063137139378088

`∑[or(1, A086570(∑[n]))]`
-/

namespace A273408.P11688063137139378088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A086570 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273408.P11688063137139378088

namespace A273408

/-- `∑[or(1, A086570(∑[n]))]` -/
def P11688063137139378088.Spec : Prop :=
  ∀ n, P11688063137139378088.a n = A273408 n

end A273408

/-! ## A273408.P11599768276370133540

`∑[A016813(A004273(∑[n]))]`
-/

namespace A273408.P11599768276370133540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A004273 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273408.P11599768276370133540

namespace A273408

/-- `∑[A016813(A004273(∑[n]))]` -/
def P11599768276370133540.Spec : Prop :=
  ∀ n, P11599768276370133540.a n = A273408 n

end A273408

/-! ## A273408.P10225345184241981478

`∑[A016813(A014681(∑[2*n]))]`
-/

namespace A273408.P10225345184241981478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A014681 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273408.P10225345184241981478

namespace A273408

/-- `∑[A016813(A014681(∑[2*n]))]` -/
def P10225345184241981478.Spec : Prop :=
  ∀ n, P10225345184241981478.a n = A273408 n

end A273408

/-!
# A273409: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 678", based on the 5-celled von Neumann neighborhood.

The programs for A273409, the canonical program `A273409.P13603559143851020891` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273409 has offset 0).

The definition of A273409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4490 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273409.P13603559143851020891

`∑[A147562(n+1)+1-a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A273409

/-- `∑[A147562(n+1)+1-a(n-1)]` -/
def P13603559143851020891.Spec : Prop :=
  ∀ n, P13603559143851020891.a n = A273409 n

theorem P13603559143851020891.correct : P13603559143851020891.Spec := by
  intro n
  simp only [A273409]

end A273409

/-! ## A273409.P17565284400824534658

`∑[2*A151917(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A273409.P17565284400824534658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * A151917 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273409.P17565284400824534658

namespace A273409

/-- `∑[2*A151917(n+1)-a(n-1)]` -/
def P17565284400824534658.Spec : Prop :=
  ∀ n, P17565284400824534658.a n = A273409 n

end A273409

/-! ## A273409.P6375766981643062587

`∑[A079317(n)]`
-/

namespace A273409.P6375766981643062587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273409.P6375766981643062587

namespace A273409

/-- `∑[A079317(n)]` -/
def P6375766981643062587.Spec : Prop :=
  ∀ n, P6375766981643062587.a n = A273409 n

end A273409

/-! ## A273409.P74999519543323234

`∑[∑[A151921(n+1)]]`
-/

namespace A273409.P74999519543323234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273409.P74999519543323234

namespace A273409

/-- `∑[∑[A151921(n+1)]]` -/
def P74999519543323234.Spec : Prop :=
  ∀ n, P74999519543323234.a n = A273409 n

end A273409

/-! ## A273409.P16669308431181509944

`a(n-1)+or(A079317(n), A213719(n))` with `a(0)=1`
-/

namespace A273409.P16669308431181509944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A079317 n) (A213719 n)

end

end A273409.P16669308431181509944

namespace A273409

/-- `a(n-1)+or(A079317(n), A213719(n))` -/
def P16669308431181509944.Spec : Prop :=
  ∀ n, P16669308431181509944.a n = A273409 n

end A273409

/-! ## A273409.P6993834860664792411

`a(n-1)+A079317(n)+A055671(A055671(n))` with `a(0)=1`
-/

namespace A273409.P6993834860664792411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A079317 n + A055671 (A055671 n).toNat)

end

end A273409.P6993834860664792411

namespace A273409

/-- `a(n-1)+A079317(n)+A055671(A055671(n))` -/
def P6993834860664792411.Spec : Prop :=
  ∀ n, P6993834860664792411.a n = A273409 n

end A273409

/-!
# A273410: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 694", based on the 5-celled von Neumann neighborhood.

The programs for A273410, there is no canonical definition to state claims against.
-/

/-! ## A273410.P5468369499607751868

`A273412(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273410.P5468369499607751868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273412 (n - 1) + a (n - 1)

end

end A273410.P5468369499607751868

/-! ## A273410.P2278596670151275031

`∑[A273412((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A273410.P2278596670151275031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273412 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273410.P2278596670151275031

/-! ## A273410.P85357871630678669

`Δ[A273411(n)]-A273412(n)`
-/

namespace A273410.P85357871630678669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273412 n

end

end A273410.P85357871630678669

/-! ## A273410.P4524063645097723721

`A273411(n+1)-(A273412(n)+A273411(n))`
-/

namespace A273410.P4524063645097723721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273411 (n + 1) - (A273412 n + A273411 n)

end

end A273410.P4524063645097723721

/-!
# A273411: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 694", based on the 5-celled von Neumann neighborhood.

The programs for A273411, there is no canonical definition to state claims against.
-/

/-! ## A273411.P3285257360325948629

`∑[A273410(n)]`
-/

namespace A273411.P3285257360325948629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273411.P3285257360325948629

/-! ## A273411.P11473599541177457768

`A273410(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273411.P11473599541177457768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273410 n + a (A023443 n).toNat

end

end A273411.P11473599541177457768

/-! ## A273411.P6985371728854683854

`a(n-1)+A273410(n)%A273410(n+1)` with `a(0)=1`
-/

namespace A273411.P6985371728854683854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273410 n) (A273410 (n + 1))

end

end A273411.P6985371728854683854

/-! ## A273411.P5949691747619353111

`a(n-1)+or(A167393(n+1), A273410(n))` with `a(0)=1`
-/

namespace A273411.P5949691747619353111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A167393 (n + 1)) (A273410 n)

end

end A273411.P5949691747619353111

/-! ## A273411.P1384667345270940012

`∑[∑[A273412(n)]+1-A273412(n)]`
-/

namespace A273411.P1384667345270940012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273412 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273411.P1384667345270940012

/-!
# A273412: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 694", based on the 5-celled von Neumann neighborhood.

The programs for A273412, there is no canonical definition to state claims against.
-/

/-! ## A273412.P18320595507145220087

`Δ[A273410(n)]`
-/

namespace A273412.P18320595507145220087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273412.P18320595507145220087

/-! ## A273412.P15607880110107970101

`A273410(n+1)-A273410(n)`
-/

namespace A273412.P15607880110107970101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 (n + 1) - A273410 n

end

end A273412.P15607880110107970101

/-! ## A273412.P10377116821270097773

`A273410(A000027(n+1))+A001489(A273410(n))`
-/

namespace A273412.P10377116821270097773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 (A000027 (n + 1)).toNat + A001489 (A273410 n).toNat

end

end A273412.P10377116821270097773

/-! ## A273412.P11152548971808114006

`A273410(A118759(n+1))+A001489(A273410(n))`
-/

namespace A273412.P11152548971808114006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 (A118759 (n + 1)).toNat + A001489 (A273410 n).toNat

end

end A273412.P11152548971808114006

/-! ## A273412.P2191276131548568639

`A273410(A080513(2*n))+A001489(A273410(n))`
-/

namespace A273412.P2191276131548568639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 (A080513 (2 * n)).toNat + A001489 (A273410 n).toNat

end

end A273412.P2191276131548568639

/-!
# A273414: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 777", based on the 5-celled von Neumann neighborhood.

The programs for A273414, there is no canonical definition to state claims against.
-/

/-! ## A273414.P9176767456368014797

`A273533(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273414.P9176767456368014797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273533 (n - 1) + a (n - 1)

end

end A273414.P9176767456368014797

/-! ## A273414.P15281442478082743178

`abs(2-∑[A273533((n-1)%(n+1))])`
-/

namespace A273414.P15281442478082743178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273533 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A273414.P15281442478082743178

/-! ## A273414.P18308237701453551606

`∑[A273533(round(acot(n+1)+n)-1)]-2`
-/

namespace A273414.P18308237701453551606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273533 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273414.P18308237701453551606

/-! ## A273414.P10350216314127499987

`∑[A273533(n)]+1-A273533(n)`
-/

namespace A273414.P10350216314127499987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273533 n)

end

end A273414.P10350216314127499987

/-! ## A273414.P2448854212880091992

`Δ[A273532(n)]-A273533(n)`
-/

namespace A273414.P2448854212880091992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273533 n

end

end A273414.P2448854212880091992

/-! ## A273414.P237555821525856911

`A273532(n+1)-(A273533(n)+A273532(n))`
-/

namespace A273414.P237555821525856911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273532 (n + 1) - (A273533 n + A273532 n)

end

end A273414.P237555821525856911

/-!
# A273417: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A273417, the canonical program `A273417.P9008007693012436223` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273417 has offset 0).

The definition of A273417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273417.P9008007693012436223

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=21, a(3)=41, a(4)=72, a(5)=113, a(6)=160`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273417

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P9008007693012436223.Spec : Prop :=
  ∀ n, P9008007693012436223.a n = A273417 n

theorem P9008007693012436223.correct : P9008007693012436223.Spec := by
  intro n
  simp only [A273417]

end A273417

/-! ## A273417.P16226070414236049612

`A273831(n)-4%A000124(n)`
-/

namespace A273417.P16226070414236049612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273831 n - Int.tmod 4 (A000124 n)

end

end A273417.P16226070414236049612

namespace A273417

/-- `A273831(n)-4%A000124(n)` -/
def P16226070414236049612.Spec : Prop :=
  ∀ n, P16226070414236049612.a n = A273417 n

end A273417

/-! ## A273417.P13324911565212312453

`A273420(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273417.P13324911565212312453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273420 (n - 1) + a (n - 1)

end

end A273417.P13324911565212312453

namespace A273417

/-- `A273420(n-1)+a(n-1)` -/
def P13324911565212312453.Spec : Prop :=
  ∀ n, P13324911565212312453.a n = A273417 n

end A273417

/-! ## A273417.P11817010796069087628

`a(n-1)-(A060373(A060373(n))-A273420(n-1))` with `a(0)=1`
-/

namespace A273417.P11817010796069087628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A060373 (A060373 n).toNat - A273420 (n - 1))

end

end A273417.P11817010796069087628

namespace A273417

/-- `a(n-1)-(A060373(A060373(n))-A273420(n-1))` -/
def P11817010796069087628.Spec : Prop :=
  ∀ n, P11817010796069087628.a n = A273417 n

end A273417

/-! ## A273417.P14905988510048489386

`Δ[A273419(n)]-A273420(n)`
-/

namespace A273417.P14905988510048489386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273420 n

end

end A273417.P14905988510048489386

namespace A273417

/-- `Δ[A273419(n)]-A273420(n)` -/
def P14905988510048489386.Spec : Prop :=
  ∀ n, P14905988510048489386.a n = A273417 n

end A273417

/-! ## A273417.P7099225079462917602

`A273419(n+1)-(A273420(n)+A273419(n))`
-/

namespace A273417.P7099225079462917602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273419 (n + 1) - (A273420 n + A273419 n)

end

end A273417.P7099225079462917602

namespace A273417

/-- `A273419(n+1)-(A273420(n)+A273419(n))` -/
def P7099225079462917602.Spec : Prop :=
  ∀ n, P7099225079462917602.a n = A273417 n

end A273417

/-! ## A273417.P10257911125704114235

`∑[A273420(n)]-A273724(A273834(n))`
-/

namespace A273417.P10257911125704114235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273724 (A273834 n).toNat

end

end A273417.P10257911125704114235

namespace A273417

/-- `∑[A273420(n)]-A273724(A273834(n))` -/
def P10257911125704114235.Spec : Prop :=
  ∀ n, P10257911125704114235.a n = A273417 n

end A273417

/-! ## A273417.P16504194850401827475

`Δ[A273419(n)]-A142149(A273834(n))`
-/

namespace A273417.P16504194850401827475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A142149 (A273834 n).toNat

end

end A273417.P16504194850401827475

namespace A273417

/-- `Δ[A273419(n)]-A142149(A273834(n))` -/
def P16504194850401827475.Spec : Prop :=
  ∀ n, P16504194850401827475.a n = A273417 n

end A273417

/-!
# A273418: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A273418, the canonical program `A273418.P17721237976631171030` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273418 has offset 0).

The definition of A273418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273418.P17721237976631171030

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=41, a(3)=217, a(4)=953`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273418

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P17721237976631171030.Spec : Prop :=
  ∀ n, P17721237976631171030.a n = A273418 n

theorem P17721237976631171030.correct : P17721237976631171030.Spec := by
  intro n
  simp only [A273418]

end A273418

/-! ## A273418.P15596578368764837541

`A273313(n)-char[1]`
-/

namespace A273418.P15596578368764837541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273418.P15596578368764837541

namespace A273418

/-- `A273313(n)-char[1]` -/
def P15596578368764837541.Spec : Prop :=
  ∀ n, P15596578368764837541.a n = A273418 n

end A273418

/-! ## A273418.P8247029605841779707

`or(1-char[1], A273310(n))`
-/

namespace A273418.P8247029605841779707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A273310 n)

end

end A273418.P8247029605841779707

namespace A273418

/-- `or(1-char[1], A273310(n))` -/
def P8247029605841779707.Spec : Prop :=
  ∀ n, P8247029605841779707.a n = A273418 n

end A273418

/-! ## A273418.P9712592625431992394

`A273310(n)+A157928(n)`
-/

namespace A273418.P9712592625431992394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + A157928 n

end

end A273418.P9712592625431992394

namespace A273418

/-- `A273310(n)+A157928(n)` -/
def P9712592625431992394.Spec : Prop :=
  ∀ n, P9712592625431992394.a n = A273418 n

end A273418

/-! ## A273418.P11963598727103023286

`A271092(n)-A134824(n)`
-/

namespace A273418.P11963598727103023286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271092 n - A134824 n

end

end A273418.P11963598727103023286

namespace A273418

/-- `A271092(n)-A134824(n)` -/
def P11963598727103023286.Spec : Prop :=
  ∀ n, P11963598727103023286.a n = A273418 n

end A273418

/-! ## A273418.P2989862524535608382

`and(A273313(n), A273832(n))`
-/

namespace A273418.P2989862524535608382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273313 n) (A273832 n)

end

end A273418.P2989862524535608382

namespace A273418

/-- `and(A273313(n), A273832(n))` -/
def P2989862524535608382.Spec : Prop :=
  ∀ n, P2989862524535608382.a n = A273418 n

end A273418

/-! ## A273418.P15876187363613455835

`xor(A057427(n), A271092(n))`
-/

namespace A273418.P15876187363613455835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A271092 n)

end

end A273418.P15876187363613455835

namespace A273418

/-- `xor(A057427(n), A271092(n))` -/
def P15876187363613455835.Spec : Prop :=
  ∀ n, P15876187363613455835.a n = A273418 n

end A273418

/-! ## A273418.P6287699992856082997

`xor(A063524(n), A273313(n))`
-/

namespace A273418.P6287699992856082997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A273313 n)

end

end A273418.P6287699992856082997

namespace A273418

/-- `xor(A063524(n), A273313(n))` -/
def P6287699992856082997.Spec : Prop :=
  ∀ n, P6287699992856082997.a n = A273418 n

end A273418

/-! ## A273418.P13836922566475710252

`A273832(n)-4*A157928(n)`
-/

namespace A273418.P13836922566475710252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273832 n - 4 * A157928 n

end

end A273418.P13836922566475710252

namespace A273418

/-- `A273832(n)-4*A157928(n)` -/
def P13836922566475710252.Spec : Prop :=
  ∀ n, P13836922566475710252.a n = A273418 n

end A273418

/-! ## A273418.P17223487167996200194

`A273310(n)+and(1, A019426(n))`
-/

namespace A273418.P17223487167996200194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + Int.land 1 (A019426 n)

end

end A273418.P17223487167996200194

namespace A273418

/-- `A273310(n)+and(1, A019426(n))` -/
def P17223487167996200194.Spec : Prop :=
  ∀ n, P17223487167996200194.a n = A273418 n

end A273418

/-! ## A273418.P14973142170084867593

`A273310(n)+char[A038722(n+2)]`
-/

namespace A273418.P14973142170084867593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273418.P14973142170084867593

namespace A273418

/-- `A273310(n)+char[A038722(n+2)]` -/
def P14973142170084867593.Spec : Prop :=
  ∀ n, P14973142170084867593.a n = A273418 n

end A273418

/-! ## A273418.P12194139486424340933

`xor(A185706(C(n+2, 2)), A273313(n))`
-/

namespace A273418.P12194139486424340933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185706 (Nat.choose (n + 2) 2)) (A273313 n)

end

end A273418.P12194139486424340933

namespace A273418

/-- `xor(A185706(C(n+2, 2)), A273313(n))` -/
def P12194139486424340933.Spec : Prop :=
  ∀ n, P12194139486424340933.a n = A273418 n

end A273418

/-! ## A273418.P5580371685145890873

`xor(A185706(A185717(n)), A273313(n))`
-/

namespace A273418.P5580371685145890873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185706 (A185717 n).toNat) (A273313 n)

end

end A273418.P5580371685145890873

namespace A273418

/-- `xor(A185706(A185717(n)), A273313(n))` -/
def P5580371685145890873.Spec : Prop :=
  ∀ n, P5580371685145890873.a n = A273418 n

end A273418

/-! ## A273418.P7601315625205012735

`xor(A000035(A000040(n+1)), A271092(n))`
-/

namespace A273418.P7601315625205012735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A000040 (n + 1)).toNat) (A271092 n)

end

end A273418.P7601315625205012735

namespace A273418

/-- `xor(A000035(A000040(n+1)), A271092(n))` -/
def P7601315625205012735.Spec : Prop :=
  ∀ n, P7601315625205012735.a n = A273418 n

end A273418

/-! ## A273418.P8024617915214231978

`A273310(n)+A057427(n-A057427(n))`
-/

namespace A273418.P8024617915214231978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + A057427 ((n : ℤ) - A057427 n).toNat

end

end A273418.P8024617915214231978

namespace A273418

/-- `A273310(n)+A057427(n-A057427(n))` -/
def P8024617915214231978.Spec : Prop :=
  ∀ n, P8024617915214231978.a n = A273418 n

end A273418

/-!
# A273419: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A273419, the canonical program `A273419.P3529432558753001105` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273419 has offset 0).

The definition of A273419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273419.P3529432558753001105

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=26, a(3)=67, a(4)=139, a(5)=252, a(6)=412`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273419

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P3529432558753001105.Spec : Prop :=
  ∀ n, P3529432558753001105.a n = A273419 n

theorem P3529432558753001105.correct : P3529432558753001105.Spec := by
  intro n
  simp only [A273419]

end A273419

/-! ## A273419.P4981569470362402238

`∑[A273831(n)-4%A260812(n)]`
-/

namespace A273419.P4981569470362402238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273831 n - Int.tmod 4 (A260812 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273419.P4981569470362402238

namespace A273419

/-- `∑[A273831(n)-4%A260812(n)]` -/
def P4981569470362402238.Spec : Prop :=
  ∀ n, P4981569470362402238.a n = A273419 n

end A273419

/-! ## A273419.P16280030058417754425

`∑[A273417(n)]`
-/

namespace A273419.P16280030058417754425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273419.P16280030058417754425

namespace A273419

/-- `∑[A273417(n)]` -/
def P16280030058417754425.Spec : Prop :=
  ∀ n, P16280030058417754425.a n = A273419 n

end A273419

/-! ## A273419.P17716725253582815540

`A273417(n%A001651(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A273419.P17716725253582815540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273417 (Int.tmod (n : ℤ) (A001651 (n + 1))).toNat + a (n - 1)

end

end A273419.P17716725253582815540

namespace A273419

/-- `A273417(n%A001651(n+1))+a(n-1)` -/
def P17716725253582815540.Spec : Prop :=
  ∀ n, P17716725253582815540.a n = A273419 n

end A273419

/-! ## A273419.P1049808159707213259

`a(n-1)+A273417(n)%A273417(n+1)` with `a(0)=1`
-/

namespace A273419.P1049808159707213259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273417 n) (A273417 (n + 1))

end

end A273419.P1049808159707213259

namespace A273419

/-- `a(n-1)+A273417(n)%A273417(n+1)` -/
def P1049808159707213259.Spec : Prop :=
  ∀ n, P1049808159707213259.a n = A273419 n

end A273419

/-! ## A273419.P7512296833155463492

`∑[A273420(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273419.P7512296833155463492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273420 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273419.P7512296833155463492

namespace A273419

/-- `∑[A273420(n-1)+a(n-1)]` -/
def P7512296833155463492.Spec : Prop :=
  ∀ n, P7512296833155463492.a n = A273419 n

end A273419

/-!
# A273420: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A273420, the canonical program `A273420.P18251903070056936149` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273420 has offset 0).

The definition of A273420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273420.P18251903070056936149

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=17, a(2)=20, a(3)=31, a(4)=41, a(5)=47`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273420

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P18251903070056936149.Spec : Prop :=
  ∀ n, P18251903070056936149.a n = A273420 n

theorem P18251903070056936149.correct : P18251903070056936149.Spec := by
  intro n
  simp only [A273420]

end A273420

/-! ## A273420.P10227414148556614147

`Δ[A273417(n)]`
-/

namespace A273420.P10227414148556614147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273420.P10227414148556614147

namespace A273420

/-- `Δ[A273417(n)]` -/
def P10227414148556614147.Spec : Prop :=
  ∀ n, P10227414148556614147.a n = A273420 n

end A273420

/-! ## A273420.P11211027993002989376

`A273417(n+1)-A273417(n)`
-/

namespace A273420.P11211027993002989376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273417 (n + 1) - A273417 n

end

end A273420.P11211027993002989376

namespace A273420

/-- `A273417(n+1)-A273417(n)` -/
def P11211027993002989376.Spec : Prop :=
  ∀ n, P11211027993002989376.a n = A273420 n

end A273420

/-! ## A273420.P789441032662345714

`Δ[A273831(n)-4%A260812(n)]`
-/

namespace A273420.P789441032662345714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273831 n - Int.tmod 4 (A260812 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273420.P789441032662345714

namespace A273420

/-- `Δ[A273831(n)-4%A260812(n)]` -/
def P789441032662345714.Spec : Prop :=
  ∀ n, P789441032662345714.a n = A273420 n

end A273420

/-! ## A273420.P11985815273045010106

`A142149(A273834(n))`
-/

namespace A273420.P11985815273045010106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142149 (A273834 n).toNat

end

end A273420.P11985815273045010106

namespace A273420

/-- `A142149(A273834(n))` -/
def P11985815273045010106.Spec : Prop :=
  ∀ n, P11985815273045010106.a n = A273420 n

end A273420

/-! ## A273420.P16029149183642110371

`A142149(Δ[A273831(n)])`
-/

namespace A273420.P16029149183642110371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142149 (f1 (n + 1) - f1 n).toNat

end

end A273420.P16029149183642110371

namespace A273420

/-- `A142149(Δ[A273831(n)])` -/
def P16029149183642110371.Spec : Prop :=
  ∀ n, P16029149183642110371.a n = A273420 n

end A273420

/-! ## A273420.P9974333365595387809

`A273724(Δ[A273831(n)])+1`
-/

namespace A273420.P9974333365595387809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273724 (f1 (n + 1) - f1 n).toNat + 1

end

end A273420.P9974333365595387809

namespace A273420

/-- `A273724(Δ[A273831(n)])+1` -/
def P9974333365595387809.Spec : Prop :=
  ∀ n, P9974333365595387809.a n = A273420 n

end A273420

/-! ## A273420.P16743198185003168549

`A142149(A273831(n+1)-A273831(n))`
-/

namespace A273420.P16743198185003168549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142149 (A273831 (n + 1) - A273831 n).toNat

end

end A273420.P16743198185003168549

namespace A273420

/-- `A142149(A273831(n+1)-A273831(n))` -/
def P16743198185003168549.Spec : Prop :=
  ∀ n, P16743198185003168549.a n = A273420 n

end A273420

/-! ## A273420.P16523893710409366955

`A008611(3*A273724(A273834(n)))`
-/

namespace A273420.P16523893710409366955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A273724 (A273834 n).toNat).toNat

end

end A273420.P16523893710409366955

namespace A273420

/-- `A008611(3*A273724(A273834(n)))` -/
def P16523893710409366955.Spec : Prop :=
  ∀ n, P16523893710409366955.a n = A273420 n

end A273420

/-! ## A273420.P9299015450544062678

`A273834(n)-A055672(∑[n])`
-/

namespace A273420.P9299015450544062678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273834 n - A055672 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273420.P9299015450544062678

namespace A273420

/-- `A273834(n)-A055672(∑[n])` -/
def P9299015450544062678.Spec : Prop :=
  ∀ n, P9299015450544062678.a n = A273420 n

end A273420

/-!
# A273421: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 710", based on the 5-celled von Neumann neighborhood.

The programs for A273421, there is no canonical definition to state claims against.
-/

/-! ## A273421.P2140140261577338788

`A273424(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273421.P2140140261577338788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273424 (n - 1) + a (n - 1)

end

end A273421.P2140140261577338788

/-! ## A273421.P15564669567573045198

`Δ[A273423(n)]-A273424(n)`
-/

namespace A273421.P15564669567573045198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273424 n

end

end A273421.P15564669567573045198

/-! ## A273421.P6104169215105028666

`A273423(n+1)-(A273424(n)+A273423(n))`
-/

namespace A273421.P6104169215105028666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273423 (n + 1) - (A273424 n + A273423 n)

end

end A273421.P6104169215105028666

/-! ## A273421.P16914623257216212006

`A141310(∑[A273424(n)]-A273424(n))`
-/

namespace A273421.P16914623257216212006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273424 n).toNat

end

end A273421.P16914623257216212006

/-! ## A273421.P5316407293462057839

`A004442(∑[A273424(n)]-A273424(n))`
-/

namespace A273421.P5316407293462057839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273424 n).toNat

end

end A273421.P5316407293462057839

/-! ## A273421.P5509121489642794058

`A109613(∑[A273424(n)]-A273424(n))`
-/

namespace A273421.P5509121489642794058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A273424 n).toNat

end

end A273421.P5509121489642794058

/-!
# A273422: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 710", based on the 5-celled von Neumann neighborhood.

The programs for A273422, there is no canonical definition to state claims against.
-/

/-! ## A273422.P12530876675715704539

`A273421(2^n-1)`
-/

namespace A273422.P12530876675715704539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (2 ^ n - 1)

end

end A273422.P12530876675715704539

/-! ## A273422.P13206022619374397988

`record[A273421(A038573(n))]`
-/

namespace A273422.P13206022619374397988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273422.P13206022619374397988

/-! ## A273422.P7840579209579102173

`record[A273421(A173787(n))]`
-/

namespace A273422.P7840579209579102173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273422.P7840579209579102173

/-! ## A273422.P9749375905920271968

`record[A273421(A218616(n))]`
-/

namespace A273422.P9749375905920271968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273422.P9749375905920271968

/-! ## A273422.P391509745156539398

`record[A273421(A303763(n))]`
-/

namespace A273422.P391509745156539398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273422.P391509745156539398

/-!
# A273423: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 710", based on the 5-celled von Neumann neighborhood.

The programs for A273423, there is no canonical definition to state claims against.
-/

/-! ## A273423.P13227610091759683200

`∑[A273424(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273423.P13227610091759683200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273424 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273423.P13227610091759683200

/-! ## A273423.P14413234868600752754

`∑[∑[A273424(n)]+1-A273424(n)]`
-/

namespace A273423.P14413234868600752754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273424 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273424 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273423.P14413234868600752754

/-! ## A273423.P6792035843632807132

`∑[A273421(n)]`
-/

namespace A273423.P6792035843632807132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273423.P6792035843632807132

/-! ## A273423.P16964776904790661651

`A273421(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273423.P16964776904790661651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273421 n + a (A023443 n).toNat

end

end A273423.P16964776904790661651

/-! ## A273423.P14131235823672935135

`a(n-1)+A328384(A002374(n+3))+A273421(n)+1` with `a(0)=1`
-/

namespace A273423.P14131235823672935135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A328384 (A002374 (n + 3)).toNat + (A273421 n + 1))

end

end A273423.P14131235823672935135

/-!
# A273424: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 710", based on the 5-celled von Neumann neighborhood.

The programs for A273424, there is no canonical definition to state claims against.
-/

/-! ## A273424.P5019040391674610364

`Δ[A273421(n)]`
-/

namespace A273424.P5019040391674610364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273424.P5019040391674610364

/-! ## A273424.P3796470016911948100

`A273421(n+1)-A273421(n)`
-/

namespace A273424.P3796470016911948100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (n + 1) - A273421 n

end

end A273424.P3796470016911948100

/-! ## A273424.P12408380255292967220

`A273329(n)+A184955(A135017(n+1))`
-/

namespace A273424.P12408380255292967220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n + A184955 (A135017 (n + 1)).toNat

end

end A273424.P12408380255292967220

/-! ## A273424.P4453773712456992029

`A273329(n)+A184955(A303431(n+1))`
-/

namespace A273424.P4453773712456992029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n + A184955 (A303431 (n + 1)).toNat

end

end A273424.P4453773712456992029

/-! ## A273424.P16375910526207422987

`A184955(A303431(n+1))+Δ[A273326(n)]`
-/

namespace A273424.P16375910526207422987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A303431 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A273424.P16375910526207422987

/-!
# A273425: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 718", based on the 5-celled von Neumann neighborhood.

The programs for A273425, there is no canonical definition to state claims against.
-/

/-! ## A273425.P2816061328701987351

`A273428(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273425.P2816061328701987351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273428 (n - 1) + a (n - 1)

end

end A273425.P2816061328701987351

/-! ## A273425.P11712499667543787422

`Δ[A273427(n)]-A273428(n)`
-/

namespace A273425.P11712499667543787422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273428 n

end

end A273425.P11712499667543787422

/-! ## A273425.P14927048957403844677

`A273427(n+1)-(A273428(n)+A273427(n))`
-/

namespace A273425.P14927048957403844677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273427 (n + 1) - (A273428 n + A273427 n)

end

end A273425.P14927048957403844677

/-! ## A273425.P7281618816672816225

`A057427(n+1)+∑[A273428(n)]-A273428(n)`
-/

namespace A273425.P7281618816672816225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273428 n)

end

end A273425.P7281618816672816225

/-! ## A273425.P11469457100153779024

`A028920(2*n)+∑[A273428(n)]-A273428(n)`
-/

namespace A273425.P11469457100153779024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273428 n)

end

end A273425.P11469457100153779024

/-! ## A273425.P1565615053626395282

`A009001(2*n)²+∑[A273428(n)]-A273428(n)`
-/

namespace A273425.P1565615053626395282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273428 n)

end

end A273425.P1565615053626395282

/-! ## A273425.P16768592814886182635

`A000035(2*n+1)+∑[A273428(n)]-A273428(n)`
-/

namespace A273425.P16768592814886182635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273428 n)

end

end A273425.P16768592814886182635

/-! ## A273425.P8452085809899292764

`A286690(n+1)%2+∑[A273428(n)]-A273428(n)`
-/

namespace A273425.P8452085809899292764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286690 (n + 1)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273428 n)

end

end A273425.P8452085809899292764

/-! ## A273425.P2344257011631546842

`n+1+A001489(n)+∑[A273428(n)]-A273428(n)`
-/

namespace A273425.P2344257011631546842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A001489 n + (∑ j ∈ Finset.range (n + 1), f1 j - A273428 n))

end

end A273425.P2344257011631546842

/-! ## A273425.P2829342982088543099

`A000027(∑[A273428(n)]-A273428(n)+1)`
-/

namespace A273425.P2829342982088543099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273428 n + 1).toNat

end

end A273425.P2829342982088543099

/-! ## A273425.P2108874422791833168

`A000265(∑[A273428(n)]-A273428(n)+1)`
-/

namespace A273425.P2108874422791833168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A273428 n + 1).toNat

end

end A273425.P2108874422791833168

/-! ## A273425.P8442800561783398439

`A141310(∑[A273428(n)]-A273428(n))`
-/

namespace A273425.P8442800561783398439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273428 n).toNat

end

end A273425.P8442800561783398439

/-!
# A273426: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 718", based on the 5-celled von Neumann neighborhood.

The programs for A273426, there is no canonical definition to state claims against.
-/

/-! ## A273426.P12338771149303379775

`A273425(2^n-1)`
-/

namespace A273426.P12338771149303379775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273425 (2 ^ n - 1)

end

end A273426.P12338771149303379775

/-! ## A273426.P1415460429823720903

`record[A273425(A006068(n))]`
-/

namespace A273426.P1415460429823720903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273425 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273426.P1415460429823720903

/-! ## A273426.P5498828912424076323

`record[A273425(A173787(n))]`
-/

namespace A273426.P5498828912424076323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273425 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273426.P5498828912424076323

/-! ## A273426.P4719854512422775536

`or(1, A273425(A000225(n)))`
-/

namespace A273426.P4719854512422775536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273425 (A000225 n).toNat)

end

end A273426.P4719854512422775536

/-! ## A273426.P7750729206147342130

`record[A273425(A243071(n+1))]`
-/

namespace A273426.P7750729206147342130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273425 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273426.P7750729206147342130

/-!
# A273427: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 718", based on the 5-celled von Neumann neighborhood.

The programs for A273427, there is no canonical definition to state claims against.
-/

/-! ## A273427.P4274697193001144913

`∑[∑[A273428(n)]+1-A273428(n)]`
-/

namespace A273427.P4274697193001144913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273428 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273428 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273427.P4274697193001144913

/-! ## A273427.P16787508346318331284

`∑[A273425(n)]`
-/

namespace A273427.P16787508346318331284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273427.P16787508346318331284

/-! ## A273427.P8582567824770384984

`A273425(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273427.P8582567824770384984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273425 n + a (A023443 n).toNat

end

end A273427.P8582567824770384984

/-! ## A273427.P15053712196858642016

`a(n-1)+A057427(n)*A273425(n)` with `a(0)=1`
-/

namespace A273427.P15053712196858642016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A273425 n

end

end A273427.P15053712196858642016

/-! ## A273427.P3624400816865079097

`A273425(lcm(n, A006530(n)))+a(n-1)` with `a(0)=1`
-/

namespace A273427.P3624400816865079097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273425 (Int.lcm (n : ℤ) (A006530 n)) + a (n - 1)

end

end A273427.P3624400816865079097

/-! ## A273427.P359437730920823228

`a(n-1)+A273425(n)%A005938(n+2)` with `a(0)=1`
-/

namespace A273427.P359437730920823228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273425 n) (A005938 (n + 2))

end

end A273427.P359437730920823228

/-!
# A273428: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 718", based on the 5-celled von Neumann neighborhood.

The programs for A273428, there is no canonical definition to state claims against.
-/

/-! ## A273428.P4000973309141542026

`Δ[A273425(n)]`
-/

namespace A273428.P4000973309141542026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273428.P4000973309141542026

/-! ## A273428.P14728955826324791463

`A273425(n+1)-A273425(n)`
-/

namespace A273428.P14728955826324791463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273425 (n + 1) - A273425 n

end

end A273428.P14728955826324791463

/-!
# A273429: Number of ordered ways to write n as x^6 + y^2 + z^2 + w^2, where x,y,z,w are nonnegative integers with y <= z <= w.

The programs for A273429, there is no canonical definition to state claims against.
-/

/-! ## A273429.P15651550492061659622

`A273915(n)-A057427(A034574(n+1))`
-/

namespace A273429.P15651550492061659622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273915 n - A057427 (A034574 (n + 1)).toNat

end

end A273429.P15651550492061659622

/-! ## A273429.P14096535365098780196

`A273915(n)-A185284(A172033(n))`
-/

namespace A273429.P14096535365098780196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273915 n - A185284 (A172033 n).toNat

end

end A273429.P14096535365098780196

/-! ## A273429.P14487124384508500140

`A273915(n)-A340988(A117894(n))`
-/

namespace A273429.P14487124384508500140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273915 n - A340988 ((A117894 n).toNat + 91)

end

end A273429.P14487124384508500140

/-! ## A273429.P7534964336800718228

`gcd(A001727(n), A273915(n))`
-/

namespace A273429.P7534964336800718228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001727 n) (A273915 n)

end

end A273429.P7534964336800718228

/-! ## A273429.P8831836385428451229

`A273915(n)%A038013(n)`
-/

namespace A273429.P8831836385428451229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273915 n) (A038013 n)

end

end A273429.P8831836385428451229

/-!
# A273430: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 825", based on the 5-celled von Neumann neighborhood.

The programs for A273430, there is no canonical definition to state claims against.
-/

/-! ## A273430.P3859917904272965083

`A273674(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273430.P3859917904272965083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273674 (n - 1) + a (n - 1)

end

end A273430.P3859917904272965083

/-! ## A273430.P13128831555136462504

`∑[A273674(A028310(n)-1)]-2`
-/

namespace A273430.P13128831555136462504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273674 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273430.P13128831555136462504

/-! ## A273430.P10061893448609833826

`Δ[A273581(n)]-A273674(n)`
-/

namespace A273430.P10061893448609833826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273674 n

end

end A273430.P10061893448609833826

/-! ## A273430.P2745263163231253303

`∑[A273674(2*n-n)]+1-A273674(n)`
-/

namespace A273430.P2745263163231253303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273674 (2 * n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273674 n)

end

end A273430.P2745263163231253303

/-! ## A273430.P1652425173373446830

`A273581(n+1)-(A273674(n)+A273581(n))`
-/

namespace A273430.P1652425173373446830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273581 (n + 1) - (A273674 n + A273581 n)

end

end A273430.P1652425173373446830

/-!
# A273431: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 825", based on the 5-celled von Neumann neighborhood.

The programs for A273431, there is no canonical definition to state claims against.
-/

/-! ## A273431.P15330801189246736405

`A273430(2^n-1)`
-/

namespace A273431.P15330801189246736405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273430 (2 ^ n - 1)

end

end A273431.P15330801189246736405

/-! ## A273431.P2801191426180251949

`record[A273430(A038573(n))]`
-/

namespace A273431.P2801191426180251949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273430 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273431.P2801191426180251949

/-! ## A273431.P10725050548548269319

`record[A273430(A243071(n+1))]`
-/

namespace A273431.P10725050548548269319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273430 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273431.P10725050548548269319

/-! ## A273431.P94501906536942552

`record[A273430(A252756(n+1))]`
-/

namespace A273431.P94501906536942552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273430 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273431.P94501906536942552

/-! ## A273431.P10485734060562162890

`record[A273430(A279341(n+1))]`
-/

namespace A273431.P10485734060562162890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273430 (A279341 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273431.P10485734060562162890

/-!
# A273434: Number of endofunctions on [n] with exactly three cycles.

The programs for A273434, there is no canonical definition to state claims against.
-/

/-! ## A273434.P6216254961168503989

`A060281(∑[n+2]+4)`
-/

namespace A273434.P6216254961168503989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A273434.P6216254961168503989

/-! ## A273434.P11082576205360406227

`gcd(A000038(n), A060281(A167614(n+1)))`
-/

namespace A273434.P11082576205360406227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A060281 (A167614 (n + 1)).toNat)

end

end A273434.P11082576205360406227

/-! ## A273434.P17316072962248451961

`lcm(A033999(n), A060281(A167614(n+1)))`
-/

namespace A273434.P17316072962248451961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A060281 (A167614 (n + 1)).toNat)

end

end A273434.P17316072962248451961

/-! ## A273434.P3189261808788688268

`or(A000007(n), A060281(A167614(n+1)))`
-/

namespace A273434.P3189261808788688268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A060281 (A167614 (n + 1)).toNat)

end

end A273434.P3189261808788688268

/-! ## A273434.P15049620812407387618

`A007318(C(n+2, 2))*A060281(A167614(n+1))`
-/

namespace A273434.P15049620812407387618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A060281 (A167614 (n + 1)).toNat

end

end A273434.P15049620812407387618

/-!
# A273435: Number of endofunctions on [n] with exactly four cycles.

The programs for A273435, there is no canonical definition to state claims against.
-/

/-! ## A273435.P16363215929459169674

`A060281(∑[n+3]+7)`
-/

namespace A273435.P16363215929459169674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A273435.P16363215929459169674

/-! ## A273435.P3619152986234680250

`A060281(A055999(n)+10)*A262681(n)`
-/

namespace A273435.P3619152986234680250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A055999 n + 10).toNat * A262681 n

end

end A273435.P3619152986234680250

/-! ## A273435.P4224458597903606559

`A033999(n)²*A060281(A055999(n)+10)`
-/

namespace A273435.P4224458597903606559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A060281 (A055999 n + 10).toNat

end

end A273435.P4224458597903606559

/-! ## A273435.P16820765544232944555

`A057077(n)²*A060281(A055999(n)+10)`
-/

namespace A273435.P16820765544232944555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A060281 (A055999 n + 10).toNat

end

end A273435.P16820765544232944555

/-! ## A273435.P8661713510202108606

`(A004442(n)-n)²*A060281(A055999(n)+10)`
-/

namespace A273435.P8661713510202108606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) ^ 2 * A060281 (A055999 n + 10).toNat

end

end A273435.P8661713510202108606

/-! ## A273435.P14787492348715087915

`or(A060281(A055999(n)+10), A096500(2*n+1))`
-/

namespace A273435.P14787492348715087915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060281 (A055999 n + 10).toNat) (A096500 (2 * n + 1))

end

end A273435.P14787492348715087915

/-! ## A273435.P18016350759350774702

`A008975(A000217(n))*A060281(A055999(n)+10)`
-/

namespace A273435.P18016350759350774702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008975 (A000217 n).toNat * A060281 (A055999 n + 10).toNat

end

end A273435.P18016350759350774702

/-! ## A273435.P13343258020393039861

`A000045(A020639(2*(n+1)))*A060281(A055999(n)+10)`
-/

namespace A273435.P13343258020393039861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A060281 (A055999 n + 10).toNat

end

end A273435.P13343258020393039861

/-!
# A273436: Number of endofunctions on [n] with exactly five cycles.

The programs for A273436, there is no canonical definition to state claims against.
-/

/-! ## A273436.P10557565277923719552

`A060281(A167499(n+3))`
-/

namespace A273436.P10557565277923719552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A167499 (n + 3)).toNat

end

end A273436.P10557565277923719552

/-! ## A273436.P6644374495504941319

`A060281(A056000(n)+15)`
-/

namespace A273436.P6644374495504941319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A056000 n + 15).toNat

end

end A273436.P6644374495504941319

/-! ## A273436.P2700046873991085529

`A060281(A167614(n+3)+2)`
-/

namespace A273436.P2700046873991085529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A167614 (n + 3) + 2).toNat

end

end A273436.P2700046873991085529

/-! ## A273436.P414075842861872760

`A060281(A000124(n+4)+4)`
-/

namespace A273436.P414075842861872760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A000124 (n + 4) + 4).toNat

end

end A273436.P414075842861872760

/-! ## A273436.P12684505091981202723

`A060281(A000217(n+4)+5)`
-/

namespace A273436.P12684505091981202723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A000217 (n + 4) + 5).toNat

end

end A273436.P12684505091981202723

/-! ## A273436.P14820744628082441546

`A060281(eq[6, A131818(n+1)])`
-/

namespace A273436.P14820744628082441546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273436.P14820744628082441546

/-!
# A273437: Number of endofunctions on [n] with exactly six cycles.

The programs for A273437, there is no canonical definition to state claims against.
-/

/-! ## A273437.P10865445835167741905

`A060281(A167614(n+4)+3)`
-/

namespace A273437.P10865445835167741905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A167614 (n + 4) + 3).toNat

end

end A273437.P10865445835167741905

/-! ## A273437.P3765048854843127687

`A060281(A000096(n+4)+7)`
-/

namespace A273437.P3765048854843127687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A000096 (n + 4) + 7).toNat

end

end A273437.P3765048854843127687

/-! ## A273437.P14777188247387471169

`A060281(eq[5, A002262(n)]+1)`
-/

namespace A273437.P14777188247387471169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A273437.P14777188247387471169

/-! ## A273437.P9880500344596180074

`A060281(eq[7, A131818(n+1)])`
-/

namespace A273437.P9880500344596180074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273437.P9880500344596180074

/-! ## A273437.P15617004849415536427

`A060281(Δ[A023545(n+1)]+10)`
-/

namespace A273437.P15617004849415536427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (f1 (n + 1) - f1 n + 10).toNat

end

end A273437.P15617004849415536427

/-! ## A273437.P932069705539877270

`A060281(A000124(n+6)-(n+1))`
-/

namespace A273437.P932069705539877270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A273437.P932069705539877270

/-! ## A273437.P5234653213202689814

`A060281(eq[6, A025581(n)]-2*n)`
-/

namespace A273437.P5234653213202689814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A273437.P5234653213202689814

/-!
# A273438: Number of endofunctions on [n] with exactly seven cycles.

The programs for A273438, there is no canonical definition to state claims against.
-/

/-! ## A273438.P15755868020688170612

`A060281(A056119(n)+28)`
-/

namespace A273438.P15755868020688170612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A056119 n + 28).toNat

end

end A273438.P15755868020688170612

/-! ## A273438.P3230353372883235416

`A060281(eq[11, A066657(n)])`
-/

namespace A273438.P3230353372883235416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273438.P3230353372883235416

/-! ## A273438.P4895612528513943821

`A060281(A000124(n+6)+6)`
-/

namespace A273438.P4895612528513943821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A000124 (n + 6) + 6).toNat

end

end A273438.P4895612528513943821

/-! ## A273438.P7683799734873132460

`A060281(eq[6, A002262(n)]+1)`
-/

namespace A273438.P7683799734873132460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A273438.P7683799734873132460

/-! ## A273438.P10553183360710390366

`A060281(eq[8, A131818(n+1)])`
-/

namespace A273438.P10553183360710390366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273438.P10553183360710390366

/-!
# A273439: Number of endofunctions on [n] with exactly eight cycles.

The programs for A273439, there is no canonical definition to state claims against.
-/

/-! ## A273439.P9073010635422389772

`A060281(eq[13, A066657(n)])`
-/

namespace A273439.P9073010635422389772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273439.P9073010635422389772

/-! ## A273439.P1746796066179486832

`A060281(A166136(n+6)+2)`
-/

namespace A273439.P1746796066179486832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A166136 (n + 6) + 2).toNat

end

end A273439.P1746796066179486832

/-! ## A273439.P3150202354622015588

`A060281(A000217(n+7)+8)`
-/

namespace A273439.P3150202354622015588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A000217 (n + 7) + 8).toNat

end

end A273439.P3150202354622015588

/-! ## A273439.P13259071489315042167

`A060281(eq[7, A002262(n)]+1)`
-/

namespace A273439.P13259071489315042167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A273439.P13259071489315042167

/-! ## A273439.P3730532319465419067

`A060281(eq[9, A131818(n+1)])`
-/

namespace A273439.P3730532319465419067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273439.P3730532319465419067

/-!
# A273440: Number of endofunctions on [n] with exactly nine cycles.

The programs for A273440, there is no canonical definition to state claims against.
-/

/-! ## A273440.P13243090369985105663

`A060281(A000096(n+7)+10)`
-/

namespace A273440.P13243090369985105663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A000096 (n + 7) + 10).toNat

end

end A273440.P13243090369985105663

/-! ## A273440.P273180417543838654

`A060281(eq[8, A002262(n)]+1)`
-/

namespace A273440.P273180417543838654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A273440.P273180417543838654

/-! ## A273440.P13904228423311532629

`A060281(eq[10, A131818(n+1)])`
-/

namespace A273440.P13904228423311532629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273440.P13904228423311532629

/-!
# A273441: Number of endofunctions on [n] with exactly ten cycles.

The programs for A273441, there is no canonical definition to state claims against.
-/

/-! ## A273441.P10324839793917899520

`A060281(A000217(n+9)+10)`
-/

namespace A273441.P10324839793917899520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A000217 (n + 9) + 10).toNat

end

end A273441.P10324839793917899520

/-! ## A273441.P17211247439323372432

`A060281(eq[10, A130270(n+1)])`
-/

namespace A273441.P17211247439323372432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273441.P17211247439323372432

/-! ## A273441.P14070996793995283274

`A060281(eq[11, A131818(n+1)])`
-/

namespace A273441.P14070996793995283274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273441.P14070996793995283274

/-! ## A273441.P16565433206951762254

`A060281(A166136(n+8)+4)*A262681(n)`
-/

namespace A273441.P16565433206951762254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A166136 (n + 8) + 4).toNat * A262681 n

end

end A273441.P16565433206951762254

/-! ## A273441.P8384320257903034503

`A060281(eq[10, A256910(n)])`
-/

namespace A273441.P8384320257903034503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273441.P8384320257903034503

/-!
# A273442: Number of endofunctions on [2n] with exactly n cycles.

The programs for A273442, there is no canonical definition to state claims against.
-/

/-! ## A273442.P9749415846549891485

`A060281(A004277(n²))`
-/

namespace A273442.P9749415846549891485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A004277 (n ^ 2)).toNat

end

end A273442.P9749415846549891485

/-! ## A273442.P8962684889506743068

`record[A060281(∑[A266072(n)])]`
-/

namespace A273442.P8962684889506743068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273442.P8962684889506743068

/-! ## A273442.P8793445372476008851

`A060281(A004275(n²+1))`
-/

namespace A273442.P8793445372476008851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A004275 (n ^ 2 + 1)).toNat

end

end A273442.P8793445372476008851

/-! ## A273442.P6517809555788940404

`A060281(A028310(2*n²))`
-/

namespace A273442.P6517809555788940404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A028310 (2 * n ^ 2)).toNat

end

end A273442.P6517809555788940404

/-! ## A273442.P4108115646367793344

`A060281(A065033((2*n)²))`
-/

namespace A273442.P4108115646367793344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A065033 ((2 * n) ^ 2)).toNat

end

end A273442.P4108115646367793344

/-!
# A273443: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A273443, the canonical program `A273443.P11225266022629236201` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273443 has offset 0).

The definition of A273443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273443.P11225266022629236201

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=21, a(3)=41, a(4)=80, a(5)=120, a(6)=168`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273443

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11225266022629236201.Spec : Prop :=
  ∀ n, P11225266022629236201.a n = A273443 n

theorem P11225266022629236201.correct : P11225266022629236201.Spec := by
  intro n
  simp only [A273443]

end A273443

/-! ## A273443.P11211515947217108376

`A273448(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273443.P11211515947217108376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273448 (n - 1) + a (n - 1)

end

end A273443.P11211515947217108376

namespace A273443

/-- `A273448(n-1)+a(n-1)` -/
def P11211515947217108376.Spec : Prop :=
  ∀ n, P11211515947217108376.a n = A273443 n

end A273443

/-! ## A273443.P18411211911969360579

`Δ[A273447(n)]-A273448(n)`
-/

namespace A273443.P18411211911969360579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273448 n

end

end A273443.P18411211911969360579

namespace A273443

/-- `Δ[A273447(n)]-A273448(n)` -/
def P18411211911969360579.Spec : Prop :=
  ∀ n, P18411211911969360579.a n = A273443 n

end A273443

/-! ## A273443.P1386431623051435210

`∑[A273448(n-A165471(n)²)]-2`
-/

namespace A273443.P1386431623051435210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273448 ((n : ℤ) - A165471 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273443.P1386431623051435210

namespace A273443

/-- `∑[A273448(n-A165471(n)²)]-2` -/
def P1386431623051435210.Spec : Prop :=
  ∀ n, P1386431623051435210.a n = A273443 n

end A273443

/-! ## A273443.P4397640275040389386

`A273447(n+1)-(A273448(n)+A273447(n))`
-/

namespace A273443.P4397640275040389386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273447 (n + 1) - (A273448 n + A273447 n)

end

end A273443.P4397640275040389386

namespace A273443

/-- `A273447(n+1)-(A273448(n)+A273447(n))` -/
def P4397640275040389386.Spec : Prop :=
  ∀ n, P4397640275040389386.a n = A273443 n

end A273443

/-! ## A273443.P9310858898256771847

`A273448(n-1)-(A278482(A000096(n))-1)*a(n-1)` with `a(0)=1`
-/

namespace A273443.P9310858898256771847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273448 (n - 1) - (A278482 (A000096 n).toNat - 1) * a (n - 1)

end

end A273443.P9310858898256771847

namespace A273443

/-- `A273448(n-1)-(A278482(A000096(n))-1)*a(n-1)` -/
def P9310858898256771847.Spec : Prop :=
  ∀ n, P9310858898256771847.a n = A273443 n

end A273443

/-!
# A273444: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 777", based on the 5-celled von Neumann neighborhood.

The programs for A273444, there is no canonical definition to state claims against.
-/

/-! ## A273444.P9044352077653580764

`A273414(2^n-1)`
-/

namespace A273444.P9044352077653580764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273414 (2 ^ n - 1)

end

end A273444.P9044352077653580764

/-! ## A273444.P7641120076330191409

`record[A273414(A091264(n))]`
-/

namespace A273444.P7641120076330191409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273414 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273444.P7641120076330191409

/-! ## A273444.P14852067711946617593

`record[A273414(A173787(n))]`
-/

namespace A273444.P14852067711946617593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273414 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273444.P14852067711946617593

/-! ## A273444.P10151081074216835536

`record[A273414(A218616(n))]`
-/

namespace A273444.P10151081074216835536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273414 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273444.P10151081074216835536

/-! ## A273444.P16611381373877239917

`record[A273414(A255067(n))]`
-/

namespace A273444.P16611381373877239917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273414 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273444.P16611381373877239917

/-!
# A273446: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A273446, there is no canonical definition to state claims against.
-/

/-! ## A273446.P4107952406036674543

`xor(A157928(n), A270088(n))`
-/

namespace A273446.P4107952406036674543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157928 n) (A270088 n)

end

end A273446.P4107952406036674543

/-! ## A273446.P4059676469979156996

`xor(A225654(n), A270088(n))`
-/

namespace A273446.P4059676469979156996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A225654 n) (A270088 n)

end

end A273446.P4059676469979156996

/-! ## A273446.P1678904551038807636

`xor(char[A051297(n)], A270088(n))`
-/

namespace A273446.P1678904551038807636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051297 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A270088 n)

end

end A273446.P1678904551038807636

/-! ## A273446.P9575564875788981532

`xor(char[A051298(n)], A270088(n))`
-/

namespace A273446.P9575564875788981532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051298 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A270088 n)

end

end A273446.P9575564875788981532

/-! ## A273446.P1294036206230849689

`xor(A077433(n+1), A270088(n))`
-/

namespace A273446.P1294036206230849689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077433 (n + 1)) (A270088 n)

end

end A273446.P1294036206230849689

/-!
# A273447: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A273447, the canonical program `A273447.P635728641433503621` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273447 has offset 0).

The definition of A273447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273447.P635728641433503621

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=26, a(3)=67, a(4)=147, a(5)=267, a(6)=435`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273447

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P635728641433503621.Spec : Prop :=
  ∀ n, P635728641433503621.a n = A273447 n

theorem P635728641433503621.correct : P635728641433503621.Spec := by
  intro n
  simp only [A273447]

end A273447

/-! ## A273447.P12617576222969532917

`∑[∑[A273448(n)]+1-A273448(n)]`
-/

namespace A273447.P12617576222969532917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273448 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273448 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273447.P12617576222969532917

namespace A273447

/-- `∑[∑[A273448(n)]+1-A273448(n)]` -/
def P12617576222969532917.Spec : Prop :=
  ∀ n, P12617576222969532917.a n = A273447 n

end A273447

/-! ## A273447.P10763569715551094459

`∑[A273443(n)]`
-/

namespace A273447.P10763569715551094459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273447.P10763569715551094459

namespace A273447

/-- `∑[A273443(n)]` -/
def P10763569715551094459.Spec : Prop :=
  ∀ n, P10763569715551094459.a n = A273447 n

end A273447

/-! ## A273447.P631551131594496393

`A273443(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273447.P631551131594496393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273443 n + a (A023443 n).toNat

end

end A273447.P631551131594496393

namespace A273447

/-- `A273443(n)+a(A023443(n))` -/
def P631551131594496393.Spec : Prop :=
  ∀ n, P631551131594496393.a n = A273447 n

end A273447

/-! ## A273447.P12156033508755826905

`A273443(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A273447.P12156033508755826905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273443 n + a (A028310 n - 1).toNat

end

end A273447.P12156033508755826905

namespace A273447

/-- `A273443(n)+a(A028310(n)-1)` -/
def P12156033508755826905.Spec : Prop :=
  ∀ n, P12156033508755826905.a n = A273447 n

end A273447

/-! ## A273447.P4071897675516188304

`A273443(n)+a(n-A033999(2*n))` with `a(0)=1`
-/

namespace A273447.P4071897675516188304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273443 n + a ((n : ℤ) - A033999 (2 * n)).toNat

end

end A273447.P4071897675516188304

namespace A273447

/-- `A273443(n)+a(n-A033999(2*n))` -/
def P4071897675516188304.Spec : Prop :=
  ∀ n, P4071897675516188304.a n = A273447 n

end A273447

/-! ## A273447.P16034928936620551724

`A273443(n)+a(gcd(n, A008706(n))-1)` with `a(0)=1`
-/

namespace A273447.P16034928936620551724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273443 n + a (Int.gcd (n : ℤ) (A008706 n) - 1)

end

end A273447.P16034928936620551724

namespace A273447

/-- `A273443(n)+a(gcd(n, A008706(n))-1)` -/
def P16034928936620551724.Spec : Prop :=
  ∀ n, P16034928936620551724.a n = A273447 n

end A273447

/-! ## A273447.P10670328955354854213

`A273443(n)+a(n-A007318(C(2, n)))` with `a(0)=1`
-/

namespace A273447.P10670328955354854213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273443 n + a ((n : ℤ) - A007318 (Nat.choose 2 n)).toNat

end

end A273447.P10670328955354854213

namespace A273447

/-- `A273443(n)+a(n-A007318(C(2, n)))` -/
def P10670328955354854213.Spec : Prop :=
  ∀ n, P10670328955354854213.a n = A273447 n

end A273447

/-! ## A273447.P4558823742500281480

`A273443(n)+a(A038722(A038722(n))-1)` with `a(0)=1`
-/

namespace A273447.P4558823742500281480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273443 n + a (A038722 (A038722 n).toNat - 1).toNat

end

end A273447.P4558823742500281480

namespace A273447

/-- `A273443(n)+a(A038722(A038722(n))-1)` -/
def P4558823742500281480.Spec : Prop :=
  ∀ n, P4558823742500281480.a n = A273447 n

end A273447

/-!
# A273448: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A273448, the canonical program `A273448.P10189872663936504935` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273448 has offset 0).

The definition of A273448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273448.P10189872663936504935

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=17, a(2)=20, a(3)=39, a(4)=40, a(5)=48`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273448

/-- `2*a(n-1)-a(n-2)` -/
def P10189872663936504935.Spec : Prop :=
  ∀ n, P10189872663936504935.a n = A273448 n

theorem P10189872663936504935.correct : P10189872663936504935.Spec := by
  intro n
  simp only [A273448]

end A273448

/-!
# A273449: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A273449, there is no canonical definition to state claims against.
-/

/-! ## A273449.P4460204361299061755

`A273452(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273449.P4460204361299061755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273452 (n - 1) + a (n - 1)

end

end A273449.P4460204361299061755

/-! ## A273449.P14550209683552678505

`∑[A273452(floor(sqrt(n²+1))-1)]-3`
-/

namespace A273449.P14550209683552678505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273452 (Nat.sqrt (n ^ 2 + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A273449.P14550209683552678505

/-! ## A273449.P16915254120696044206

`Δ[A273451(n)]-A273452(n)`
-/

namespace A273449.P16915254120696044206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273452 n

end

end A273449.P16915254120696044206

/-! ## A273449.P2094950472514350090

`A273451(n+1)-(A273452(n)+A273451(n))`
-/

namespace A273449.P2094950472514350090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273451 (n + 1) - (A273452 n + A273451 n)

end

end A273449.P2094950472514350090

/-!
# A273450: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A273450, there is no canonical definition to state claims against.
-/

/-! ## A273450.P10094905735570772241

`A273449(2^n-1)`
-/

namespace A273450.P10094905735570772241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273449 (2 ^ n - 1)

end

end A273450.P10094905735570772241

/-! ## A273450.P9057496881096538515

`record[A273449(A088512(n))]`
-/

namespace A273450.P9057496881096538515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273449 (A088512 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273450.P9057496881096538515

/-! ## A273450.P15007324046693318842

`record[A273449(A227351(n))]`
-/

namespace A273450.P15007324046693318842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273449 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273450.P15007324046693318842

/-! ## A273450.P4271652232063831159

`or(1, A273449(A000225(n)))`
-/

namespace A273450.P4271652232063831159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273449 (A000225 n).toNat)

end

end A273450.P4271652232063831159

/-! ## A273450.P4818353169189337372

`record[A273449(A293447(n+1))]`
-/

namespace A273450.P4818353169189337372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273449 (A293447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273450.P4818353169189337372

/-!
# A273451: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A273451, there is no canonical definition to state claims against.
-/

/-! ## A273451.P18233085767027771594

`∑[A273449(n)]`
-/

namespace A273451.P18233085767027771594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273451.P18233085767027771594

/-! ## A273451.P7464173949005695729

`A273449(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273451.P7464173949005695729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273449 n + a (A023443 n).toNat

end

end A273451.P7464173949005695729

/-! ## A273451.P16839562608373776027

`A273449(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A273451.P16839562608373776027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273449 (A028310 n).toNat + a (n - 1)

end

end A273451.P16839562608373776027

/-! ## A273451.P16029510762066706891

`A273449(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A273451.P16029510762066706891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273449 n + a ((n : ℤ) - A057427 n).toNat

end

end A273451.P16029510762066706891

/-! ## A273451.P1884953146976298512

`A273449(A000290(n)/n)+a(n-1)` with `a(0)=1`
-/

namespace A273451.P1884953146976298512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273449 (SequenceMachineLib.roundAway ((A000290 n : ℚ) / (n : ℚ))).toNat + a (n - 1)

end

end A273451.P1884953146976298512

/-! ## A273451.P12095461386302201902

`A273449(n)+a(n%A004277(n)-1)` with `a(0)=1`
-/

namespace A273451.P12095461386302201902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273449 n + a (Int.tmod (n : ℤ) (A004277 n) - 1).toNat

end

end A273451.P12095461386302201902

/-! ## A273451.P17624619381365230710

`∑[A273452(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273451.P17624619381365230710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273452 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273451.P17624619381365230710

/-!
# A273452: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A273452, there is no canonical definition to state claims against.
-/

/-! ## A273452.P16003431947858411854

`Δ[A273449(n)]`
-/

namespace A273452.P16003431947858411854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273452.P16003431947858411854

/-! ## A273452.P16720064706039958935

`A273449(n+1)-A273449(n)`
-/

namespace A273452.P16720064706039958935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273449 (n + 1) - A273449 n

end

end A273452.P16720064706039958935

/-! ## A273452.P16731005274852087722

`A273449(n+1)+A273449(n)/A033999(2*n+1)`
-/

namespace A273452.P16731005274852087722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273449 (n + 1) : ℚ) + (A273449 n : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A273452.P16731005274852087722

/-! ## A273452.P13805235940508711821

`A273449(n+1)+A273449(n)/A260196(2*n+3)`
-/

namespace A273452.P13805235940508711821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273449 (n + 1) : ℚ) + (A273449 n : ℚ) / (A260196 (2 * n + 3) : ℚ)

end

end A273452.P13805235940508711821

/-! ## A273452.P835931380223330974

`A273449(n+1)+A001478(A273449(n)+1)+1`
-/

namespace A273452.P835931380223330974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273449 (n + 1) + (A001478 (A273449 n + 1).toNat + 1)

end

end A273452.P835931380223330974

/-!
# A273453: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A273453, there is no canonical definition to state claims against.
-/

/-! ## A273453.P45900097180609541

`A273456(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273453.P45900097180609541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273456 (n - 1) + a (n - 1)

end

end A273453.P45900097180609541

/-! ## A273453.P9916918423144433305

`Δ[A273455(n)]-A273456(n)`
-/

namespace A273453.P9916918423144433305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273456 n

end

end A273453.P9916918423144433305

/-! ## A273453.P1468000577781704831

`A273455(n+1)-(A273456(n)+A273455(n))`
-/

namespace A273453.P1468000577781704831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273455 (n + 1) - (A273456 n + A273455 n)

end

end A273453.P1468000577781704831

/-! ## A273453.P14223845347591832021

`A257075(n)²+∑[A273456(n)]-A273456(n)`
-/

namespace A273453.P14223845347591832021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n)

end

end A273453.P14223845347591832021

/-! ## A273453.P1475466713849528437

`(∑[A273456(n)]-A273456(n))*A057427(n)+1`
-/

namespace A273453.P1475466713849528437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n) * A057427 n + 1

end

end A273453.P1475466713849528437

/-! ## A273453.P11148846886907707477

`A000034(2*n)+∑[A273456(n)]-A273456(n)`
-/

namespace A273453.P11148846886907707477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n)

end

end A273453.P11148846886907707477

/-! ## A273453.P3132693728588386034

`A209615(n+1)²+∑[A273456(n)]-A273456(n)`
-/

namespace A273453.P3132693728588386034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n)

end

end A273453.P3132693728588386034

/-! ## A273453.P14258679884076433882

`(1-A000007(n))!+∑[A273456(n)]-A273456(n)`
-/

namespace A273453.P14258679884076433882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A000007 n).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n)

end

end A273453.P14258679884076433882

/-! ## A273453.P13523860846657150284

`(∑[A273456(n)]-A273456(n)+1)%A097238(n+1)`
-/

namespace A273453.P13523860846657150284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n + 1) (A097238 (n + 1))

end

end A273453.P13523860846657150284

/-! ## A273453.P8181876866221822866

`A052938(2*n)-n+∑[A273456(n)]-A273456(n)`
-/

namespace A273453.P8181876866221822866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) - (n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n)

end

end A273453.P8181876866221822866

/-! ## A273453.P5459877324586768070

`(2*n+1)/A109613(2*n)+∑[A273456(n)]-A273456(n)`
-/

namespace A273453.P5459877324586768070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A109613 (2 * n) : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j - A273456 n : ℤ) : ℚ)

end

end A273453.P5459877324586768070

/-! ## A273453.P10308788722448438955

`A010892(6*n)+∑[A273456(n)]-A273456(n)`
-/

namespace A273453.P10308788722448438955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (6 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n)

end

end A273453.P10308788722448438955

/-! ## A273453.P2643814645324635707

`A000027(∑[A273456(n)]-A273456(n)+1)`
-/

namespace A273453.P2643814645324635707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n + 1).toNat

end

end A273453.P2643814645324635707

/-! ## A273453.P14501824376406220011

`A000265(∑[A273456(n)]-A273456(n)+1)`
-/

namespace A273453.P14501824376406220011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n + 1).toNat

end

end A273453.P14501824376406220011

/-! ## A273453.P12168177580702948034

`A105570(∑[A273456(n)]-A273456(n))+1`
-/

namespace A273453.P12168177580702948034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n).toNat + 1

end

end A273453.P12168177580702948034

/-! ## A273453.P14897192519632424733

`(∑[A273456(n)]-A273456(n))%A000040((n+1)²)+1`
-/

namespace A273453.P14897192519632424733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A273456 n) (A000040 ((n + 1) ^ 2)) + 1

end

end A273453.P14897192519632424733

/-!
# A273454: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A273454, there is no canonical definition to state claims against.
-/

/-! ## A273454.P10629561066963755135

`A273453(2^n-1)`
-/

namespace A273454.P10629561066963755135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273453 (2 ^ n - 1)

end

end A273454.P10629561066963755135

/-! ## A273454.P1118583364277283684

`record[A273453(A006068(n))]`
-/

namespace A273454.P1118583364277283684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273453 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273454.P1118583364277283684

/-! ## A273454.P13273471059118237439

`record[A273453(A173787(n))]`
-/

namespace A273454.P13273471059118237439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273453 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273454.P13273471059118237439

/-! ## A273454.P18379701996643026339

`or(1, A273453(A000225(n)))`
-/

namespace A273454.P18379701996643026339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273453 (A000225 n).toNat)

end

end A273454.P18379701996643026339

/-! ## A273454.P17211958083442851310

`record[A273453(A243071(n+1))]`
-/

namespace A273454.P17211958083442851310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273453 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273454.P17211958083442851310

/-!
# A273455: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A273455, there is no canonical definition to state claims against.
-/

/-! ## A273455.P17764210332826878037

`∑[A273453(n)]`
-/

namespace A273455.P17764210332826878037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273455.P17764210332826878037

/-! ## A273455.P3496905548336162650

`A273453(n%A047497(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A273455.P3496905548336162650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273453 (Int.tmod (n : ℤ) (A047497 (n + 1))).toNat + a (n - 1)

end

end A273455.P3496905548336162650

/-! ## A273455.P698564332262237182

`a(n-1)+A273453(n)%A321560(n+1)` with `a(0)=1`
-/

namespace A273455.P698564332262237182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273453 n) (A321560 (n + 1))

end

end A273455.P698564332262237182

/-! ## A273455.P16635023632036327706

`A273453(n)+a(n-A107286(A107286(n)))` with `a(0)=1`
-/

namespace A273455.P16635023632036327706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273453 n + a ((n : ℤ) - A107286 (A107286 n).toNat).toNat

end

end A273455.P16635023632036327706

/-! ## A273455.P13051560898047984967

`a(n-1)+1-(A296077(A296078(n+1))-A273453(n))` with `a(0)=1`
-/

namespace A273455.P13051560898047984967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A296077 (A296078 (n + 1)).toNat - A273453 n)

end

end A273455.P13051560898047984967

/-! ## A273455.P15977092887480530409

`∑[∑[A273456(n)]-A273456(n)+1]`
-/

namespace A273455.P15977092887480530409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273456 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273455.P15977092887480530409

/-! ## A273455.P8553358673994621197

`∑[A141310(∑[A273456(n)]-A273456(n))]`
-/

namespace A273455.P8553358673994621197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273456 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f2 j - A273456 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273455.P8553358673994621197

/-!
# A273456: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A273456, there is no canonical definition to state claims against.
-/

/-! ## A273456.P15349695072188637238

`Δ[A273453(n)]`
-/

namespace A273456.P15349695072188637238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273456.P15349695072188637238

/-! ## A273456.P10846987993937575535

`A273453(n+1)-A273453(n)`
-/

namespace A273456.P10846987993937575535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273453 (n + 1) - A273453 n

end

end A273456.P10846987993937575535

/-!
# A273457: Even numbers 2n that do not have a Goldbach partition 2n = p + q (p < q; p, q prime) satisfying sqrt(n) < p <= sqrt(2n).

The programs for A273457, there is no canonical definition to state claims against.
-/

/-! ## A273457.P5429666619970606144

`∑[A296078(A300224(A286160(n+1)²))]`
-/

namespace A273457.P5429666619970606144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296078 (A300224 (A286160 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273457.P5429666619970606144

/-! ## A273457.P10232308726952040605

`eq[2, gcd(A000325(n), A105034(n))]`
-/

namespace A273457.P10232308726952040605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000325 n) (A105034 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273457.P10232308726952040605

/-! ## A273457.P2262259959566693768

`lt[A128114(n+1), A005614(A264428(n+4))]`
-/

namespace A273457.P2262259959566693768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A264428 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273457.P2262259959566693768

/-! ## A273457.P16760529032890109695

`record[2*n*A011558(2^n+n)]+2`
-/

namespace A273457.P16760529032890109695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A011558 (2 ^ n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A273457.P16760529032890109695

/-! ## A273457.P5546786405528553218

`∑[2*A000188(A007476(n))]`
-/

namespace A273457.P5546786405528553218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000188 (A007476 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273457.P5546786405528553218

/-!
# A273458: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with x-y+z+w a nonnegative cube, where x,y,z,w are integers with x >= y >= 0 and x >= |z| <= |w|.

The programs for A273458, there is no canonical definition to state claims against.
-/

/-! ## A273458.P3294506175412198305

`A001221(A144645(2*(n+1))+A001771(n+3))`
-/

namespace A273458.P3294506175412198305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144645 (2 * (n + 1)) + A001771 (n + 3)).toNat

end

end A273458.P3294506175412198305

/-!
# A273459: Even numbers such that the sum of the odd divisors is a prime p and the sum of the even divisors is 2p.

The programs for A273459, there is no canonical definition to state claims against.
-/

/-! ## A273459.P12168798704169924973

`2*A278911(n+1)`
-/

namespace A273459.P12168798704169924973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278911 (n + 1)

end

end A273459.P12168798704169924973

/-! ## A273459.P305276885329109408

`2*A193070(n+1)²`
-/

namespace A273459.P305276885329109408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193070 (n + 1) ^ 2

end

end A273459.P305276885329109408

/-! ## A273459.P5022831512156619214

`lcm(2, A278911(abs(xor(n, -1))))`
-/

namespace A273459.P5022831512156619214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A278911 |Int.xor (n : ℤ) (-1)|.toNat)

end

end A273459.P5022831512156619214

/-! ## A273459.P9900459286741149671

`4*A278911(Δ[n²]-n)/2`
-/

namespace A273459.P9900459286741149671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A278911 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A273459.P9900459286741149671

/-! ## A273459.P802380297276488276

`A278911(n+1)+A193070(n+1)²`
-/

namespace A273459.P802380297276488276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278911 (n + 1) + A193070 (n + 1) ^ 2

end

end A273459.P802380297276488276

/-! ## A273459.P7813837341172147571

`A278911(A000027(n+1))+A278911(n+1)`
-/

namespace A273459.P7813837341172147571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278911 (A000027 (n + 1)).toNat + A278911 (n + 1)

end

end A273459.P7813837341172147571

/-! ## A273459.P5038979488764118877

`A278911(n+1)+or(A000035(n), A278911(n+1))`
-/

namespace A273459.P5038979488764118877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278911 (n + 1) + Int.lor (A000035 n) (A278911 (n + 1))

end

end A273459.P5038979488764118877

/-! ## A273459.P1751139439989715917

`A278911(n+1)+or(A010052(n), A278911(n+1))`
-/

namespace A273459.P1751139439989715917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278911 (n + 1) + Int.lor (A010052 n) (A278911 (n + 1))

end

end A273459.P1751139439989715917

/-! ## A273459.P2642271917646209305

`A278911(n+1)+or(A008966(n+1), A278911(n+1))`
-/

namespace A273459.P2642271917646209305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278911 (n + 1) + Int.lor (A008966 (n + 1)) (A278911 (n + 1))

end

end A273459.P2642271917646209305

/-! ## A273459.P6785958015754282697

`2*∩[A023194(n+1), A195268(n+1)]`
-/

namespace A273459.P6785958015754282697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273459.P6785958015754282697

/-! ## A273459.P9235300376120906246

`2*∩[A071114(n+1), A195268(n+1)]`
-/

namespace A273459.P9235300376120906246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273459.P9235300376120906246

/-! ## A273459.P2072691315712838023

`∩[2*A195268(n+1), A195382(n+1)]`
-/

namespace A273459.P2072691315712838023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273459.P2072691315712838023

/-! ## A273459.P298413640765286973

`∩[A195268(n+1), A195382(n+1)]`
-/

namespace A273459.P298413640765286973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273459.P298413640765286973

/-! ## A273459.P8008019023589903402

`4*A247820(n+1)-2`
-/

namespace A273459.P8008019023589903402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A247820 (n + 1) - 2

end

end A273459.P8008019023589903402

/-! ## A273459.P15596128963358590944

`2*∩[A055638(n+1), A193066(n+1)]²`
-/

namespace A273459.P15596128963358590944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A273459.P15596128963358590944

/-! ## A273459.P4675926915406522067

`2*∩[A023194(n+1), A193065(n+1)]`
-/

namespace A273459.P4675926915406522067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273459.P4675926915406522067

/-! ## A273459.P11415039478393396266

`2*∩[A071114(n+1), A193065(n+1)]`
-/

namespace A273459.P11415039478393396266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273459.P11415039478393396266

/-! ## A273459.P102650330695149785

`2*∩[A193065(n+1), A281882(n+1)]`
-/

namespace A273459.P102650330695149785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273459.P102650330695149785

/-! ## A273459.P6150260320729323372

`2*∩[A070763(n+1), A193065(n+1)]`
-/

namespace A273459.P6150260320729323372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273459.P6150260320729323372

/-! ## A273459.P14318302710748445092

`2*∩[A055638(n+1), A061345(n)]²`
-/

namespace A273459.P14318302710748445092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A273459.P14318302710748445092

/-!
# A273460: Numbers n such that sum of the divisors of n (except 1 and n) is equal to the product of the digits of n.

The programs for A273460, the canonical program `A273460.P16091352189442865612` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273460 has offset 1).

The definition of A273460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273460.P16091352189442865612

`eq[A007954(n+1), A048050(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A273460

/-- `eq[A007954(n+1), A048050(n+1)]+1` -/
def P16091352189442865612.Spec : Prop :=
  ∀ n, (P16091352189442865612.a n : ℤ) = A273460 (n + 1)

theorem P16091352189442865612.correct : P16091352189442865612.Spec := by
  intro n
  simp only [A273460, Nat.add_sub_cancel]

end A273460

/-! ## A273460.P18201841142505184346

`eq[A039653(n+1), A230099(n+1)]+1`
-/

namespace A273460.P18201841142505184346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273460.P18201841142505184346

namespace A273460

/-- `eq[A039653(n+1), A230099(n+1)]+1` -/
def P18201841142505184346.Spec : Prop :=
  ∀ n, (P18201841142505184346.a n : ℤ) = A273460 (n + 1)

end A273460

/-! ## A273460.P1842521098988927336

`eq[A039653(n), A230099(A028310(n))]`
-/

namespace A273460.P1842521098988927336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273460.P1842521098988927336

namespace A273460

/-- `eq[A039653(n), A230099(A028310(n))]` -/
def P1842521098988927336.Spec : Prop :=
  ∀ n, (P1842521098988927336.a n : ℤ) = A273460 (n + 1)

end A273460

/-! ## A273460.P5895305389238631717

`eq[A028310(n)+A007954(n), A039653(n)]`
-/

namespace A273460.P5895305389238631717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273460.P5895305389238631717

namespace A273460

/-- `eq[A028310(n)+A007954(n), A039653(n)]` -/
def P5895305389238631717.Spec : Prop :=
  ∀ n, (P5895305389238631717.a n : ℤ) = A273460 (n + 1)

end A273460

/-! ## A273460.P16661399669105937275

`eq[A039653(n), A230099(A233583(n+1))]`
-/

namespace A273460.P16661399669105937275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273460.P16661399669105937275

namespace A273460

/-- `eq[A039653(n), A230099(A233583(n+1))]` -/
def P16661399669105937275.Spec : Prop :=
  ∀ n, (P16661399669105937275.a n : ℤ) = A273460 (n + 1)

end A273460

/-!
# A273461: Number of physically stable n X n placements of water source-blocks in Minecraft.

The programs for A273461, there is no canonical definition to state claims against.
-/

/-! ## A273461.P3803071138701045495

`A160736(a(n-1))` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A273461.P3803071138701045495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9] fun n a =>
  A160736 (a (n - 1)).toNat

end

end A273461.P3803071138701045495

/-!
# A273465: Numbers generated by starting at 1 and adding twice and subtracting once following the sequence of positive integers.

The programs for A273465, the canonical program `A273465.P2702404565824210073` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273465 has offset 1).

The definition of A273465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273465.P2702404565824210073

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=2, a(4)=7, a(5)=13, a(6)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273465

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P2702404565824210073.Spec : Prop :=
  ∀ n, P2702404565824210073.a n = A273465 (n + 1)

theorem P2702404565824210073.correct : P2702404565824210073.Spec := by
  intro n
  simp only [A273465, Nat.add_sub_cancel]

end A273465

/-! ## A273465.P7796564852600383819

`∑[(n+1)*(2-gcd(3, n))]+2`
-/

namespace A273465.P7796564852600383819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - (Nat.gcd 3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A273465.P7796564852600383819

namespace A273465

/-- `∑[(n+1)*(2-gcd(3, n))]+2` -/
def P7796564852600383819.Spec : Prop :=
  ∀ n, P7796564852600383819.a n = A273465 (n + 1)

end A273465

/-! ## A273465.P10574238153096848657

`A267313(n+1)+2`
-/

namespace A273465.P10574238153096848657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267313 (n + 1) + 2

end

end A273465.P10574238153096848657

namespace A273465

/-- `A267313(n+1)+2` -/
def P10574238153096848657.Spec : Prop :=
  ∀ n, P10574238153096848657.a n = A273465 (n + 1)

end A273465

/-! ## A273465.P7352808371568703416

`∑[(n+1)*Δ[A008611(n)]]+2`
-/

namespace A273465.P7352808371568703416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A273465.P7352808371568703416

namespace A273465

/-- `∑[(n+1)*Δ[A008611(n)]]+2` -/
def P7352808371568703416.Spec : Prop :=
  ∀ n, P7352808371568703416.a n = A273465 (n + 1)

end A273465

/-! ## A273465.P18221994634050018112

`∑[(n+1)*A010815(∑{p}[n, A010054(#)])]`
-/

namespace A273465.P18221994634050018112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010815 (∑ p ∈ Nat.primeFactors (f2 n), A010054 p).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273465.P18221994634050018112

namespace A273465

/-- `∑[(n+1)*A010815(∑{p}[n, A010054(#)])]` -/
def P18221994634050018112.Spec : Prop :=
  ∀ n, P18221994634050018112.a n = A273465 (n + 1)

end A273465

/-! ## A273465.P10447754694416833402

`∑[(n+1)*A106507(∑{p}[n, A010054(#)])]`
-/

namespace A273465.P10447754694416833402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106507 (∑ p ∈ Nat.primeFactors (f2 n), A010054 p).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273465.P10447754694416833402

namespace A273465

/-- `∑[(n+1)*A106507(∑{p}[n, A010054(#)])]` -/
def P10447754694416833402.Spec : Prop :=
  ∀ n, P10447754694416833402.a n = A273465 (n + 1)

end A273465

/-! ## A273465.P3674441886361361246

`∑[(n+1)*(-1)^A026142(n+2)]`
-/

namespace A273465.P3674441886361361246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (A026142 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273465.P3674441886361361246

namespace A273465

/-- `∑[(n+1)*(-1)^A026142(n+2)]` -/
def P3674441886361361246.Spec : Prop :=
  ∀ n, P3674441886361361246.a n = (A273465 (n + 1) : ℚ)

end A273465

/-!
# A273467: The successive numbers of digits between two "3"s in the sequence are given by the sequence itself.

The programs for A273467, there is no canonical definition to state claims against.
-/

/-! ## A273467.P2377083057172245632

`A278861(record[A260999(n+1)])`
-/

namespace A273467.P2377083057172245632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278861 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273467.P2377083057172245632

/-! ## A273467.P10795336250127515984

`A278861(∑[A327780(n)!])`
-/

namespace A273467.P10795336250127515984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A327780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278861 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273467.P10795336250127515984

/-! ## A273467.P4026148874586117060

`A303158(A285356(A161953(n+1)))`
-/

namespace A273467.P4026148874586117060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303158 (A285356 (A161953 (n + 1)).toNat).toNat

end

end A273467.P4026148874586117060

/-! ## A273467.P2368400885249607272

`A278861(A077168(n))`
-/

namespace A273467.P2368400885249607272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278861 (A077168 n).toNat

end

end A273467.P2368400885249607272

/-! ## A273467.P15785810538688722794

`A278861(A001511(2^n))`
-/

namespace A273467.P15785810538688722794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278861 (A001511 (2 ^ n)).toNat

end

end A273467.P15785810538688722794

/-!
# A273468: Number of minimally rigid graphs with n vertices constructible by Henneberg type I moves.

The programs for A273468, there is no canonical definition to state claims against.
-/

/-! ## A273468.P5906961785096599965

`A173276(floor(A113235(n)/A072154(n)))`
-/

namespace A273468.P5906961785096599965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 ⌊(A113235 n : ℚ) / (A072154 n : ℚ)⌋.toNat

end

end A273468.P5906961785096599965

/-! ## A273468.P6937373095968338649

`A147355(n+1)+A088806(A025192(n))`
-/

namespace A273468.P6937373095968338649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147355 (n + 1) + A088806 (A025192 n).toNat

end

end A273468.P6937373095968338649

/-! ## A273468.P3489721055153572318

`or(A007318(n), A008621(A267391(n+1)))`
-/

namespace A273468.P3489721055153572318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 n) (A008621 (A267391 (n + 1)).toNat)

end

end A273468.P3489721055153572318

/-! ## A273468.P2524185883726246815

`A088806(A025192(n))+A025192(A088806(n+1))`
-/

namespace A273468.P2524185883726246815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (A025192 n).toNat + A025192 (A088806 (n + 1)).toNat

end

end A273468.P2524185883726246815

/-!
# A273469: The successive numbers of digits between two "4"s in the sequence are given by the sequence itself.

The programs for A273469, there is no canonical definition to state claims against.
-/

/-! ## A273469.P15992460505771835013

`A278939(lt[A278987(3*n+4), A278976(n+1)])`
-/

namespace A273469.P15992460505771835013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278987 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278939 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A273469.P15992460505771835013

/-! ## A273469.P5880560897934626439

`A278939(lt[A278987(3*n+4), A278979(n+1)])`
-/

namespace A273469.P5880560897934626439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278987 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278939 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A273469.P5880560897934626439

/-! ## A273469.P1273509761681321301

`A278939(∑[A088155(n)!])`
-/

namespace A273469.P1273509761681321301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A088155 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273469.P1273509761681321301

/-! ## A273469.P56352527243607924

`A302943(∑[A088155(n)!])`
-/

namespace A273469.P56352527243607924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A088155 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302943 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273469.P56352527243607924

/-! ## A273469.P4836409177584993728

`A278939(A088155(n)!+n)`
-/

namespace A273469.P4836409177584993728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278939 (Nat.factorial (A088155 n).toNat + n)

end

end A273469.P4836409177584993728

/-!
# A273470: The successive numbers of digits between two "5"s in the sequence are given by the sequence itself.

The programs for A273470, there is no canonical definition to state claims against.
-/

/-! ## A273470.P12865971442472829902

`A278940(n+1)+A185294(A309081(n+1))`
-/

namespace A273470.P12865971442472829902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278940 (n + 1) + A185294 (A309081 (n + 1)).toNat

end

end A273470.P12865971442472829902

/-! ## A273470.P5360123557593164563

`A278940(n+1)-A014102(A278960(n+1))`
-/

namespace A273470.P5360123557593164563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278940 (n + 1) - A014102 (A278960 (n + 1)).toNat

end

end A273470.P5360123557593164563

/-!
# A273473: The successive numbers of digits between two "6"s in the sequence are given by the sequence itself.

The programs for A273473, there is no canonical definition to state claims against.
-/

/-! ## A273473.P6165403977195875470

`A278941(and(1, A152388(n+1))+n)`
-/

namespace A273473.P6165403977195875470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278941 (Int.land 1 (A152388 (n + 1)) + (n : ℤ)).toNat

end

end A273473.P6165403977195875470

/-! ## A273473.P5192501950026303628

`and(A278941(n+1), A383046(n+3))`
-/

namespace A273473.P5192501950026303628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278941 (n + 1)) (A383046 (n + 3))

end

end A273473.P5192501950026303628

/-! ## A273473.P17022533607393253651

`A278941(n+1)+A014856(A278976(n+1))`
-/

namespace A273473.P17022533607393253651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278941 (n + 1) + A014856 (A278976 (n + 1)).toNat

end

end A273473.P17022533607393253651

/-! ## A273473.P17335573868621796099

`A001222(A096177(n+1))*A278941(n+1)`
-/

namespace A273473.P17335573868621796099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A096177 (n + 1)).toNat * A278941 (n + 1)

end

end A273473.P17335573868621796099

/-! ## A273473.P5515915580628746770

`A001222(A098566(n+1))*A278941(n+1)`
-/

namespace A273473.P5515915580628746770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098566 (n + 1)).toNat * A278941 (n + 1)

end

end A273473.P5515915580628746770

/-!
# A273475: The successive numbers of digits between two "7"s in the sequence are given by the sequence itself.

The programs for A273475, there is no canonical definition to state claims against.
-/

/-! ## A273475.P9379103592557568478

`A278942(n+1)%A004769(A001202(n+1))`
-/

namespace A273475.P9379103592557568478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278942 (n + 1)) (A004769 (A001202 (n + 1)).toNat)

end

end A273475.P9379103592557568478

/-! ## A273475.P9519946010222487090

`A001065(p?[49*n+31])*A278942(n+1)`
-/

namespace A273475.P9519946010222487090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) * A278942 (n + 1)

end

end A273475.P9519946010222487090

/-! ## A273475.P552021721250491369

`A278942(n+1)+A185255(A007318(n))`
-/

namespace A273475.P552021721250491369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278942 (n + 1) + A185255 (A007318 n).toNat

end

end A273475.P552021721250491369

/-! ## A273475.P9959101491925096825

`A278942(n+1)+A185255(A185255(n))`
-/

namespace A273475.P9959101491925096825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278942 (n + 1) + A185255 (A185255 n).toNat

end

end A273475.P9959101491925096825

/-! ## A273475.P13810029621174160504

`A278942(n+1)%A277071(A173725(n))`
-/

namespace A273475.P13810029621174160504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278942 (n + 1)) (A277071 (A173725 (n + 15)).toNat)

end

end A273475.P13810029621174160504

/-!
# A273480: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 737", based on the 5-celled von Neumann neighborhood.

The programs for A273480, the canonical program `A273480.P7468032153206893354` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273480 has offset 0).

The definition of A273480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273480.P7468032153206893354

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=30, a(3)=79, a(4)=160`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273480

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7468032153206893354.Spec : Prop :=
  ∀ n, P7468032153206893354.a n = A273480 n

theorem P7468032153206893354.correct : P7468032153206893354.Spec := by
  intro n
  simp only [A273480]

end A273480

/-! ## A273480.P6041065984037380276

`∑[(char[1]-Δ[n²])²]`
-/

namespace A273480.P6041065984037380276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273480.P6041065984037380276

namespace A273480

/-- `∑[(char[1]-Δ[n²])²]` -/
def P6041065984037380276.Spec : Prop :=
  ∀ n, P6041065984037380276.a n = A273480 n

end A273480

/-! ## A273480.P4564418469509776668

`a(n-1)+Δ[n²]²` with `a(0)=1, a(1)=5`
-/

namespace A273480.P4564418469509776668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A273480.P4564418469509776668

namespace A273480

/-- `a(n-1)+Δ[n²]²` -/
def P4564418469509776668.Spec : Prop :=
  ∀ n, P4564418469509776668.a n = A273480 n

end A273480

/-! ## A273480.P14402314959514816689

`∑[xor(1, round(2/acot(n)))²]+1`
-/

namespace A273480.P14402314959514816689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273480.P14402314959514816689

namespace A273480

/-- `∑[xor(1, round(2/acot(n)))²]+1` -/
def P14402314959514816689.Spec : Prop :=
  ∀ n, P14402314959514816689.a n = A273480 n

end A273480

/-! ## A273480.P10241045114423454020

`(2*n+1)²+a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A273480.P10241045114423454020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (2 * n + 1) ^ 2 + a (n - 1)

end

end A273480.P10241045114423454020

namespace A273480

/-- `(2*n+1)²+a(n-1)` -/
def P10241045114423454020.Spec : Prop :=
  ∀ n, (P10241045114423454020.a n : ℤ) = A273480 n

end A273480

/-! ## A273480.P8246698475953325321

`floor(a(n-1)+(n+1+n)²)` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A273480.P8246698475953325321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (n + 1 + n) ^ 2

end

end A273480.P8246698475953325321

namespace A273480

/-- `floor(a(n-1)+(n+1+n)²)` -/
def P8246698475953325321.Spec : Prop :=
  ∀ n, (P8246698475953325321.a n : ℤ) = A273480 n

end A273480

/-! ## A273480.P14362571088548977982

`∑[(C(n, n²)-(2*n+1))²]+1`
-/

namespace A273480.P14362571088548977982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n (n ^ 2) : ℤ) - (2 * n + 1 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273480.P14362571088548977982

namespace A273480

/-- `∑[(C(n, n²)-(2*n+1))²]+1` -/
def P14362571088548977982.Spec : Prop :=
  ∀ n, P14362571088548977982.a n = A273480 n

end A273480

/-! ## A273480.P13347932973743980300

`∑[A130773(n)²]+1`
-/

namespace A273480.P13347932973743980300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273480.P13347932973743980300

namespace A273480

/-- `∑[A130773(n)²]+1` -/
def P13347932973743980300.Spec : Prop :=
  ∀ n, P13347932973743980300.a n = A273480 n

end A273480

/-! ## A273480.P773435131914796286

`∑[A326178(2*n)²]+1`
-/

namespace A273480.P773435131914796286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273480.P773435131914796286

namespace A273480

/-- `∑[A326178(2*n)²]+1` -/
def P773435131914796286.Spec : Prop :=
  ∀ n, P773435131914796286.a n = A273480 n

end A273480

/-! ## A273480.P12110585725407416325

`A005563(2*n)+a(n-1)+1` with `a(0)=1, a(1)=5`
-/

namespace A273480.P12110585725407416325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A005563 (2 * n) + (a (n - 1) + 1)

end

end A273480.P12110585725407416325

namespace A273480

/-- `A005563(2*n)+a(n-1)+1` -/
def P12110585725407416325.Spec : Prop :=
  ∀ n, P12110585725407416325.a n = A273480 n

end A273480

/-! ## A273480.P8634565276500425864

`∑[A132411(Δ[A132411(n)])]+n`
-/

namespace A273480.P8634565276500425864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A273480.P8634565276500425864

namespace A273480

/-- `∑[A132411(Δ[A132411(n)])]+n` -/
def P8634565276500425864.Spec : Prop :=
  ∀ n, P8634565276500425864.a n = A273480 n

end A273480

/-! ## A273480.P336254077339017348

`abs(5-A000292(A004277(n)+1))`
-/

namespace A273480.P336254077339017348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A000292 (A004277 n + 1).toNat|

end

end A273480.P336254077339017348

namespace A273480

/-- `abs(5-A000292(A004277(n)+1))` -/
def P336254077339017348.Spec : Prop :=
  ∀ n, P336254077339017348.a n = A273480 n

end A273480

/-! ## A273480.P13253750875854195911

`A273790(n)+A057428(n)`
-/

namespace A273480.P13253750875854195911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273790 n + A057428 n

end

end A273480.P13253750875854195911

namespace A273480

/-- `A273790(n)+A057428(n)` -/
def P13253750875854195911.Spec : Prop :=
  ∀ n, P13253750875854195911.a n = A273480 n

end A273480

/-! ## A273480.P10205528780986342309

`A273790(n)-A057427(n)`
-/

namespace A273480.P10205528780986342309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273790 n - A057427 n

end

end A273480.P10205528780986342309

namespace A273480

/-- `A273790(n)-A057427(n)` -/
def P10205528780986342309.Spec : Prop :=
  ∀ n, P10205528780986342309.a n = A273480 n

end A273480

/-! ## A273480.P4885858300565804988

`A137742(2*n+1)-A267530(4*n)²`
-/

namespace A273480.P4885858300565804988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137742 (2 * n + 1) - A267530 (4 * n) ^ 2

end

end A273480.P4885858300565804988

namespace A273480

/-- `A137742(2*n+1)-A267530(4*n)²` -/
def P4885858300565804988.Spec : Prop :=
  ∀ n, P4885858300565804988.a n = A273480 n

end A273480

/-!
# A273481: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 737", based on the 5-celled von Neumann neighborhood.

The programs for A273481, the canonical program `A273481.P5475855975190356430` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273481 has offset 0).

The definition of A273481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273481.P5475855975190356430

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=21, a(2)=24, a(3)=32`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273481

/-- `2*a(n-1)-a(n-2)` -/
def P5475855975190356430.Spec : Prop :=
  ∀ n, P5475855975190356430.a n = A273481 n

theorem P5475855975190356430.correct : P5475855975190356430.Spec := by
  intro n
  simp only [A273481]

end A273481

/-!
# A273482: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 742", based on the 5-celled von Neumann neighborhood.

The programs for A273482, there is no canonical definition to state claims against.
-/

/-! ## A273482.P10462907832801595143

`∑[A273485(abs(1-n))]+1`
-/

namespace A273482.P10462907832801595143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273485 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273482.P10462907832801595143

/-! ## A273482.P12309680933321087367

`A273485(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273482.P12309680933321087367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273485 (n - 1) + a (n - 1)

end

end A273482.P12309680933321087367

/-! ## A273482.P8069003116136699694

`a(n-1)-(A000035(2*n)-A273485(n-1))` with `a(0)=1`
-/

namespace A273482.P8069003116136699694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000035 (2 * n) - A273485 (n - 1))

end

end A273482.P8069003116136699694

/-! ## A273482.P10893382717564057832

`Δ[A273484(n)]-A273485(n)`
-/

namespace A273482.P10893382717564057832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273485 n

end

end A273482.P10893382717564057832

/-! ## A273482.P8445010960418656964

`A273484(n+1)-(A273485(n)+A273484(n))`
-/

namespace A273482.P8445010960418656964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273484 (n + 1) - (A273485 n + A273484 n)

end

end A273482.P8445010960418656964

/-! ## A273482.P17791892126304668274

`A109613(∑[A273485(abs(1-n))])`
-/

namespace A273482.P17791892126304668274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273485 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273482.P17791892126304668274

/-! ## A273482.P13312285191895795572

`A109613(∑[A273485(n)]-A273485(n))`
-/

namespace A273482.P13312285191895795572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A273485 n).toNat

end

end A273482.P13312285191895795572

/-!
# A273483: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 742", based on the 5-celled von Neumann neighborhood.

The programs for A273483, there is no canonical definition to state claims against.
-/

/-! ## A273483.P5096850351117690790

`A273482(2^n-1)`
-/

namespace A273483.P5096850351117690790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (2 ^ n - 1)

end

end A273483.P5096850351117690790

/-! ## A273483.P171751377016809328

`record[A273482(A038573(n))]`
-/

namespace A273483.P171751377016809328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273483.P171751377016809328

/-! ## A273483.P10005031348562699325

`record[A273482(A173787(n))]`
-/

namespace A273483.P10005031348562699325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273483.P10005031348562699325

/-! ## A273483.P434740158880795087

`record[A273482(A303763(n))]`
-/

namespace A273483.P434740158880795087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273483.P434740158880795087

/-! ## A273483.P246925460939329396

`or(1, A273482(A000225(n)))`
-/

namespace A273483.P246925460939329396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273482 (A000225 n).toNat)

end

end A273483.P246925460939329396

/-!
# A273484: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 742", based on the 5-celled von Neumann neighborhood.

The programs for A273484, there is no canonical definition to state claims against.
-/

/-! ## A273484.P5469812678536246134

`∑[A273482(n)]`
-/

namespace A273484.P5469812678536246134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273484.P5469812678536246134

/-! ## A273484.P5769612611093233389

`∑[A273485(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273484.P5769612611093233389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273485 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273484.P5769612611093233389

/-! ## A273484.P16057285494867692581

`A273482(A005843(n)-n)+a(n-1)` with `a(0)=1`
-/

namespace A273484.P16057285494867692581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273482 (A005843 n - (n : ℤ)).toNat + a (n - 1)

end

end A273484.P16057285494867692581

/-! ## A273484.P9591247212393626958

`a(n-1)+char[A225901(n)]*A273482(n)` with `a(0)=1`
-/

namespace A273484.P9591247212393626958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A273482 n

end

end A273484.P9591247212393626958

/-! ## A273484.P15883959692772649861

`a(n-1)+A273482(n)+A000007(n+1)` with `a(0)=1`
-/

namespace A273484.P15883959692772649861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273482 n + A000007 (n + 1))

end

end A273484.P15883959692772649861

/-! ## A273484.P9219005611206488855

`a(n-1)+A273482(n)%A228381(n+1)` with `a(0)=1`
-/

namespace A273484.P9219005611206488855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273482 n) (A228381 (n + 1))

end

end A273484.P9219005611206488855

/-!
# A273485: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 742", based on the 5-celled von Neumann neighborhood.

The programs for A273485, there is no canonical definition to state claims against.
-/

/-! ## A273485.P3973725979999094059

`Δ[A273482(n)]`
-/

namespace A273485.P3973725979999094059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273485.P3973725979999094059

/-! ## A273485.P14767458498365333541

`A273482(n+1)-A273482(n)`
-/

namespace A273485.P14767458498365333541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (n + 1) - A273482 n

end

end A273485.P14767458498365333541

/-! ## A273485.P15894292386317510481

`Δ[A079317(n)+A036640(A036600(n))]`
-/

namespace A273485.P15894292386317510481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n + A036640 (A036600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273485.P15894292386317510481

/-! ## A273485.P12787432377109162589

`A151921(A062399(n)+2)`
-/

namespace A273485.P12787432377109162589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 (A062399 n + 2).toNat

end

end A273485.P12787432377109162589

/-! ## A273485.P10478757365644807826

`A151921(∑[A151937(n)+1])`
-/

namespace A273485.P10478757365644807826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151937 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273485.P10478757365644807826

/-!
# A273486: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 758", based on the 5-celled von Neumann neighborhood.

The programs for A273486, there is no canonical definition to state claims against.
-/

/-! ## A273486.P17320141014088139754

`∑[A273491(abs(1-n))]-3`
-/

namespace A273486.P17320141014088139754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A273486.P17320141014088139754

/-! ## A273486.P16506969389089264643

`A273491(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273486.P16506969389089264643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273491 (n - 1) + a (n - 1)

end

end A273486.P16506969389089264643

/-! ## A273486.P576583221392889243

`∑[A273491(n)]-A273491(n)-A033999(2*n+3)`
-/

namespace A273486.P576583221392889243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273491 n - A033999 (2 * n + 3)

end

end A273486.P576583221392889243

/-! ## A273486.P4838942732089555562

`A005408(n)-(2*n-(∑[A273491(n)]-A273491(n)))`
-/

namespace A273486.P4838942732089555562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - A273491 n))

end

end A273486.P4838942732089555562

/-! ## A273486.P12124923102769591353

`Δ[A273490(n)]-A273491(n)`
-/

namespace A273486.P12124923102769591353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273491 n

end

end A273486.P12124923102769591353

/-! ## A273486.P11231769178932428596

`A273490(n+1)-(A273491(n)+A273490(n))`
-/

namespace A273486.P11231769178932428596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273490 (n + 1) - (A273491 n + A273490 n)

end

end A273486.P11231769178932428596

/-! ## A273486.P5776695749098172569

`A005408((∑[A273491(n)]-A273491(n))/2)`
-/

namespace A273486.P5776695749098172569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273491 n : ℤ) : ℚ) / 2)).toNat

end

end A273486.P5776695749098172569

/-! ## A273486.P612541768055290148

`A141310(∑[A273491(n)]-A273491(n))`
-/

namespace A273486.P612541768055290148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273491 n).toNat

end

end A273486.P612541768055290148

/-! ## A273486.P12044729823104338347

`1-A009531(∑[A273491(n)]-A273491(n))`
-/

namespace A273486.P12044729823104338347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A009531 (∑ j ∈ Finset.range (n + 1), f1 j - A273491 n).toNat

end

end A273486.P12044729823104338347

/-! ## A273486.P5387068990477301254

`A004442(∑[A273491(n)]-A273491(n))`
-/

namespace A273486.P5387068990477301254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273491 n).toNat

end

end A273486.P5387068990477301254

/-!
# A273489: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 758", based on the 5-celled von Neumann neighborhood.

The programs for A273489, there is no canonical definition to state claims against.
-/

/-! ## A273489.P12897278529277129697

`A273486(2^n-1)`
-/

namespace A273489.P12897278529277129697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273486 (2 ^ n - 1)

end

end A273489.P12897278529277129697

/-! ## A273489.P1133686756339618148

`record[A273486(A173787(n))]`
-/

namespace A273489.P1133686756339618148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273486 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273489.P1133686756339618148

/-! ## A273489.P10085406953438563658

`record[A273486(A341911(n))]`
-/

namespace A273489.P10085406953438563658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273486 (A341911 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273489.P10085406953438563658

/-! ## A273489.P17828060027479056565

`or(1, A273486(A000225(n)))`
-/

namespace A273489.P17828060027479056565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273486 (A000225 n).toNat)

end

end A273489.P17828060027479056565

/-! ## A273489.P14259272642824693269

`record[A273486(Δ[A228693(n)])]`
-/

namespace A273489.P14259272642824693269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273486 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273489.P14259272642824693269

/-!
# A273490: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 758", based on the 5-celled von Neumann neighborhood.

The programs for A273490, there is no canonical definition to state claims against.
-/

/-! ## A273490.P15307179216840947750

`∑[A273486(n)]`
-/

namespace A273490.P15307179216840947750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273490.P15307179216840947750

/-! ## A273490.P15017041629005977017

`∑[∑[A273491(abs(1-n))]-3]`
-/

namespace A273490.P15017041629005977017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273490.P15017041629005977017

/-! ## A273490.P15213190304372409083

`A273486(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A273490.P15213190304372409083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273486 (A000027 n).toNat + a (n - 1)

end

end A273490.P15213190304372409083

/-! ## A273490.P11231264247646719373

`∑[∑[A273491(n)]-A273491(n)+1]`
-/

namespace A273490.P11231264247646719373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273491 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273490.P11231264247646719373

/-! ## A273490.P18405848007660335868

`∑[A005408(n)-(2*n-(∑[A273491(n)]-A273491(n)))]`
-/

namespace A273490.P18405848007660335868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j - A273491 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273490.P18405848007660335868

/-! ## A273490.P5261534793482363338

`∑[A005408((∑[A273491(n)]-A273491(n))/2)]`
-/

namespace A273490.P5261534793482363338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j - A273491 n : ℤ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273490.P5261534793482363338

/-! ## A273490.P10099729014931314068

`∑[A141310(∑[A273491(n)]-A273491(n))]`
-/

namespace A273490.P10099729014931314068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f2 j - A273491 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273490.P10099729014931314068

/-! ## A273490.P368252202395986287

`∑[1-A009531(∑[A273491(n)]-A273491(n))]`
-/

namespace A273490.P368252202395986287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A009531 (∑ j ∈ Finset.range (n + 1), f2 j - A273491 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273490.P368252202395986287

/-! ## A273490.P15557858856030396624

`∑[A004442(∑[A273491(n)]-A273491(n))]`
-/

namespace A273490.P15557858856030396624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f2 j - A273491 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273490.P15557858856030396624

/-!
# A273491: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 758", based on the 5-celled von Neumann neighborhood.

The programs for A273491, there is no canonical definition to state claims against.
-/

/-! ## A273491.P12891219014932184161

`Δ[A273486(n)]`
-/

namespace A273491.P12891219014932184161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273491.P12891219014932184161

/-! ## A273491.P11287132023012907417

`A273486(n+1)-A273486(n)`
-/

namespace A273491.P11287132023012907417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273486 (n + 1) - A273486 n

end

end A273491.P11287132023012907417

/-! ## A273491.P17803378911075624828

`A273486(n+1)+A001489(A273486(n)+1)+1`
-/

namespace A273491.P17803378911075624828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273486 (n + 1) + (A001489 (A273486 n + 1).toNat + 1)

end

end A273491.P17803378911075624828

/-!
# A273492: Numbers n such that the average of different permutations of digits of n is not an integer.

The programs for A273492, there is no canonical definition to state claims against.
-/

/-! ## A273492.P4961037843379789696

`∩[A001637(n+1), A180157(n+1)]`
-/

namespace A273492.P4961037843379789696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273492.P4961037843379789696

/-! ## A273492.P14798064323144932742

`xor(A358235(A358274(n+5)), A358270(n+1))`
-/

namespace A273492.P14798064323144932742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A358235 (A358274 (n + 5)).toNat) (A358270 (n + 1))

end

end A273492.P14798064323144932742

/-!
# A273493: a(n) = A245327(n) + A245328(n).

The programs for A273493, the canonical program `A273493.P5527288234539708389` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273493 has offset 1).

The definition of A273493 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245327, A245328, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273493.P5527288234539708389

`A245327(n+1)+A245328(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A273493

/-- `A245327(n+1)+A245328(n+1)` -/
def P5527288234539708389.Spec : Prop :=
  ∀ n, P5527288234539708389.a n = A273493 (n + 1)

theorem P5527288234539708389.correct : P5527288234539708389.Spec := by
  intro n
  simp only [A273493, Nat.add_sub_cancel]

end A273493

/-! ## A273493.P17655088743092388789

`A245328(2*(n+1))`
-/

namespace A273493.P17655088743092388789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (2 * (n + 1))

end

end A273493.P17655088743092388789

namespace A273493

/-- `A245328(2*(n+1))` -/
def P17655088743092388789.Spec : Prop :=
  ∀ n, P17655088743092388789.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P11925147175434505174

`A245327(2*n+3)`
-/

namespace A273493.P11925147175434505174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (2 * n + 3)

end

end A273493.P11925147175434505174

namespace A273493

/-- `A245327(2*n+3)` -/
def P11925147175434505174.Spec : Prop :=
  ∀ n, P11925147175434505174.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P17054165677232512850

`A071585(A059894(n+1))`
-/

namespace A273493.P17054165677232512850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A059894 (n + 1)).toNat

end

end A273493.P17054165677232512850

namespace A273493

/-- `A071585(A059894(n+1))` -/
def P17054165677232512850.Spec : Prop :=
  ∀ n, P17054165677232512850.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P4869119371089160020

`A086592(A054429(n+1))`
-/

namespace A273493.P4869119371089160020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (A054429 (n + 1)).toNat

end

end A273493.P4869119371089160020

namespace A273493

/-- `A086592(A054429(n+1))` -/
def P4869119371089160020.Spec : Prop :=
  ∀ n, P4869119371089160020.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P11688118167086574558

`A086592(A092569(n+1))`
-/

namespace A273493.P11688118167086574558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (A092569 (n + 1)).toNat

end

end A273493.P11688118167086574558

namespace A273493

/-- `A086592(A092569(n+1))` -/
def P11688118167086574558.Spec : Prop :=
  ∀ n, P11688118167086574558.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P6520940046575128056

`A273494(A059893(n+1))`
-/

namespace A273493.P6520940046575128056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (A059893 (n + 1)).toNat

end

end A273493.P6520940046575128056

namespace A273493

/-- `A273494(A059893(n+1))` -/
def P6520940046575128056.Spec : Prop :=
  ∀ n, P6520940046575128056.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P15558435749597228827

`A273494(A080542(n+1))`
-/

namespace A273493.P15558435749597228827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (A080542 (n + 1)).toNat

end

end A273493.P15558435749597228827

namespace A273493

/-- `A273494(A080542(n+1))` -/
def P15558435749597228827.Spec : Prop :=
  ∀ n, P15558435749597228827.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P10268030108471984033

`A268087(A231551(n+1))`
-/

namespace A273493.P10268030108471984033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268087 (A231551 (n + 1)).toNat

end

end A273493.P10268030108471984033

namespace A273493

/-- `A268087(A231551(n+1))` -/
def P10268030108471984033.Spec : Prop :=
  ∀ n, P10268030108471984033.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P12854375095293903666

`A007306(A284459(n+1)+1)`
-/

namespace A273493.P12854375095293903666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A284459 (n + 1) + 1).toNat

end

end A273493.P12854375095293903666

namespace A273493

/-- `A007306(A284459(n+1)+1)` -/
def P12854375095293903666.Spec : Prop :=
  ∀ n, P12854375095293903666.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P2743462919220640853

`A294442(A054429(2*(n+1)))`
-/

namespace A273493.P2743462919220640853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (A054429 (2 * (n + 1))).toNat

end

end A273493.P2743462919220640853

namespace A273493

/-- `A294442(A054429(2*(n+1)))` -/
def P2743462919220640853.Spec : Prop :=
  ∀ n, P2743462919220640853.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P8089947736033008323

`A245327(n+1)+A020651(A054429(n+1))`
-/

namespace A273493.P8089947736033008323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (n + 1) + A020651 (A054429 (n + 1)).toNat

end

end A273493.P8089947736033008323

namespace A273493

/-- `A245327(n+1)+A020651(A054429(n+1))` -/
def P8089947736033008323.Spec : Prop :=
  ∀ n, P8089947736033008323.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P8582682112990407491

`A245327(n+1)+A245327(A014681(n)+1)`
-/

namespace A273493.P8582682112990407491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (n + 1) + A245327 (A014681 n + 1).toNat

end

end A273493.P8582682112990407491

namespace A273493

/-- `A245327(n+1)+A245327(A014681(n)+1)` -/
def P8582682112990407491.Spec : Prop :=
  ∀ n, P8582682112990407491.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P13533582263030503841

`A245328(n+1)+A245328(A014681(n)+1)`
-/

namespace A273493.P13533582263030503841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (n + 1) + A245328 (A014681 n + 1).toNat

end

end A273493.P13533582263030503841

namespace A273493

/-- `A245328(n+1)+A245328(A014681(n)+1)` -/
def P13533582263030503841.Spec : Prop :=
  ∀ n, P13533582263030503841.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P1398778189280874725

`A245328(n+1)+A002487(A284459(n+1))`
-/

namespace A273493.P1398778189280874725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (n + 1) + A002487 (A284459 (n + 1)).toNat

end

end A273493.P1398778189280874725

namespace A273493

/-- `A245328(n+1)+A002487(A284459(n+1))` -/
def P1398778189280874725.Spec : Prop :=
  ∀ n, P1398778189280874725.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P3793782816748442632

`A245328(A065172(n+1))+A245328(n+1)`
-/

namespace A273493.P3793782816748442632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A065172 (n + 1)).toNat + A245328 (n + 1)

end

end A273493.P3793782816748442632

namespace A273493

/-- `A245328(A065172(n+1))+A245328(n+1)` -/
def P3793782816748442632.Spec : Prop :=
  ∀ n, P3793782816748442632.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P10777414392108740705

`A245327(A065190(n+1))+A245327(n+1)`
-/

namespace A273493.P10777414392108740705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A065190 (n + 1)).toNat + A245327 (n + 1)

end

end A273493.P10777414392108740705

namespace A273493

/-- `A245327(A065190(n+1))+A245327(n+1)` -/
def P10777414392108740705.Spec : Prop :=
  ∀ n, P10777414392108740705.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P13560500855472522827

`A245328(A065190(n+1))+A245328(n+1)`
-/

namespace A273493.P13560500855472522827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A065190 (n + 1)).toNat + A245328 (n + 1)

end

end A273493.P13560500855472522827

namespace A273493

/-- `A245328(A065190(n+1))+A245328(n+1)` -/
def P13560500855472522827.Spec : Prop :=
  ∀ n, P13560500855472522827.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P8512681281446917115

`A245328(A065262(n+1))+A245328(n+1)`
-/

namespace A273493.P8512681281446917115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A065262 (n + 1)).toNat + A245328 (n + 1)

end

end A273493.P8512681281446917115

namespace A273493

/-- `A245328(A065262(n+1))+A245328(n+1)` -/
def P8512681281446917115.Spec : Prop :=
  ∀ n, P8512681281446917115.a n = A273493 (n + 1)

end A273493

/-! ## A273493.P16283549544801826145

`A245328(n+1)+A245328(A086970(n)+2)`
-/

namespace A273493.P16283549544801826145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (n + 1) + A245328 (A086970 n + 2).toNat

end

end A273493.P16283549544801826145

namespace A273493

/-- `A245328(n+1)+A245328(A086970(n)+2)` -/
def P16283549544801826145.Spec : Prop :=
  ∀ n, P16283549544801826145.a n = A273493 (n + 1)

end A273493

/-!
# A273494: a(n) = A245325(n) + A245326(n).

The programs for A273494, the canonical program `A273494.P14320960571010168640` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273494 has offset 1).

The definition of A273494 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245325, A245326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273494.P14320960571010168640

`A245325(n+1)+A245326(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A273494

/-- `A245325(n+1)+A245326(n+1)` -/
def P14320960571010168640.Spec : Prop :=
  ∀ n, P14320960571010168640.a n = A273494 (n + 1)

theorem P14320960571010168640.correct : P14320960571010168640.Spec := by
  intro n
  simp only [A273494, Nat.add_sub_cancel]

end A273494

/-! ## A273494.P2787770474759938644

`A273493(A059893(n+1))`
-/

namespace A273494.P2787770474759938644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273493 (A059893 (n + 1)).toNat

end

end A273494.P2787770474759938644

namespace A273494

/-- `A273493(A059893(n+1))` -/
def P2787770474759938644.Spec : Prop :=
  ∀ n, P2787770474759938644.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P13761572222625439854

`A268087(A006068(n+1))`
-/

namespace A273494.P13761572222625439854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268087 (A006068 (n + 1)).toNat

end

end A273494.P13761572222625439854

namespace A273494

/-- `A268087(A006068(n+1))` -/
def P13761572222625439854.Spec : Prop :=
  ∀ n, P13761572222625439854.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P1626369028985439588

`A268087(A233279(n+1))`
-/

namespace A273494.P1626369028985439588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268087 (A233279 (n + 1)).toNat

end

end A273494.P1626369028985439588

namespace A273494

/-- `A268087(A233279(n+1))` -/
def P1626369028985439588.Spec : Prop :=
  ∀ n, P1626369028985439588.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P14891206464075372584

`A268087(A258746(A180200(n+1)))`
-/

namespace A273494.P14891206464075372584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268087 (A258746 (A180200 (n + 1)).toNat).toNat

end

end A273494.P14891206464075372584

namespace A273494

/-- `A268087(A258746(A180200(n+1)))` -/
def P14891206464075372584.Spec : Prop :=
  ∀ n, P14891206464075372584.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P17138039744040480704

`A071585(A054429(n+1))`
-/

namespace A273494.P17138039744040480704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A054429 (n + 1)).toNat

end

end A273494.P17138039744040480704

namespace A273494

/-- `A071585(A054429(n+1))` -/
def P17138039744040480704.Spec : Prop :=
  ∀ n, P17138039744040480704.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P6337352642200240234

`A086592(A059894(n+1))`
-/

namespace A273494.P6337352642200240234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (A059894 (n + 1)).toNat

end

end A273494.P6337352642200240234

namespace A273494

/-- `A086592(A059894(n+1))` -/
def P6337352642200240234.Spec : Prop :=
  ∀ n, P6337352642200240234.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P6276657781271693338

`A071585(A115304(n+1))`
-/

namespace A273494.P6276657781271693338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A115304 (n + 1)).toNat

end

end A273494.P6276657781271693338

namespace A273494

/-- `A071585(A115304(n+1))` -/
def P6276657781271693338.Spec : Prop :=
  ∀ n, P6276657781271693338.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P6771392234109236714

`A071585(A117120(n+1))`
-/

namespace A273494.P6771392234109236714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A117120 (n + 1)).toNat

end

end A273494.P6771392234109236714

namespace A273494

/-- `A071585(A117120(n+1))` -/
def P6771392234109236714.Spec : Prop :=
  ∀ n, P6771392234109236714.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P14115992044236107672

`A245327(A145341(n+2))`
-/

namespace A273494.P14115992044236107672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A145341 (n + 2)).toNat

end

end A273494.P14115992044236107672

namespace A273494

/-- `A245327(A145341(n+2))` -/
def P14115992044236107672.Spec : Prop :=
  ∀ n, P14115992044236107672.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P1030445965667483366

`A245328(A145341(n+2)-1)`
-/

namespace A273494.P1030445965667483366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A145341 (n + 2) - 1).toNat

end

end A273494.P1030445965667483366

namespace A273494

/-- `A245328(A145341(n+2)-1)` -/
def P1030445965667483366.Spec : Prop :=
  ∀ n, P1030445965667483366.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P14790238333513747170

`A245328(2*A059893(n+1))`
-/

namespace A273494.P14790238333513747170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (2 * A059893 (n + 1)).toNat

end

end A273494.P14790238333513747170

namespace A273494

/-- `A245328(2*A059893(n+1))` -/
def P14790238333513747170.Spec : Prop :=
  ∀ n, P14790238333513747170.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P7131225721161630701

`A245327(2*A059893(n+1)+1)`
-/

namespace A273494.P7131225721161630701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (2 * A059893 (n + 1) + 1).toNat

end

end A273494.P7131225721161630701

namespace A273494

/-- `A245327(2*A059893(n+1)+1)` -/
def P7131225721161630701.Spec : Prop :=
  ∀ n, P7131225721161630701.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P12360055183434201247

`A071585(A092569(A065190(n+1)))`
-/

namespace A273494.P12360055183434201247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A092569 (A065190 (n + 1)).toNat).toNat

end

end A273494.P12360055183434201247

namespace A273494

/-- `A071585(A092569(A065190(n+1)))` -/
def P12360055183434201247.Spec : Prop :=
  ∀ n, P12360055183434201247.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P1627881657987985193

`A071585(A233279(A003188(n+1)))`
-/

namespace A273494.P1627881657987985193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A233279 (A003188 (n + 1)).toNat).toNat

end

end A273494.P1627881657987985193

namespace A273494

/-- `A071585(A233279(A003188(n+1)))` -/
def P1627881657987985193.Spec : Prop :=
  ∀ n, P1627881657987985193.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P847802433671305596

`A071585(A006068(A233280(n+1)))`
-/

namespace A273494.P847802433671305596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A006068 (A233280 (n + 1)).toNat).toNat

end

end A273494.P847802433671305596

namespace A273494

/-- `A071585(A006068(A233280(n+1)))` -/
def P847802433671305596.Spec : Prop :=
  ∀ n, P847802433671305596.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P8761126180764923

`A071585(A233277(A233276(n+1)))`
-/

namespace A273494.P8761126180764923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A233277 (A233276 (n + 1)).toNat).toNat

end

end A273494.P8761126180764923

namespace A273494

/-- `A071585(A233277(A233276(n+1)))` -/
def P8761126180764923.Spec : Prop :=
  ∀ n, P8761126180764923.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P18213614752227977651

`A071585(A284120(A258746(n+1)))`
-/

namespace A273494.P18213614752227977651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A284120 (A258746 (n + 1)).toNat).toNat

end

end A273494.P18213614752227977651

namespace A273494

/-- `A071585(A284120(A258746(n+1)))` -/
def P18213614752227977651.Spec : Prop :=
  ∀ n, P18213614752227977651.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P12185378716290909032

`A245328(A059893(n+1)+A059893(n+1))`
-/

namespace A273494.P12185378716290909032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A059893 (n + 1) + A059893 (n + 1)).toNat

end

end A273494.P12185378716290909032

namespace A273494

/-- `A245328(A059893(n+1)+A059893(n+1))` -/
def P12185378716290909032.Spec : Prop :=
  ∀ n, P12185378716290909032.a n = A273494 (n + 1)

end A273494

/-! ## A273494.P3366931672163804466

`A245325(n+1)+A071766(A054429(n+1))`
-/

namespace A273494.P3366931672163804466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (n + 1) + A071766 (A054429 (n + 1)).toNat

end

end A273494.P3366931672163804466

namespace A273494

/-- `A245325(n+1)+A071766(A054429(n+1))` -/
def P3366931672163804466.Spec : Prop :=
  ∀ n, P3366931672163804466.a n = A273494 (n + 1)

end A273494

/-!
# A273495: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

The programs for A273495, there is no canonical definition to state claims against.
-/

/-! ## A273495.P3033996747076024583

`A007088(A273972(n))`
-/

namespace A273495.P3033996747076024583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A273972 n).toNat

end

end A273495.P3033996747076024583

/-! ## A273495.P2669061335935791863

`A007088(and(A026644(n), A274059(n)))`
-/

namespace A273495.P2669061335935791863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A026644 n) (A274059 n)).toNat

end

end A273495.P2669061335935791863

/-! ## A273495.P3591890395899350704

`A007088(and(A077854(n), A245191(n)))`
-/

namespace A273495.P3591890395899350704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A077854 n) (A245191 n)).toNat

end

end A273495.P3591890395899350704

/-! ## A273495.P2718196413542964812

`A007088(and(A083593(n), A245191(n)))`
-/

namespace A273495.P2718196413542964812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A083593 n) (A245191 n)).toNat

end

end A273495.P2718196413542964812

/-! ## A273495.P8814590561758254543

`A007088(and(A083593(n), A274059(n)))`
-/

namespace A273495.P8814590561758254543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A083593 n) (A274059 n)).toNat

end

end A273495.P8814590561758254543

/-!
# A273496: Triangle read by rows: coefficients in the expansion cos(x)^n = (1/2)^n * Sum_{k=0..n} T(n,k) * cos(k*x).

The programs for A273496, there is no canonical definition to state claims against.
-/

/-! ## A273496.P17775874203750371136

`ceil(cosh(sin(n)))*A286096(n)`
-/

namespace A273496.P17775874203750371136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A286096 n

end

end A273496.P17775874203750371136

/-! ## A273496.P4271667330371147918

`(2-char[∑[n]])*A108044(n)`
-/

namespace A273496.P4271667330371147918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A108044 n

end

end A273496.P4271667330371147918

/-! ## A273496.P2737355216333665800

`abs((2-char[∑[n]])*A120616(n))`
-/

namespace A273496.P2737355216333665800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A120616 n|

end

end A273496.P2737355216333665800

/-! ## A273496.P5861015136458006059

`A108044(n)*A238303(n)`
-/

namespace A273496.P5861015136458006059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 n * A238303 n

end

end A273496.P5861015136458006059

/-! ## A273496.P14465224753969916650

`A036453(n+1)*A286096(n)`
-/

namespace A273496.P14465224753969916650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A286096 n

end

end A273496.P14465224753969916650

/-! ## A273496.P1229158390656113171

`A104435(n+1)*A286096(n)`
-/

namespace A273496.P1229158390656113171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) * A286096 n

end

end A273496.P1229158390656113171

/-! ## A273496.P4635206169662249647

`A286016(n+1)*A286096(n)`
-/

namespace A273496.P4635206169662249647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286016 (n + 1) * A286096 n

end

end A273496.P4635206169662249647

/-! ## A273496.P4006987737402320395

`A000032(C(2, n²))*A286096(n)`
-/

namespace A273496.P4006987737402320395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n ^ 2)) * A286096 n

end

end A273496.P4006987737402320395

/-! ## A273496.P6403457280521089247

`A036452(2*n+1)*A286096(n)`
-/

namespace A273496.P6403457280521089247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (2 * n + 1) * A286096 n

end

end A273496.P6403457280521089247

/-!
# A273497: Density of twin primes: the number of primes that are twin primes among the first 10^n primes.

The programs for A273497, there is no canonical definition to state claims against.
-/

/-! ## A273497.P8399156664923415917

`A049035(n+1)+A093683(n+1)-1`
-/

namespace A273497.P8399156664923415917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049035 (n + 1) + (A093683 (n + 1) - 1)

end

end A273497.P8399156664923415917

/-! ## A273497.P7538895978181500343

`2*(A049035(n+1)-A002033(n)/A067824(n+1))`
-/

namespace A273497.P7538895978181500343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A049035 (n + 1) : ℚ) - (A002033 n : ℚ) / (A067824 (n + 1) : ℚ))

end

end A273497.P7538895978181500343

/-!
# A273498: Numbers that are, at the same time, the sum of: two positive squares, a positive square and a positive cube, and two positive cubes. In other words, intersection of A000404, A003325 and A055394.

The programs for A273498, there is no canonical definition to state claims against.
-/

/-! ## A273498.P3672770058460673568

`∩[A022549(n+1), A229815(n+1)]`
-/

namespace A273498.P3672770058460673568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273498.P3672770058460673568

/-! ## A273498.P15145908530758051594

`∩[A055394(n+1), A229815(n+1)]`
-/

namespace A273498.P15145908530758051594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273498.P15145908530758051594

/-! ## A273498.P13815260907565533275

`∩[A229815(n+1), A274035(n+1)]`
-/

namespace A273498.P13815260907565533275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273498.P13815260907565533275

/-!
# A273499: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A273499, the canonical program `A273499.P7149026003240691032` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273499 has offset 0).

The definition of A273499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273499.P7149026003240691032

`or(1, A016754(n)-A189007(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A273499

/-- `or(1, A016754(n)-A189007(n+1))` -/
def P7149026003240691032.Spec : Prop :=
  ∀ n, P7149026003240691032.a n = A273499 n

theorem P7149026003240691032.correct : P7149026003240691032.Spec := by
  intro n
  simp only [A273499]

end A273499

/-! ## A273499.P18381099599291541247

`A273501(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273499.P18381099599291541247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273501 (n - 1) + a (n - 1)

end

end A273499.P18381099599291541247

namespace A273499

/-- `A273501(n-1)+a(n-1)` -/
def P18381099599291541247.Spec : Prop :=
  ∀ n, P18381099599291541247.a n = A273499 n

end A273499

/-! ## A273499.P15191252712199772429

`Δ[A273500(n)]-A273501(n)`
-/

namespace A273499.P15191252712199772429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273501 n

end

end A273499.P15191252712199772429

namespace A273499

/-- `Δ[A273500(n)]-A273501(n)` -/
def P15191252712199772429.Spec : Prop :=
  ∀ n, P15191252712199772429.a n = A273499 n

end A273499

/-! ## A273499.P11720455353066773128

`A273500(n+1)-(A273501(n)+A273500(n))`
-/

namespace A273499.P11720455353066773128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273500 (n + 1) - (A273501 n + A273500 n)

end

end A273499.P11720455353066773128

namespace A273499

/-- `A273500(n+1)-(A273501(n)+A273500(n))` -/
def P11720455353066773128.Spec : Prop :=
  ∀ n, P11720455353066773128.a n = A273499 n

end A273499

/-! ## A273499.P722626043876594054

`A181385(A016825(n))-A189007(n+1)`
-/

namespace A273499.P722626043876594054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A189007 (n + 1)

end

end A273499.P722626043876594054

namespace A273499

/-- `A181385(A016825(n))-A189007(n+1)` -/
def P722626043876594054.Spec : Prop :=
  ∀ n, P722626043876594054.a n = A273499 n

end A273499

/-! ## A273499.P9749729845536207021

`A181385(A016825(n))-A001316(n)²*A080100(n)`
-/

namespace A273499.P9749729845536207021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A001316 n ^ 2 * A080100 n

end

end A273499.P9749729845536207021

namespace A273499

/-- `A181385(A016825(n))-A001316(n)²*A080100(n)` -/
def P9749729845536207021.Spec : Prop :=
  ∀ n, P9749729845536207021.a n = A273499 n

end A273499

/-! ## A273499.P4876039017548175928

`A008740(A008458(n))-A189007(n+1)`
-/

namespace A273499.P4876039017548175928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A189007 (n + 1)

end

end A273499.P4876039017548175928

namespace A273499

/-- `A008740(A008458(n))-A189007(n+1)` -/
def P4876039017548175928.Spec : Prop :=
  ∀ n, P4876039017548175928.a n = A273499 n

end A273499

/-! ## A273499.P6260119800000306048

`A008740(A008458(n))-A000079(A014701(2*n+1))`
-/

namespace A273499.P6260119800000306048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A000079 (A014701 (2 * n + 1)).toNat

end

end A273499.P6260119800000306048

namespace A273499

/-- `A008740(A008458(n))-A000079(A014701(2*n+1))` -/
def P6260119800000306048.Spec : Prop :=
  ∀ n, P6260119800000306048.a n = A273499 n

end A273499

/-! ## A273499.P17975009138576548731

`A016754(n)-A008475(A189007(n+1))`
-/

namespace A273499.P17975009138576548731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A008475 (A189007 (n + 1)).toNat

end

end A273499.P17975009138576548731

namespace A273499

/-- `A016754(n)-A008475(A189007(n+1))` -/
def P17975009138576548731.Spec : Prop :=
  ∀ n, P17975009138576548731.a n = A273499 n

end A273499

/-! ## A273499.P1377235086372897706

`A008740(A008458(n))-A053644(A048678(2*n+1))`
-/

namespace A273499.P1377235086372897706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A053644 (A048678 (2 * n + 1)).toNat

end

end A273499.P1377235086372897706

namespace A273499

/-- `A008740(A008458(n))-A053644(A048678(2*n+1))` -/
def P1377235086372897706.Spec : Prop :=
  ∀ n, P1377235086372897706.a n = A273499 n

end A273499

