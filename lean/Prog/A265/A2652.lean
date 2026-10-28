import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C001
import Seq.B007.C000
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
# A265204: Sum of phi(i) over squarefree numbers i <= n.

The programs for A265204, the canonical program `A265204.P5438525566981879451` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265204 has offset 1).

The definition of A265204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265204.P5438525566981879451

`∑[abs(Δ[A054585(n)])]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265204

/-- `∑[abs(Δ[A054585(n)])]` -/
def P5438525566981879451.Spec : Prop :=
  ∀ n, P5438525566981879451.a n = A265204 (n + 1)

theorem P5438525566981879451.correct : P5438525566981879451.Spec := by
  intro n
  simp only [A265204, Nat.add_sub_cancel]

end A265204

/-! ## A265204.P15461820893734206121

`∑[abs(A097945(n+1))]`
-/

namespace A265204.P15461820893734206121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097945 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P15461820893734206121

namespace A265204

/-- `∑[abs(A097945(n+1))]` -/
def P15461820893734206121.Spec : Prop :=
  ∀ n, P15461820893734206121.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P17000390866571514135

`∑[A202535(n+1)/(n+1)]`
-/

namespace A265204.P17000390866571514135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202535 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P17000390866571514135

namespace A265204

/-- `∑[A202535(n+1)/(n+1)]` -/
def P17000390866571514135.Spec : Prop :=
  ∀ n, P17000390866571514135.a n = (A265204 (n + 1) : ℚ)

end A265204

/-! ## A265204.P4763613370242547410

`∑[gcd(A000038(n), A097945(n+1))]`
-/

namespace A265204.P4763613370242547410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A097945 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P4763613370242547410

namespace A265204

/-- `∑[gcd(A000038(n), A097945(n+1))]` -/
def P4763613370242547410.Spec : Prop :=
  ∀ n, (P4763613370242547410.a n : ℤ) = A265204 (n + 1)

end A265204

/-! ## A265204.P6332542559188999817

`∑[A000010(n+1)*A008966(n+1)]`
-/

namespace A265204.P6332542559188999817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P6332542559188999817

namespace A265204

/-- `∑[A000010(n+1)*A008966(n+1)]` -/
def P6332542559188999817.Spec : Prop :=
  ∀ n, P6332542559188999817.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P5281221191479401665

`∑[A003958(n+1)*A008966(n+1)]`
-/

namespace A265204.P5281221191479401665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P5281221191479401665

namespace A265204

/-- `∑[A003958(n+1)*A008966(n+1)]` -/
def P5281221191479401665.Spec : Prop :=
  ∀ n, P5281221191479401665.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P18372941874873457554

`∑[A008683(n+1)*A023900(n+1)]`
-/

namespace A265204.P18372941874873457554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P18372941874873457554

namespace A265204

/-- `∑[A008683(n+1)*A023900(n+1)]` -/
def P18372941874873457554.Spec : Prop :=
  ∀ n, P18372941874873457554.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P12802027095765720562

`∑[A008683(n+1)*A097945(n+1)]`
-/

namespace A265204.P12802027095765720562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A097945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P12802027095765720562

namespace A265204

/-- `∑[A008683(n+1)*A097945(n+1)]` -/
def P12802027095765720562.Spec : Prop :=
  ∀ n, P12802027095765720562.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P3264012006464537794

`∑[lcm(A000010(n+1), A008683(n+1))]`
-/

namespace A265204.P3264012006464537794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (n + 1)) (A008683 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P3264012006464537794

namespace A265204

/-- `∑[lcm(A000010(n+1), A008683(n+1))]` -/
def P3264012006464537794.Spec : Prop :=
  ∀ n, (P3264012006464537794.a n : ℤ) = A265204 (n + 1)

end A265204

/-! ## A265204.P2965246986542627532

`∑[(A109606(n+1)+1)*A008966(n+1)]`
-/

namespace A265204.P2965246986542627532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P2965246986542627532

namespace A265204

/-- `∑[(A109606(n+1)+1)*A008966(n+1)]` -/
def P2965246986542627532.Spec : Prop :=
  ∀ n, P2965246986542627532.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P12761860677021062348

`∑[(A039649(n+1)-1)*A008966(n+1)]`
-/

namespace A265204.P12761860677021062348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P12761860677021062348

namespace A265204

/-- `∑[(A039649(n+1)-1)*A008966(n+1)]` -/
def P12761860677021062348.Spec : Prop :=
  ∀ n, P12761860677021062348.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P1217288333906389421

`∑[(A231821(n+1)-3)*A023900(n+1)]`
-/

namespace A265204.P1217288333906389421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A231821 (n + 1) - 3) * A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P1217288333906389421

namespace A265204

/-- `∑[(A231821(n+1)-3)*A023900(n+1)]` -/
def P1217288333906389421.Spec : Prop :=
  ∀ n, P1217288333906389421.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P126942853501164323

`∑[A162512(n+1)%2*A023900(n+1)]`
-/

namespace A265204.P126942853501164323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 * A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P126942853501164323

namespace A265204

/-- `∑[A162512(n+1)%2*A023900(n+1)]` -/
def P126942853501164323.Spec : Prop :=
  ∀ n, P126942853501164323.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P539881056862031509

`∑[A346254(n+1)%2*A023900(n+1)]`
-/

namespace A265204.P539881056862031509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346254 (n + 1)) 2 * A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P539881056862031509

namespace A265204

/-- `∑[A346254(n+1)%2*A023900(n+1)]` -/
def P539881056862031509.Spec : Prop :=
  ∀ n, P539881056862031509.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P2833213026548070845

`∑[A008683(2*n+1-n)²*A000010(n+1)]`
-/

namespace A265204.P2833213026548070845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1 - n) ^ 2 * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P2833213026548070845

namespace A265204

/-- `∑[A008683(2*n+1-n)²*A000010(n+1)]` -/
def P2833213026548070845.Spec : Prop :=
  ∀ n, P2833213026548070845.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P5714191733755278081

`∑[(A049633(n)-A049632(n))*A008966(n+1)]`
-/

namespace A265204.P5714191733755278081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049633 n - A049632 n) * A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P5714191733755278081

namespace A265204

/-- `∑[(A049633(n)-A049632(n))*A008966(n+1)]` -/
def P5714191733755278081.Spec : Prop :=
  ∀ n, P5714191733755278081.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P17739935925562480794

`∑[A181435(n+1)%(A051731(n+1)+2)*A023900(n+1)]`
-/

namespace A265204.P17739935925562480794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181435 (n + 1)) (A051731 (n + 1) + 2) * A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P17739935925562480794

namespace A265204

/-- `∑[A181435(n+1)%(A051731(n+1)+2)*A023900(n+1)]` -/
def P17739935925562480794.Spec : Prop :=
  ∀ n, P17739935925562480794.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P10249770830506921014

`∑[A181434(n+1)%2*A023900(n+1)]`
-/

namespace A265204.P10249770830506921014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181434 (n + 1)) 2 * A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P10249770830506921014

namespace A265204

/-- `∑[A181434(n+1)%2*A023900(n+1)]` -/
def P10249770830506921014.Spec : Prop :=
  ∀ n, P10249770830506921014.a n = A265204 (n + 1)

end A265204

/-! ## A265204.P8334135256353007815

`∑[A349441((n+1)²)/(n+1)]`
-/

namespace A265204.P8334135256353007815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349441 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P8334135256353007815

namespace A265204

/-- `∑[A349441((n+1)²)/(n+1)]` -/
def P8334135256353007815.Spec : Prop :=
  ∀ n, P8334135256353007815.a n = (A265204 (n + 1) : ℚ)

end A265204

/-! ## A265204.P2032485998052726177

`∑[A341635((n+1)²)]`
-/

namespace A265204.P2032485998052726177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341635 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P2032485998052726177

namespace A265204

/-- `∑[A341635((n+1)²)]` -/
def P2032485998052726177.Spec : Prop :=
  ∀ n, P2032485998052726177.a n = A265204 (n + 1)

end A265204

/-!
# A265205: Number of ON (black) cells in the n-th iteration of the "Rule 73" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265205, there is no canonical definition to state claims against.
-/

/-! ## A265205.P1127308885389279365

`Δ[n²]-A265219(n)`
-/

namespace A265205.P1127308885389279365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A265219 n

end

end A265205.P1127308885389279365

/-! ## A265205.P176890919136813171

`n+1-A265219(n%(n+1))+n`
-/

namespace A265205.P176890919136813171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A265219 (n % (n + 1)) + (n : ℤ)

end

end A265205.P176890919136813171

/-! ## A265205.P10790284759494349901

`abs(A265219(n)-A005408(n))`
-/

namespace A265205.P10790284759494349901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A265219 n - A005408 n|

end

end A265205.P10790284759494349901

/-! ## A265205.P776942451584310725

`A070951(n)+A070952(n)-A265219(n)`
-/

namespace A265205.P776942451584310725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070951 n + (A070952 n - A265219 n)

end

end A265205.P776942451584310725

/-! ## A265205.P9297814700580536316

`A000290(n+1)-(A265219(n)+A000290(n))`
-/

namespace A265205.P9297814700580536316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A265219 n + A000290 n)

end

end A265205.P9297814700580536316

/-! ## A265205.P5181190577929612298

`∑{digits}[A265122(n), #]`
-/

namespace A265205.P5181190577929612298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A265205.P5181190577929612298

/-!
# A265206: Total number of ON (black) cells after n iterations of the "Rule 73" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265206, there is no canonical definition to state claims against.
-/

/-! ## A265206.P452015471952691084

`∑[A265205(n)]`
-/

namespace A265206.P452015471952691084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265206.P452015471952691084

/-! ## A265206.P10895844995887260527

`(n+1)²-A265220(n)`
-/

namespace A265206.P10895844995887260527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A265220 n

end

end A265206.P10895844995887260527

/-! ## A265206.P6618943282520532070

`∑[Δ[n²]-A265219(n)]`
-/

namespace A265206.P6618943282520532070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A265219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265206.P6618943282520532070

/-! ## A265206.P10806857640141051163

`A000217(n)+∑[1-A265219(n)+n]`
-/

namespace A265206.P10806857640141051163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A265219 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265206.P10806857640141051163

/-! ## A265206.P1296713770317642130

`∑[A070951(n)+A070952(n)-A265219(n)]`
-/

namespace A265206.P1296713770317642130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070951 n + (A070952 n - A265219 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265206.P1296713770317642130

/-! ## A265206.P7269825137557203952

`∑[∑{digits}[A265122(n), #]]`
-/

namespace A265206.P7269825137557203952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265122 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265206.P7269825137557203952

/-!
# A265207: Draw a square and follow these steps: Take a square and place at its edges isosceles right triangles with the edge as hypotenuse. Draw a square at every new edge of the triangles. Repeat for all the new squares of the same size. New figures are only placed on empty space. The structure is symmetric about the first square. The sequence gives the numbers of squares of equal size in successive rings around the center.

The programs for A265207, the canonical program `A265207.P13496285613480635499` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265207 has offset 1).

The definition of A265207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265207.P13496285613480635499

`2*a(n-2)+20` with `a(0)=1, a(1)=8, a(2)=20`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265207

/-- `2*a(n-2)+20` -/
def P13496285613480635499.Spec : Prop :=
  ∀ n, (P13496285613480635499.a n : ℤ) = A265207 (n + 1)

theorem P13496285613480635499.correct : P13496285613480635499.Spec := by
  intro n
  simp only [A265207, Nat.add_sub_cancel]

end A265207

/-! ## A265207.P17312396747835084598

`ogf((1+7x+10x^2+2x^3)/(1-x-2x^2+2x^3))`
-/

namespace A265207.P17312396747835084598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 10, 2] [1, -1, -2, 2] n

end

end A265207.P17312396747835084598

namespace A265207

/-- `ogf((1+7x+10x^2+2x^3)/(1-x-2x^2+2x^3))` -/
def P17312396747835084598.Spec : Prop :=
  ∀ n, P17312396747835084598.a n = A265207 (n + 1)

end A265207

/-! ## A265207.P5647956389318849137

`∑[2*a(n-2)]` with `a(0)=1, a(1)=7, a(2)=12, a(3)=16`
-/

namespace A265207.P5647956389318849137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 12, 16] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265207.P5647956389318849137

namespace A265207

/-- `∑[2*a(n-2)]` -/
def P5647956389318849137.Spec : Prop :=
  ∀ n, (P5647956389318849137.a n : ℤ) = A265207 (n + 1)

end A265207

/-!
# A265208: Total number T(n,k) of lambda-parking functions induced by all partitions of n into exactly k distinct parts; triangle T(n,k), n>=0, 0<=k<=A003056(n), read by rows.

The programs for A265208, there is no canonical definition to state claims against.
-/

/-! ## A265208.P12908079446627769736

`A265020(A004907(n+1))`
-/

namespace A265208.P12908079446627769736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265020 (A004907 (n + 1)).toNat

end

end A265208.P12908079446627769736

/-! ## A265208.P4603489827341866814

`A265020(A004918(n+1))`
-/

namespace A265208.P4603489827341866814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265020 (A004918 (n + 1)).toNat

end

end A265208.P4603489827341866814

/-! ## A265208.P15681556682405519265

`A007814(2^A265020(n))`
-/

namespace A265208.P15681556682405519265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A265020 n : ℤ))).toNat

end

end A265208.P15681556682405519265

/-! ## A265208.P4831611346226770452

`A029837(2^A265020(n))`
-/

namespace A265208.P4831611346226770452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A265020 n : ℤ))).toNat

end

end A265208.P4831611346226770452

/-! ## A265208.P4015692387592284613

`A346009(2^A265020(n))`
-/

namespace A265208.P4015692387592284613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346009 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A265020 n : ℤ))).toNat

end

end A265208.P4015692387592284613

/-!
# A265209: Irregular triangle read by rows in which row n lists the base-3 digits of 2^n, n >= 0.

The programs for A265209, there is no canonical definition to state claims against.
-/

/-! ## A265209.P7825025082409270786

`A001222(or(A335820(2*n+1), A335822(n+1)))`
-/

namespace A265209.P7825025082409270786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A335820 (2 * n + 1)) (A335822 (n + 1))).toNat

end

end A265209.P7825025082409270786

/-! ## A265209.P172841092618429302

`A010872(A006927(n)+A000069(n+1))`
-/

namespace A265209.P172841092618429302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A006927 n + A000069 (n + 1)).toNat

end

end A265209.P172841092618429302

/-! ## A265209.P15753015080943715969

`A078461(A209478(n+1)+A107279(n))`
-/

namespace A265209.P15753015080943715969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (A209478 (n + 1) + A107279 n).toNat

end

end A265209.P15753015080943715969

/-! ## A265209.P17241135613862530026

`A122497(n+1)%A014571(A023194(n+2))`
-/

namespace A265209.P17241135613862530026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122497 (n + 1)) (A014571 (A023194 (n + 2)).toNat)

end

end A265209.P17241135613862530026

/-! ## A265209.P8729917488182188320

`A317189(A333755(3*n+1)^A007413(n+1))`
-/

namespace A265209.P8729917488182188320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317189 (SequenceMachineLib.roundAway ((A333755 (3 * n + 1) : ℚ) ^ (A007413 (n + 1) : ℤ))).toNat

end

end A265209.P8729917488182188320

/-!
# A265210: Irregular triangle read by rows in which row n lists the base 3 digits of 2^n in reverse order, n >= 0.

The programs for A265210, there is no canonical definition to state claims against.
-/

/-! ## A265210.P15752010955542079789

`A358194(A051532(2*(n+1)))+A074290(2*n+1)`
-/

namespace A265210.P15752010955542079789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358194 (A051532 (2 * (n + 1))).toNat + A074290 (2 * n + 1)

end

end A265210.P15752010955542079789

/-! ## A265210.P4358871089350322569

`A004594(A068442(2*n+1)+A003229(n))`
-/

namespace A265210.P4358871089350322569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004594 (A068442 (2 * n + 1) + A003229 n).toNat

end

end A265210.P4358871089350322569

/-! ## A265210.P15564508596906276739

`A190688(A175941(n)+A000005(3*n+1))`
-/

namespace A265210.P15564508596906276739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A175941 n + A000005 (3 * n + 1)).toNat

end

end A265210.P15564508596906276739

/-! ## A265210.P11136940645724035576

`A193739(A165608(3*n+4))%3`
-/

namespace A265210.P11136940645724035576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193739 (A165608 (3 * n + 4)).toNat) 3

end

end A265210.P11136940645724035576

/-! ## A265210.P5073568173791343178

`A156259(n+1)+A156258(6*n+7)`
-/

namespace A265210.P5073568173791343178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156259 (n + 1) + A156258 (6 * n + 7)

end

end A265210.P5073568173791343178

/-!
# A265211: Squares that become prime when their rightmost digit is removed.

The programs for A265211, there is no canonical definition to state claims against.
-/

/-! ## A265211.P13022518125081991840

`A289190(n+1)²`
-/

namespace A265211.P13022518125081991840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289190 (n + 1) ^ 2

end

end A265211.P13022518125081991840

/-! ## A265211.P5154365759221814725

`A289190(n+1)^A235451(gcd(n, n+1))`
-/

namespace A265211.P5154365759221814725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289190 (n + 1) : ℚ) ^ (A235451 (Nat.gcd n (n + 1)) : ℤ)

end

end A265211.P5154365759221814725

/-! ## A265211.P8355698289463802858

`A289190(n+1)^A001316(A001316(n))`
-/

namespace A265211.P8355698289463802858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289190 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A265211.P8355698289463802858

/-! ## A265211.P6171985348458695838

`A289190(n+1)^A000005(A137812(n+1))`
-/

namespace A265211.P6171985348458695838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289190 (n + 1) : ℚ) ^ (A000005 (A137812 (n + 1)).toNat : ℤ)

end

end A265211.P6171985348458695838

/-! ## A265211.P11034950105690058433

`A289190(n+1)^A000005(A214847(n+1))`
-/

namespace A265211.P11034950105690058433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289190 (n + 1) : ℚ) ^ (A000005 (A214847 (n + 1)).toNat : ℤ)

end

end A265211.P11034950105690058433

/-! ## A265211.P2786388420814640205

`A289190(n+1)^A000005(A227916(n+1))`
-/

namespace A265211.P2786388420814640205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289190 (n + 1) : ℚ) ^ (A000005 (A227916 (n + 1)).toNat : ℤ)

end

end A265211.P2786388420814640205

/-! ## A265211.P8715818949754883098

`A289190(A004525(2*(n+1)))*A289190(n+1)`
-/

namespace A265211.P8715818949754883098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289190 (A004525 (2 * (n + 1))).toNat * A289190 (n + 1)

end

end A265211.P8715818949754883098

/-! ## A265211.P13978109624397032356

`A289190(n+1)^A000005(A014963(2*(n+1))+1)`
-/

namespace A265211.P13978109624397032356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289190 (n + 1) : ℚ) ^ (A000005 (A014963 (2 * (n + 1)) + 1).toNat : ℤ)

end

end A265211.P13978109624397032356

/-! ## A265211.P5063745301036800101

`A289190(n+1)^A000005(A258032(n+1))`
-/

namespace A265211.P5063745301036800101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289190 (n + 1) : ℚ) ^ (A000005 (A258032 (n + 1)).toNat : ℤ)

end

end A265211.P5063745301036800101

/-! ## A265211.P941858932633690754

`A289190(n+1)^A000005(A210498(n+1))`
-/

namespace A265211.P941858932633690754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289190 (n + 1) : ℚ) ^ (A000005 (A210498 (n + 1)).toNat : ℤ)

end

end A265211.P941858932633690754

/-! ## A265211.P16006727500074083406

`A002620(2*A289190(n+1))`
-/

namespace A265211.P16006727500074083406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A289190 (n + 1)).toNat

end

end A265211.P16006727500074083406

/-! ## A265211.P15156476950442071750

`A289190(n+1)^A276086(A007318(∑[n+1]))`
-/

namespace A265211.P15156476950442071750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289190 (n + 1) : ℚ) ^ (A276086 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A265211.P15156476950442071750

/-!
# A265212: Number of nX1 0..n-1 arrays with upper left zero and lower right n-1 and each element differing from its horizontal and vertical neighbors by a power of three.

The programs for A265212, there is no canonical definition to state claims against.
-/

/-! ## A265212.P14021557757934204028

`A265218(∑[n]+1)`
-/

namespace A265212.P14021557757934204028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265218 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265212.P14021557757934204028

/-! ## A265212.P8408493663443332980

`A265218(A000124(n))+A105517(n)`
-/

namespace A265212.P8408493663443332980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265218 (A000124 n).toNat + A105517 n

end

end A265212.P8408493663443332980

/-! ## A265212.P11711106887428012734

`A265218(A000124(n))%A283070(n)`
-/

namespace A265212.P11711106887428012734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265218 (A000124 n).toNat) (A283070 n)

end

end A265212.P11711106887428012734

/-! ## A265212.P5387063171744172398

`lcm(A131554(n), A265218(A000124(n)))`
-/

namespace A265212.P5387063171744172398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131554 n) (A265218 (A000124 n).toNat)

end

end A265212.P5387063171744172398

/-! ## A265212.P1637723025587006808

`A265218(A000124(n))+n*A001222(ceil(2/(n+1)))`
-/

namespace A265212.P1637723025587006808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265218 (A000124 n).toNat + (n : ℤ) * A001222 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A265212.P1637723025587006808

/-!
# A265213: Number of (2n-1)X2 0..4n-3 arrays with upper left zero and lower right 4n-3 and each element differing from its horizontal and vertical neighbors by a power of three.

The programs for A265213, there is no canonical definition to state claims against.
-/

/-! ## A265213.P2556756585916832857

`record[A265218(∑[n+2])]`
-/

namespace A265213.P2556756585916832857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265218 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265213.P2556756585916832857

/-! ## A265213.P2393143991779681299

`A265218((n+2)*Δ[n²])`
-/

namespace A265213.P2393143991779681299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265218 ((n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A265213.P2393143991779681299

/-!
# A265214: Number of nX3 0..n*3-1 arrays with upper left zero and lower right n*3-1 and each element differing from its horizontal and vertical neighbors by a power of three.

The programs for A265214, there is no canonical definition to state claims against.
-/

/-! ## A265214.P6959197835426813961

`A265218(∑[n+2]+4)`
-/

namespace A265214.P6959197835426813961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265218 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265214.P6959197835426813961

/-! ## A265214.P14618174534694769394

`record[gcd(A265218(n+1), A303913(n))]`
-/

namespace A265214.P14618174534694769394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265218 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265214.P14618174534694769394

/-! ## A265214.P14010979181749906105

`lcm(3^val(n+1, 3), A265218(A167614(n+1)))`
-/

namespace A265214.P14010979181749906105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) (A265218 (A167614 (n + 1)).toNat)

end

end A265214.P14010979181749906105

/-! ## A265214.P3379391495269682422

`A265218(A167614(n+1))%A187728(n+1)`
-/

namespace A265214.P3379391495269682422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265218 (A167614 (n + 1)).toNat) (A187728 (n + 1))

end

end A265214.P3379391495269682422

/-! ## A265214.P8947600462268008628

`A014963(A098923(n+1))*A265218(A167614(n+1))`
-/

namespace A265214.P8947600462268008628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A098923 (n + 1)).toNat * A265218 (A167614 (n + 1)).toNat

end

end A265214.P8947600462268008628

/-!
# A265215: 

The programs for A265215, there is no canonical definition to state claims against.
-/

/-! ## A265215.P14646899969560528517

`record[A265218(A167614(n+1)+1)]`
-/

namespace A265215.P14646899969560528517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265218 (A167614 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265215.P14646899969560528517

/-!
# A265216: Number of nX5 0..n*5-1 arrays with upper left zero and lower right n*5-1 and each element differing from its horizontal and vertical neighbors by a power of three.

The programs for A265216, there is no canonical definition to state claims against.
-/

/-! ## A265216.P13950548601638732411

`A265218(A374005(n+1))`
-/

namespace A265216.P13950548601638732411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265218 (A374005 (n + 1)).toNat

end

end A265216.P13950548601638732411

/-! ## A265216.P5658461235995778118

`A265218(∑[n+5]+6)`
-/

namespace A265216.P5658461235995778118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265218 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A265216.P5658461235995778118

/-!
# A265219: Number of OFF (white) cells in the n-th iteration of the "Rule 73" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265219, there is no canonical definition to state claims against.
-/

/-! ## A265219.P11928214751074148842

`Δ[n²]-A265205(n)`
-/

namespace A265219.P11928214751074148842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A265205 n

end

end A265219.P11928214751074148842

/-! ## A265219.P5083141880471898593

`n+1-A265205(n%(n+1))+n`
-/

namespace A265219.P5083141880471898593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A265205 (n % (n + 1)) + (n : ℤ)

end

end A265219.P5083141880471898593

/-! ## A265219.P5219431203591275888

`abs(A005408(n)-A265205(n))`
-/

namespace A265219.P5219431203591275888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A265205 n|

end

end A265219.P5219431203591275888

/-! ## A265219.P3047955032356560823

`A005843(n)+1-A265205(n)`
-/

namespace A265219.P3047955032356560823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A265205 n)

end

end A265219.P3047955032356560823

/-! ## A265219.P17612668342352192094

`A023443(n)+A022958(A265205(n))+n`
-/

namespace A265219.P17612668342352192094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + (A022958 (A265205 n).toNat + (n : ℤ))

end

end A265219.P17612668342352192094

/-! ## A265219.P9668938229628500093

`A070951(n)+A070952(n)-A265205(n)`
-/

namespace A265219.P9668938229628500093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070951 n + (A070952 n - A265205 n)

end

end A265219.P9668938229628500093

/-! ## A265219.P17888889668979523818

`A265220(n)-A265220(A004273(n)-n)`
-/

namespace A265219.P17888889668979523818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265220 n - A265220 (A004273 n - (n : ℤ)).toNat

end

end A265219.P17888889668979523818

/-! ## A265219.P1733670226558341891

`A022958(A265205(n))-A022958(2*n+1)`
-/

namespace A265219.P1733670226558341891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A265205 n).toNat - A022958 (2 * n + 1)

end

end A265219.P1733670226558341891

/-! ## A265219.P12509594805154877812

`A023443(2*n+1)-A023443(A265205(n))`
-/

namespace A265219.P12509594805154877812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * n + 1) - A023443 (A265205 n).toNat

end

end A265219.P12509594805154877812

/-! ## A265219.P6060111210495142753

`A000196(A002378(n))+n+1-A265205(n)`
-/

namespace A265219.P6060111210495142753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002378 n).toNat + ((n + 1 : ℤ) - A265205 n)

end

end A265219.P6060111210495142753

/-!
# A265220: Total number of OFF (white) cells after n iterations of the "Rule 73" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265220, there is no canonical definition to state claims against.
-/

/-! ## A265220.P665691170714437242

`∑[A265219(n)]`
-/

namespace A265220.P665691170714437242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265220.P665691170714437242

/-! ## A265220.P5369189542325616203

`(n+1)²-A265206(n)`
-/

namespace A265220.P5369189542325616203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A265206 n

end

end A265220.P5369189542325616203

/-! ## A265220.P15945350271086220022

`∑[Δ[n²]-A265205(n)]`
-/

namespace A265220.P15945350271086220022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A265205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265220.P15945350271086220022

/-! ## A265220.P5573921556061851661

`∑[n]-A265206(n)+A000096(n)+1`
-/

namespace A265220.P5573921556061851661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A265206 n + (A000096 n + 1)

end

end A265220.P5573921556061851661

/-! ## A265220.P12343485044276022559

`A000217(n+1)+∑[n]-A265206(n)`
-/

namespace A265220.P12343485044276022559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A265206 n)

end

end A265220.P12343485044276022559

/-!
# A265223: Total number of OFF (white) cells after n iterations of the "Rule 150" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265223, there is no canonical definition to state claims against.
-/

/-! ## A265223.P10629104203919976896

`∑[A071052(n)]`
-/

namespace A265223.P10629104203919976896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265223.P10629104203919976896

/-! ## A265223.P14881793405495454165

`(n+1)²-A134659(n)`
-/

namespace A265223.P14881793405495454165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A134659 n

end

end A265223.P14881793405495454165

/-! ## A265223.P3063893687748049972

`∑[Δ[n²]-A071053(n)]`
-/

namespace A265223.P3063893687748049972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A071053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265223.P3063893687748049972

/-! ## A265223.P3891511674663231650

`A005563(n)+1-∑[A071053(n)]`
-/

namespace A265223.P3891511674663231650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265223.P3891511674663231650

/-! ## A265223.P3668041720804919799

`∑[A267150(2*n)-2*n]`
-/

namespace A265223.P3668041720804919799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267150 (2 * n) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265223.P3668041720804919799

/-! ## A265223.P14467329378985971220

`(n+1)²-∑[A267148(2*n)]`
-/

namespace A265223.P14467329378985971220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265223.P14467329378985971220

/-! ## A265223.P9247695241453878403

`∑[2*n-A237120(2*n)]`
-/

namespace A265223.P9247695241453878403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A237120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265223.P9247695241453878403

/-! ## A265223.P10585166058986543130

`∑[2*n+1-A000265(A246037(n))]`
-/

namespace A265223.P10585166058986543130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000265 (A246037 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265223.P10585166058986543130

/-!
# A265224: Total number of OFF (white) cells after n iterations of the "Rule 30" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265224, there is no canonical definition to state claims against.
-/

/-! ## A265224.P44641903169521704

`∑[A070951(n)]`
-/

namespace A265224.P44641903169521704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265224.P44641903169521704

/-! ## A265224.P15987682296857608019

`(n+1)²-A110267(n)`
-/

namespace A265224.P15987682296857608019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A110267 n

end

end A265224.P15987682296857608019

/-! ## A265224.P1624417787921262366

`∑[1-A246024(n)+n]`
-/

namespace A265224.P1624417787921262366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A246024 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265224.P1624417787921262366

/-! ## A265224.P7782483146283385387

`∑[Δ[n²]-A070952(n)]`
-/

namespace A265224.P7782483146283385387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A070952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265224.P7782483146283385387

/-! ## A265224.P14552645418542298184

`A265702(n)-A070952(n)`
-/

namespace A265224.P14552645418542298184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265702 n - A070952 n

end

end A265224.P14552645418542298184

/-! ## A265224.P8495060090202564639

`∑[A265701(n)]-A070952(n)`
-/

namespace A265224.P8495060090202564639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A070952 n

end

end A265224.P8495060090202564639

/-! ## A265224.P14063289230220147917

`∑[A265701(n+1)-2]`
-/

namespace A265224.P14063289230220147917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265224.P14063289230220147917

/-! ## A265224.P1492852537094625927

`(n+1)²-A265704(n+1)`
-/

namespace A265224.P1492852537094625927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A265704 (n + 1)

end

end A265224.P1492852537094625927

/-! ## A265224.P16097686605684118175

`A265702(n+1)-(2*n+3)`
-/

namespace A265224.P16097686605684118175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265702 (n + 1) - (2 * n + 3 : ℤ)

end

end A265224.P16097686605684118175

/-! ## A265224.P6095879985729511622

`(n+1)²-∑[A265703(n+1)]`
-/

namespace A265224.P6095879985729511622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265224.P6095879985729511622

/-!
# A265225: Total number of ON (black) cells after n iterations of the "Rule 54" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265225, the canonical program `A265225.P5119504201731358723` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265225 has offset 0).

The definition of A265225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265225.P5119504201731358723

`1/4*(n+1)*(2*n-(-1)^n+5)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265225

/-- `1/4*(n+1)*(2*n-(-1)^n+5)` -/
def P5119504201731358723.Spec : Prop :=
  ∀ n, P5119504201731358723.a n = (A265225 n : ℚ)

end A265225

/-! ## A265225.P3268433620524712001

`∑[∑[∑[ogf((1+3x)/(1+2x+x^2))]]]`
-/

namespace A265225.P3268433620524712001
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265225.P3268433620524712001

namespace A265225

/-- `∑[∑[∑[ogf((1+3x)/(1+2x+x^2))]]]` -/
def P3268433620524712001.Spec : Prop :=
  ∀ n, P3268433620524712001.a n = A265225 n

end A265225

/-! ## A265225.P16850969835801337168

`ogf((1+3x)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A265225.P16850969835801337168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -1, -2, 2, 1, -1] n

end

end A265225.P16850969835801337168

namespace A265225

/-- `ogf((1+3x)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P16850969835801337168.Spec : Prop :=
  ∀ n, P16850969835801337168.a n = A265225 n

end A265225

/-! ## A265225.P17985350005621988620

`∑[∑[2-xor(1, a(n-1))]]` with `a(0)=1`
-/

namespace A265225.P17985350005621988620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  2 - Int.xor 1 (f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265225.P17985350005621988620

namespace A265225

/-- `∑[∑[2-xor(1, a(n-1))]]` -/
def P17985350005621988620.Spec : Prop :=
  ∀ n, P17985350005621988620.a n = A265225 n

end A265225

/-! ## A265225.P14442068036820903103

`∑[n+2-Δ[lcm(2, n)/2]]`
-/

namespace A265225.P14442068036820903103
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265225.P14442068036820903103

namespace A265225

/-- `∑[n+2-Δ[lcm(2, n)/2]]` -/
def P14442068036820903103.Spec : Prop :=
  ∀ n, P14442068036820903103.a n = (A265225 n : ℚ)

end A265225

/-! ## A265225.P12031319034902973954

`∑[n+1]+∑[n]%(n+1)`
-/

namespace A265225.P12031319034902973954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

end

end A265225.P12031319034902973954

namespace A265225

/-- `∑[n+1]+∑[n]%(n+1)` -/
def P12031319034902973954.Spec : Prop :=
  ∀ n, (P12031319034902973954.a n : ℤ) = A265225 n

end A265225

/-! ## A265225.P16010011137874751145

`∑[n+2]-gcd(n+1, ∑[n])`
-/

namespace A265225.P16010011137874751145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A265225.P16010011137874751145

namespace A265225

/-- `∑[n+2]-gcd(n+1, ∑[n])` -/
def P16010011137874751145.Spec : Prop :=
  ∀ n, P16010011137874751145.a n = A265225 n

end A265225

/-! ## A265225.P13713891504494007196

`(n+1)*and(n+3, -2)/2`
-/

namespace A265225.P13713891504494007196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * Int.land (n + 3 : ℤ) (-2) : ℚ) / 2

end

end A265225.P13713891504494007196

namespace A265225

/-- `(n+1)*and(n+3, -2)/2` -/
def P13713891504494007196.Spec : Prop :=
  ∀ n, P13713891504494007196.a n = (A265225 n : ℚ)

end A265225

/-! ## A265225.P4092076646308007839

`floor((n+2)*or(1, n+1)/2)`
-/

namespace A265225.P4092076646308007839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) * ((Nat.lor 1 (n + 1) : ℚ) / 2)⌋

end

end A265225.P4092076646308007839

namespace A265225

/-- `floor((n+2)*or(1, n+1)/2)` -/
def P4092076646308007839.Spec : Prop :=
  ∀ n, P4092076646308007839.a n = A265225 n

end A265225

/-! ## A265225.P14879845327158440005

`(n+1)*∑[and(1, n)]+n+1`
-/

namespace A265225.P14879845327158440005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A265225.P14879845327158440005

namespace A265225

/-- `(n+1)*∑[and(1, n)]+n+1` -/
def P14879845327158440005.Spec : Prop :=
  ∀ n, (P14879845327158440005.a n : ℤ) = A265225 n

end A265225

/-! ## A265225.P17413549818633914050

`(or(1, n+1)+1)*(n+1)/2`
-/

namespace A265225.P17413549818633914050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) + 1) * (n + 1) : ℚ) / 2

end

end A265225.P17413549818633914050

namespace A265225

/-- `(or(1, n+1)+1)*(n+1)/2` -/
def P17413549818633914050.Spec : Prop :=
  ∀ n, P17413549818633914050.a n = (A265225 n : ℚ)

end A265225

/-! ## A265225.P16530360040051037523

`(n+1)*∑[1-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A265225.P16530360040051037523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265225.P16530360040051037523

namespace A265225

/-- `(n+1)*∑[1-a(n-1)]` -/
def P16530360040051037523.Spec : Prop :=
  ∀ n, P16530360040051037523.a n = A265225 n

end A265225

/-! ## A265225.P5729755373501727715

`(and(1, n)+n+2)*(n+1)/2`
-/

namespace A265225.P5729755373501727715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n + (n + 2)) * (n + 1) : ℚ) / 2

end

end A265225.P5729755373501727715

namespace A265225

/-- `(and(1, n)+n+2)*(n+1)/2` -/
def P5729755373501727715.Spec : Prop :=
  ∀ n, P5729755373501727715.a n = (A265225 n : ℚ)

end A265225

/-! ## A265225.P12307092116258820463

`floor((5/4+n)²-a(n-1))` with `a(0)=1`
-/

namespace A265225.P12307092116258820463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ 2 - (a (n - 1) : ℚ)⌋

end

end A265225.P12307092116258820463

namespace A265225

/-- `floor((5/4+n)²-a(n-1))` -/
def P12307092116258820463.Spec : Prop :=
  ∀ n, P12307092116258820463.a n = A265225 n

end A265225

/-! ## A265225.P16151271237270366762

`∑[∑[2*n*and(1, n)-(n-1)]]`
-/

namespace A265225.P16151271237270366762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.land 1 n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265225.P16151271237270366762

namespace A265225

/-- `∑[∑[2*n*and(1, n)-(n-1)]]` -/
def P16151271237270366762.Spec : Prop :=
  ∀ n, P16151271237270366762.a n = A265225 n

end A265225

/-! ## A265225.P11434689990607006798

`∑[∑[2-(-1)^n]]-a(n-1)` with `a(0)=1`
-/

namespace A265225.P11434689990607006798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A265225.P11434689990607006798

namespace A265225

/-- `∑[∑[2-(-1)^n]]-a(n-1)` -/
def P11434689990607006798.Spec : Prop :=
  ∀ n, P11434689990607006798.a n = A265225 n

end A265225

/-! ## A265225.P2405198130574537812

`∑[n+2]-(n+1)/(and(1, n)+1)`
-/

namespace A265225.P2405198130574537812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A265225.P2405198130574537812

namespace A265225

/-- `∑[n+2]-(n+1)/(and(1, n)+1)` -/
def P2405198130574537812.Spec : Prop :=
  ∀ n, P2405198130574537812.a n = (A265225 n : ℚ)

end A265225

/-! ## A265225.P8864282714371435852

`(n+1)/∏[xor(1, n+2)/(n+3)]`
-/

namespace A265225.P8864282714371435852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 2) : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A265225.P8864282714371435852

namespace A265225

/-- `(n+1)/∏[xor(1, n+2)/(n+3)]` -/
def P8864282714371435852.Spec : Prop :=
  ∀ n, P8864282714371435852.a n = (A265225 n : ℚ)

end A265225

/-! ## A265225.P14314599155659573338

`∑[∑[4-a(n-1)]-a(n-1)]` with `a(0)=1`
-/

namespace A265225.P14314599155659573338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265225.P14314599155659573338

namespace A265225

/-- `∑[∑[4-a(n-1)]-a(n-1)]` -/
def P14314599155659573338.Spec : Prop :=
  ∀ n, P14314599155659573338.a n = A265225 n

end A265225

/-! ## A265225.P12363239365681773376

`(n+1)*(gcd(2, n-1)+n+1)/2`
-/

namespace A265225.P12363239365681773376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (Int.gcd 2 ((n : ℤ) - 1) + (n + 1)) : ℚ) / 2

end

end A265225.P12363239365681773376

namespace A265225

/-- `(n+1)*(gcd(2, n-1)+n+1)/2` -/
def P12363239365681773376.Spec : Prop :=
  ∀ n, P12363239365681773376.a n = (A265225 n : ℚ)

end A265225

/-!
# A265226: Self-convolution of A257889.

The programs for A265226, there is no canonical definition to state claims against.
-/

/-! ## A265226.P10575360125339320931

`∑{#}[n, A257889(n-#)*A257889(#)]`
-/

namespace A265226.P10575360125339320931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A257889 (n - k) * A257889 k

end

end A265226.P10575360125339320931

/-! ## A265226.P16063499720896293619

`A257889(2*n)/A257889(n)`
-/

namespace A265226.P16063499720896293619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257889 (2 * n) : ℚ) / (A257889 n : ℚ)

end

end A265226.P16063499720896293619

/-! ## A265226.P9500918852574219133

`record[A257889(n%10+n)]/A257889(n)`
-/

namespace A265226.P9500918852574219133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257889 (n % 10 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A257889 n : ℚ)

end

end A265226.P9500918852574219133

/-! ## A265226.P13224652204874805910

`record[A257889(A131508(n))]/A257889(n)`
-/

namespace A265226.P13224652204874805910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257889 (A131508 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A257889 n : ℚ)

end

end A265226.P13224652204874805910

/-! ## A265226.P12675024100554169858

`record[A257889(n)/A257889(A038572(n))]`
-/

namespace A265226.P12675024100554169858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257889 n : ℚ) / (A257889 (A038572 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265226.P12675024100554169858

/-!
# A265227: Nonnegative m for which k*floor(m^2/9) = floor(k*m^2/9), with 2 < k < 9.

The programs for A265227, the canonical program `A265227.P9793585144549180262` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265227 has offset 1).

The definition of A265227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265227.P1164863357318146448

`ogf((x+2x^2+3x^3+2x^4+x^5)/(1-x-x^5+x^6))`
-/

namespace A265227.P1164863357318146448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3, 2, 1] [1, -1, 0, 0, 0, -1, 1] n

end

end A265227.P1164863357318146448

namespace A265227

/-- `ogf((x+2x^2+3x^3+2x^4+x^5)/(1-x-x^5+x^6))` -/
def P1164863357318146448.Spec : Prop :=
  ∀ n, P1164863357318146448.a n = A265227 (n + 1)

end A265227

/-! ## A265227.P9793585144549180262

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=8, a(5)=9`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265227

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P9793585144549180262.Spec : Prop :=
  ∀ n, P9793585144549180262.a n = A265227 (n + 1)

theorem P9793585144549180262.correct : P9793585144549180262.Spec := by
  intro n
  simp only [A265227, Nat.add_sub_cancel]

end A265227

/-! ## A265227.P18079424561223887415

`∑[gcd(6, n%5)%5]-1`
-/

namespace A265227.P18079424561223887415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n % 5) % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A265227.P18079424561223887415

namespace A265227

/-- `∑[gcd(6, n%5)%5]-1` -/
def P18079424561223887415.Spec : Prop :=
  ∀ n, P18079424561223887415.a n = A265227 (n + 1)

end A265227

/-! ## A265227.P12845627008466990187

`a(n-5)+9` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=8`
-/

namespace A265227.P12845627008466990187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6, 8] fun n a =>
  a (n - 5) + 9

end

end A265227.P12845627008466990187

namespace A265227

/-- `a(n-5)+9` -/
def P12845627008466990187.Spec : Prop :=
  ∀ n, (P12845627008466990187.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P13712783030701320222

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=2, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A265227.P13712783030701320222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 2, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265227.P13712783030701320222

namespace A265227

/-- `∑[floor(a(n-5))]` -/
def P13712783030701320222.Spec : Prop :=
  ∀ n, (P13712783030701320222.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P16722506893165570266

`∑[a(n-5)%4]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=2, a(5)=1`
-/

namespace A265227.P16722506893165570266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 2, 1] fun n f1 =>
  f1 (n - 5) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265227.P16722506893165570266

namespace A265227

/-- `∑[a(n-5)%4]` -/
def P16722506893165570266.Spec : Prop :=
  ∀ n, (P16722506893165570266.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P12526408746890980518

`comp[A056527(n+1)]`
-/

namespace A265227.P12526408746890980518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A265227.P12526408746890980518

namespace A265227

/-- `comp[A056527(n+1)]` -/
def P12526408746890980518.Spec : Prop :=
  ∀ n, (P12526408746890980518.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P17092976499513495229

`∑[A076839(n+1)]-1`
-/

namespace A265227.P17092976499513495229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A265227.P17092976499513495229

namespace A265227

/-- `∑[A076839(n+1)]-1` -/
def P17092976499513495229.Spec : Prop :=
  ∀ n, P17092976499513495229.a n = A265227 (n + 1)

end A265227

/-! ## A265227.P3749709410508907651

`∑[A000041(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=2`
-/

namespace A265227.P3749709410508907651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 2] fun n f1 =>
  A000041 (f1 (n - 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265227.P3749709410508907651

namespace A265227

/-- `∑[A000041(a(n-5))]` -/
def P3749709410508907651.Spec : Prop :=
  ∀ n, P3749709410508907651.a n = A265227 (n + 1)

end A265227

/-! ## A265227.P15393895812253772310

`A187318(n)+A011658(n)`
-/

namespace A265227.P15393895812253772310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n + A011658 n

end

end A265227.P15393895812253772310

namespace A265227

/-- `A187318(n)+A011658(n)` -/
def P15393895812253772310.Spec : Prop :=
  ∀ n, P15393895812253772310.a n = A265227 (n + 1)

end A265227

/-! ## A265227.P15667994477059441968

`∪[A017257(n), A055264(n)]`
-/

namespace A265227.P15667994477059441968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265227.P15667994477059441968

namespace A265227

/-- `∪[A017257(n), A055264(n)]` -/
def P15667994477059441968.Spec : Prop :=
  ∀ n, (P15667994477059441968.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P12764405460597606077

`∪[A008585(n), A350667(n)]`
-/

namespace A265227.P12764405460597606077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265227.P12764405460597606077

namespace A265227

/-- `∪[A008585(n), A350667(n)]` -/
def P12764405460597606077.Spec : Prop :=
  ∀ n, (P12764405460597606077.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P7685164999528456471

`∪[A055264(n), A350667(n)]`
-/

namespace A265227.P7685164999528456471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265227.P7685164999528456471

namespace A265227

/-- `∪[A055264(n), A350667(n)]` -/
def P7685164999528456471.Spec : Prop :=
  ∀ n, (P7685164999528456471.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P8026446638593960288

`∪[A003663(n+1), A008585(n)]`
-/

namespace A265227.P8026446638593960288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265227.P8026446638593960288

namespace A265227

/-- `∪[A003663(n+1), A008585(n)]` -/
def P8026446638593960288.Spec : Prop :=
  ∀ n, (P8026446638593960288.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P6570864249236976388

`∪[A003663(n+1), A055264(n)]`
-/

namespace A265227.P6570864249236976388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265227.P6570864249236976388

namespace A265227

/-- `∪[A003663(n+1), A055264(n)]` -/
def P6570864249236976388.Spec : Prop :=
  ∀ n, (P6570864249236976388.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P10499074719411108954

`∪[A054966(n+1), A008486(n)]`
-/

namespace A265227.P10499074719411108954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265227.P10499074719411108954

namespace A265227

/-- `∪[A054966(n+1), A008486(n)]` -/
def P10499074719411108954.Spec : Prop :=
  ∀ n, (P10499074719411108954.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P3113564076607437450

`∪[A054966(n+1), A008585(n)]`
-/

namespace A265227.P3113564076607437450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265227.P3113564076607437450

namespace A265227

/-- `∪[A054966(n+1), A008585(n)]` -/
def P3113564076607437450.Spec : Prop :=
  ∀ n, (P3113564076607437450.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P2648984477386708676

`∪[A056020(n+1), A008585(n)]`
-/

namespace A265227.P2648984477386708676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265227.P2648984477386708676

namespace A265227

/-- `∪[A056020(n+1), A008585(n)]` -/
def P2648984477386708676.Spec : Prop :=
  ∀ n, (P2648984477386708676.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P10662172203352872117

`∪[A054966(n+1), A055264(n)]`
-/

namespace A265227.P10662172203352872117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265227.P10662172203352872117

namespace A265227

/-- `∪[A054966(n+1), A055264(n)]` -/
def P10662172203352872117.Spec : Prop :=
  ∀ n, (P10662172203352872117.a n : ℤ) = A265227 (n + 1)

end A265227

/-! ## A265227.P925640902649116438

`∪[A056020(n+1), A055264(n)]`
-/

namespace A265227.P925640902649116438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265227.P925640902649116438

namespace A265227

/-- `∪[A056020(n+1), A055264(n)]` -/
def P925640902649116438.Spec : Prop :=
  ∀ n, (P925640902649116438.a n : ℤ) = A265227 (n + 1)

end A265227

/-!
# A265228: Interleave the even numbers with the numbers that are congruent to {1, 3, 7} mod 8.

The programs for A265228, the canonical program `A265228.P14231339331869120306` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265228 has offset 0).

The definition of A265228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265228.P14231339331869120306

`a(n-6)-(-1)^n+7` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=7`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265228

/-- `a(n-6)-(-1)^n+7` -/
def P14231339331869120306.Spec : Prop :=
  ∀ n, P14231339331869120306.a n = A265228 n

theorem P14231339331869120306.correct : P14231339331869120306.Spec := by
  intro n
  simp only [A265228]

end A265228

/-! ## A265228.P11608041677401280876

`n+(1-(-1)^n)*floor(n/6+1/3)`
-/

namespace A265228.P11608041677401280876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - (-1) ^ n) * ⌊(n : ℚ) / 6 + (1 : ℚ) / 3⌋

end

end A265228.P11608041677401280876

namespace A265228

/-- `n+(1-(-1)^n)*floor(n/6+1/3)` -/
def P11608041677401280876.Spec : Prop :=
  ∀ n, P11608041677401280876.a n = A265228 n

end A265228

/-! ## A265228.P3112280529303917882

`ogf((x+2x^2+2x^3+2x^4+4x^5+2x^6+x^7)/(1-x^2-x^6+x^8))`
-/

namespace A265228.P3112280529303917882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 2, 4, 2, 1] [1, 0, -1, 0, 0, 0, -1, 0, 1] n

end

end A265228.P3112280529303917882

namespace A265228

/-- `ogf((x+2x^2+2x^3+2x^4+4x^5+2x^6+x^7)/(1-x^2-x^6+x^8))` -/
def P3112280529303917882.Spec : Prop :=
  ∀ n, P3112280529303917882.a n = A265228 n

end A265228

/-! ## A265228.P9685684243294820746

`A347365(n)%A047223(n+1)`
-/

namespace A265228.P9685684243294820746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347365 n) (A047223 (n + 1))

end

end A265228.P9685684243294820746

namespace A265228

/-- `A347365(n)%A047223(n+1)` -/
def P9685684243294820746.Spec : Prop :=
  ∀ n, P9685684243294820746.a n = A265228 n

end A265228

/-! ## A265228.P14177448561379444030

`A265672(A047303(n+1))`
-/

namespace A265228.P14177448561379444030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265672 (A047303 (n + 1)).toNat

end

end A265228.P14177448561379444030

namespace A265228

/-- `A265672(A047303(n+1))` -/
def P14177448561379444030.Spec : Prop :=
  ∀ n, P14177448561379444030.a n = A265228 n

end A265228

/-! ## A265228.P14408611084417579986

`A279211(A260708(n))`
-/

namespace A265228.P14408611084417579986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279211 (A260708 n).toNat

end

end A265228.P14408611084417579986

namespace A265228

/-- `A279211(A260708(n))` -/
def P14408611084417579986.Spec : Prop :=
  ∀ n, P14408611084417579986.a n = A265228 n

end A265228

/-!
# A265229: Number of n X 2 arrays containing 2 copies of 0..n-1 with no equal vertical neighbors and new values introduced sequentially from 0.

The programs for A265229, there is no canonical definition to state claims against.
-/

/-! ## A265229.P11904819363905245608

`∑[A278990(n+1)]+1`
-/

namespace A265229.P11904819363905245608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A265229.P11904819363905245608

/-! ## A265229.P11614298081357624829

`∑[A302750(2*(n+1))]`
-/

namespace A265229.P11614298081357624829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302750 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265229.P11614298081357624829

/-! ## A265229.P15112350842487612454

`∑[∑[A003436(n+1)]]+1`
-/

namespace A265229.P15112350842487612454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A265229.P15112350842487612454

/-! ## A265229.P4739332523921273745

`∑[A079267(∑[n+1])]+1`
-/

namespace A265229.P4739332523921273745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A265229.P4739332523921273745

/-! ## A265229.P1883784066705925905

`∑[A278990(abs(A131738(n)))]`
-/

namespace A265229.P1883784066705925905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278990 |A131738 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265229.P1883784066705925905

/-!
# A265230: Number of nX3 arrays containing 3 copies of 0..n-1 with no equal vertical neighbors and new values introduced sequentially from 0.

The programs for A265230, there is no canonical definition to state claims against.
-/

/-! ## A265230.P8944658130888848944

`A265232(∑[n+3]+1)`
-/

namespace A265230.P8944658130888848944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265232 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265230.P8944658130888848944

/-! ## A265230.P10570224271416307282

`record[A265232(A347633(n+1))]`
-/

namespace A265230.P10570224271416307282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265232 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265230.P10570224271416307282

/-! ## A265230.P15257811628896127210

`record[A265232(Δ[A054974(n+2)])]`
-/

namespace A265230.P15257811628896127210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265232 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265230.P15257811628896127210

/-! ## A265230.P4335869030896282475

`record[char[A055998(n)]*A265232(n+1)]`
-/

namespace A265230.P4335869030896282475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A265232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265230.P4335869030896282475

/-!
# A265231: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no equal vertical neighbors and new values introduced sequentially from 0.

The programs for A265231, there is no canonical definition to state claims against.
-/

/-! ## A265231.P6854877275761160016

`A265232(∑[round(acot(n)+n)+4])`
-/

namespace A265231.P6854877275761160016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265232 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265231.P6854877275761160016

/-! ## A265231.P587138579417270803

`A265232(Δ[n²]+∑[n+2]+4)`
-/

namespace A265231.P587138579417270803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265232 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A265231.P587138579417270803

/-! ## A265231.P2132294125595427714

`record[A265232(∑[A222210(n+3)])]`
-/

namespace A265231.P2132294125595427714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265232 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265231.P2132294125595427714

/-!
# A265232: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no equal vertical neighbors and new values introduced sequentially from 0.

The programs for A265232, there is no canonical definition to state claims against.
-/

/-! ## A265232.P230629656306711311

`A318560(A274390(n)+A054576(n+1))`
-/

namespace A265232.P230629656306711311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318560 (A274390 n + A054576 (n + 1)).toNat

end

end A265232.P230629656306711311

/-!
# A265233: Number of 3 X n arrays containing n copies of 0..2 with no equal vertical neighbors and new values introduced sequentially from 0.

The programs for A265233, there is no canonical definition to state claims against.
-/

/-! ## A265233.P5421447420570493904

`A265232(∑[n+1]+3)`
-/

namespace A265233.P5421447420570493904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265232 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A265233.P5421447420570493904

/-!
# A265234: Number of 4 X n arrays containing n copies of 0..4-1 with no equal vertical neighbors and new values introduced sequentially from 0.

The programs for A265234, there is no canonical definition to state claims against.
-/

/-! ## A265234.P13659428180383727073

`A265232(∑[n+3]+7)`
-/

namespace A265234.P13659428180383727073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265232 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265234.P13659428180383727073

/-!
# A265235: Number of 5Xn arrays containing n copies of 0..5-1 with no equal vertical neighbors and new values introduced sequentially from 0.

The programs for A265235, there is no canonical definition to state claims against.
-/

/-! ## A265235.P9505075044088282944

`A265232(A155212(n)+13)`
-/

namespace A265235.P9505075044088282944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265232 (A155212 n + 13).toNat

end

end A265235.P9505075044088282944

/-! ## A265235.P7631096156980520882

`A265232(A056000(n)+15)`
-/

namespace A265235.P7631096156980520882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265232 (A056000 n + 15).toNat

end

end A265235.P7631096156980520882

/-!
# A265236: Number of solutions to the equation A x B = C, where A, B and C are nonnegative numbers appearing as (contiguous) substrings of the binary representation of n.

The programs for A265236, there is no canonical definition to state claims against.
-/

/-! ## A265236.P13345875190722412776

`A265183(A007088(n))`
-/

namespace A265236.P13345875190722412776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265183 (A007088 n).toNat

end

end A265236.P13345875190722412776

/-! ## A265236.P10023749751464525424

`A265183(A115848(n))`
-/

namespace A265236.P10023749751464525424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265183 (A115848 n).toNat

end

end A265236.P10023749751464525424

/-! ## A265236.P13538736668349821019

`A265183(sqrt(A063009(n)))`
-/

namespace A265236.P13538736668349821019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265183 (SequenceMachineLib.roundAway (Real.sqrt (A063009 n : ℝ))).toNat

end

end A265236.P13538736668349821019

/-! ## A265236.P10868633254072158348

`A265183(A185544(2*n))`
-/

namespace A265236.P10868633254072158348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265183 (A185544 (2 * n)).toNat

end

end A265236.P10868633254072158348

/-! ## A265236.P9061682572365754418

`A265183(A204093(n)/6)`
-/

namespace A265236.P9061682572365754418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265183 (SequenceMachineLib.roundAway ((A204093 n : ℚ) / 6)).toNat

end

end A265236.P9061682572365754418

/-!
# A265237: Carmichael numbers (A002997) that are the sum of two squares.

The programs for A265237, there is no canonical definition to state claims against.
-/

/-! ## A265237.P14407096586102096356

`A083738(lt[A072268(n), A083692(n)])`
-/

namespace A265237.P14407096586102096356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083738 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265237.P14407096586102096356

/-!
# A265238: Number of nX3 arrays containing 3 copies of 0..n-1 with no equal antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265238, there is no canonical definition to state claims against.
-/

/-! ## A265238.P10896866983181849944

`A265241(∑[n+3]+1)`
-/

namespace A265238.P10896866983181849944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265238.P10896866983181849944

/-! ## A265238.P12120235041576694573

`record[A265241(A237519(n+1))]`
-/

namespace A265238.P12120235041576694573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265238.P12120235041576694573

/-! ## A265238.P4375112537175801133

`record[A185018(n)*A265241(n+1)]`
-/

namespace A265238.P4375112537175801133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A265241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265238.P4375112537175801133

/-! ## A265238.P2490053250916995088

`record[A265241(n+1)^A194702(n+1)]`
-/

namespace A265238.P2490053250916995088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265241 (n + 1) : ℚ) ^ (A194702 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265238.P2490053250916995088

/-! ## A265238.P13327643258084545834

`record[A265241(n+2)^A185018(n+1)]`
-/

namespace A265238.P13327643258084545834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265241 (n + 2) : ℚ) ^ (A185018 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265238.P13327643258084545834

/-!
# A265239: Number of n X 4 arrays of permutations of 4 copies of 0..n-1 with no equal antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265239, there is no canonical definition to state claims against.
-/

/-! ## A265239.P671388302075446760

`A265241(∑[n+4]+3)`
-/

namespace A265239.P671388302075446760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A265239.P671388302075446760

/-!
# A265240: Number of n X 5 arrays of permutations of 5 copies of 0..n-1 with no equal antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265240, there is no canonical definition to state claims against.
-/

/-! ## A265240.P17940721201253754830

`A265241(eq[4, A054123(n)])`
-/

namespace A265240.P17940721201253754830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265240.P17940721201253754830

/-! ## A265240.P18432829524101154537

`A265241(A055998(n+2)+n+4)`
-/

namespace A265240.P18432829524101154537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (A055998 (n + 2) + (n + 4 : ℤ)).toNat

end

end A265240.P18432829524101154537

/-!
# A265241: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no equal antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265241, there is no canonical definition to state claims against.
-/

/-! ## A265241.P15831799831097510256

`A232012(A214986(n+1)^A002262(n))`
-/

namespace A265241.P15831799831097510256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232012 (SequenceMachineLib.roundAway ((A214986 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A265241.P15831799831097510256

/-!
# A265242: Number of 3Xn arrays containing n copies of 0..3-1 with no equal antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265242, there is no canonical definition to state claims against.
-/

/-! ## A265242.P17779868971400070125

`A265241(∑[n+2]+4)`
-/

namespace A265242.P17779868971400070125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265242.P17779868971400070125

/-! ## A265242.P13693395258852865655

`A265241(A167614(n+1))%A199562(n)`
-/

namespace A265242.P13693395258852865655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265241 (A167614 (n + 1)).toNat) (A199562 n)

end

end A265242.P13693395258852865655

/-! ## A265242.P18246758275427296357

`gcd(A000038(n), A265241(A167614(n+1)))`
-/

namespace A265242.P18246758275427296357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A265241 (A167614 (n + 1)).toNat)

end

end A265242.P18246758275427296357

/-! ## A265242.P13342759054900492465

`lcm(A029091(n), A265241(A167614(n+1)))`
-/

namespace A265242.P13342759054900492465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029091 n) (A265241 (A167614 (n + 1)).toNat)

end

end A265242.P13342759054900492465

/-! ## A265242.P6619539025328429862

`or(A000007(n), A265241(A167614(n+1)))`
-/

namespace A265242.P6619539025328429862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A265241 (A167614 (n + 1)).toNat)

end

end A265242.P6619539025328429862

/-!
# A265243: Number of 4Xn arrays containing n copies of 0..4-1 with no equal antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265243, there is no canonical definition to state claims against.
-/

/-! ## A265243.P17379121293369471791

`A265241(A141214(n)+7)`
-/

namespace A265243.P17379121293369471791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (A141214 n + 7).toNat

end

end A265243.P17379121293369471791

/-! ## A265243.P12561536310029545974

`A265241(A052905(n)+9)`
-/

namespace A265243.P12561536310029545974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (A052905 n + 9).toNat

end

end A265243.P12561536310029545974

/-! ## A265243.P9721347282486635445

`A265241(A055999(n)+10)`
-/

namespace A265243.P9721347282486635445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (A055999 n + 10).toNat

end

end A265243.P9721347282486635445

/-! ## A265243.P3201417547592087738

`A265241(A167614(n+2)+1)`
-/

namespace A265243.P3201417547592087738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (A167614 (n + 2) + 1).toNat

end

end A265243.P3201417547592087738

/-! ## A265243.P9351498967697445197

`A265241(eq[3, A002262(n)]+1)`
-/

namespace A265243.P9351498967697445197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A265243.P9351498967697445197

/-!
# A265244: Number of 5Xn arrays containing n copies of 0..5-1 with no equal antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265244, there is no canonical definition to state claims against.
-/

/-! ## A265244.P13398355748483671980

`A265241(A155212(n)+13)`
-/

namespace A265244.P13398355748483671980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (A155212 n + 13).toNat

end

end A265244.P13398355748483671980

/-!
# A265245: Triangle read by rows: T(n,k) is the number of partitions of n for which the sum of the squares of the parts is k (n>=0, k>=0).

The programs for A265245, there is no canonical definition to state claims against.
-/

/-! ## A265245.P1415748714548531406

`and(1-a(n-1), A174905(A208314(n+1)+1))` with `a(0)=1`
-/

namespace A265245.P1415748714548531406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (1 - a (n - 1)) (A174905 (A208314 (n + 1) + 1).toNat)

end

end A265245.P1415748714548531406

/-! ## A265245.P12574381023339714178

`A023532(A093079(n+3)*A129182(n))`
-/

namespace A265245.P12574381023339714178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A093079 (n + 3) * A129182 n).toNat

end

end A265245.P12574381023339714178

/-! ## A265245.P12296724063256374345

`A023532(lcm(A093079(n+3), A129182(n)))`
-/

namespace A265245.P12296724063256374345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (Int.lcm (A093079 (n + 3)) (A129182 n))

end

end A265245.P12296724063256374345

/-! ## A265245.P8750384921844133440

`and(A129174(n), A376665(n+1))`
-/

namespace A265245.P8750384921844133440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129174 n) (A376665 (n + 1))

end

end A265245.P8750384921844133440

/-!
# A265246: Triangle read by rows giving successive states of cellular automaton generated by "Rule 149" initiated with a single ON (black) cell.

The programs for A265246, there is no canonical definition to state claims against.
-/

/-! ## A265246.P4668837219395723106

`xor(a(n-1)*a(n-2), A071032(n))` with `a(0)=1, a(1)=0`
-/

namespace A265246.P4668837219395723106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.xor (a (n - 1) * a (n - 2)) (A071032 n)

end

end A265246.P4668837219395723106

/-! ## A265246.P1127133590440906687

`A265695(A020703(n+1)-1)`
-/

namespace A265246.P1127133590440906687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265695 (A020703 (n + 1) - 1).toNat

end

end A265246.P1127133590440906687

/-! ## A265246.P8294775394886251864

`A265695(A020703(n+2))`
-/

namespace A265246.P8294775394886251864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265695 (A020703 (n + 2)).toNat

end

end A265246.P8294775394886251864

/-! ## A265246.P11005962881280660975

`A118249(A118245(n+1)*A194031(2*n+1))`
-/

namespace A265246.P11005962881280660975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118249 (A118245 (n + 1) * A194031 (2 * n + 1)).toNat

end

end A265246.P11005962881280660975

/-! ## A265246.P5463575320366742346

`A072626(A223833(n+2))`
-/

namespace A265246.P5463575320366742346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072626 (A223833 (n + 2)).toNat

end

end A265246.P5463575320366742346

/-!
# A265247: Triangle read by rows: T(n,k) is the number of partitions of n in which the 2nd smallest part is k when the partition has at least 2 distinct parts and 0 otherwise; (n>=1, 0 <= k <= n).

The programs for A265247, there is no canonical definition to state claims against.
-/

/-! ## A265247.P14374486024826868117

`gcd(A291656(A291656(n)), A340524(n+1))`
-/

namespace A265247.P14374486024826868117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A291656 (A291656 n).toNat) (A340524 (n + 1))

end

end A265247.P14374486024826868117

/-! ## A265247.P3512720893679582600

`A340524(n+1)/A255326(A000288(n))`
-/

namespace A265247.P3512720893679582600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340524 (n + 1) : ℚ) / (A255326 (A000288 n).toNat : ℚ)

end

end A265247.P3512720893679582600

/-! ## A265247.P8691332833270045961

`A340524(n+1)/A290105(A051870(n)+A049923(n+1))`
-/

namespace A265247.P8691332833270045961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340524 (n + 1) : ℚ) / (A290105 (A051870 n + A049923 (n + 1)).toNat : ℚ)

end

end A265247.P8691332833270045961

/-! ## A265247.P11717144145899286812

`A340524(n+1)-A144602(A290645(n))`
-/

namespace A265247.P11717144145899286812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340524 (n + 1) - A144602 (A290645 n).toNat

end

end A265247.P11717144145899286812

/-! ## A265247.P4672673709045718926

`A139039(A361394(n))*A268189(n+1)`
-/

namespace A265247.P4672673709045718926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139039 (A361394 n).toNat * A268189 (n + 1)

end

end A265247.P4672673709045718926

/-!
# A265250: Number of partitions of n having no parts strictly between the smallest and the largest part (n>=1).

The programs for A265250, there is no canonical definition to state claims against.
-/

/-! ## A265250.P70715142771426095

`A000005(n+1)+A002133(n+1)`
-/

namespace A265250.P70715142771426095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A002133 (n + 1)

end

end A265250.P70715142771426095

/-! ## A265250.P12386096986562777800

`A059819(n+1)-A065608(n+1)`
-/

namespace A265250.P12386096986562777800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059819 (n + 1) - A065608 (n + 1)

end

end A265250.P12386096986562777800

/-! ## A265250.P1904534084535727789

`A002133(n+1)+A006218(n+1)-A006218(n)`
-/

namespace A265250.P1904534084535727789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002133 (n + 1) + (A006218 (n + 1) - A006218 n)

end

end A265250.P1904534084535727789

/-! ## A265250.P4103952135415645134

`A000005(n+1)+A059819(n+1)-A000203(n+1)`
-/

namespace A265250.P4103952135415645134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A059819 (n + 1) - A000203 (n + 1))

end

end A265250.P4103952135415645134

/-! ## A265250.P2955582916076700266

`A000005(n+1)+A274628(n+1)-A129235(n+1)`
-/

namespace A265250.P2955582916076700266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A274628 (n + 1) - A129235 (n + 1))

end

end A265250.P2955582916076700266

/-! ## A265250.P8661091067103986180

`A000005(n+1)+2*A270060(n+1)-A100073(n+1)`
-/

namespace A265250.P8661091067103986180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (2 * A270060 (n + 1) - A100073 (n + 1))

end

end A265250.P8661091067103986180

/-! ## A265250.P2361734514105044584

`A322483((n+1)²)+A002133(n+1)`
-/

namespace A265250.P2361734514105044584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 ((n + 1) ^ 2) + A002133 (n + 1)

end

end A265250.P2361734514105044584

/-! ## A265250.P3474027728423824470

`A033831(A020338(n+1))+A002133(n+1)`
-/

namespace A265250.P3474027728423824470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (A020338 (n + 1)).toNat + A002133 (n + 1)

end

end A265250.P3474027728423824470

/-!
# A265251: Number of partitions of n such that there is exactly one part which occurs three times, while all other parts occur only once.

The programs for A265251, there is no canonical definition to state claims against.
-/

/-! ## A265251.P15628614514206061195

`A038348(n)-(A090858(n)+A000009(n))`
-/

namespace A265251.P15628614514206061195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n - (A090858 n + A000009 n)

end

end A265251.P15628614514206061195

/-! ## A265251.P17314085676411256468

`A038348(A028310(n))%(A090858(n)+A000009(n))`
-/

namespace A265251.P17314085676411256468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038348 (A028310 n).toNat) (A090858 n + A000009 n)

end

end A265251.P17314085676411256468

/-! ## A265251.P5675292129386295009

`A038348(A000038(n)+n)%(A090858(n)+A000009(n))`
-/

namespace A265251.P5675292129386295009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038348 (A000038 n + (n : ℤ)).toNat) (A090858 n + A000009 n)

end

end A265251.P5675292129386295009

/-! ## A265251.P17261330992617789658

`A038348(A289207(n))-A090858(A233583(n+1))`
-/

namespace A265251.P17261330992617789658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 (A289207 n).toNat - A090858 (A233583 (n + 1)).toNat

end

end A265251.P17261330992617789658

/-! ## A265251.P13105681557601123343

`A264405(∑[C(n, a(n-1))])` with `a(0)=2, a(1)=6`
-/

namespace A265251.P13105681557601123343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265251.P13105681557601123343

/-! ## A265251.P6960933962982657100

`A264405(A152950(n+1))%A000041(n)`
-/

namespace A265251.P6960933962982657100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264405 (A152950 (n + 1)).toNat) (A000041 n)

end

end A265251.P6960933962982657100

/-! ## A265251.P14590309950587793184

`and(A055010(n), A264405(A152950(n+1)))`
-/

namespace A265251.P14590309950587793184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055010 n) (A264405 (A152950 (n + 1)).toNat)

end

end A265251.P14590309950587793184

/-! ## A265251.P7301389169656957677

`char[A061579(n+2)]*A264405(A152950(n+1))`
-/

namespace A265251.P7301389169656957677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A264405 (A152950 (n + 1)).toNat

end

end A265251.P7301389169656957677

/-! ## A265251.P8841649778036392909

`A264405(A152950(n+1))-A142150(A266620(n+1))`
-/

namespace A265251.P8841649778036392909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (A152950 (n + 1)).toNat - A142150 (A266620 (n + 1)).toNat

end

end A265251.P8841649778036392909

/-! ## A265251.P8560088942078224560

`A001924(n)%(A264405(A152950(n+1))-A001924(n))`
-/

namespace A265251.P8560088942078224560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001924 n) (A264405 (A152950 (n + 1)).toNat - A001924 n)

end

end A265251.P8560088942078224560

/-! ## A265251.P3290274930512393308

`A210485(A000124(n))-∑[A096765(n)]`
-/

namespace A265251.P3290274930512393308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A000124 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265251.P3290274930512393308

/-!
# A265252: Number of numbers between min(p) and max(p) that are not parts of the partition p, summed over all partitions of n.

The programs for A265252, there is no canonical definition to state claims against.
-/

/-! ## A265252.P3170126381589572737

`A116686(n+1)+Δ[A000070(n)]-A000070(n)`
-/

namespace A265252.P3170126381589572737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116686 (n + 1) + (f1 (n + 1) - f1 n - A000070 n)

end

end A265252.P3170126381589572737

/-! ## A265252.P11836181520365498700

`A000041(n+1)+A116686(n+1)-A000070(n)`
-/

namespace A265252.P11836181520365498700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A116686 (n + 1) - A000070 n)

end

end A265252.P11836181520365498700

/-! ## A265252.P17782638799742885713

`A116686(n+1)+A194552(n+1)-A182724(n+1)`
-/

namespace A265252.P17782638799742885713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116686 (n + 1) + (A194552 (n + 1) - A182724 (n + 1))

end

end A265252.P17782638799742885713

/-! ## A265252.P6315057315730394075

`A116686(n+1)+record[A035363(n)]-A000070(n)`
-/

namespace A265252.P6315057315730394075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116686 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000070 n)

end

end A265252.P6315057315730394075

/-! ## A265252.P5385543323022326972

`A116686(n+1)+A195820(n+1)-A215513(n+1)`
-/

namespace A265252.P5385543323022326972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116686 (n + 1) + (A195820 (n + 1) - A215513 (n + 1))

end

end A265252.P5385543323022326972

/-! ## A265252.P10349084761344513117

`A116686(n+1)+record[A124094(n)]-A000070(n)`
-/

namespace A265252.P10349084761344513117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116686 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000070 n)

end

end A265252.P10349084761344513117

/-!
# A265253: Triangle read by rows: T(n,k) is the number of partitions of n having k even singletons (n,k>=0).

The programs for A265253, there is no canonical definition to state claims against.
-/

/-! ## A265253.P4297549018445662678

`A235123(A178519(n)+2)`
-/

namespace A265253.P4297549018445662678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235123 (A178519 n + 2).toNat

end

end A265253.P4297549018445662678

/-! ## A265253.P5722866041828637718

`gcd(A057220(A247649(n)), A115584(n+2))`
-/

namespace A265253.P5722866041828637718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057220 (A247649 n).toNat) (A115584 (n + 2))

end

end A265253.P5722866041828637718

/-! ## A265253.P8450089427989270701

`A038548(A069288(n+1)*A316694(n+1))`
-/

namespace A265253.P8450089427989270701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A069288 (n + 1) * A316694 (n + 1)).toNat

end

end A265253.P8450089427989270701

/-! ## A265253.P13427861502582277581

`A023416(A111853(2*n+5)*A284301(n))`
-/

namespace A265253.P13427861502582277581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A111853 (2 * n + 5) * A284301 n).toNat

end

end A265253.P13427861502582277581

/-! ## A265253.P3106973671780530056

`A115584(n+2)%A337496(A243071(3*n+4))`
-/

namespace A265253.P3106973671780530056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115584 (n + 2)) (A337496 (A243071 (3 * n + 4)).toNat)

end

end A265253.P3106973671780530056

/-!
# A265254: Number of partitions of n having no even singletons.

The programs for A265254, there is no canonical definition to state claims against.
-/

/-! ## A265254.P13416041481248406105

`A265253(∑[round(sqrt(n))])`
-/

namespace A265254.P13416041481248406105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265253 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265254.P13416041481248406105

/-! ## A265254.P1616340062605093891

`A276424(∑[n])`
-/

namespace A265254.P1616340062605093891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265254.P1616340062605093891

/-! ## A265254.P647190178438000412

`gcd(floor(acot(n)), A276424((n²+n)/2))`
-/

namespace A265254.P647190178438000412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A276424 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A265254.P647190178438000412

/-! ## A265254.P8878162622452077324

`and(-1, A276424(A000217(n)))`
-/

namespace A265254.P8878162622452077324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A276424 (A000217 n).toNat)

end

end A265254.P8878162622452077324

/-! ## A265254.P14049417037515479208

`gcd(3*char[1], A276424(A179865(n+1)))`
-/

namespace A265254.P14049417037515479208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((3 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A276424 (A179865 (n + 1)).toNat)

end

end A265254.P14049417037515479208

/-! ## A265254.P7597852999975959805

`A014963(xor(42, n)+n)*A276424((n²+n)/2)`
-/

namespace A265254.P7597852999975959805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.xor 42 n + n) * A276424 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A265254.P7597852999975959805

/-! ## A265254.P38086470991316498

`A276424(A000217(n))%A017152(n)`
-/

namespace A265254.P38086470991316498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276424 (A000217 n).toNat) (A017152 n)

end

end A265254.P38086470991316498

/-! ## A265254.P15106207314703986673

`gcd(A000038(n), A276424(A000217(n)))`
-/

namespace A265254.P15106207314703986673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A276424 (A000217 n).toNat)

end

end A265254.P15106207314703986673

/-! ## A265254.P11493310544561288595

`lcm(A276424(A000217(n)), A343785(n+1))`
-/

namespace A265254.P11493310544561288595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A276424 (A000217 n).toNat) (A343785 (n + 1))

end

end A265254.P11493310544561288595

/-! ## A265254.P4895153178043787298

`A007318(C(2, n))*A276424(A000217(n))`
-/

namespace A265254.P4895153178043787298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A276424 (A000217 n).toNat

end

end A265254.P4895153178043787298

/-! ## A265254.P12417133262840229046

`A309873(n+1)²*A276424(A000217(n))`
-/

namespace A265254.P12417133262840229046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) ^ 2 * A276424 (A000217 n).toNat

end

end A265254.P12417133262840229046

/-! ## A265254.P870694009964476702

`A276424(A000217(n))+char[A252679(n+1)]`
-/

namespace A265254.P870694009964476702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276424 (A000217 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265254.P870694009964476702

/-! ## A265254.P17025810176335526614

`A276424(A000217(n))+A008683(4*(n+1))`
-/

namespace A265254.P17025810176335526614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276424 (A000217 n).toNat + A008683 (4 * (n + 1))

end

end A265254.P17025810176335526614

/-! ## A265254.P14271515880970255555

`A167964(A000374(n+1))*A276424(A000217(n))`
-/

namespace A265254.P14271515880970255555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (A000374 (n + 1)).toNat * A276424 (A000217 n).toNat

end

end A265254.P14271515880970255555

/-! ## A265254.P3269489036737837987

`A001221(A267289(n+1))*A276424(A000217(n))`
-/

namespace A265254.P3269489036737837987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A267289 (n + 1)).toNat * A276424 (A000217 n).toNat

end

end A265254.P3269489036737837987

/-! ## A265254.P17569353033892549081

`A276424(A000217(n))*A323022(A000040(n+1))`
-/

namespace A265254.P17569353033892549081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276424 (A000217 n).toNat * A323022 (A000040 (n + 1)).toNat

end

end A265254.P17569353033892549081

/-! ## A265254.P13848906071990692034

`A276424(A000217(n))*A309873(A204911(n+1))`
-/

namespace A265254.P13848906071990692034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276424 (A000217 n).toNat * A309873 (A204911 (n + 1)).toNat

end

end A265254.P13848906071990692034

/-!
# A265256: Number of partitions of n having no odd singletons (n>=0).

The programs for A265256, there is no canonical definition to state claims against.
-/

/-! ## A265256.P9048510412731513141

`A276422(∑[n])`
-/

namespace A265256.P9048510412731513141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265256.P9048510412731513141

/-! ## A265256.P12173259247140786203

`xor(4, xor(4, A276422((n²+n)/2)))`
-/

namespace A265256.P12173259247140786203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (Int.xor 4 (A276422 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat))

end

end A265256.P12173259247140786203

/-! ## A265256.P3227545311740961197

`and(-1, A276422(A000217(n)))`
-/

namespace A265256.P3227545311740961197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A276422 (A000217 n).toNat)

end

end A265256.P3227545311740961197

/-! ## A265256.P1263012093880082051

`gcd(A000038(n), A276422((n²+n)/2))`
-/

namespace A265256.P1263012093880082051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A276422 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A265256.P1263012093880082051

/-! ## A265256.P5298362943267369034

`A007318(C(2, n))*A276422((n²+n)/2)`
-/

namespace A265256.P5298362943267369034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A276422 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A265256.P5298362943267369034

/-! ## A265256.P3169366713502967500

`A276422(A179865(n+1))^((n+2)%(n+1))`
-/

namespace A265256.P3169366713502967500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276422 (A179865 (n + 1)).toNat ^ ((n + 2) % (n + 1))

end

end A265256.P3169366713502967500

/-! ## A265256.P11066578078683279344

`A276422((n²+n)/2)+A008683(4*(n+1))`
-/

namespace A265256.P11066578078683279344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276422 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + A008683 (4 * (n + 1))

end

end A265256.P11066578078683279344

/-! ## A265256.P7306595726778595067

`A000005(gcd(n, n+1))*A276422((n²+n)/2)`
-/

namespace A265256.P7306595726778595067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A276422 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A265256.P7306595726778595067

/-! ## A265256.P6058065792387338892

`A276422(A000217(n))%A001546(n)`
-/

namespace A265256.P6058065792387338892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276422 (A000217 n).toNat) (A001546 n)

end

end A265256.P6058065792387338892

/-! ## A265256.P17194272929453819227

`lcm(A065357(n), A276422(A000217(n)))`
-/

namespace A265256.P17194272929453819227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A276422 (A000217 n).toNat)

end

end A265256.P17194272929453819227

/-! ## A265256.P10361351744561748026

`A276422(A000217(n))+A000035(2*n)`
-/

namespace A265256.P10361351744561748026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276422 (A000217 n).toNat + A000035 (2 * n)

end

end A265256.P10361351744561748026

/-! ## A265256.P14870489040736425328

`A276422(A000217(n))^(A000040(n+1)%2)`
-/

namespace A265256.P14870489040736425328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276422 (A000217 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A265256.P14870489040736425328

/-! ## A265256.P10845029251579027583

`A276422(A000217(n))*A305750(A324872((n+1)²))`
-/

namespace A265256.P10845029251579027583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276422 (A000217 n).toNat * A305750 (A324872 ((n + 1) ^ 2)).toNat

end

end A265256.P10845029251579027583

/-!
# A265257: Number of odd singletons in all partitions of n (n>=0).

The programs for A265257, there is no canonical definition to state claims against.
-/

/-! ## A265257.P4222560068758398723

`1/4*A000070(n)-3/4*A087787(n)+1/2*A092295(n)`
-/

namespace A265257.P4222560068758398723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A000070 n : ℚ) - (3 : ℚ) / 4 * (A087787 n : ℚ) + (1 : ℚ) / 2 * (A092295 n : ℚ)

end

end A265257.P4222560068758398723

/-! ## A265257.P7003433090829194574

`A182714(n+3)+∑[A182714(n+1)]`
-/

namespace A265257.P7003433090829194574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265257.P7003433090829194574

/-! ## A265257.P6230652934650668645

`∑[A182714(n+4)]-A087787(n)`
-/

namespace A265257.P6230652934650668645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A087787 n

end

end A265257.P6230652934650668645

/-! ## A265257.P16832603614213221055

`A182714(n+3)+A024788(n+1)`
-/

namespace A265257.P16832603614213221055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 3) + A024788 (n + 1)

end

end A265257.P16832603614213221055

/-! ## A265257.P14551141245479480872

`A024786(n+1)-A024788(n+2)`
-/

namespace A265257.P14551141245479480872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) - A024788 (n + 2)

end

end A265257.P14551141245479480872

/-! ## A265257.P13104641661801206674

`∑[A182712(n+1)]-A024788(n+2)`
-/

namespace A265257.P13104641661801206674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024788 (n + 2)

end

end A265257.P13104641661801206674

/-! ## A265257.P1261058485734097177

`A024788(n+1)+Δ[A024788(n+2)]`
-/

namespace A265257.P1261058485734097177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 1) + (f1 (n + 1) - f1 n)

end

end A265257.P1261058485734097177

/-! ## A265257.P10263340071401135313

`A024788(n+1)+A024788(n+3)-A024788(n+2)`
-/

namespace A265257.P10263340071401135313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 1) + (A024788 (n + 3) - A024788 (n + 2))

end

end A265257.P10263340071401135313

/-! ## A265257.P9431760601765907993

`A024788(n+4)-A182712(n+2)`
-/

namespace A265257.P9431760601765907993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 4) - A182712 (n + 2)

end

end A265257.P9431760601765907993

/-! ## A265257.P6067178054339578389

`A096541(n+1)-(A207033(n+1)+A024788(n+2))`
-/

namespace A265257.P6067178054339578389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 (n + 1) - (A207033 (n + 1) + A024788 (n + 2))

end

end A265257.P6067178054339578389

/-!
# A265258: Total number of corners in all partitions of n. A corner of a partition is a point of degree two in the corresponding Ferrers diagram.

The programs for A265258, there is no canonical definition to state claims against.
-/

/-! ## A265258.P15976434605516720121

`A000070(n+1)+2*A000041(n+1)`
-/

namespace A265258.P15976434605516720121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + 2 * A000041 (n + 1)

end

end A265258.P15976434605516720121

/-! ## A265258.P14639441119376695340

`A299473(n+1)+∑[A000041(n)]`
-/

namespace A265258.P14639441119376695340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299473 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265258.P14639441119376695340

/-! ## A265258.P9229242283859917781

`A139582(n+1)+A000070(n+1)`
-/

namespace A265258.P9229242283859917781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (n + 1) + A000070 (n + 1)

end

end A265258.P9229242283859917781

/-! ## A265258.P15207005023160299381

`A117989(n+1)+A000070(n+2)`
-/

namespace A265258.P15207005023160299381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) + A000070 (n + 2)

end

end A265258.P15207005023160299381

/-! ## A265258.P10554781439707493769

`∑[A000041(n)]+3*A000041(n+1)`
-/

namespace A265258.P10554781439707493769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * A000041 (n + 1)

end

end A265258.P10554781439707493769

/-! ## A265258.P4590542908108693893

`A139582(n+1)+A216053(n+2)-1`
-/

namespace A265258.P4590542908108693893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (n + 1) + (A216053 (n + 2) - 1)

end

end A265258.P4590542908108693893

/-! ## A265258.P14165470325028872838

`A058884(n+1)+2*A139582(n+1)`
-/

namespace A265258.P14165470325028872838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058884 (n + 1) + 2 * A139582 (n + 1)

end

end A265258.P14165470325028872838

/-! ## A265258.P5950449871184777404

`A000070(n+1)+A000070(n+1)-A058884(n+1)`
-/

namespace A265258.P5950449871184777404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + (A000070 (n + 1) - A058884 (n + 1))

end

end A265258.P5950449871184777404

/-! ## A265258.P13945525183772283079

`2*A000070(n+1)-A058884(n+1)`
-/

namespace A265258.P13945525183772283079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000070 (n + 1) - A058884 (n + 1)

end

end A265258.P13945525183772283079

/-! ## A265258.P7244660821375653539

`A000041(n+1)+A082775(n+3)-A082775(n+2)`
-/

namespace A265258.P7244660821375653539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A082775 (n + 3) - A082775 (n + 2))

end

end A265258.P7244660821375653539

/-! ## A265258.P15110833245834009794

`Δ[A014153(n)+2*A000070(n)]`
-/

namespace A265258.P15110833245834009794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n + 2 * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265258.P15110833245834009794

/-! ## A265258.P11427983500520911500

`A000070(n+1)+A000712(n+1)-A052837(n+1)`
-/

namespace A265258.P11427983500520911500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + (A000712 (n + 1) - A052837 (n + 1))

end

end A265258.P11427983500520911500

/-!
# A265260: Number of partitions of n into even squares.

The programs for A265260, there is no canonical definition to state claims against.
-/

/-! ## A265260.P16156915757615208115

`A001156(A002265(n))*A121262(n)`
-/

namespace A265260.P16156915757615208115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A002265 n).toNat * A121262 n

end

end A265260.P16156915757615208115

/-! ## A265260.P6806488316400625587

`A001156(A030065(n))*A121262(n)`
-/

namespace A265260.P6806488316400625587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A030065 n).toNat * A121262 n

end

end A265260.P6806488316400625587

/-! ## A265260.P15398221509575289576

`A001156(A110655(n))*A121262(n)`
-/

namespace A265260.P15398221509575289576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A110655 n).toNat * A121262 n

end

end A265260.P15398221509575289576

/-! ## A265260.P870105154281504911

`char[A008586(n)]*A001156(A110655(n))`
-/

namespace A265260.P870105154281504911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001156 (A110655 n).toNat

end

end A265260.P870105154281504911

/-! ## A265260.P6811183197056853221

`A001156(A059169(n+1))*A121262(n)`
-/

namespace A265260.P6811183197056853221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A059169 (n + 1)).toNat * A121262 n

end

end A265260.P6811183197056853221

/-! ## A265260.P6018002079441596210

`and((n+1)%2, A000124(n))*A001156(A002265(n))`
-/

namespace A265260.P6018002079441596210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 1) % 2 : ℕ) : ℤ) (A000124 n) * A001156 (A002265 n).toNat

end

end A265260.P6018002079441596210

/-! ## A265260.P7827736909891872178

`A001156(A002265(n))*A059841(A088440(n))`
-/

namespace A265260.P7827736909891872178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A002265 n).toNat * A059841 (A088440 n).toNat

end

end A265260.P7827736909891872178

/-! ## A265260.P6480640318943188430

`Δ[A110655(n)]*A001156(A059169(n+1))`
-/

namespace A265260.P6480640318943188430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001156 (A059169 (n + 1)).toNat

end

end A265260.P6480640318943188430

/-! ## A265260.P11327557540703829188

`A001156(A030065(n))%A066827(n+1)`
-/

namespace A265260.P11327557540703829188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001156 (A030065 n).toNat) (A066827 (n + 1))

end

end A265260.P11327557540703829188

/-!
# A265261: Smallest n-Knödel number, i.e., smallest composite c > n such that each b < c coprime to c satisfies b^(c-n) == 1 (mod c).

The programs for A265261, there is no canonical definition to state claims against.
-/

/-! ## A265261.P14928373440054639206

`A398539(∑[n+1])`
-/

namespace A265261.P14928373440054639206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265261.P14928373440054639206

/-!
# A265262: The tree of hemitropic sequences read by rows, arising from an Erdős-Turán conjecture.

The programs for A265262, there is no canonical definition to state claims against.
-/

/-! ## A265262.P7028396850335049704

`A260736(∑[A007913(A060546(n))])`
-/

namespace A265262.P7028396850335049704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A060546 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265262.P7028396850335049704

/-! ## A265262.P9079934093010779580

`A260736(∑[A000034(∑[n²])])`
-/

namespace A265262.P9079934093010779580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265262.P9079934093010779580

/-! ## A265262.P7731277793004347935

`A000120(and(n+1, A145812(∑[n²]+1)))`
-/

namespace A265262.P7731277793004347935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n + 1 : ℤ) (A145812 (∑ j ∈ Finset.range (n + 1), f1 j + 1))).toNat

end

end A265262.P7731277793004347935

/-! ## A265262.P13438232558414224895

`A000120(n+1)-∑[A118917(A038243(n))]`
-/

namespace A265262.P13438232558414224895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (A038243 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265262.P13438232558414224895

/-! ## A265262.P4663747216946757314

`A000120(2*n+3)-A055642(A347454(3*n+2))`
-/

namespace A265262.P4663747216946757314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * n + 3) - A055642 (A347454 (3 * n + 2)).toNat

end

end A265262.P4663747216946757314

/-!
# A265263: Change every other 1 bit in binary expansion of n to 0.

The programs for A265263, the canonical program `A265263.P13560857298709796040` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265263 has offset 0).

The definition of A265263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265263.P17709651855749560946

`n-a(n-2^floor(log2(n)))` with `a(0)=0`
-/

namespace A265263.P17709651855749560946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (n - 2 ^ Nat.log 2 n)

end

end A265263.P17709651855749560946

namespace A265263

/-- `n-a(n-2^floor(log2(n)))` -/
def P17709651855749560946.Spec : Prop :=
  ∀ n, P17709651855749560946.a n = A265263 n

end A265263

/-! ## A265263.P14625703907545011787

`n-A377404(n)`
-/

namespace A265263.P14625703907545011787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A377404 n

end

end A265263.P14625703907545011787

namespace A265263

/-- `n-A377404(n)` -/
def P14625703907545011787.Spec : Prop :=
  ∀ n, P14625703907545011787.a n = A265263 n

theorem P14625703907545011787.correct : P14625703907545011787.Spec := by
  intro n
  simp only [A265263, Nat.add_sub_cancel, A265263.P14625703907545011787.a, A265263.P13560857298709796040.a, A066194, A066194.P15313669370463354763.a, A377404, A377404.P15784403255783113757.a, A006068, A006068.P433290056721054414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A265263

/-! ## A265263.P7410859689600697696

`and(n, A006068(n))`
-/

namespace A265263.P7410859689600697696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A006068 n)

end

end A265263.P7410859689600697696

namespace A265263

/-- `and(n, A006068(n))` -/
def P7410859689600697696.Spec : Prop :=
  ∀ n, P7410859689600697696.a n = A265263 n

theorem P7410859689600697696.correct : P7410859689600697696.Spec := by
  intro n
  simp only [A265263, Nat.add_sub_cancel, A265263.P7410859689600697696.a, A265263.P13560857298709796040.a, A006068, A006068.P433290056721054414.a, A066194, A066194.P15313669370463354763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A265263

/-! ## A265263.P17490752038147865675

`and(n, A268716(n)/2)`
-/

namespace A265263.P17490752038147865675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2))

end

end A265263.P17490752038147865675

namespace A265263

/-- `and(n, A268716(n)/2)` -/
def P17490752038147865675.Spec : Prop :=
  ∀ n, P17490752038147865675.a n = A265263 n

end A265263

/-! ## A265263.P1095332614708501558

`and(n, A286546(n)+n)`
-/

namespace A265263.P1095332614708501558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A286546 n + (n : ℤ))

end

end A265263.P1095332614708501558

namespace A265263

/-- `and(n, A286546(n)+n)` -/
def P1095332614708501558.Spec : Prop :=
  ∀ n, P1095332614708501558.a n = A265263 n

theorem P1095332614708501558.correct : P1095332614708501558.Spec := by
  intro n
  simp only [A265263, Nat.add_sub_cancel, A265263.P1095332614708501558.a, A265263.P13560857298709796040.a, A066194, A066194.P15313669370463354763.a, A286546, A286546.P17363262112593177841.a, A006068, A006068.P433290056721054414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A265263

/-! ## A265263.P16793725677677832099

`n-and(n, A038558(n))`
-/

namespace A265263.P16793725677677832099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A038558 n)

end

end A265263.P16793725677677832099

namespace A265263

/-- `n-and(n, A038558(n))` -/
def P16793725677677832099.Spec : Prop :=
  ∀ n, P16793725677677832099.a n = A265263 n

end A265263

/-! ## A265263.P4975103763335426305

`n-and(n, A292600(n))`
-/

namespace A265263.P4975103763335426305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A292600 n)

end

end A265263.P4975103763335426305

namespace A265263

/-- `n-and(n, A292600(n))` -/
def P4975103763335426305.Spec : Prop :=
  ∀ n, P4975103763335426305.a n = A265263 n

end A265263

/-! ## A265263.P15905758646285648152

`(abs(A065620(n))+n)/2`
-/

namespace A265263.P15905758646285648152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A065620 n| + (n : ℤ) : ℚ) / 2

end

end A265263.P15905758646285648152

namespace A265263

/-- `(abs(A065620(n))+n)/2` -/
def P15905758646285648152.Spec : Prop :=
  ∀ n, P15905758646285648152.a n = (A265263 n : ℚ)

end A265263

/-! ## A265263.P13220486503138507810

`(abs(A104895(n))+n)/2`
-/

namespace A265263.P13220486503138507810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A104895 n| + (n : ℤ) : ℚ) / 2

end

end A265263.P13220486503138507810

namespace A265263

/-- `(abs(A104895(n))+n)/2` -/
def P13220486503138507810.Spec : Prop :=
  ∀ n, P13220486503138507810.a n = (A265263 n : ℚ)

end A265263

/-! ## A265263.P13560857298709796040

`and(n, A066194(n+1)-1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A265263

/-- `and(n, A066194(n+1)-1)` -/
def P13560857298709796040.Spec : Prop :=
  ∀ n, P13560857298709796040.a n = A265263 n

theorem P13560857298709796040.correct : P13560857298709796040.Spec := by
  intro n
  simp only [A265263]

end A265263

/-! ## A265263.P2561385346171239841

`A292272(A006068(n))`
-/

namespace A265263.P2561385346171239841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (A006068 n).toNat

end

end A265263.P2561385346171239841

namespace A265263

/-- `A292272(A006068(n))` -/
def P2561385346171239841.Spec : Prop :=
  ∀ n, P2561385346171239841.a n = A265263 n

end A265263

/-! ## A265263.P13705026845963864084

`A292272(A122198(n))`
-/

namespace A265263.P13705026845963864084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (A122198 n).toNat

end

end A265263.P13705026845963864084

namespace A265263

/-- `A292272(A122198(n))` -/
def P13705026845963864084.Spec : Prop :=
  ∀ n, P13705026845963864084.a n = A265263 n

end A265263

/-! ## A265263.P16985609516864562407

`n-A004526(A292601(n))`
-/

namespace A265263.P16985609516864562407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A292601 n).toNat

end

end A265263.P16985609516864562407

namespace A265263

/-- `n-A004526(A292601(n))` -/
def P16985609516864562407.Spec : Prop :=
  ∀ n, P16985609516864562407.a n = A265263 n

end A265263

/-! ## A265263.P5880423500852408000

`n-A292944(A233279(n))`
-/

namespace A265263.P5880423500852408000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292944 (A233279 n).toNat

end

end A265263.P5880423500852408000

namespace A265263

/-- `n-A292944(A233279(n))` -/
def P5880423500852408000.Spec : Prop :=
  ∀ n, P5880423500852408000.a n = A265263 n

end A265263

/-! ## A265263.P3134928998847431794

`and(n, A003188(A064707(n)))`
-/

namespace A265263.P3134928998847431794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A003188 (A064707 n).toNat)

end

end A265263.P3134928998847431794

namespace A265263

/-- `and(n, A003188(A064707(n)))` -/
def P3134928998847431794.Spec : Prop :=
  ∀ n, P3134928998847431794.a n = A265263 n

end A265263

/-! ## A265263.P1566559071111909020

`(A292601(n)+A006068(n))/2`
-/

namespace A265263.P1566559071111909020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292601 n + A006068 n : ℚ) / 2

end

end A265263.P1566559071111909020

namespace A265263

/-- `(A292601(n)+A006068(n))/2` -/
def P1566559071111909020.Spec : Prop :=
  ∀ n, P1566559071111909020.a n = (A265263 n : ℚ)

end A265263

/-! ## A265263.P6987592911969567126

`n-A004526(n-A292600(n))`
-/

namespace A265263.P6987592911969567126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 ((n : ℤ) - A292600 n).toNat

end

end A265263.P6987592911969567126

namespace A265263

/-- `n-A004526(n-A292600(n))` -/
def P6987592911969567126.Spec : Prop :=
  ∀ n, P6987592911969567126.a n = A265263 n

end A265263

/-! ## A265263.P2687326056956995372

`n-A286548(n-A292600(n))`
-/

namespace A265263.P2687326056956995372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A286548 ((n : ℤ) - A292600 n).toNat

end

end A265263.P2687326056956995372

namespace A265263

/-- `n-A286548(n-A292600(n))` -/
def P2687326056956995372.Spec : Prop :=
  ∀ n, P2687326056956995372.a n = A265263 n

end A265263

/-! ## A265263.P6406368483581785423

`and(n, xor(A001969(n+1), A268716(n)))`
-/

namespace A265263.P6406368483581785423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.xor (A001969 (n + 1)) (A268716 n))

end

end A265263.P6406368483581785423

namespace A265263

/-- `and(n, xor(A001969(n+1), A268716(n)))` -/
def P6406368483581785423.Spec : Prop :=
  ∀ n, P6406368483581785423.a n = A265263 n

end A265263

/-! ## A265263.P4770004187396283032

`A286546(n)+A003188(A292601(n))`
-/

namespace A265263.P4770004187396283032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286546 n + A003188 (A292601 n).toNat

end

end A265263.P4770004187396283032

namespace A265263

/-- `A286546(n)+A003188(A292601(n))` -/
def P4770004187396283032.Spec : Prop :=
  ∀ n, P4770004187396283032.a n = A265263 n

end A265263

/-!
# A265264: Terms satisfy: a(2*n) = a(n)*b(n) and a(2*n+1) = a(n+1)*b(n) for n>=0 with a(0)=1, where A(x)^2 = Sum_{n>=0} b(n)*x^n and g.f. A(x) = Sum_{n>=0} a(n)*x^n.

The programs for A265264, there is no canonical definition to state claims against.
-/

/-! ## A265264.P10331151146720353038

`A248614(A130581(n))`
-/

namespace A265264.P10331151146720353038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (A130581 n).toNat

end

end A265264.P10331151146720353038

/-! ## A265264.P9555332934167636475

`A372971(A149796(n))`
-/

namespace A265264.P9555332934167636475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372971 (A149796 n).toNat

end

end A265264.P9555332934167636475

/-! ## A265264.P1214144758438687118

`A173817(A352879(n))`
-/

namespace A265264.P1214144758438687118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173817 (A352879 n).toNat

end

end A265264.P1214144758438687118

/-! ## A265264.P12150517929426868715

`A248614(A320964(n))`
-/

namespace A265264.P12150517929426868715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (A320964 n).toNat

end

end A265264.P12150517929426868715

/-!
# A265265: Self-convolution of A265264.

The programs for A265265, there is no canonical definition to state claims against.
-/

/-! ## A265265.P911657285407884018

`∑{#}[n, A265264(n-#)*A265264(#)]`
-/

namespace A265265.P911657285407884018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A265264 (n - k) * A265264 k

end

end A265265.P911657285407884018

/-! ## A265265.P14423784494054722614

`A265264(2*n)/A265264(n)`
-/

namespace A265265.P14423784494054722614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265264 (2 * n) : ℚ) / (A265264 n : ℚ)

end

end A265265.P14423784494054722614

/-! ## A265265.P14497668527966459555

`record[ratio[A265264(A029579(n)-1)]]`
-/

namespace A265265.P14497668527966459555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265264 (A029579 n - 1).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265265.P14497668527966459555

/-! ## A265265.P3842279140905233351

`record[A265264(n)/A265264(A026741(n))]`
-/

namespace A265265.P3842279140905233351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265264 n : ℚ) / (A265264 (A026741 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265265.P3842279140905233351

/-! ## A265265.P3135350849844104996

`record[A265264(A131508(n))]/A265264(n)`
-/

namespace A265265.P3135350849844104996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265264 (A131508 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A265264 n : ℚ)

end

end A265265.P3135350849844104996

/-! ## A265265.P9359844312528443005

`record[ratio[A265264(A029579(n))]]`
-/

namespace A265265.P9359844312528443005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265264 (A029579 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265265.P9359844312528443005

/-! ## A265265.P863353189403420255

`record[A265264(n)/A265264(A060681(n+1))]`
-/

namespace A265265.P863353189403420255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265264 n : ℚ) / (A265264 (A060681 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265265.P863353189403420255

/-!
# A265266: G.f. A(x) satisfies: A(x) = Sum_{n=-oo..+oo} x^n * (A(x) - x^n)^(2*n).

The programs for A265266, there is no canonical definition to state claims against.
-/

/-! ## A265266.P13709505566634283624

`A086642(A086646(n))+A086635(n)`
-/

namespace A265266.P13709505566634283624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086642 (A086646 n).toNat + A086635 n

end

end A265266.P13709505566634283624

/-! ## A265266.P86087312515104955

`A123108(A216215(n)+A174687(n))`
-/

namespace A265266.P86087312515104955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A216215 n + A174687 n).toNat

end

end A265266.P86087312515104955

/-!
# A265268: E.g.f.: Sum_{n>=1} LambertW(x^n)^n / (1 + LambertW(x^n)) / n!.

The programs for A265268, the canonical program `A265268.P2340732245090289203` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265268 has offset 1).

The definition of A265268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265268.P2340732245090289203

`∑{d}[n+1, (-#)^(#-(n+1)/#)*C(#, (n+1)/#)*(n+1)!/#!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265268

/-- `∑{d}[n+1, (-#)^(#-(n+1)/#)*C(#, (n+1)/#)*(n+1)!/#!]` -/
def P2340732245090289203.Spec : Prop :=
  ∀ n, P2340732245090289203.a n = (A265268 (n + 1) : ℝ)

end A265268

/-!
# A265269: E.g.f.: Sum_{n>=0} (x^n + y^n)^n / n! - Sum_{n>=0} y^(n^2) / n! at y=2.

The programs for A265269, the canonical program `A265269.P11397107525536105365` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265269 has offset 1).

The definition of A265269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265269.P11397107525536105365

`∑{d}[n+1, 2^(#²-(n+1))*C(#, (n+1)/#)*(n+1)!/#!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265269

/-- `∑{d}[n+1, 2^(#²-(n+1))*C(#, (n+1)/#)*(n+1)!/#!]` -/
def P11397107525536105365.Spec : Prop :=
  ∀ n, P11397107525536105365.a n = (A265269 (n + 1) : ℚ)

end A265269

/-!
# A265270: E.g.f.: Sum_{n>=0} (n*y + x^n)^n / n! - Sum_{n>=0} n^n*y^n / n! at y=1.

The programs for A265270, the canonical program `A265270.P11120844616337636451` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265270 has offset 1).

The definition of A265270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265270.P11120844616337636451

`∑{d}[n+1, #^(#-(n+1)/#)*C(#, (n+1)/#)*(n+1)!/#!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265270

/-- `∑{d}[n+1, #^(#-(n+1)/#)*C(#, (n+1)/#)*(n+1)!/#!]` -/
def P11120844616337636451.Spec : Prop :=
  ∀ n, P11120844616337636451.a n = (A265270 (n + 1) : ℝ)

end A265270

/-!
# A265271: Least positive real z such that 1/2 = Sum_{n>=1} {n*z} / 2^n, where {x} denotes the fractional part of x.

The programs for A265271, there is no canonical definition to state claims against.
-/

/-! ## A265271.P2078019341225830783

`9-A265276(n)`
-/

namespace A265271.P2078019341225830783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A265276 n

end

end A265271.P2078019341225830783

/-! ## A265271.P3499319995965210965

`A061601(or(C(2, n+1), A265276(n)))`
-/

namespace A265271.P3499319995965210965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (Int.lor (Nat.choose 2 (n + 1) : ℤ) (A265276 n)).toNat

end

end A265271.P3499319995965210965

/-! ## A265271.P15713527976770850151

`A061601(A038712(2*n+5)*A265276(n))`
-/

namespace A265271.P15713527976770850151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A038712 (2 * n + 5) * A265276 n).toNat

end

end A265271.P15713527976770850151

/-! ## A265271.P5655835203165652327

`A061601(A265276(n)+n*A151878(n))`
-/

namespace A265271.P5655835203165652327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265276 n + (n : ℤ) * A151878 n).toNat

end

end A265271.P5655835203165652327

/-! ## A265271.P1085999379022650047

`A151878(n)+A061601(A265276(n)+A151878(n))`
-/

namespace A265271.P1085999379022650047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A061601 (A265276 n + A151878 n).toNat

end

end A265271.P1085999379022650047

/-! ## A265271.P9514434875069552896

`A061601(A265276(n)+A151878(n+1))`
-/

namespace A265271.P9514434875069552896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265276 n + A151878 (n + 1)).toNat

end

end A265271.P9514434875069552896

/-!
# A265272: Least real z > 1/3 such that 1/2 = Sum_{n>=1} {n*z} / 2^n, where {x} denotes the fractional part of x.

The programs for A265272, there is no canonical definition to state claims against.
-/

/-! ## A265272.P4569947475506684834

`9-A265275(n)`
-/

namespace A265272.P4569947475506684834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A265275 n

end

end A265272.P4569947475506684834

/-! ## A265272.P9972407127348921274

`A061601(A038712(2*n+3)*A265275(n))`
-/

namespace A265272.P9972407127348921274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A038712 (2 * n + 3) * A265275 n).toNat

end

end A265272.P9972407127348921274

/-! ## A265272.P2438490417157221166

`A061601(A265275(n)+n*A151878(n))`
-/

namespace A265272.P2438490417157221166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265275 n + (n : ℤ) * A151878 n).toNat

end

end A265272.P2438490417157221166

/-! ## A265272.P8923316683677281207

`A151878(n)+A061601(A265275(n)+A151878(n))`
-/

namespace A265272.P8923316683677281207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A061601 (A265275 n + A151878 n).toNat

end

end A265272.P8923316683677281207

/-! ## A265272.P8877429248127677895

`A061601(A265275(n)+A151878(n+1))`
-/

namespace A265272.P8877429248127677895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265275 n + A151878 (n + 1)).toNat

end

end A265272.P8877429248127677895

/-!
# A265273: Least positive real z > 2/5 such that 1/2 = Sum_{n>=1} {n*z} / 2^n, where {x} denotes the fractional part of x.

The programs for A265273, there is no canonical definition to state claims against.
-/

/-! ## A265273.P428316011657186840

`9-A265274(n)`
-/

namespace A265273.P428316011657186840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A265274 n

end

end A265273.P428316011657186840

/-! ## A265273.P2458358169918865364

`A061601(or(A151878(n), A265274(n)))`
-/

namespace A265273.P2458358169918865364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (Int.lor (A151878 n) (A265274 n)).toNat

end

end A265273.P2458358169918865364

/-! ## A265273.P15648478335229953516

`A061601(A265274(n)+n*A151878(n))`
-/

namespace A265273.P15648478335229953516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265274 n + (n : ℤ) * A151878 n).toNat

end

end A265273.P15648478335229953516

/-! ## A265273.P14536095727480779775

`A151878(n)+A061601(A265274(n)+A151878(n))`
-/

namespace A265273.P14536095727480779775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A061601 (A265274 n + A151878 n).toNat

end

end A265273.P14536095727480779775

/-! ## A265273.P1345255266803145228

`A061601(A265274(n)+A151878(n+1))`
-/

namespace A265273.P1345255266803145228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265274 n + A151878 (n + 1)).toNat

end

end A265273.P1345255266803145228

/-!
# A265274: Least real z > 1/2 such that 1/2 = Sum_{n>=1} {n*z} / 2^n, where {x} denotes the fractional part of x.

The programs for A265274, there is no canonical definition to state claims against.
-/

/-! ## A265274.P2001835372654576482

`9-A265273(n)`
-/

namespace A265274.P2001835372654576482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A265273 n

end

end A265274.P2001835372654576482

/-! ## A265274.P15852317914673132989

`A061601(A038712(2*n+3)*A265273(n))`
-/

namespace A265274.P15852317914673132989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A038712 (2 * n + 3) * A265273 n).toNat

end

end A265274.P15852317914673132989

/-! ## A265274.P1996087281214420339

`A061601(floor(A265273(n)+1/A071318(n+1)))`
-/

namespace A265274.P1996087281214420339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 ⌊(A265273 n : ℚ) + 1 / (A071318 (n + 1) : ℚ)⌋.toNat

end

end A265274.P1996087281214420339

/-! ## A265274.P6090879286667833517

`A061601(A265273(n)+n*A151878(n))`
-/

namespace A265274.P6090879286667833517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265273 n + (n : ℤ) * A151878 n).toNat

end

end A265274.P6090879286667833517

/-! ## A265274.P8414392801432391940

`A151878(n)+A061601(A265273(n)+A151878(n))`
-/

namespace A265274.P8414392801432391940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A061601 (A265273 n + A151878 n).toNat

end

end A265274.P8414392801432391940

/-! ## A265274.P3508965016537320458

`A061601(A265273(n)+A151878(n+1))`
-/

namespace A265274.P3508965016537320458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265273 n + A151878 (n + 1)).toNat

end

end A265274.P3508965016537320458

/-!
# A265275: Least real z > 3/5 such that 1/2 = Sum_{n>=1} {n*z} / 2^n, where {x} denotes the fractional part of x.

The programs for A265275, there is no canonical definition to state claims against.
-/

/-! ## A265275.P17165441724294573132

`9-A265272(n)`
-/

namespace A265275.P17165441724294573132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A265272 n

end

end A265275.P17165441724294573132

/-! ## A265275.P1544313179776253789

`A061601(or(C(2, n+1), A265272(n)))`
-/

namespace A265275.P1544313179776253789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (Int.lor (Nat.choose 2 (n + 1) : ℤ) (A265272 n)).toNat

end

end A265275.P1544313179776253789

/-! ## A265275.P6027792982615358003

`A061601(A038712(2*n+3)*A265272(n))`
-/

namespace A265275.P6027792982615358003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A038712 (2 * n + 3) * A265272 n).toNat

end

end A265275.P6027792982615358003

/-! ## A265275.P17193615947417570858

`A061601(or(A151878(n), A265272(n)))`
-/

namespace A265275.P17193615947417570858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (Int.lor (A151878 n) (A265272 n)).toNat

end

end A265275.P17193615947417570858

/-! ## A265275.P10714143024872753178

`A061601(A265272(n)+n*A151878(n))`
-/

namespace A265275.P10714143024872753178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265272 n + (n : ℤ) * A151878 n).toNat

end

end A265275.P10714143024872753178

/-! ## A265275.P16412475239498714675

`A151878(n)+A061601(A265272(n)+A151878(n))`
-/

namespace A265275.P16412475239498714675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A061601 (A265272 n + A151878 n).toNat

end

end A265275.P16412475239498714675

/-! ## A265275.P14083192633765587776

`A061601(A265272(n)+A151878(n+1))`
-/

namespace A265275.P14083192633765587776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265272 n + A151878 (n + 1)).toNat

end

end A265275.P14083192633765587776

/-!
# A265276: Least real z > 2/3 such that 1/2 = Sum_{n>=1} {n*z} / 2^n, where {x} denotes the fractional part of x.

The programs for A265276, there is no canonical definition to state claims against.
-/

/-! ## A265276.P6750945143142395210

`9-A265271(n)`
-/

namespace A265276.P6750945143142395210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A265271 n

end

end A265276.P6750945143142395210

/-! ## A265276.P17873606192689596247

`A061601(A038712(2*n+3)*A265271(n))`
-/

namespace A265276.P17873606192689596247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A038712 (2 * n + 3) * A265271 n).toNat

end

end A265276.P17873606192689596247

/-! ## A265276.P3504334503174303009

`A061601(or(A151878(n), A265271(n)))`
-/

namespace A265276.P3504334503174303009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (Int.lor (A151878 n) (A265271 n)).toNat

end

end A265276.P3504334503174303009

/-! ## A265276.P18303792168725926729

`A061601(A265271(n)+n*A151878(n))`
-/

namespace A265276.P18303792168725926729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265271 n + (n : ℤ) * A151878 n).toNat

end

end A265276.P18303792168725926729

/-! ## A265276.P16949059685280690714

`35%(A265271(n)+A252826(n*A151878(n)+1))`
-/

namespace A265276.P16949059685280690714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 35 (A265271 n + A252826 ((n : ℤ) * A151878 n + 1).toNat)

end

end A265276.P16949059685280690714

/-! ## A265276.P5662046623410724105

`A151878(n)+A061601(A265271(n)+A151878(n))`
-/

namespace A265276.P5662046623410724105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A061601 (A265271 n + A151878 n).toNat

end

end A265276.P5662046623410724105

/-! ## A265276.P4764115792584701372

`A061601(A265271(n)+A151878(n+1))`
-/

namespace A265276.P4764115792584701372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A265271 n + A151878 (n + 1)).toNat

end

end A265276.P4764115792584701372

/-!
# A265277: E.g.f.: Sum_{n>=0} (n*y + x^n)^n / n! - Sum_{n>=0} n^n*y^n / n! at y=2.

The programs for A265277, there is no canonical definition to state claims against.
-/

/-! ## A265277.P6626605990336666595

`A243163(A243156(n))+A193678(n+1)`
-/

namespace A265277.P6626605990336666595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243163 (A243156 n).toNat + A193678 (n + 1)

end

end A265277.P6626605990336666595

/-!
# A265278: Expansion of (x^4+x^3-x^2+x)/(x^3+x^2-3*x+1).

The programs for A265278, the canonical program `A265278.P18058736191649799729` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265278 has offset 0).

The definition of A265278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2+x^3+x^4)/(1-3x+x^2+x^3))` (program `A265278.P18058736191649799729`, by `A265278.P18058736191649799729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A265278.P18058736191649799729

`ogf((x-x^2+x^3+x^4)/(1-3x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265278

/-- `ogf((x-x^2+x^3+x^4)/(1-3x+x^2+x^3))` -/
def P18058736191649799729.Spec : Prop :=
  ∀ n, P18058736191649799729.a n = A265278 n

theorem P18058736191649799729.correct : P18058736191649799729.Spec := by
  intro n
  simp only [A265278]

end A265278

/-! ## A265278.P2897232767804361844

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=16`
-/

namespace A265278.P2897232767804361844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6, 16] fun n a =>
  3 * a (n - 1) - a (n - 2) - a (n - 3)

end

end A265278.P2897232767804361844

namespace A265278

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P2897232767804361844.Spec : Prop :=
  ∀ n, P2897232767804361844.a n = A265278 n

end A265278

/-! ## A265278.P8097067084630463444

`A293004(n)+char[1]`
-/

namespace A265278.P8097067084630463444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265278.P8097067084630463444

namespace A265278

/-- `A293004(n)+char[1]` -/
def P8097067084630463444.Spec : Prop :=
  ∀ n, P8097067084630463444.a n = A265278 n

end A265278

/-! ## A265278.P15607549641529681215

`char[1]+A001333(n)-1`
-/

namespace A265278.P15607549641529681215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A001333 n - 1)

end

end A265278.P15607549641529681215

namespace A265278

/-- `char[1]+A001333(n)-1` -/
def P15607549641529681215.Spec : Prop :=
  ∀ n, P15607549641529681215.a n = A265278 n

end A265278

/-! ## A265278.P7815937356066176420

`char[1]+A002965(Δ[n²])-1`
-/

namespace A265278.P7815937356066176420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A002965 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - 1)

end

end A265278.P7815937356066176420

namespace A265278

/-- `char[1]+A002965(Δ[n²])-1` -/
def P7815937356066176420.Spec : Prop :=
  ∀ n, P7815937356066176420.a n = A265278 n

end A265278

/-! ## A265278.P12075910175358344931

`A001333(n)-A060576(n)`
-/

namespace A265278.P12075910175358344931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - A060576 n

end

end A265278.P12075910175358344931

namespace A265278

/-- `A001333(n)-A060576(n)` -/
def P12075910175358344931.Spec : Prop :=
  ∀ n, P12075910175358344931.a n = A265278 n

end A265278

/-! ## A265278.P1012213366336534228

`xor(A063524(n), A293004(n))`
-/

namespace A265278.P1012213366336534228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A293004 n)

end

end A265278.P1012213366336534228

namespace A265278

/-- `xor(A063524(n), A293004(n))` -/
def P1012213366336534228.Spec : Prop :=
  ∀ n, P1012213366336534228.a n = A265278 n

end A265278

/-! ## A265278.P6135243330116593788

`A001333(n)-char[A266286(n)]`
-/

namespace A265278.P6135243330116593788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265278.P6135243330116593788

namespace A265278

/-- `A001333(n)-char[A266286(n)]` -/
def P6135243330116593788.Spec : Prop :=
  ∀ n, P6135243330116593788.a n = A265278 n

end A265278

/-! ## A265278.P4415509941713298429

`A082766(A004275(n)+2)-1`
-/

namespace A265278.P4415509941713298429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A004275 n + 2).toNat - 1

end

end A265278.P4415509941713298429

namespace A265278

/-- `A082766(A004275(n)+2)-1` -/
def P4415509941713298429.Spec : Prop :=
  ∀ n, P4415509941713298429.a n = A265278 n

end A265278

/-! ## A265278.P14892395726168869418

`A119016(A004275(n)+2)-1`
-/

namespace A265278.P14892395726168869418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A004275 n + 2).toNat - 1

end

end A265278.P14892395726168869418

namespace A265278

/-- `A119016(A004275(n)+2)-1` -/
def P14892395726168869418.Spec : Prop :=
  ∀ n, P14892395726168869418.a n = A265278 n

end A265278

/-! ## A265278.P9821742332647601758

`A119016(A254667(n)+n)-1`
-/

namespace A265278.P9821742332647601758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A254667 n + (n : ℤ)).toNat - 1

end

end A265278.P9821742332647601758

namespace A265278

/-- `A119016(A254667(n)+n)-1` -/
def P9821742332647601758.Spec : Prop :=
  ∀ n, P9821742332647601758.a n = A265278 n

end A265278

/-! ## A265278.P8465318760376767509

`or(char[A176981(2*n)], A293004(n))`
-/

namespace A265278.P8465318760376767509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A293004 n)

end

end A265278.P8465318760376767509

namespace A265278

/-- `or(char[A176981(2*n)], A293004(n))` -/
def P8465318760376767509.Spec : Prop :=
  ∀ n, P8465318760376767509.a n = A265278 n

end A265278

/-! ## A265278.P10668867556550635570

`or(char[A292954(3*n)], A293004(n))`
-/

namespace A265278.P10668867556550635570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292954 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A293004 n)

end

end A265278.P10668867556550635570

namespace A265278

/-- `or(char[A292954(3*n)], A293004(n))` -/
def P10668867556550635570.Spec : Prop :=
  ∀ n, P10668867556550635570.a n = A265278 n

end A265278

/-! ## A265278.P6051270391149054778

`xor(char[A226782(n+5)], A001333(n))`
-/

namespace A265278.P6051270391149054778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226782 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A001333 n)

end

end A265278.P6051270391149054778

namespace A265278

/-- `xor(char[A226782(n+5)], A001333(n))` -/
def P6051270391149054778.Spec : Prop :=
  ∀ n, P6051270391149054778.a n = A265278 n

end A265278

/-! ## A265278.P4711907242818560494

`A082766(A004280(n+1)+1)-1`
-/

namespace A265278.P4711907242818560494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A004280 (n + 1) + 1).toNat - 1

end

end A265278.P4711907242818560494

namespace A265278

/-- `A082766(A004280(n+1)+1)-1` -/
def P4711907242818560494.Spec : Prop :=
  ∀ n, P4711907242818560494.a n = A265278 n

end A265278

/-! ## A265278.P14651633362903147428

`A092550(A026488(n+1)+1)-1`
-/

namespace A265278.P14651633362903147428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A026488 (n + 1) + 1).toNat - 1

end

end A265278.P14651633362903147428

namespace A265278

/-- `A092550(A026488(n+1)+1)-1` -/
def P14651633362903147428.Spec : Prop :=
  ∀ n, P14651633362903147428.a n = A265278 n

end A265278

/-! ## A265278.P17262864392879279779

`A002965(A004280(n+1)+2)-1`
-/

namespace A265278.P17262864392879279779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A004280 (n + 1) + 2).toNat - 1

end

end A265278.P17262864392879279779

namespace A265278

/-- `A002965(A004280(n+1)+2)-1` -/
def P17262864392879279779.Spec : Prop :=
  ∀ n, P17262864392879279779.a n = A265278 n

end A265278

/-! ## A265278.P12199384555062749323

`A097564(A004280(n+1)+n)-1`
-/

namespace A265278.P12199384555062749323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A004280 (n + 1) + (n : ℤ)).toNat - 1

end

end A265278.P12199384555062749323

namespace A265278

/-- `A097564(A004280(n+1)+n)-1` -/
def P12199384555062749323.Spec : Prop :=
  ∀ n, P12199384555062749323.a n = A265278 n

end A265278

/-! ## A265278.P10862071627823079161

`A119016(A233583(n+1)+n)-1`
-/

namespace A265278.P10862071627823079161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A233583 (n + 1) + (n : ℤ)).toNat - 1

end

end A265278.P10862071627823079161

namespace A265278

/-- `A119016(A233583(n+1)+n)-1` -/
def P10862071627823079161.Spec : Prop :=
  ∀ n, P10862071627823079161.a n = A265278 n

end A265278

/-! ## A265278.P14781563988800283270

`xor((A158611(n+2)%2)^n, A001333(n))`
-/

namespace A265278.P14781563988800283270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A158611 (n + 2)) 2 ^ n) (A001333 n)

end

end A265278.P14781563988800283270

namespace A265278

/-- `xor((A158611(n+2)%2)^n, A001333(n))` -/
def P14781563988800283270.Spec : Prop :=
  ∀ n, P14781563988800283270.a n = A265278 n

end A265278

/-!
# A265279: Number of pairs of binary trees with n leaves which have only a single common parse word under the grammar G = {0 -> 12, 0 -> 21, 1 -> 02, 1 -> 20, 2 -> 01, 2 -> 10}.

The programs for A265279, there is no canonical definition to state claims against.
-/

/-! ## A265279.P16470511270988591426

`∑{d}[A141783(n), A157271(#)]`
-/

namespace A265279.P16470511270988591426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141783 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A157271 d

end

end A265279.P16470511270988591426

/-!
# A265280: Binary representation of the n-th iteration of the "Rule 86" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265280, there is no canonical definition to state claims against.
-/

/-! ## A265280.P14537495636178790629

`A007088(A265281(n))`
-/

namespace A265280.P14537495636178790629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A265281 n).toNat

end

end A265280.P14537495636178790629

/-! ## A265280.P14559157844160383941

`A007088(xor(A110240(n), A327971(n)))`
-/

namespace A265280.P14559157844160383941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A110240 n) (A327971 n)).toNat

end

end A265280.P14559157844160383941

/-! ## A265280.P535969455553853835

`A305989(A110240(n))`
-/

namespace A265280.P535969455553853835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A110240 n).toNat

end

end A265280.P535969455553853835

/-!
# A265281: Decimal representation of the n-th iteration of the "Rule 86" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265281, the canonical program `A265281.P1605826112881666306` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265281 has offset 0).

The definition of A265281 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269161, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265281.P1605826112881666306

`A269161(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A265281

/-- `A269161(a(n-1))` -/
def P1605826112881666306.Spec : Prop :=
  ∀ n, P1605826112881666306.a n = A265281 n

theorem P1605826112881666306.correct : P1605826112881666306.Spec := by
  intro n
  simp only [A265281]

end A265281

/-! ## A265281.P12396672502141985814

`A030101(A110240(n))`
-/

namespace A265281.P12396672502141985814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A110240 n).toNat

end

end A265281.P12396672502141985814

namespace A265281

/-- `A030101(A110240(n))` -/
def P12396672502141985814.Spec : Prop :=
  ∀ n, P12396672502141985814.a n = A265281 n

end A265281

/-! ## A265281.P96138882076897325

`xor(4*a(n-1), or(2*a(n-1), a(n-1)))` with `a(0)=1`
-/

namespace A265281.P96138882076897325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1)) (Nat.lor (2 * a (n - 1)) (a (n - 1)))

end

end A265281.P96138882076897325

namespace A265281

/-- `xor(4*a(n-1), or(2*a(n-1), a(n-1)))` -/
def P96138882076897325.Spec : Prop :=
  ∀ n, (P96138882076897325.a n : ℤ) = A265281 n

end A265281

/-! ## A265281.P12082438251895397887

`xor(A110240(n), A327971(n))`
-/

namespace A265281.P12082438251895397887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 n) (A327971 n)

end

end A265281.P12082438251895397887

namespace A265281

/-- `xor(A110240(n), A327971(n))` -/
def P12082438251895397887.Spec : Prop :=
  ∀ n, P12082438251895397887.a n = A265281 n

end A265281

/-! ## A265281.P5873526403679397161

`xor(xor(A038184(n), A327972(n)), A327971(n))`
-/

namespace A265281.P5873526403679397161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (A038184 n) (A327972 n)) (A327971 n)

end

end A265281.P5873526403679397161

namespace A265281

/-- `xor(xor(A038184(n), A327972(n)), A327971(n))` -/
def P5873526403679397161.Spec : Prop :=
  ∀ n, P5873526403679397161.a n = A265281 n

end A265281

/-! ## A265281.P8592919783455717985

`xor(xor(A267357(n), A328103(n)), A327971(n))`
-/

namespace A265281.P8592919783455717985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (A267357 n) (A328103 n)) (A327971 n)

end

end A265281.P8592919783455717985

namespace A265281

/-- `xor(xor(A267357(n), A328103(n)), A327971(n))` -/
def P8592919783455717985.Spec : Prop :=
  ∀ n, P8592919783455717985.a n = A265281 n

end A265281

/-! ## A265281.P407729779378185956

`xor(xor(A327973(n+1), A327976(n+1))/2, A110240(n))`
-/

namespace A265281.P407729779378185956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((Int.xor (A327973 (n + 1)) (A327976 (n + 1)) : ℚ) / 2)) (A110240 n)

end

end A265281.P407729779378185956

namespace A265281

/-- `xor(xor(A327973(n+1), A327976(n+1))/2, A110240(n))` -/
def P407729779378185956.Spec : Prop :=
  ∀ n, P407729779378185956.a n = A265281 n

end A265281

/-!
# A265282: Number of triangles in a certain geometric structure: see "Illustration of initial terms" link for precise definition.

The programs for A265282, the canonical program `A265282.P786631912857751493` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265282 has offset 0).

The definition of A265282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265282.P15782479470153812319

`ogf((x+2x^2+x^4-x^5-x^6+x^8)/(1-x-2x^2+2x^3+2x^6-2x^7-x^8+x^9))`
-/

namespace A265282.P15782479470153812319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 0, 1, -1, -1, 0, 1] [1, -1, -2, 2, 0, 0, 2, -2, -1, 1] n

end

end A265282.P15782479470153812319

namespace A265282

/-- `ogf((x+2x^2+x^4-x^5-x^6+x^8)/(1-x-2x^2+2x^3+2x^6-2x^7-x^8+x^9))` -/
def P15782479470153812319.Spec : Prop :=
  ∀ n, P15782479470153812319.a n = A265282 n

end A265282

/-! ## A265282.P786631912857751493

`A045947(floor(n/2))+A024206(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A265282

/-- `A045947(floor(n/2))+A024206(n+1)` -/
def P786631912857751493.Spec : Prop :=
  ∀ n, P786631912857751493.a n = A265282 n

theorem P786631912857751493.correct : P786631912857751493.Spec := by
  intro n
  simp only [A265282]

end A265282

/-! ## A265282.P10037564138321850771

`∑[A077043(A158416(n))]-A158416(n)`
-/

namespace A265282.P10037564138321850771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A158416 n

end

end A265282.P10037564138321850771

namespace A265282

/-- `∑[A077043(A158416(n))]-A158416(n)` -/
def P10037564138321850771.Spec : Prop :=
  ∀ n, P10037564138321850771.a n = A265282 n

end A265282

/-! ## A265282.P2131195609049777460

`A002620(n)+A045947(A004526(n))+n`
-/

namespace A265282.P2131195609049777460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (A045947 (A004526 n).toNat + (n : ℤ))

end

end A265282.P2131195609049777460

namespace A265282

/-- `A002620(n)+A045947(A004526(n))+n` -/
def P2131195609049777460.Spec : Prop :=
  ∀ n, P2131195609049777460.a n = A265282 n

end A265282

/-! ## A265282.P13063473770558765038

`A007590(n)/2+A045947(A004526(n))+n`
-/

namespace A265282.P13063473770558765038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 n : ℚ) / 2 + (A045947 (A004526 n).toNat + (n : ℤ) : ℚ)

end

end A265282.P13063473770558765038

namespace A265282

/-- `A007590(n)/2+A045947(A004526(n))+n` -/
def P13063473770558765038.Spec : Prop :=
  ∀ n, P13063473770558765038.a n = (A265282 n : ℚ)

end A265282

/-! ## A265282.P15147859595142452988

`A045947(A004526(n))+A033638(n+2)-2`
-/

namespace A265282.P15147859595142452988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 (A004526 n).toNat + (A033638 (n + 2) - 2)

end

end A265282.P15147859595142452988

namespace A265282

/-- `A045947(A004526(n))+A033638(n+2)-2` -/
def P15147859595142452988.Spec : Prop :=
  ∀ n, P15147859595142452988.a n = A265282 n

end A265282

/-! ## A265282.P4940143381121215113

`∑[A077043(A152271(n+1))]-A152271(n+1)`
-/

namespace A265282.P4940143381121215113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A152271 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A152271 (n + 1)

end

end A265282.P4940143381121215113

namespace A265282

/-- `∑[A077043(A152271(n+1))]-A152271(n+1)` -/
def P4940143381121215113.Spec : Prop :=
  ∀ n, P4940143381121215113.a n = A265282 n

end A265282

/-! ## A265282.P16443768170583755512

`∑[A002265(2*n)]+A045947(A004526(n))+n`
-/

namespace A265282.P16443768170583755512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A045947 (A004526 n).toNat + (n : ℤ))

end

end A265282.P16443768170583755512

namespace A265282

/-- `∑[A002265(2*n)]+A045947(A004526(n))+n` -/
def P16443768170583755512.Spec : Prop :=
  ∀ n, P16443768170583755512.a n = A265282 n

end A265282

/-! ## A265282.P13559922158882832877

`record[A002717(A002262(n))+n]`
-/

namespace A265282.P13559922158882832877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (A002262 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265282.P13559922158882832877

namespace A265282

/-- `record[A002717(A002262(n))+n]` -/
def P13559922158882832877.Spec : Prop :=
  ∀ n, P13559922158882832877.a n = A265282 n

end A265282

/-! ## A265282.P12804887249617376255

`A002265(n²)+A045947(A004526(n))+n`
-/

namespace A265282.P12804887249617376255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n ^ 2) + (A045947 (A004526 n).toNat + (n : ℤ))

end

end A265282.P12804887249617376255

namespace A265282

/-- `A002265(n²)+A045947(A004526(n))+n` -/
def P12804887249617376255.Spec : Prop :=
  ∀ n, P12804887249617376255.a n = A265282 n

end A265282

/-!
# A265283: Number of ON (black) cells in the n-th iteration of the "Rule 94" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265283, the canonical program `A265283.P12069332907130132446` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265283 has offset 0).

The definition of A265283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265283.P12069332907130132446

`a(n-2)+2` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265283

/-- `a(n-2)+2` -/
def P12069332907130132446.Spec : Prop :=
  ∀ n, (P12069332907130132446.a n : ℤ) = A265283 n

theorem P12069332907130132446.correct : P12069332907130132446.Spec := by
  intro n
  simp only [A265283]

end A265283

/-! ## A265283.P5561492814635460474

`∑[and(2, a(n-2))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A265283.P5561492814635460474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  Nat.land 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265283.P5561492814635460474

namespace A265283

/-- `∑[and(2, a(n-2))]` -/
def P5561492814635460474.Spec : Prop :=
  ∀ n, (P5561492814635460474.a n : ℤ) = A265283 n

end A265283

/-! ## A265283.P17726556054400792778

`∑[((n-3)%2+2)%3]`
-/

namespace A265283.P17726556054400792778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((n : ℤ) - 3) 2 + 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265283.P17726556054400792778

namespace A265283

/-- `∑[((n-3)%2+2)%3]` -/
def P17726556054400792778.Spec : Prop :=
  ∀ n, P17726556054400792778.a n = A265283 n

end A265283

/-! ## A265283.P13921305612667244433

`∑[(2-(3-n)%2)%3]`
-/

namespace A265283.P13921305612667244433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - Int.tmod (3 - (n : ℤ)) 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265283.P13921305612667244433

namespace A265283

/-- `∑[(2-(3-n)%2)%3]` -/
def P13921305612667244433.Spec : Prop :=
  ∀ n, P13921305612667244433.a n = A265283 n

end A265283

/-! ## A265283.P11733590664294914016

`∑[C(2, n^((n+1)%2))]`
-/

namespace A265283.P11733590664294914016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ ((n + 1) % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265283.P11733590664294914016

namespace A265283

/-- `∑[C(2, n^((n+1)%2))]` -/
def P11733590664294914016.Spec : Prop :=
  ∀ n, (P11733590664294914016.a n : ℤ) = A265283 n

end A265283

/-! ## A265283.P17279461858549244682

`∑[C(2, n^and(1, n+1))]`
-/

namespace A265283.P17279461858549244682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265283.P17279461858549244682

namespace A265283

/-- `∑[C(2, n^and(1, n+1))]` -/
def P17279461858549244682.Spec : Prop :=
  ∀ n, (P17279461858549244682.a n : ℤ) = A265283 n

end A265283

/-! ## A265283.P9655643807927652195

`∑[C(2, C(n, and(1, n+1)))]`
-/

namespace A265283.P9655643807927652195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose n (Nat.land 1 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265283.P9655643807927652195

namespace A265283

/-- `∑[C(2, C(n, and(1, n+1)))]` -/
def P9655643807927652195.Spec : Prop :=
  ∀ n, (P9655643807927652195.a n : ℤ) = A265283 n

end A265283

/-! ## A265283.P2229069947142409130

`∑[2-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A265283.P2229069947142409130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265283.P2229069947142409130

namespace A265283

/-- `∑[2-a(n-1)]` -/
def P2229069947142409130.Spec : Prop :=
  ∀ n, P2229069947142409130.a n = A265283 n

end A265283

/-! ## A265283.P10263457442609253649

`3-or(1, -a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A265283.P10263457442609253649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - Int.lor 1 (-a (n - 2))

end

end A265283.P10263457442609253649

namespace A265283

/-- `3-or(1, -a(n-2))` -/
def P10263457442609253649.Spec : Prop :=
  ∀ n, P10263457442609253649.a n = A265283 n

end A265283

/-! ## A265283.P9548750938513256512

`and(n+3, -2)-C(n, n²)`
-/

namespace A265283.P9548750938513256512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (-2) - (Nat.choose n (n ^ 2) : ℤ)

end

end A265283.P9548750938513256512

namespace A265283

/-- `and(n+3, -2)-C(n, n²)` -/
def P9548750938513256512.Spec : Prop :=
  ∀ n, P9548750938513256512.a n = A265283 n

end A265283

/-! ## A265283.P13846095571955408383

`ogf((1+2x-x^4)/(1-x-x^2+x^3))`
-/

namespace A265283.P13846095571955408383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 0, -1] [1, -1, -1, 1] n

end

end A265283.P13846095571955408383

namespace A265283

/-- `ogf((1+2x-x^4)/(1-x-x^2+x^3))` -/
def P13846095571955408383.Spec : Prop :=
  ∀ n, P13846095571955408383.a n = A265283 n

end A265283

/-! ## A265283.P10378473877269729918

`floor(or(1, n+3)-4/(n+2))`
-/

namespace A265283.P10378473877269729918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 3) : ℚ) - 4 / (n + 2 : ℚ)⌋

end

end A265283.P10378473877269729918

namespace A265283

/-- `floor(or(1, n+3)-4/(n+2))` -/
def P10378473877269729918.Spec : Prop :=
  ∀ n, P10378473877269729918.a n = A265283 n

end A265283

/-! ## A265283.P11694433354424134677

`or(1, n+3)-ceil(4/(n+2))`
-/

namespace A265283.P11694433354424134677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 3) : ℤ) - ⌈4 / (n + 2 : ℚ)⌉

end

end A265283.P11694433354424134677

namespace A265283

/-- `or(1, n+3)-ceil(4/(n+2))` -/
def P11694433354424134677.Spec : Prop :=
  ∀ n, P11694433354424134677.a n = A265283 n

end A265283

/-! ## A265283.P7543389825675680600

`ceil(lcm(2, n)/(n+1)+n+1)`
-/

namespace A265283.P7543389825675680600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 n : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌉

end

end A265283.P7543389825675680600

namespace A265283

/-- `ceil(lcm(2, n)/(n+1)+n+1)` -/
def P7543389825675680600.Spec : Prop :=
  ∀ n, P7543389825675680600.a n = A265283 n

end A265283

/-! ## A265283.P10448722947549437919

`round(or(1, n+1)+n/(n+2))`
-/

namespace A265283.P10448722947549437919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 1) : ℚ) + (n : ℚ) / (n + 2 : ℚ))

end

end A265283.P10448722947549437919

namespace A265283

/-- `round(or(1, n+1)+n/(n+2))` -/
def P10448722947549437919.Spec : Prop :=
  ∀ n, P10448722947549437919.a n = A265283 n

end A265283

/-! ## A265283.P7103714930731204375

`and(1, n)+n+2-C(n, n²)`
-/

namespace A265283.P7103714930731204375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + (n + 2) : ℤ) - (Nat.choose n (n ^ 2) : ℤ)

end

end A265283.P7103714930731204375

namespace A265283

/-- `and(1, n)+n+2-C(n, n²)` -/
def P7103714930731204375.Spec : Prop :=
  ∀ n, P7103714930731204375.a n = A265283 n

end A265283

/-! ## A265283.P11243346883390342787

`2*n-(a(n-1)-4)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A265283.P11243346883390342787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  (2 * n : ℤ) - (a (n - 1) - 4)

end

end A265283.P11243346883390342787

namespace A265283

/-- `2*n-(a(n-1)-4)` -/
def P11243346883390342787.Spec : Prop :=
  ∀ n, P11243346883390342787.a n = A265283 n

end A265283

/-! ## A265283.P12958101153733443400

`4-(a(n-1)-n-n)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A265283.P12958101153733443400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  4 - (a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A265283.P12958101153733443400

namespace A265283

/-- `4-(a(n-1)-n-n)` -/
def P12958101153733443400.Spec : Prop :=
  ∀ n, P12958101153733443400.a n = A265283 n

end A265283

/-! ## A265283.P17632099543039475409

`∑[or(C(2, n), xor(1, n+1))]-∑[n]`
-/

namespace A265283.P17632099543039475409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose 2 n) (Nat.xor 1 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A265283.P17632099543039475409

namespace A265283

/-- `∑[or(C(2, n), xor(1, n+1))]-∑[n]` -/
def P17632099543039475409.Spec : Prop :=
  ∀ n, P17632099543039475409.a n = A265283 n

end A265283

/-! ## A265283.P8123677200595892241

`floor(2*n/(n+2))+or(1, n+1)`
-/

namespace A265283.P8123677200595892241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (n + 2 : ℚ)⌋ + (Nat.lor 1 (n + 1) : ℤ)

end

end A265283.P8123677200595892241

namespace A265283

/-- `floor(2*n/(n+2))+or(1, n+1)` -/
def P8123677200595892241.Spec : Prop :=
  ∀ n, P8123677200595892241.a n = A265283 n

end A265283

/-!
# A265284: Total number of ON (black) cells after n iterations of the "Rule 94" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265284, the canonical program `A265284.P3293689693300010461` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265284 has offset 0).

The definition of A265284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265284.P3293689693300010461

`∑[a(n-2)+2]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265284

/-- `∑[a(n-2)+2]` -/
def P3293689693300010461.Spec : Prop :=
  ∀ n, (P3293689693300010461.a n : ℤ) = A265284 n

theorem P3293689693300010461.correct : P3293689693300010461.Spec := by
  intro n
  simp only [A265284]

end A265284

/-! ## A265284.P17747749681908503409

`∑[∑[and(2, a(n-2))]]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A265284.P17747749681908503409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  Nat.land 2 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265284.P17747749681908503409

namespace A265284

/-- `∑[∑[and(2, a(n-2))]]` -/
def P17747749681908503409.Spec : Prop :=
  ∀ n, (P17747749681908503409.a n : ℤ) = A265284 n

end A265284

/-! ## A265284.P7629480918006226083

`comp[3*(n+1)]+∑[n+1]`
-/

namespace A265284.P7629480918006226083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A265284.P7629480918006226083

namespace A265284

/-- `comp[3*(n+1)]+∑[n+1]` -/
def P7629480918006226083.Spec : Prop :=
  ∀ n, (P7629480918006226083.a n : ℤ) = A265284 n

end A265284

/-! ## A265284.P2676191151869166131

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A265284.P2676191151869166131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265284.P2676191151869166131

namespace A265284

/-- `∑[∑[2-a(n-1)]]` -/
def P2676191151869166131.Spec : Prop :=
  ∀ n, P2676191151869166131.a n = A265284 n

end A265284

/-! ## A265284.P7869157866894667860

`and(a(n-1)+n+3, -2)` with `a(0)=1`
-/

namespace A265284.P7869157866894667860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1) + (n + 3 : ℤ)) (-2)

end

end A265284.P7869157866894667860

namespace A265284

/-- `and(a(n-1)+n+3, -2)` -/
def P7869157866894667860.Spec : Prop :=
  ∀ n, P7869157866894667860.a n = A265284 n

end A265284

/-! ## A265284.P11216235411901621622

`ogf((1+2x-x^4)/(1-2x+2x^3-x^4))`
-/

namespace A265284.P11216235411901621622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 0, -1] [1, -2, 0, 2, -1] n

end

end A265284.P11216235411901621622

namespace A265284

/-- `ogf((1+2x-x^4)/(1-2x+2x^3-x^4))` -/
def P11216235411901621622.Spec : Prop :=
  ∀ n, P11216235411901621622.a n = A265284 n

end A265284

/-! ## A265284.P16061011816587672150

`record[a(n-2)+2*n]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=4`
-/

namespace A265284.P16061011816587672150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 4] fun n f1 =>
  f1 (n - 2) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265284.P16061011816587672150

namespace A265284

/-- `record[a(n-2)+2*n]` -/
def P16061011816587672150.Spec : Prop :=
  ∀ n, (P16061011816587672150.a n : ℤ) = A265284 n

end A265284

/-! ## A265284.P5940359249517259617

`2*floor((a(n-1)+3+n)/2)` with `a(0)=1`
-/

namespace A265284.P5940359249517259617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ⌊(a (n - 1) + 3 + (n : ℤ) : ℚ) / 2⌋

end

end A265284.P5940359249517259617

namespace A265284

/-- `2*floor((a(n-1)+3+n)/2)` -/
def P5940359249517259617.Spec : Prop :=
  ∀ n, P5940359249517259617.a n = A265284 n

end A265284

/-! ## A265284.P15670707041867195242

`2*(2-floor((2-a(n-1)-n)/2))` with `a(0)=1`
-/

namespace A265284.P15670707041867195242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - ⌊(2 - a (n - 1) - (n : ℤ) : ℚ) / 2⌋)

end

end A265284.P15670707041867195242

namespace A265284

/-- `2*(2-floor((2-a(n-1)-n)/2))` -/
def P15670707041867195242.Spec : Prop :=
  ∀ n, P15670707041867195242.a n = A265284 n

end A265284

/-! ## A265284.P16720139928517793583

`∑[A265283(n)]`
-/

namespace A265284.P16720139928517793583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265284.P16720139928517793583

namespace A265284

/-- `∑[A265283(n)]` -/
def P16720139928517793583.Spec : Prop :=
  ∀ n, P16720139928517793583.a n = A265284 n

theorem P16720139928517793583.correct : P16720139928517793583.Spec := by
  intro n
  simp only [A265284, Nat.add_sub_cancel, A265284.P16720139928517793583.f1, A265284.P16720139928517793583.a, A265284.P3293689693300010461.f1, A265284.P3293689693300010461.a, A265283, A265283.P12069332907130132446.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A265284

/-! ## A265284.P11020391799149853696

`∑[A174296(n)+n]`
-/

namespace A265284.P11020391799149853696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265284.P11020391799149853696

namespace A265284

/-- `∑[A174296(n)+n]` -/
def P11020391799149853696.Spec : Prop :=
  ∀ n, P11020391799149853696.a n = A265284 n

end A265284

/-! ## A265284.P14959284377389234582

`ceil(A027379(n)+n/2)`
-/

namespace A265284.P14959284377389234582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027379 n : ℚ) + (n : ℚ) / 2⌉

end

end A265284.P14959284377389234582

namespace A265284

/-- `ceil(A027379(n)+n/2)` -/
def P14959284377389234582.Spec : Prop :=
  ∀ n, P14959284377389234582.a n = A265284 n

end A265284

/-! ## A265284.P797831383459596945

`A128153(n)%A096376(n)`
-/

namespace A265284.P797831383459596945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128153 n) (A096376 n)

end

end A265284.P797831383459596945

namespace A265284

/-- `A128153(n)%A096376(n)` -/
def P797831383459596945.Spec : Prop :=
  ∀ n, P797831383459596945.a n = A265284 n

end A265284

/-! ## A265284.P14962619804012892710

`∑[A324292(A071044(n))+n]`
-/

namespace A265284.P14962619804012892710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324292 (A071044 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265284.P14962619804012892710

namespace A265284

/-- `∑[A324292(A071044(n))+n]` -/
def P14962619804012892710.Spec : Prop :=
  ∀ n, P14962619804012892710.a n = A265284 n

end A265284

/-! ## A265284.P15776819765112742773

`∑[∑[C(2, A124625(n+1))]]`
-/

namespace A265284.P15776819765112742773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A124625 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265284.P15776819765112742773

namespace A265284

/-- `∑[∑[C(2, A124625(n+1))]]` -/
def P15776819765112742773.Spec : Prop :=
  ∀ n, (P15776819765112742773.a n : ℤ) = A265284 n

end A265284

/-! ## A265284.P2930799839156700843

`A378212(A047838(n+3))`
-/

namespace A265284.P2930799839156700843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378212 (A047838 (n + 3)).toNat

end

end A265284.P2930799839156700843

namespace A265284

/-- `A378212(A047838(n+3))` -/
def P2930799839156700843.Spec : Prop :=
  ∀ n, P2930799839156700843.a n = A265284 n

end A265284

/-! ## A265284.P17352430322004706964

`A004275(∑[A080513(n)])`
-/

namespace A265284.P17352430322004706964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265284.P17352430322004706964

namespace A265284

/-- `A004275(∑[A080513(n)])` -/
def P17352430322004706964.Spec : Prop :=
  ∀ n, P17352430322004706964.a n = A265284 n

end A265284

/-! ## A265284.P4591932426938592803

`A004275(A024206(n+2))`
-/

namespace A265284.P4591932426938592803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A024206 (n + 2)).toNat

end

end A265284.P4591932426938592803

namespace A265284

/-- `A004275(A024206(n+2))` -/
def P4591932426938592803.Spec : Prop :=
  ∀ n, P4591932426938592803.a n = A265284 n

end A265284

/-! ## A265284.P4810641663851503221

`A058992(A087811(n+2))`
-/

namespace A265284.P4810641663851503221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A087811 (n + 2)).toNat

end

end A265284.P4810641663851503221

namespace A265284

/-- `A058992(A087811(n+2))` -/
def P4810641663851503221.Spec : Prop :=
  ∀ n, P4810641663851503221.a n = A265284 n

end A265284

/-!
# A265285: Carmichael numbers (A002997) k such that k-1 is a square.

The programs for A265285, there is no canonical definition to state claims against.
-/

/-! ## A265285.P553113246467356608

`A265328(A133134(2*(n+1))+A066829(n+5))`
-/

namespace A265285.P553113246467356608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265328 (A133134 (2 * (n + 1)) + A066829 (n + 5)).toNat

end

end A265285.P553113246467356608

