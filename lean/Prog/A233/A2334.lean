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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A233400: Number n such that a2 - n^3 is a triangular number (A000217), where a2 is the least square above n^3.

The programs for A233400, there is no canonical definition to state claims against.
-/

/-! ## A233400.P15527732666595673150

`A325101(A038034(n+1)-A051731(n+1))`
-/

namespace A233400.P15527732666595673150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325101 (A038034 (n + 1) - A051731 (n + 1)).toNat

end

end A233400.P15527732666595673150

/-! ## A233400.P5163345120274187329

`lcm(2, A241469(comp[∑[n]]))+n`
-/

namespace A233400.P5163345120274187329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A241469 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) + n

end

end A233400.P5163345120274187329

/-!
# A233402: Number of (n+1) X (1+1) 0..2 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233402, the canonical program `A233402.P11378713183131523725` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233402 has offset 1).

The definition of A233402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233402.P11378713183131523725

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=9, a(1)=11, a(2)=22, a(3)=24, a(4)=41, a(5)=42`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233402

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P11378713183131523725.Spec : Prop :=
  ∀ n, P11378713183131523725.a n = A233402 (n + 1)

theorem P11378713183131523725.correct : P11378713183131523725.Spec := by
  intro n
  simp only [A233402, Nat.add_sub_cancel]

end A233402

/-! ## A233402.P17526750913537389425

`A123596(n+4)+A000982(n+3)`
-/

namespace A233402.P17526750913537389425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (n + 4) + A000982 (n + 3)

end

end A233402.P17526750913537389425

namespace A233402

/-- `A123596(n+4)+A000982(n+3)` -/
def P17526750913537389425.Spec : Prop :=
  ∀ n, P17526750913537389425.a n = A233402 (n + 1)

end A233402

/-! ## A233402.P17265246703493234930

`A002620(n+2)+A123596(n+4)+A002620(n+4)`
-/

namespace A233402.P17265246703493234930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) + (A123596 (n + 4) + A002620 (n + 4))

end

end A233402.P17265246703493234930

namespace A233402

/-- `A002620(n+2)+A123596(n+4)+A002620(n+4)` -/
def P17265246703493234930.Spec : Prop :=
  ∀ n, P17265246703493234930.a n = A233402 (n + 1)

end A233402

/-! ## A233402.P16039351573794157903

`A330298(n+6)-A028724(n+3)`
-/

namespace A233402.P16039351573794157903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330298 (n + 6) - A028724 (n + 3)

end

end A233402.P16039351573794157903

namespace A233402

/-- `A330298(n+6)-A028724(n+3)` -/
def P16039351573794157903.Spec : Prop :=
  ∀ n, P16039351573794157903.a n = A233402 (n + 1)

end A233402

/-! ## A233402.P12457287189156522239

`A330298(n+6)-∑[A123596(n+1)]`
-/

namespace A233402.P12457287189156522239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330298 (n + 6) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233402.P12457287189156522239

namespace A233402

/-- `A330298(n+6)-∑[A123596(n+1)]` -/
def P12457287189156522239.Spec : Prop :=
  ∀ n, P12457287189156522239.a n = A233402 (n + 1)

end A233402

/-! ## A233402.P17954163760820346524

`A123596(n+4)+record[A144650(n+1)]`
-/

namespace A233402.P17954163760820346524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (n + 4) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233402.P17954163760820346524

namespace A233402

/-- `A123596(n+4)+record[A144650(n+1)]` -/
def P17954163760820346524.Spec : Prop :=
  ∀ n, P17954163760820346524.a n = A233402 (n + 1)

end A233402

/-! ## A233402.P5864700627642283084

`A025480(A000982(n+4))+A000982(n+3)`
-/

namespace A233402.P5864700627642283084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000982 (n + 4)).toNat + A000982 (n + 3)

end

end A233402.P5864700627642283084

namespace A233402

/-- `A025480(A000982(n+4))+A000982(n+3)` -/
def P5864700627642283084.Spec : Prop :=
  ∀ n, P5864700627642283084.a n = A233402 (n + 1)

end A233402

/-!
# A233403: Number of (n+1)X(2+1) 0..2 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233403, there is no canonical definition to state claims against.
-/

/-! ## A233403.P14679935272652872584

`A233408(∑[n+1]+2)`
-/

namespace A233403.P14679935272652872584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233403.P14679935272652872584

/-! ## A233403.P490749620732144960

`A000027(A233408(∑[n+2]))`
-/

namespace A233403.P490749620732144960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A233408 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A233403.P490749620732144960

/-! ## A233403.P13437736527019462205

`A233408(A000096(n+1))+A000007(n+1)`
-/

namespace A233403.P13437736527019462205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A233403.P13437736527019462205

/-!
# A233404: Number of (n+1)X(3+1) 0..2 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233404, there is no canonical definition to state claims against.
-/

/-! ## A233404.P2641390150689129464

`A233408(∑[n+2]+4)`
-/

namespace A233404.P2641390150689129464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233404.P2641390150689129464

/-! ## A233404.P11716742419790197429

`record[A233408(A000217(n+3)-6*n)]`
-/

namespace A233404.P11716742419790197429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (A000217 (n + 3) - (6 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233404.P11716742419790197429

/-! ## A233404.P3822070150789205933

`A233408(A167614(n+1))%((7*n+6)^4)`
-/

namespace A233404.P3822070150789205933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233408 (A167614 (n + 1)).toNat) ((7 * n + 6) ^ 4 : ℤ)

end

end A233404.P3822070150789205933

/-! ## A233404.P10468532381413572190

`A233408(A167614(n+1))+A011741(n)`
-/

namespace A233404.P10468532381413572190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (A167614 (n + 1)).toNat + A011741 n

end

end A233404.P10468532381413572190

/-! ## A233404.P11346519357238961571

`A233408(A167614(n+1))+A025444(n)`
-/

namespace A233404.P11346519357238961571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (A167614 (n + 1)).toNat + A025444 n

end

end A233404.P11346519357238961571

/-!
# A233405: Number of (n+1)X(4+1) 0..2 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233405, there is no canonical definition to state claims against.
-/

/-! ## A233405.P16365594817599818745

`A233408(∑[n+3]+7)`
-/

namespace A233405.P16365594817599818745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233405.P16365594817599818745

/-!
# A233406: Number of (n+1)X(5+1) 0..2 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233406, there is no canonical definition to state claims against.
-/

/-! ## A233406.P10232614082783420835

`A233408(A374005(n+1))`
-/

namespace A233406.P10232614082783420835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (A374005 (n + 1)).toNat

end

end A233406.P10232614082783420835

/-! ## A233406.P12354796489013514422

`A233408(A167499(n+3))`
-/

namespace A233406.P12354796489013514422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (A167499 (n + 3)).toNat

end

end A233406.P12354796489013514422

/-! ## A233406.P5847459325143832659

`A233408(A155212(n)+13)`
-/

namespace A233406.P5847459325143832659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (A155212 n + 13).toNat

end

end A233406.P5847459325143832659

/-! ## A233406.P3184142209285953762

`A233408(eq[7, A066657(n)])`
-/

namespace A233406.P3184142209285953762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233406.P3184142209285953762

/-! ## A233406.P15557540773976230449

`A233408(A000124(n+4)+4)`
-/

namespace A233406.P15557540773976230449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (A000124 (n + 4) + 4).toNat

end

end A233406.P15557540773976230449

/-!
# A233407: Number of (n+1)X(6+1) 0..2 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233407, there is no canonical definition to state claims against.
-/

/-! ## A233407.P7258842436865962418

`A233408(∑[n+5]+16)`
-/

namespace A233407.P7258842436865962418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233408 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A233407.P7258842436865962418

/-!
# A233409: Squares with squarefree neighbors.

The programs for A233409, the canonical program `A233409.P9153402309979020244` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233409 has offset 1).

The definition of A233409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233409.P1596905481014844548

`∩[A373077(n+1), A016742(n)]`
-/

namespace A233409.P1596905481014844548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P1596905481014844548

namespace A233409

/-- `∩[A373077(n+1), A016742(n)]` -/
def P1596905481014844548.Spec : Prop :=
  ∀ n, (P1596905481014844548.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P252651563843573786

`∩[A144916(n+1), A373077(n+1)]`
-/

namespace A233409.P252651563843573786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P252651563843573786

namespace A233409

/-- `∩[A144916(n+1), A373077(n+1)]` -/
def P252651563843573786.Spec : Prop :=
  ∀ n, (P252651563843573786.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P12989869345442985460

`∩[A373077(n+1), A055808(n)]`
-/

namespace A233409.P12989869345442985460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P12989869345442985460

namespace A233409

/-- `∩[A373077(n+1), A055808(n)]` -/
def P12989869345442985460.Spec : Prop :=
  ∀ n, (P12989869345442985460.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P6571774015781914070

`∩[A256944(n+1), A373077(n+1)]`
-/

namespace A233409.P6571774015781914070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P6571774015781914070

namespace A233409

/-- `∩[A256944(n+1), A373077(n+1)]` -/
def P6571774015781914070.Spec : Prop :=
  ∀ n, (P6571774015781914070.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P9153402309979020244

`∩[A049533(n+1), A069977(n+1)+1]²`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A233409

/-- `∩[A049533(n+1), A069977(n+1)+1]²` -/
def P9153402309979020244.Spec : Prop :=
  ∀ n, (P9153402309979020244.a n : ℤ) = A233409 (n + 1)

theorem P9153402309979020244.correct : P9153402309979020244.Spec := by
  intro n
  simp only [A233409, Nat.add_sub_cancel]

end A233409

/-! ## A233409.P7110451528701576319

`∩[2*A272799(n+1), A049533(n+1)]²`
-/

namespace A233409.P7110451528701576319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A272799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A233409.P7110451528701576319

namespace A233409

/-- `∩[2*A272799(n+1), A049533(n+1)]²` -/
def P7110451528701576319.Spec : Prop :=
  ∀ n, (P7110451528701576319.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P1184251843993099680

`∩[A049533(n+1), A004277(A272799(n+1))]²`
-/

namespace A233409.P1184251843993099680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A272799 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A233409.P1184251843993099680

namespace A233409

/-- `∩[A049533(n+1), A004277(A272799(n+1))]²` -/
def P1184251843993099680.Spec : Prop :=
  ∀ n, (P1184251843993099680.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P12419537717296850206

`∩[A049533(n+1), A004273(A272799(n+1)+1)-1]²`
-/

namespace A233409.P12419537717296850206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A272799 (n + 1) + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A233409.P12419537717296850206

namespace A233409

/-- `∩[A049533(n+1), A004273(A272799(n+1)+1)-1]²` -/
def P12419537717296850206.Spec : Prop :=
  ∀ n, (P12419537717296850206.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P1938802388036720902

`∩[A373077(n+1), A000290(n)]`
-/

namespace A233409.P1938802388036720902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P1938802388036720902

namespace A233409

/-- `∩[A373077(n+1), A000290(n)]` -/
def P1938802388036720902.Spec : Prop :=
  ∀ n, (P1938802388036720902.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P12305384952929642302

`∩[A373077(n+1), A081345(n)]`
-/

namespace A233409.P12305384952929642302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P12305384952929642302

namespace A233409

/-- `∩[A373077(n+1), A081345(n)]` -/
def P12305384952929642302.Spec : Prop :=
  ∀ n, (P12305384952929642302.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P3162374303256467648

`∩[A373077(n+1), A081350(n)]`
-/

namespace A233409.P3162374303256467648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081350 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P3162374303256467648

namespace A233409

/-- `∩[A373077(n+1), A081350(n)]` -/
def P3162374303256467648.Spec : Prop :=
  ∀ n, (P3162374303256467648.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P13116502425413745490

`∩[A373077(n+1), A248825(n)]`
-/

namespace A233409.P13116502425413745490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P13116502425413745490

namespace A233409

/-- `∩[A373077(n+1), A248825(n)]` -/
def P13116502425413745490.Spec : Prop :=
  ∀ n, (P13116502425413745490.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P13829757114513426049

`∩[A373077(n+1), A325657(n)]`
-/

namespace A233409.P13829757114513426049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P13829757114513426049

namespace A233409

/-- `∩[A373077(n+1), A325657(n)]` -/
def P13829757114513426049.Spec : Prop :=
  ∀ n, (P13829757114513426049.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P9832584600386137379

`∩[A137928(n+1), A373077(n+1)]`
-/

namespace A233409.P9832584600386137379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P9832584600386137379

namespace A233409

/-- `∩[A137928(n+1), A373077(n+1)]` -/
def P9832584600386137379.Spec : Prop :=
  ∀ n, (P9832584600386137379.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P11530326235787778708

`∩[A238411(n+1), A373077(n+1)]`
-/

namespace A233409.P11530326235787778708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P11530326235787778708

namespace A233409

/-- `∩[A238411(n+1), A373077(n+1)]` -/
def P11530326235787778708.Spec : Prop :=
  ∀ n, (P11530326235787778708.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P9785004555693254084

`∩[A363284(n+1), A373077(n+1)]`
-/

namespace A233409.P9785004555693254084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P9785004555693254084

namespace A233409

/-- `∩[A363284(n+1), A373077(n+1)]` -/
def P9785004555693254084.Spec : Prop :=
  ∀ n, (P9785004555693254084.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P11330737835010694252

`∩[A213011(n+1), A373077(n+1)]`
-/

namespace A233409.P11330737835010694252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P11330737835010694252

namespace A233409

/-- `∩[A213011(n+1), A373077(n+1)]` -/
def P11330737835010694252.Spec : Prop :=
  ∀ n, (P11330737835010694252.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P8416678395088030376

`∩[A034793(n+1), A373077(n+1)]`
-/

namespace A233409.P8416678395088030376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P8416678395088030376

namespace A233409

/-- `∩[A034793(n+1), A373077(n+1)]` -/
def P8416678395088030376.Spec : Prop :=
  ∀ n, (P8416678395088030376.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P4275152792318577468

`∩[A272266(n+1), A373077(n+1)]`
-/

namespace A233409.P4275152792318577468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P4275152792318577468

namespace A233409

/-- `∩[A272266(n+1), A373077(n+1)]` -/
def P4275152792318577468.Spec : Prop :=
  ∀ n, (P4275152792318577468.a n : ℤ) = A233409 (n + 1)

end A233409

/-! ## A233409.P13994333966473308486

`∩[A324174(n+1), A373077(n+1)]`
-/

namespace A233409.P13994333966473308486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233409.P13994333966473308486

namespace A233409

/-- `∩[A324174(n+1), A373077(n+1)]` -/
def P13994333966473308486.Spec : Prop :=
  ∀ n, (P13994333966473308486.a n : ℤ) = A233409 (n + 1)

end A233409

/-!
# A233411: The number of length n binary words with some prefix which contains two more 1's than 0's or two more 0's than 1's.

The programs for A233411, the canonical program `A233411.P5985197048557804543` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233411 has offset 0).

The definition of A233411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233411.P5985197048557804543

`2^n-2^ceil(n/2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233411

/-- `2^n-2^ceil(n/2)` -/
def P5985197048557804543.Spec : Prop :=
  ∀ n, P5985197048557804543.a n = (A233411 n : ℚ)

end A233411

/-! ## A233411.P4639977648916775965

`ogf(2x^2/(1-2x-2x^2+4x^3))`
-/

namespace A233411.P4639977648916775965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -2, -2, 4] n

end

end A233411.P4639977648916775965

namespace A233411

/-- `ogf(2x^2/(1-2x-2x^2+4x^3))` -/
def P4639977648916775965.Spec : Prop :=
  ∀ n, P4639977648916775965.a n = A233411 n

end A233411

/-! ## A233411.P14954182126341201035

`abs(∏[gcd(2, n+1)]-2^n)`
-/

namespace A233411.P14954182126341201035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)|

end

end A233411.P14954182126341201035

namespace A233411

/-- `abs(∏[gcd(2, n+1)]-2^n)` -/
def P14954182126341201035.Spec : Prop :=
  ∀ n, P14954182126341201035.a n = A233411 n

end A233411

/-! ## A233411.P16077608032183984825

`abs(2^∑[n%2]-2^n)`
-/

namespace A233411.P16077608032183984825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (2 ^ n : ℤ)|

end

end A233411.P16077608032183984825

namespace A233411

/-- `abs(2^∑[n%2]-2^n)` -/
def P16077608032183984825.Spec : Prop :=
  ∀ n, P16077608032183984825.a n = A233411 n

end A233411

/-! ## A233411.P3144974395739699414

`2*or(a(n-1), a(n-2))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A233411.P3144974395739699414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * Nat.lor (a (n - 1)) (a (n - 2))

end

end A233411.P3144974395739699414

namespace A233411

/-- `2*or(a(n-1), a(n-2))` -/
def P3144974395739699414.Spec : Prop :=
  ∀ n, (P3144974395739699414.a n : ℤ) = A233411 n

end A233411

/-! ## A233411.P1235656247755023649

`abs(2^n-∑[2*a(n-2)])` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A233411.P1235656247755023649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A233411.P1235656247755023649

namespace A233411

/-- `abs(2^n-∑[2*a(n-2)])` -/
def P1235656247755023649.Spec : Prop :=
  ∀ n, P1235656247755023649.a n = A233411 n

end A233411

/-! ## A233411.P15171251681119514225

`floor(2^n-∑[2*a(n-2)])` with `a(0)=1, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A233411.P15171251681119514225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A233411.P15171251681119514225

namespace A233411

/-- `floor(2^n-∑[2*a(n-2)])` -/
def P15171251681119514225.Spec : Prop :=
  ∀ n, P15171251681119514225.a n = A233411 n

end A233411

/-! ## A233411.P11567823461524422864

`xor(A000325(n), A356185(n))`
-/

namespace A233411.P11567823461524422864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000325 n) (A356185 n)

end

end A233411.P11567823461524422864

namespace A233411

/-- `xor(A000325(n), A356185(n))` -/
def P11567823461524422864.Spec : Prop :=
  ∀ n, P11567823461524422864.a n = A233411 n

end A233411

/-! ## A233411.P15089032498854648260

`A106624(n+1)*A106624(n)`
-/

namespace A233411.P15089032498854648260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (n + 1) * A106624 n

end

end A233411.P15089032498854648260

namespace A233411

/-- `A106624(n+1)*A106624(n)` -/
def P15089032498854648260.Spec : Prop :=
  ∀ n, P15089032498854648260.a n = A233411 n

end A233411

/-! ## A233411.P3830068240474237716

`(A016116(n)-1)*A060546(n)`
-/

namespace A233411.P3830068240474237716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016116 n - 1) * A060546 n

end

end A233411.P3830068240474237716

namespace A233411

/-- `(A016116(n)-1)*A060546(n)` -/
def P3830068240474237716.Spec : Prop :=
  ∀ n, P3830068240474237716.a n = A233411 n

end A233411

/-! ## A233411.P6217661582515524291

`lcm(A056453(n+1), A060546(n))`
-/

namespace A233411.P6217661582515524291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056453 (n + 1)) (A060546 n)

end

end A233411.P6217661582515524291

namespace A233411

/-- `lcm(A056453(n+1), A060546(n))` -/
def P6217661582515524291.Spec : Prop :=
  ∀ n, (P6217661582515524291.a n : ℤ) = A233411 n

end A233411

/-! ## A233411.P5938161623518848898

`and(A032085(n+1), A274638(n))`
-/

namespace A233411.P5938161623518848898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032085 (n + 1)) (A274638 n)

end

end A233411.P5938161623518848898

namespace A233411

/-- `and(A032085(n+1), A274638(n))` -/
def P5938161623518848898.Spec : Prop :=
  ∀ n, P5938161623518848898.a n = A233411 n

end A233411

/-! ## A233411.P8380392444311030062

`2*(∑[A007179(n)]-A007179(n))`
-/

namespace A233411.P8380392444311030062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A007179 n)

end

end A233411.P8380392444311030062

namespace A233411

/-- `2*(∑[A007179(n)]-A007179(n))` -/
def P8380392444311030062.Spec : Prop :=
  ∀ n, P8380392444311030062.a n = A233411 n

end A233411

/-! ## A233411.P15201160526251318964

`2*(A000079(n)-A005418(n+1))`
-/

namespace A233411.P15201160526251318964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n - A005418 (n + 1))

end

end A233411.P15201160526251318964

namespace A233411

/-- `2*(A000079(n)-A005418(n+1))` -/
def P15201160526251318964.Spec : Prop :=
  ∀ n, P15201160526251318964.a n = A233411 n

end A233411

/-! ## A233411.P9148395962174770396

`(2^(n+1)-∑[2*a(n-2)]-2)/2` with `a(0)=0, a(1)=2`
-/

namespace A233411.P9148395962174770396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / 2

end

end A233411.P9148395962174770396

namespace A233411

/-- `(2^(n+1)-∑[2*a(n-2)]-2)/2` -/
def P9148395962174770396.Spec : Prop :=
  ∀ n, P9148395962174770396.a n = (A233411 n : ℚ)

end A233411

/-! ## A233411.P9639680508044817261

`Δ[A027556(n)]`
-/

namespace A233411.P9639680508044817261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233411.P9639680508044817261

namespace A233411

/-- `Δ[A027556(n)]` -/
def P9639680508044817261.Spec : Prop :=
  ∀ n, P9639680508044817261.a n = A233411 n

end A233411

/-! ## A233411.P17760629419435302232

`A208901(n+1)/2`
-/

namespace A233411.P17760629419435302232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208901 (n + 1) : ℚ) / 2

end

end A233411.P17760629419435302232

namespace A233411

/-- `A208901(n+1)/2` -/
def P17760629419435302232.Spec : Prop :=
  ∀ n, P17760629419435302232.a n = (A233411 n : ℚ)

end A233411

/-! ## A233411.P11611375136763371934

`A122746(n)%A000079(n)`
-/

namespace A233411.P11611375136763371934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122746 n) (A000079 n)

end

end A233411.P11611375136763371934

namespace A233411

/-- `A122746(n)%A000079(n)` -/
def P11611375136763371934.Spec : Prop :=
  ∀ n, P11611375136763371934.a n = A233411 n

end A233411

/-! ## A233411.P6649502336470727566

`A288828(n)%A255047(n)`
-/

namespace A233411.P6649502336470727566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288828 n) (A255047 n)

end

end A233411.P6649502336470727566

namespace A233411

/-- `A288828(n)%A255047(n)` -/
def P6649502336470727566.Spec : Prop :=
  ∀ n, P6649502336470727566.a n = A233411 n

end A233411

/-! ## A233411.P2043257892213823200

`and(A000225(n), A122746(n))`
-/

namespace A233411.P2043257892213823200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A122746 n)

end

end A233411.P2043257892213823200

namespace A233411

/-- `and(A000225(n), A122746(n))` -/
def P2043257892213823200.Spec : Prop :=
  ∀ n, P2043257892213823200.a n = A233411 n

end A233411

/-!
# A233413: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^15.

The programs for A233413, there is no canonical definition to state claims against.
-/

/-! ## A233413.P2079518476521209766

`A000720(A233414(n+1))`
-/

namespace A233413.P2079518476521209766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233414 (n + 1)).toNat

end

end A233413.P2079518476521209766

/-! ## A233413.P8906346845046111576

`∑{d}[A233414(n+1), A061395(#)]`
-/

namespace A233413.P8906346845046111576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A233413.P8906346845046111576

/-!
# A233414: Prime(n), where n is such that (1 + Sum_{i=1..n} prime(i)^15) / n is an integer.

The programs for A233414, there is no canonical definition to state claims against.
-/

/-! ## A233414.P15570547733477066333

`A000040(A233413(n+1))`
-/

namespace A233414.P15570547733477066333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233413 (n + 1)).toNat

end

end A233414.P15570547733477066333

/-! ## A233414.P17889154195842193098

`A008578(A233413(n+1)+1)`
-/

namespace A233414.P17889154195842193098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A233413 (n + 1) + 1).toNat

end

end A233414.P17889154195842193098

/-! ## A233414.P9609760225154564358

`A158611(A233413(n+1)+2)`
-/

namespace A233414.P9609760225154564358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A233413 (n + 1) + 2).toNat

end

end A233414.P9609760225154564358

/-! ## A233414.P7711409063386774746

`∑{d}[A233413(n+1), A007444(#)]`
-/

namespace A233414.P7711409063386774746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A233414.P7711409063386774746

/-! ## A233414.P7749522088897931346

`A006005(A233413(n+1))+A000007(n)`
-/

namespace A233414.P7749522088897931346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A233413 (n + 1)).toNat + A000007 n

end

end A233414.P7749522088897931346

/-!
# A233420: Minimal number of c-squares (A020330) and/or 1's which add to n.

The programs for A233420, there is no canonical definition to state claims against.
-/

/-! ## A233420.P15413791111037156933

`A057945(A071920(2^(comp[∑[n]]-n))+n)`
-/

namespace A233420.P15413791111037156933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (A071920 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat + (n : ℤ)).toNat

end

end A233420.P15413791111037156933

/-! ## A233420.P5134160087842385673

`A193101(n+5)^A309307(A000079(n))`
-/

namespace A233420.P5134160087842385673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193101 (n + 5) : ℚ) ^ (A309307 (A000079 n).toNat : ℤ)

end

end A233420.P5134160087842385673

/-! ## A233420.P5522050294705488755

`A193101(n+5)-A000122(A022105(n+2))`
-/

namespace A233420.P5522050294705488755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193101 (n + 5) - A000122 (A022105 (n + 2)).toNat

end

end A233420.P5522050294705488755

/-!
# A233421: Let m = n-th nonsquare = A000037(n); then a(n) = A006255(m).

The programs for A233421, there is no canonical definition to state claims against.
-/

/-! ## A233421.P8867568330760116759

`A006255(A000037(n+1))`
-/

namespace A233421.P8867568330760116759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (A000037 (n + 1)).toNat

end

end A233421.P8867568330760116759

/-! ## A233421.P1849547306951561935

`A006255(comp[n²])`
-/

namespace A233421.P1849547306951561935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A233421.P1849547306951561935

/-! ## A233421.P1805718177917599897

`filter[A006255(n+1), A049240(#)]`
-/

namespace A233421.P1805718177917599897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A233421.P1805718177917599897

/-! ## A233421.P3533700084849408312

`filter[A006255(n+1), A267594(#)]`
-/

namespace A233421.P3533700084849408312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A233421.P3533700084849408312

/-! ## A233421.P930206736616845970

`filter[A006255(n+1), A267635(#)]`
-/

namespace A233421.P930206736616845970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A233421.P930206736616845970

/-!
# A233422: Numbers n such that m - n^3 is a square, where m is the least square above n^3.

The programs for A233422, there is no canonical definition to state claims against.
-/

/-! ## A233422.P4624600170099296942

`eq[A037213(n), A053186(A070929(n))]`
-/

namespace A233422.P4624600170099296942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A070929 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233422.P4624600170099296942

/-! ## A233422.P5925373486610465132

`eq[A000007(n), A267635(A070929(n))]`
-/

namespace A233422.P5925373486610465132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A070929 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233422.P5925373486610465132

/-! ## A233422.P15442320558995868901

`eq[A000122(n), A267635(A070929(n))]`
-/

namespace A233422.P15442320558995868901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A070929 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233422.P15442320558995868901

/-! ## A233422.P15848123711845470059

`record[A090788(n+1)%A375564(n+1)]`
-/

namespace A233422.P15848123711845470059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090788 (n + 1)) (A375564 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233422.P15848123711845470059

/-!
# A233424: Number of tilings of a 6 X 6 X n box using 6n bricks of shape 6 X 1 X 1.

The programs for A233424, there is no canonical definition to state claims against.
-/

/-! ## A233424.P835097769271123238

`record[A233308(∑[n+3]-3)]`
-/

namespace A233424.P835097769271123238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (∑ j ∈ Finset.range (n + 1), f2 j - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233424.P835097769271123238

/-! ## A233424.P13075213804249874228

`A233308(A055999(n+3))`
-/

namespace A233424.P13075213804249874228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (A055999 (n + 3)).toNat

end

end A233424.P13075213804249874228

/-! ## A233424.P17398427078133596552

`A233308(A056119(n)+15)`
-/

namespace A233424.P17398427078133596552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (A056119 n + 15).toNat

end

end A233424.P17398427078133596552

/-! ## A233424.P6598465844589205975

`A233308(eq[5, A025581(n)])`
-/

namespace A233424.P6598465844589205975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233424.P6598465844589205975

/-! ## A233424.P17374736818827447994

`A233308(eq[5, A129713(n)])`
-/

namespace A233424.P17374736818827447994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233424.P17374736818827447994

/-!
# A233425: Primes p in prime septuplets (p, p+2, p+6, p+8, p+12, p+18, p+20) at the end of the maximal gaps in A201051.

The programs for A233425, there is no canonical definition to state claims against.
-/

/-! ## A233425.P4759416814380868165

`A201249(n+1)+A201051(n+1)`
-/

namespace A233425.P4759416814380868165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201249 (n + 1) + A201051 (n + 1)

end

end A233425.P4759416814380868165

/-! ## A233425.P8107371708391427233

`A201249(n+1)+record[Δ[A022009(n+1)]]`
-/

namespace A233425.P8107371708391427233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201249 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233425.P8107371708391427233

/-! ## A233425.P14635079972969485840

`A201249(n+1)+record[A022009(n+2)-A022009(n+1)]`
-/

namespace A233425.P14635079972969485840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 2) - A022009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201249 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233425.P14635079972969485840

/-!
# A233426: Primes p in prime sextuplets (p, p+4, p+6, p+10, p+12, p+16) at the end of the maximal gaps in A200503.

The programs for A233426, there is no canonical definition to state claims against.
-/

/-! ## A233426.P15155099745872495894

`A200504(n+1)+A200503(n+1)`
-/

namespace A233426.P15155099745872495894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200504 (n + 1) + A200503 (n + 1)

end

end A233426.P15155099745872495894

/-! ## A233426.P12195622679439490051

`A200504(n+1)+record[Δ[A022008(n+1)]]`
-/

namespace A233426.P12195622679439490051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200504 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233426.P12195622679439490051

/-! ## A233426.P10819576872020359605

`A200504(n+1)+record[A022008(n+2)-A022008(n+1)]`
-/

namespace A233426.P10819576872020359605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 2) - A022008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200504 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233426.P10819576872020359605

/-! ## A233426.P6610856560089699215

`A200504(n+1)+record[Δ[A143727(n+1)]]`
-/

namespace A233426.P6610856560089699215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200504 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233426.P6610856560089699215

/-! ## A233426.P14917691436767774349

`A200504(n+1)+record[Δ[A271000(6*n+1)]]`
-/

namespace A233426.P14917691436767774349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (6 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200504 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233426.P14917691436767774349

/-!
# A233427: Number A(n,k) of tilings of a k X n rectangle using pentominoes of any shape; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A233427, there is no canonical definition to state claims against.
-/

/-! ## A233427.P5655564899901650870

`val(A155776(A155582(n)), 3)`
-/

namespace A233427.P5655564899901650870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A155776 (A155582 n).toNat).toNat 3

end

end A233427.P5655564899901650870

/-! ## A233427.P8697322516147771874

`and(5, A016346(A068606(n)))`
-/

namespace A233427.P8697322516147771874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A016346 (A068606 n).toNat)

end

end A233427.P8697322516147771874

/-! ## A233427.P5660959836580921351

`and(5, A016389(A101164(n)))`
-/

namespace A233427.P5660959836580921351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A016389 (A101164 n).toNat)

end

end A233427.P5660959836580921351

/-! ## A233427.P14325617650028544886

`and(5, A016389(A185651(n)))`
-/

namespace A233427.P14325617650028544886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A016389 (A185651 n).toNat)

end

end A233427.P14325617650028544886

/-! ## A233427.P7564336031694919

`A261488(xor(14, A143007(n)))`
-/

namespace A233427.P7564336031694919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261488 (Int.xor 14 (A143007 n)).toNat

end

end A233427.P7564336031694919

/-!
# A233432: Primes p in prime 5-tuples (p, p+2, p+6, p+8, p+12) at the end of the maximal gaps in A201073.

The programs for A233432, there is no canonical definition to state claims against.
-/

/-! ## A233432.P6687575918630505589

`A201074(n+1)+A201073(n+1)`
-/

namespace A233432.P6687575918630505589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201074 (n + 1) + A201073 (n + 1)

end

end A233432.P6687575918630505589

/-! ## A233432.P12325055737843511502

`A201074(n+1)+record[Δ[A022006(n+1)]]`
-/

namespace A233432.P12325055737843511502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201074 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233432.P12325055737843511502

/-! ## A233432.P3552345326057959953

`A201074(n+1)+record[A022006(n+2)-A022006(n+1)]`
-/

namespace A233432.P3552345326057959953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 2) - A022006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201074 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233432.P3552345326057959953

/-! ## A233432.P15099373156856286557

`A201074(n+1)+record[Δ[A090286(n+1)]]`
-/

namespace A233432.P15099373156856286557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201074 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233432.P15099373156856286557

/-! ## A233432.P7895908264486836268

`A201074(n+1)+record[Δ[A245304(n+1)]]`
-/

namespace A233432.P7895908264486836268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245304 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201074 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233432.P7895908264486836268

/-!
# A233433: Primes p in prime 5-tuples (p, p+4, p+6, p+10, p+12) at the end of the maximal gaps in A201062.

The programs for A233433, there is no canonical definition to state claims against.
-/

/-! ## A233433.P10723657774643724328

`A201063(n+1)+A201062(n+1)`
-/

namespace A233433.P10723657774643724328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201063 (n + 1) + A201062 (n + 1)

end

end A233433.P10723657774643724328

/-! ## A233433.P1304475864986841177

`A201063(n+1)+record[Δ[A022007(n+1)]]`
-/

namespace A233433.P1304475864986841177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201063 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233433.P1304475864986841177

/-! ## A233433.P7367643514141422353

`A201063(n+1)+record[A022007(n+2)-A022007(n+1)]`
-/

namespace A233433.P7367643514141422353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 2) - A022007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201063 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233433.P7367643514141422353

/-! ## A233433.P6616708437256833283

`A201063(n+1)+record[Δ[A270999(5*n+1)]]`
-/

namespace A233433.P6616708437256833283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270999 (5 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201063 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233433.P6616708437256833283

/-!
# A233434: Primes p in prime triples (p, p+2, p+6) at the end of the maximal gaps in A201598.

The programs for A233434, there is no canonical definition to state claims against.
-/

/-! ## A233434.P11554393865426857139

`A201599(n+1)+A201598(n+1)`
-/

namespace A233434.P11554393865426857139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201599 (n + 1) + A201598 (n + 1)

end

end A233434.P11554393865426857139

/-! ## A233434.P10180937321505280782

`A201599(n+1)+record[Δ[A022004(n+1)]]`
-/

namespace A233434.P10180937321505280782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201599 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233434.P10180937321505280782

/-! ## A233434.P10382087295971436332

`A201599(n+1)+record[Δ[A073648(n+1)]]`
-/

namespace A233434.P10382087295971436332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201599 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233434.P10382087295971436332

/-! ## A233434.P911304355930220829

`A201599(n+1)+record[Δ[A098412(n+1)]]`
-/

namespace A233434.P911304355930220829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201599 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233434.P911304355930220829

/-! ## A233434.P15416031393203201215

`A201599(n+1)+record[A022004(n+2)-A022004(n+1)]`
-/

namespace A233434.P15416031393203201215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 2) - A022004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201599 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233434.P15416031393203201215

/-!
# A233435: Primes p in prime triples (p, p+4, p+6) at the end of the maximal gaps in A201596.

The programs for A233435, there is no canonical definition to state claims against.
-/

/-! ## A233435.P18068658370245970334

`A201597(n+1)+A201596(n+1)`
-/

namespace A233435.P18068658370245970334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201597 (n + 1) + A201596 (n + 1)

end

end A233435.P18068658370245970334

/-! ## A233435.P5228709664274194679

`A201597(n+1)+record[Δ[A022005(n+1)]]`
-/

namespace A233435.P5228709664274194679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201597 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233435.P5228709664274194679

/-! ## A233435.P17736772036281438303

`A201597(n+1)+record[Δ[A073649(n+1)]]`
-/

namespace A233435.P17736772036281438303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201597 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233435.P17736772036281438303

/-! ## A233435.P15270094571039514963

`A201597(n+1)+record[Δ[A098413(n+1)]]`
-/

namespace A233435.P15270094571039514963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098413 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201597 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233435.P15270094571039514963

/-! ## A233435.P15189513148392856627

`A201597(n+1)+record[Δ[A144840(n+1)]]`
-/

namespace A233435.P15189513148392856627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144840 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201597 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233435.P15189513148392856627

/-!
# A233436: a(n) = Sum_{k=0..n-1} [x^k] A(x)^(n-1) for n>=1 with a(0)=1, where g.f. A(x) = Sum_{n>=0} a(n)*x^n.

The programs for A233436, there is no canonical definition to state claims against.
-/

/-! ## A233436.P7001355251546022876

`A055034(∑[∏[abs(1-2*n)]])`
-/

namespace A233436.P7001355251546022876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233436.P7001355251546022876

/-! ## A233436.P13476350269562915547

`A079159(A027058(n+1))`
-/

namespace A233436.P13476350269562915547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079159 (A027058 (n + 1)).toNat

end

end A233436.P13476350269562915547

/-!
# A233437: Floor(Primorial(n) / compositorial(n)), that is, floor(A002110(n) / A036691(n)).

The programs for A233437, there is no canonical definition to state claims against.
-/

/-! ## A233437.P15995989132013379522

`record[floor(A002110(n)/A036691(n))]`
-/

namespace A233437.P15995989132013379522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 n : ℚ) / (A036691 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233437.P15995989132013379522

/-! ## A233437.P10681201539357253166

`record[floor(A006862(n)/A049650(n))]`
-/

namespace A233437.P10681201539357253166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006862 n : ℚ) / (A049650 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233437.P10681201539357253166

/-! ## A233437.P15352490899163225816

`∑[A003056(A304977(n))]`
-/

namespace A233437.P15352490899163225816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A304977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233437.P15352490899163225816

/-! ## A233437.P1607995595213253964

`∑[A208982(A335473(n))]`
-/

namespace A233437.P1607995595213253964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208982 (A335473 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233437.P1607995595213253964

/-!
# A233438: Primorial(n) mod compositorial(n), that is, A002110(n) mod A036691(n).

The programs for A233438, there is no canonical definition to state claims against.
-/

/-! ## A233438.P17152544706298256890

`A002110(n)%A036691(n)`
-/

namespace A233438.P17152544706298256890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 n) (A036691 n)

end

end A233438.P17152544706298256890

/-! ## A233438.P13577889850989750006

`record[A096334(n)]%A036691(n)`
-/

namespace A233438.P13577889850989750006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A036691 n)

end

end A233438.P13577889850989750006

/-! ## A233438.P17767665864198425634

`record[A121281(n)]%A036691(n)`
-/

namespace A233438.P17767665864198425634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A036691 n)

end

end A233438.P17767665864198425634

/-! ## A233438.P14930047029373702418

`(A006862(n)-1)%A036691(n)`
-/

namespace A233438.P14930047029373702418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006862 n - 1) (A036691 n)

end

end A233438.P14930047029373702418

/-! ## A233438.P12690771510076104849

`∏[A008578(n+1)]%A036691(n)`
-/

namespace A233438.P12690771510076104849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A036691 n)

end

end A233438.P12690771510076104849

/-! ## A233438.P2276088861933646364

`record[A073039(n+1)]%A036691(n)`
-/

namespace A233438.P2276088861933646364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A036691 n)

end

end A233438.P2276088861933646364

/-!
# A233440: Triangle read by rows: T(n, k) = n*binomial(n, k)*A000757(k), 0 <= k <= n.

The programs for A233440, the canonical program `A233440.P17241348821425685394` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233440 has offset 0).

The definition of A233440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233440.P17241348821425685394

`row(n)*C(row(n), col(n))*A000757(col(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A233440

/-- `row(n)*C(row(n), col(n))*A000757(col(n))` -/
def P17241348821425685394.Spec : Prop :=
  ∀ n, P17241348821425685394.a n = A233440 n

theorem P17241348821425685394.correct : P17241348821425685394.Spec := by
  intro n
  simp only [A233440]

end A233440

/-! ## A233440.P5706952503317721454

`A003056(n)*A134832(A061579(n))`
-/

namespace A233440.P5706952503317721454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A134832 (A061579 n).toNat

end

end A233440.P5706952503317721454

namespace A233440

/-- `A003056(n)*A134832(A061579(n))` -/
def P5706952503317721454.Spec : Prop :=
  ∀ n, P5706952503317721454.a n = A233440 n

end A233440

/-! ## A233440.P4729372425341088866

`A001222(A137688(n))*A134832(A061579(n))`
-/

namespace A233440.P4729372425341088866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A137688 n).toNat * A134832 (A061579 n).toNat

end

end A233440.P4729372425341088866

namespace A233440

/-- `A001222(A137688(n))*A134832(A061579(n))` -/
def P4729372425341088866.Spec : Prop :=
  ∀ n, P4729372425341088866.a n = A233440 n

end A233440

/-! ## A233440.P13821352573561693355

`A001222(∏[char[∑[n+1]]+1]^A144207(n))`
-/

namespace A233440.P13821352573561693355
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A144207 n : ℤ))).toNat

end

end A233440.P13821352573561693355

namespace A233440

/-- `A001222(∏[char[∑[n+1]]+1]^A144207(n))` -/
def P13821352573561693355.Spec : Prop :=
  ∀ n, P13821352573561693355.a n = A233440 n

end A233440

/-! ## A233440.P15295288251832825447

`A001221(A189162(n+1))*A144161(n)`
-/

namespace A233440.P15295288251832825447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A189162 (n + 1)).toNat * A144161 n

end

end A233440.P15295288251832825447

namespace A233440

/-- `A001221(A189162(n+1))*A144161(n)` -/
def P15295288251832825447.Spec : Prop :=
  ∀ n, P15295288251832825447.a n = A233440 n

end A233440

/-!
# A233441: a(n) = floor(2^n / n^3).

The programs for A233441, the canonical program `A233441.P1168218604689238786` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233441 has offset 1).

The definition of A233441 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n+1)/(n+1)^3)` (program `A233441.P1168218604689238786`, by `A233441.P1168218604689238786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233441.P1168218604689238786

`floor(2^(n+1)/(n+1)^3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233441

/-- `floor(2^(n+1)/(n+1)^3)` -/
def P1168218604689238786.Spec : Prop :=
  ∀ n, P1168218604689238786.a n = A233441 (n + 1)

theorem P1168218604689238786.correct : P1168218604689238786.Spec := by
  intro n
  simp only [A233441, Nat.add_sub_cancel]

end A233441

/-! ## A233441.P14296056187411313178

`(A000079(n+1)-A233442(n+1))/A000578(n+1)`
-/

namespace A233441.P14296056187411313178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A233442 (n + 1) : ℚ) / (A000578 (n + 1) : ℚ)

end

end A233441.P14296056187411313178

namespace A233441

/-- `(A000079(n+1)-A233442(n+1))/A000578(n+1)` -/
def P14296056187411313178.Spec : Prop :=
  ∀ n, P14296056187411313178.a n = (A233441 (n + 1) : ℚ)

end A233441

/-!
# A233442: a(n) = 2^n mod n^3.

The programs for A233442, the canonical program `A233442.P4379756160575346936` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233442 has offset 1).

The definition of A233442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1))%((n+1)^3)` (program `A233442.P4379756160575346936`, by `A233442.P4379756160575346936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233442.P4379756160575346936

`(2^(n+1))%((n+1)^3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233442

/-- `(2^(n+1))%((n+1)^3)` -/
def P4379756160575346936.Spec : Prop :=
  ∀ n, (P4379756160575346936.a n : ℤ) = A233442 (n + 1)

theorem P4379756160575346936.correct : P4379756160575346936.Spec := by
  intro n
  simp only [A233442, Nat.add_sub_cancel]

end A233442

/-! ## A233442.P17111917853882015116

`abs(A018048(4*(n+1))%Δ[∑[n]²])`
-/

namespace A233442.P17111917853882015116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A018048 (4 * (n + 1))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A233442.P17111917853882015116

namespace A233442

/-- `abs(A018048(4*(n+1))%Δ[∑[n]²])` -/
def P17111917853882015116.Spec : Prop :=
  ∀ n, P17111917853882015116.a n = A233442 (n + 1)

end A233442

/-! ## A233442.P4140840674468294722

`A000079(n+1)-A000578(n+1)*A233441(n+1)`
-/

namespace A233442.P4140840674468294722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A000578 (n + 1) * A233441 (n + 1)

end

end A233442.P4140840674468294722

namespace A233442

/-- `A000079(n+1)-A000578(n+1)*A233441(n+1)` -/
def P4140840674468294722.Spec : Prop :=
  ∀ n, P4140840674468294722.a n = A233442 (n + 1)

end A233442

/-! ## A233442.P2256479819844182195

`abs(A120617(n+1)%A000578(n+1))`
-/

namespace A233442.P2256479819844182195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A120617 (n + 1)) (A000578 (n + 1))|

end

end A233442.P2256479819844182195

namespace A233442

/-- `abs(A120617(n+1)%A000578(n+1))` -/
def P2256479819844182195.Spec : Prop :=
  ∀ n, P2256479819844182195.a n = A233442 (n + 1)

end A233442

/-!
# A233443: Primes that are exactly between the nearest square and the nearest triangular number.

The programs for A233443, there is no canonical definition to state claims against.
-/

/-! ## A233443.P7683626174065241777

`p?[A233074(n+1)]`
-/

namespace A233443.P7683626174065241777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233443.P7683626174065241777

/-! ## A233443.P12704949410919970248

`p?[record[A233074(A242112(n))]]`
-/

namespace A233443.P12704949410919970248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233074 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233443.P12704949410919970248

/-! ## A233443.P15514633979902771632

`p?[record[A233074(A262519(n))]]`
-/

namespace A233443.P15514633979902771632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233074 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233443.P15514633979902771632

/-! ## A233443.P9663766482173565436

`p?[record[A233074(A328399(n))]]`
-/

namespace A233443.P9663766482173565436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233074 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233443.P9663766482173565436

/-! ## A233443.P5219214512027149965

`p?[record[A233074(A349315(n))]]`
-/

namespace A233443.P5219214512027149965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233074 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233443.P5219214512027149965

/-!
# A233444: Primes that are exactly halfway between the nearest square and the nearest cube.

The programs for A233444, there is no canonical definition to state claims against.
-/

/-! ## A233444.P17726050177919905827

`∩[A075455(n+1), A233075(n+1)]`
-/

namespace A233444.P17726050177919905827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233444.P17726050177919905827

/-! ## A233444.P14452032620888368525

`A075455(lt[A075458(2*n+5), A075435(n+2)])`
-/

namespace A233444.P14452032620888368525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075458 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075435 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075455 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A233444.P14452032620888368525

/-!
# A233446: a(n) = ((2n-1)^(2n+1) + (2n+1)^(2n-1))/(2n)^2 = A154682(n)/(2n)^2 for n > 0.

The programs for A233446, the canonical program `A233446.P4907574120865158580` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233446 has offset 1).

The definition of A233446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233446.P4907574120865158580

`((2*(n+1)-1)^(2*(n+1)+1)+(2*(n+1)+1)^(2*(n+1)-1))/(2*(n+1))²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233446

/-- `((2*(n+1)-1)^(2*(n+1)+1)+(2*(n+1)+1)^(2*(n+1)-1))/(2*(n+1))²` -/
def P4907574120865158580.Spec : Prop :=
  ∀ n, P4907574120865158580.a n = (A233446 (n + 1) : ℚ)

end A233446

/-! ## A233446.P13731839659426358976

`A154682(n+1)/(2*(n+1))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233446.P13731839659426358976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154682 (n + 1) : ℚ) / ((2 * (n + 1)) ^ 2 : ℚ)

end

end A233446.P13731839659426358976

namespace A233446

/-- `A154682(n+1)/(2*(n+1))²` -/
def P13731839659426358976.Spec : Prop :=
  ∀ n, P13731839659426358976.a n = (A233446 (n + 1) : ℚ)

end A233446

/-! ## A233446.P12004376438275847709

`A234252(2*(n+1))`
-/

namespace A233446.P12004376438275847709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234252 (2 * (n + 1))

end

end A233446.P12004376438275847709

namespace A233446

/-- `A234252(2*(n+1))` -/
def P12004376438275847709.Spec : Prop :=
  ∀ n, P12004376438275847709.a n = A233446 (n + 1)

end A233446

/-! ## A233446.P8805515505275952918

`abs(A234252(A103517(n)))`
-/

namespace A233446.P8805515505275952918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A234252 (A103517 n).toNat|

end

end A233446.P8805515505275952918

namespace A233446

/-- `abs(A234252(A103517(n)))` -/
def P8805515505275952918.Spec : Prop :=
  ∀ n, P8805515505275952918.a n = A233446 (n + 1)

end A233446

/-! ## A233446.P6335104358650071715

`record[A234252(n+2)/A033999(n)]`
-/

namespace A233446.P6335104358650071715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234252 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233446.P6335104358650071715

namespace A233446

/-- `record[A234252(n+2)/A033999(n)]` -/
def P6335104358650071715.Spec : Prop :=
  ∀ n, P6335104358650071715.a n = (A233446 (n + 1) : ℚ)

end A233446

/-!
# A233447: Floor(compositorial(n) / n!), that is, floor(A036691(n) / A000142(n)).

The programs for A233447, there is no canonical definition to state claims against.
-/

/-! ## A233447.P10697278897300744945

`floor(A036691(n+1)/A000142(n+1))`
-/

namespace A233447.P10697278897300744945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036691 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)⌋

end

end A233447.P10697278897300744945

/-! ## A233447.P18278102838296195056

`A161655(A089143(n))`
-/

namespace A233447.P18278102838296195056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161655 (A089143 n).toNat

end

end A233447.P18278102838296195056

/-! ## A233447.P8476627963940032695

`A161655(3*A033484(n))`
-/

namespace A233447.P8476627963940032695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161655 (3 * A033484 n).toNat

end

end A233447.P8476627963940032695

/-!
# A233448: Compositorial(n) mod n!, that is, A036691(n) mod A000142(n).

The programs for A233448, there is no canonical definition to state claims against.
-/

/-! ## A233448.P14681003357103814655

`∏[Δ[A053767(n)]]%(n+1)!`
-/

namespace A233448.P14681003357103814655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (Nat.factorial (n + 1) : ℤ)

end

end A233448.P14681003357103814655

/-! ## A233448.P15364853279318462943

`∏[A002808(n+1)]%(n+1)!`
-/

namespace A233448.P15364853279318462943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (Nat.factorial (n + 1) : ℤ)

end

end A233448.P15364853279318462943

/-! ## A233448.P9729731436390406199

`∏[A018252(n+2)]%(n+1)!`
-/

namespace A233448.P9729731436390406199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (Nat.factorial (n + 1) : ℤ)

end

end A233448.P9729731436390406199

/-! ## A233448.P17512225292111769244

`A036691(n+1)%A000142(n+1)`
-/

namespace A233448.P17512225292111769244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036691 (n + 1)) (A000142 (n + 1))

end

end A233448.P17512225292111769244

/-! ## A233448.P14910355989559799496

`∏[lt[1, A032741(n)]]%A000142(n+1)`
-/

namespace A233448.P14910355989559799496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000142 (n + 1))

end

end A233448.P14910355989559799496

/-!
# A233449: a(n) = Sum_{k=0..n} k! * 2^(n-k).

The programs for A233449, the canonical program `A233449.P17879089985260317246` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233449 has offset 0).

The definition of A233449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233449.P17879089985260317246

`2*a(n-1)+n!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233449

/-- `2*a(n-1)+n!` -/
def P17879089985260317246.Spec : Prop :=
  ∀ n, (P17879089985260317246.a n : ℤ) = A233449 n

theorem P17879089985260317246.correct : P17879089985260317246.Spec := by
  intro n
  simp only [A233449]

end A233449

/-! ## A233449.P11656736409507559914

`(n+2)*a(n-1)-2*n*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A233449.P11656736409507559914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 2 : ℤ) * a (n - 1) - (2 * n : ℤ) * a (n - 2)

end

end A233449.P11656736409507559914

namespace A233449

/-- `(n+2)*a(n-1)-2*n*a(n-2)` -/
def P11656736409507559914.Spec : Prop :=
  ∀ n, P11656736409507559914.a n = A233449 n

end A233449

/-! ## A233449.P262730976110452616

`n!+a(n-1)/sqrt(1/4)` with `a(0)=1`
-/

namespace A233449.P262730976110452616
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℝ) + a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A233449.P262730976110452616

namespace A233449

/-- `n!+a(n-1)/sqrt(1/4)` -/
def P262730976110452616.Spec : Prop :=
  ∀ n, P262730976110452616.a n = (A233449 n : ℝ)

end A233449

/-! ## A233449.P17719807761602519192

`a(n-1)+a(n-1)+n!` with `a(0)=1`
-/

namespace A233449.P17719807761602519192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + Nat.factorial n)

end

end A233449.P17719807761602519192

namespace A233449

/-- `a(n-1)+a(n-1)+n!` -/
def P17719807761602519192.Spec : Prop :=
  ∀ n, (P17719807761602519192.a n : ℤ) = A233449 n

theorem P17719807761602519192.correct : P17719807761602519192.Spec := by
  intro n
  simp only [A233449, Nat.add_sub_cancel, A233449.P17719807761602519192.a, A233449.P17879089985260317246.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A233449

/-! ## A233449.P11272322884441083642

`2^n*∑[n*a(n-1)/2]` with `a(0)=1`
-/

namespace A233449.P11272322884441083642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) * f1 (n - 1) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233449.P11272322884441083642

namespace A233449

/-- `2^n*∑[n*a(n-1)/2]` -/
def P11272322884441083642.Spec : Prop :=
  ∀ n, P11272322884441083642.a n = (A233449 n : ℚ)

end A233449

/-! ## A233449.P15207303018716027610

`∏[ceil(abs(γ-n))]+2*a(n-1)` with `a(0)=1`
-/

namespace A233449.P15207303018716027610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A233449.P15207303018716027610

namespace A233449

/-- `∏[ceil(abs(γ-n))]+2*a(n-1)` -/
def P15207303018716027610.Spec : Prop :=
  ∀ n, P15207303018716027610.a n = A233449 n

end A233449

/-! ## A233449.P3903492359916493904

`∏[n+2-2*n/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A233449.P3903492359916493904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n + 2 : ℚ) - (2 * n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A233449.P3903492359916493904

namespace A233449

/-- `∏[n+2-2*n/a(n-1)]` -/
def P3903492359916493904.Spec : Prop :=
  ∀ n, P3903492359916493904.a n = (A233449 n : ℚ)

end A233449

/-! ## A233449.P466945502256203585

`2*a(n-1)+A038507(n)-1` with `a(0)=1`
-/

namespace A233449.P466945502256203585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (A038507 n - 1)

end

end A233449.P466945502256203585

namespace A233449

/-- `2*a(n-1)+A038507(n)-1` -/
def P466945502256203585.Spec : Prop :=
  ∀ n, P466945502256203585.a n = A233449 n

end A233449

/-! ## A233449.P13073082183556679839

`∑[n/2*a(n-1)]*A000079(n)` with `a(0)=1`
-/

namespace A233449.P13073082183556679839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A233449.P13073082183556679839

namespace A233449

/-- `∑[n/2*a(n-1)]*A000079(n)` -/
def P13073082183556679839.Spec : Prop :=
  ∀ n, P13073082183556679839.a n = (A233449 n : ℚ)

end A233449

/-! ## A233449.P4460227565357558973

`∑[A000142(n)/A000079(n)]*A000079(n)`
-/

namespace A233449.P4460227565357558973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A233449.P4460227565357558973

namespace A233449

/-- `∑[A000142(n)/A000079(n)]*A000079(n)` -/
def P4460227565357558973.Spec : Prop :=
  ∀ n, P4460227565357558973.a n = (A233449 n : ℚ)

end A233449

/-!
# A233450: Numbers n such that 3*T(n)+1 is a square, where T = A000217.

The programs for A233450, the canonical program `A233450.P5186238525161446861` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233450 has offset 1).

The definition of A233450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233450.P5186238525161446861

`a(n-1)+10*a(n-2)-10*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=15, a(4)=64`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233450

/-- `a(n-1)+10*a(n-2)-10*a(n-3)-a(n-4)+a(n-5)` -/
def P5186238525161446861.Spec : Prop :=
  ∀ n, P5186238525161446861.a n = A233450 (n + 1)

theorem P5186238525161446861.correct : P5186238525161446861.Spec := by
  intro n
  simp only [A233450, Nat.add_sub_cancel]

end A233450

/-! ## A233450.P3848389844489935827

`∑[A080872(n)]-1`
-/

namespace A233450.P3848389844489935827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A233450.P3848389844489935827

namespace A233450

/-- `∑[A080872(n)]-1` -/
def P3848389844489935827.Spec : Prop :=
  ∀ n, P3848389844489935827.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P2683176506382705315

`A129444(n+2)-1`
-/

namespace A233450.P2683176506382705315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129444 (n + 2) - 1

end

end A233450.P2683176506382705315

namespace A233450

/-- `A129444(n+2)-1` -/
def P2683176506382705315.Spec : Prop :=
  ∀ n, P2683176506382705315.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P1133486410662151575

`∑[A057427(n)*A080872(n)]`
-/

namespace A233450.P1133486410662151575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233450.P1133486410662151575

namespace A233450

/-- `∑[A057427(n)*A080872(n)]` -/
def P1133486410662151575.Spec : Prop :=
  ∀ n, P1133486410662151575.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P305459161737288337

`∑[A080872(n)%A041007(n)]`
-/

namespace A233450.P305459161737288337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080872 n) (A041007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233450.P305459161737288337

namespace A233450

/-- `∑[A080872(n)%A041007(n)]` -/
def P305459161737288337.Spec : Prop :=
  ∀ n, P305459161737288337.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P5473446918361854319

`∑[lcm(A062157(n), A080872(n))]`
-/

namespace A233450.P5473446918361854319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A080872 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233450.P5473446918361854319

namespace A233450

/-- `∑[lcm(A062157(n), A080872(n))]` -/
def P5473446918361854319.Spec : Prop :=
  ∀ n, (P5473446918361854319.a n : ℤ) = A233450 (n + 1)

end A233450

/-! ## A233450.P18023340350695945509

`∑[xor(A000007(n), A080872(n))]`
-/

namespace A233450.P18023340350695945509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A080872 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233450.P18023340350695945509

namespace A233450

/-- `∑[xor(A000007(n), A080872(n))]` -/
def P18023340350695945509.Spec : Prop :=
  ∀ n, P18023340350695945509.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P14540510710188974247

`∑[A000051(n)%2*A080872(n)]`
-/

namespace A233450.P14540510710188974247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n) 2 * A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233450.P14540510710188974247

namespace A233450

/-- `∑[A000051(n)%2*A080872(n)]` -/
def P14540510710188974247.Spec : Prop :=
  ∀ n, P14540510710188974247.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P12963504032035778169

`A278400(gcd(n, n+1))+∑[A080872(n)]`
-/

namespace A233450.P12963504032035778169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (Nat.gcd n (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233450.P12963504032035778169

namespace A233450

/-- `A278400(gcd(n, n+1))+∑[A080872(n)]` -/
def P12963504032035778169.Spec : Prop :=
  ∀ n, P12963504032035778169.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P7488290622995294657

`∑[A035931(A035931(n))*A080872(n)]`
-/

namespace A233450.P7488290622995294657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (A035931 n).toNat * A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233450.P7488290622995294657

namespace A233450

/-- `∑[A035931(A035931(n))*A080872(n)]` -/
def P7488290622995294657.Spec : Prop :=
  ∀ n, P7488290622995294657.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P1031678910538396707

`A136331(n+1)/3-1`
-/

namespace A233450.P1031678910538396707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136331 (n + 1) : ℚ) / 3 - 1

end

end A233450.P1031678910538396707

namespace A233450

/-- `A136331(n+1)/3-1` -/
def P1031678910538396707.Spec : Prop :=
  ∀ n, P1031678910538396707.a n = (A233450 (n + 1) : ℚ)

end A233450

/-! ## A233450.P16663854407439629201

`abs(A138976(n)/3)`
-/

namespace A233450.P16663854407439629201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A138976 n : ℚ) / 3|

end

end A233450.P16663854407439629201

namespace A233450

/-- `abs(A138976(n)/3)` -/
def P16663854407439629201.Spec : Prop :=
  ∀ n, P16663854407439629201.a n = (A233450 (n + 1) : ℚ)

end A233450

/-! ## A233450.P16169883542888993162

`A077291(n+1)-A080806(n+2)`
-/

namespace A233450.P16169883542888993162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077291 (n + 1) - A080806 (n + 2)

end

end A233450.P16169883542888993162

namespace A233450

/-- `A077291(n+1)-A080806(n+2)` -/
def P16169883542888993162.Spec : Prop :=
  ∀ n, P16169883542888993162.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P6574942168260942447

`A179934(n+1)-(A181442(n+1)+A181442(n+1))`
-/

namespace A233450.P6574942168260942447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179934 (n + 1) - (A181442 (n + 1) + A181442 (n + 1))

end

end A233450.P6574942168260942447

namespace A233450

/-- `A179934(n+1)-(A181442(n+1)+A181442(n+1))` -/
def P6574942168260942447.Spec : Prop :=
  ∀ n, P6574942168260942447.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P15508445346470082978

`A216073(n+2)-(A179934(n+1)+A080806(n+2))`
-/

namespace A233450.P15508445346470082978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 2) - (A179934 (n + 1) + A080806 (n + 2))

end

end A233450.P15508445346470082978

namespace A233450

/-- `A216073(n+2)-(A179934(n+1)+A080806(n+2))` -/
def P15508445346470082978.Spec : Prop :=
  ∀ n, P15508445346470082978.a n = A233450 (n + 1)

end A233450

/-! ## A233450.P17223759981130830039

`∑[(a(n-1)*a(n-2)+4)/a(n-3)]-1` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A233450.P17223759981130830039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  (f1 (n - 1) * f1 (n - 2) + 4) / f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A233450.P17223759981130830039

namespace A233450

/-- `∑[(a(n-1)*a(n-2)+4)/a(n-3)]-1` -/
def P17223759981130830039.Spec : Prop :=
  ∀ n, P17223759981130830039.a n = (A233450 (n + 1) : ℚ)

end A233450

/-!
# A233451: Numbers k such that k^5 starts with k itself (in base 10).

The programs for A233451, there is no canonical definition to state claims against.
-/

/-! ## A233451.P9545636538339375717

`A071642(eq[A182590(n+2), A242249(3*n+1)])`
-/

namespace A233451.P9545636538339375717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182590 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A233451.P9545636538339375717

/-!
# A233452: Numbers k such that k^6 starts with k itself (in base 10).

The programs for A233452, there is no canonical definition to state claims against.
-/

/-! ## A233452.P11993030838978436652

`eq[A018880(A018874(n)), A018880(n)]`
-/

namespace A233452.P11993030838978436652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018880 (A018874 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233452.P11993030838978436652

/-!
# A233453: Numbers k such that k^7 starts with k itself (in base 10).

The programs for A233453, there is no canonical definition to state claims against.
-/

/-! ## A233453.P8213954595290290656

`A178501(n)-A038020(A038024(n+1))`
-/

namespace A233453.P8213954595290290656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n - A038020 (A038024 (n + 1)).toNat

end

end A233453.P8213954595290290656

/-! ## A233453.P17799245497548095566

`A052211(n+1)-A038020(A038024(n+1))`
-/

namespace A233453.P17799245497548095566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052211 (n + 1) - A038020 (A038024 (n + 1)).toNat

end

end A233453.P17799245497548095566

/-!
# A233455: Numbers k such that k^9 starts with k itself (in base 10).

The programs for A233455, there is no canonical definition to state claims against.
-/

/-! ## A233455.P17363880323844580654

`eq[0, and((1-n)², n²)]*A082476(A127618(n))`
-/

namespace A233455.P17363880323844580654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((1 - (n : ℤ)) ^ 2) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A082476 (A127618 n).toNat

end

end A233455.P17363880323844580654

/-! ## A233455.P234906097635891857

`A082476(A127618(n))*A151988(n)`
-/

namespace A233455.P234906097635891857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082476 (A127618 n).toNat * A151988 n

end

end A233455.P234906097635891857

/-! ## A233455.P1272678501699066308

`A082476(A127618(n))*A261751(n+1)`
-/

namespace A233455.P1272678501699066308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082476 (A127618 n).toNat * A261751 (n + 1)

end

end A233455.P1272678501699066308

/-!
# A233457: Values of n for which the equation x^2 - 16*y^2 = n has integer solutions.

The programs for A233457, there is no canonical definition to state claims against.
-/

/-! ## A233457.P6009903047372034055

`lt[0, A230279(A028310(n))]`
-/

namespace A233457.P6009903047372034055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230279 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A233457.P6009903047372034055

/-! ## A233457.P1535511378813186163

`record[and(n, A195148(A195142(n+4)))]`
-/

namespace A233457.P1535511378813186163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A195148 (A195142 (n + 4)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233457.P1535511378813186163

/-! ## A233457.P8999491096881828402

`record[and(n, A083859(2*(n+1)))]`
-/

namespace A233457.P8999491096881828402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A083859 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233457.P8999491096881828402

/-! ## A233457.P11401975965781684310

`record[A276191(n)/A342416(n+4)]`
-/

namespace A233457.P11401975965781684310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276191 n : ℚ) / (A342416 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233457.P11401975965781684310

/-!
# A233459: Length of n-th record runs with lambda(k) = lambda(k+1) = ..., where lambda is Liouville's function A008836.

The programs for A233459, there is no canonical definition to state claims against.
-/

/-! ## A233459.P2102181216355430001

`∑[A072170(A008611(A160948(n+1)))]`
-/

namespace A233459.P2102181216355430001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A008611 (A160948 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233459.P2102181216355430001

/-!
# A233461: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^16.

The programs for A233461, there is no canonical definition to state claims against.
-/

/-! ## A233461.P14600702697889395675

`A000720(A233462(n+1))`
-/

namespace A233461.P14600702697889395675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233462 (n + 1)).toNat

end

end A233461.P14600702697889395675

/-! ## A233461.P16568154587274456406

`∑{d}[A233462(n+1), A061395(#)]`
-/

namespace A233461.P16568154587274456406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A233461.P16568154587274456406

/-! ## A233461.P13586343106820170399

`A061395(or(char[1], A233462(n+1)))`
-/

namespace A233461.P13586343106820170399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A233462 (n + 1))).toNat

end

end A233461.P13586343106820170399

/-! ## A233461.P1840289837854315992

`A061395(A233462(n+1))%A027693(n)`
-/

namespace A233461.P1840289837854315992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A233462 (n + 1)).toNat) (A027693 n)

end

end A233461.P1840289837854315992

/-! ## A233461.P8422165991291338883

`A061395(A233462(n+1)%A173547(n))`
-/

namespace A233461.P8422165991291338883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A233462 (n + 1)) (A173547 (n + 15))).toNat

end

end A233461.P8422165991291338883

/-! ## A233461.P15227434172070359250

`A061395(2*A233462(n+1))`
-/

namespace A233461.P15227434172070359250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A233462 (n + 1)).toNat

end

end A233461.P15227434172070359250

/-!
# A233462: Prime(n), where n is such that (1+Sum_{i=1..n} prime(i)^16) / n is an integer.

The programs for A233462, there is no canonical definition to state claims against.
-/

/-! ## A233462.P7595865031651011260

`A000040(A233461(n+1))`
-/

namespace A233462.P7595865031651011260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233461 (n + 1)).toNat

end

end A233462.P7595865031651011260

/-! ## A233462.P13495904439209015671

`∩[A007885(n+1), A028773(n+1)]`
-/

namespace A233462.P13495904439209015671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233462.P13495904439209015671

/-! ## A233462.P16505653909304797035

`∩[A028777(n+1), A077500(n+1)]`
-/

namespace A233462.P16505653909304797035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233462.P16505653909304797035

/-! ## A233462.P13990010410021326345

`∩[A028777(n+1), A316504(n+1)]`
-/

namespace A233462.P13990010410021326345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233462.P13990010410021326345

/-!
# A233467: Numbers n such that sigma(n) = reversal(3n).

The programs for A233467, there is no canonical definition to state claims against.
-/

/-! ## A233467.P11449126236934044724

`A114928(A161701(n))/3`
-/

namespace A233467.P11449126236934044724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114928 (A161701 n).toNat : ℚ) / 3

end

end A233467.P11449126236934044724

/-!
# A233468: The digital root of prime(n+1) minus the digital root of prime(n).

The programs for A233468, the canonical program `A233468.P18238673532543275021` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233468 has offset 1).

The definition of A233468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233468.P7972239543348984608

`A000040(n+2)%9-A000040(n+1)%9`
-/

namespace A233468.P7972239543348984608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 9 - Int.tmod (A000040 (n + 1)) 9

end

end A233468.P7972239543348984608

namespace A233468

/-- `A000040(n+2)%9-A000040(n+1)%9` -/
def P7972239543348984608.Spec : Prop :=
  ∀ n, P7972239543348984608.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P18238673532543275021

`A010888(A000040(n+2))-A010888(A000040(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A233468

/-- `A010888(A000040(n+2))-A010888(A000040(n+1))` -/
def P18238673532543275021.Spec : Prop :=
  ∀ n, P18238673532543275021.a n = A233468 (n + 1)

theorem P18238673532543275021.correct : P18238673532543275021.Spec := by
  intro n
  simp only [A233468, Nat.add_sub_cancel]

end A233468

/-! ## A233468.P18116823350545413455

`Δ[dr(A001748(n+1)/3)]`
-/

namespace A233468.P18116823350545413455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P18116823350545413455

namespace A233468

/-- `Δ[dr(A001748(n+1)/3)]` -/
def P18116823350545413455.Spec : Prop :=
  ∀ n, P18116823350545413455.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P9170214280495327657

`dr(A065091(n+1))-dr(A000040(n+1))`
-/

namespace A233468.P9170214280495327657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A065091 (n + 1)) : ℤ) - (SequenceMachineLib.digitalRoot (A000040 (n + 1)) : ℤ)

end

end A233468.P9170214280495327657

namespace A233468

/-- `dr(A065091(n+1))-dr(A000040(n+1))` -/
def P9170214280495327657.Spec : Prop :=
  ∀ n, P9170214280495327657.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P18194649029376442403

`Δ[A038194(n+1)]`
-/

namespace A233468.P18194649029376442403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233468.P18194649029376442403

namespace A233468

/-- `Δ[A038194(n+1)]` -/
def P18194649029376442403.Spec : Prop :=
  ∀ n, P18194649029376442403.a n = A233468 (n + 1)

theorem P18194649029376442403.correct : P18194649029376442403.Spec := by
  intro n
  simp only [A233468, Nat.add_sub_cancel, A233468.P18194649029376442403.f1, A233468.P18194649029376442403.a, A233468.P18238673532543275021.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A010888, A010888.P12602340911021437531.a, A038194, A038194.P4142280690409945291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A233468

/-! ## A233468.P8061514714681266089

`Δ[dr(Δ[A007504(n)])]`
-/

namespace A233468.P8061514714681266089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P8061514714681266089

namespace A233468

/-- `Δ[dr(Δ[A007504(n)])]` -/
def P8061514714681266089.Spec : Prop :=
  ∀ n, P8061514714681266089.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P12713706881713943747

`Δ[dr(Δ[A008348(n)])]`
-/

namespace A233468.P12713706881713943747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P12713706881713943747

namespace A233468

/-- `Δ[dr(Δ[A008348(n)])]` -/
def P12713706881713943747.Spec : Prop :=
  ∀ n, P12713706881713943747.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P17924874231269350063

`Δ[dr(Δ[A022837(n)])]`
-/

namespace A233468.P17924874231269350063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P17924874231269350063

namespace A233468

/-- `Δ[dr(Δ[A022837(n)])]` -/
def P17924874231269350063.Spec : Prop :=
  ∀ n, P17924874231269350063.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P1071937979561444131

`Δ[dr(Δ[A064365(n)])]`
-/

namespace A233468.P1071937979561444131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P1071937979561444131

namespace A233468

/-- `Δ[dr(Δ[A064365(n)])]` -/
def P1071937979561444131.Spec : Prop :=
  ∀ n, P1071937979561444131.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P12283773231289968123

`Δ[dr(Δ[A309222(n)])]`
-/

namespace A233468.P12283773231289968123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P12283773231289968123

namespace A233468

/-- `Δ[dr(Δ[A309222(n)])]` -/
def P12283773231289968123.Spec : Prop :=
  ∀ n, P12283773231289968123.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P16864050947754157233

`Δ[dr(A000040(n+1))]`
-/

namespace A233468.P16864050947754157233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P16864050947754157233

namespace A233468

/-- `Δ[dr(A000040(n+1))]` -/
def P16864050947754157233.Spec : Prop :=
  ∀ n, P16864050947754157233.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P12031569621590965822

`Δ[dr(A004087(n+1))]`
-/

namespace A233468.P12031569621590965822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004087 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P12031569621590965822

namespace A233468

/-- `Δ[dr(A004087(n+1))]` -/
def P12031569621590965822.Spec : Prop :=
  ∀ n, P12031569621590965822.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P15552218777401822455

`Δ[dr(A007605(n+1))]`
-/

namespace A233468.P15552218777401822455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007605 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P15552218777401822455

namespace A233468

/-- `Δ[dr(A007605(n+1))]` -/
def P15552218777401822455.Spec : Prop :=
  ∀ n, P15552218777401822455.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P18200684662283153627

`Δ[dr(A008864(n+1))]`
-/

namespace A233468.P18200684662283153627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008864 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P18200684662283153627

namespace A233468

/-- `Δ[dr(A008864(n+1))]` -/
def P18200684662283153627.Spec : Prop :=
  ∀ n, P18200684662283153627.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P12786403512254888435

`Δ[dr(A028815(n+1))]`
-/

namespace A233468.P12786403512254888435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028815 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P12786403512254888435

namespace A233468

/-- `Δ[dr(A028815(n+1))]` -/
def P12786403512254888435.Spec : Prop :=
  ∀ n, P12786403512254888435.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P2929307181389241862

`Δ[dr(A028905(n+1))]`
-/

namespace A233468.P2929307181389241862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028905 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P2929307181389241862

namespace A233468

/-- `Δ[dr(A028905(n+1))]` -/
def P2929307181389241862.Spec : Prop :=
  ∀ n, P2929307181389241862.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P18023306920872973538

`Δ[dr(A028906(n+1))]`
-/

namespace A233468.P18023306920872973538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028906 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P18023306920872973538

namespace A233468

/-- `Δ[dr(A028906(n+1))]` -/
def P18023306920872973538.Spec : Prop :=
  ∀ n, P18023306920872973538.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P16481478148376920892

`Δ[dr(A039790(n+1))]`
-/

namespace A233468.P16481478148376920892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A039790 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P16481478148376920892

namespace A233468

/-- `Δ[dr(A039790(n+1))]` -/
def P16481478148376920892.Spec : Prop :=
  ∀ n, P16481478148376920892.a n = A233468 (n + 1)

end A233468

/-! ## A233468.P9923575651890451455

`Δ[dr(A137521(n+1))]`
-/

namespace A233468.P9923575651890451455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A137521 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233468.P9923575651890451455

namespace A233468

/-- `Δ[dr(A137521(n+1))]` -/
def P9923575651890451455.Spec : Prop :=
  ∀ n, P9923575651890451455.a n = A233468 (n + 1)

end A233468

/-!
# A233470: Numerators of the expectation of the process defined by randomly moving 2n balls between bins.

The programs for A233470, there is no canonical definition to state claims against.
-/

/-! ## A233470.P16775610433180730223

`2^val(n+1, 2)*A025550(n+1)`
-/

namespace A233470.P16775610433180730223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A025550 (n + 1)

end

end A233470.P16775610433180730223

/-! ## A233470.P172588715021817414

`2^val(n+1, 2)*A035048(Δ[n²])`
-/

namespace A233470.P172588715021817414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A035048 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A233470.P172588715021817414

/-! ## A233470.P9124535623586563361

`2^val(n+1, 2)*record[A035048(n+1)]`
-/

namespace A233470.P9124535623586563361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233470.P9124535623586563361

/-! ## A233470.P3056919894962312253

`A006519(n+1)*A025550(n+1)`
-/

namespace A233470.P3056919894962312253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A025550 (n + 1)

end

end A233470.P3056919894962312253

/-! ## A233470.P14179061799525818839

`record[A035048(n+1)]*A006519(n+1)`
-/

namespace A233470.P14179061799525818839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006519 (n + 1)

end

end A233470.P14179061799525818839

/-!
# A233471: a(n) = 3^n mod n^2.

The programs for A233471, the canonical program `A233471.P8121916741319431419` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233471 has offset 1).

The definition of A233471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^(n+1))%(n+1)²` (program `A233471.P8121916741319431419`, by `A233471.P8121916741319431419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233471.P8121916741319431419

`(3^(n+1))%(n+1)²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233471

/-- `(3^(n+1))%(n+1)²` -/
def P8121916741319431419.Spec : Prop :=
  ∀ n, (P8121916741319431419.a n : ℤ) = A233471 (n + 1)

theorem P8121916741319431419.correct : P8121916741319431419.Spec := by
  intro n
  simp only [A233471, Nat.add_sub_cancel]

end A233471

/-! ## A233471.P3653601012358766464

`-(-3^(n+1)%((n+1)^2))`
-/

namespace A233471.P3653601012358766464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-(3 ^ (n + 1) : ℤ)) ((n + 1) ^ 2 : ℤ)

end

end A233471.P3653601012358766464

namespace A233471

/-- `-(-3^(n+1)%((n+1)^2))` -/
def P3653601012358766464.Spec : Prop :=
  ∀ n, P3653601012358766464.a n = A233471 (n + 1)

end A233471

/-! ## A233471.P9923198453042633571

`abs(A256096(n)%(n+1)²)`
-/

namespace A233471.P9923198453042633571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A256096 n) ((n + 1) ^ 2 : ℤ)|

end

end A233471.P9923198453042633571

namespace A233471

/-- `abs(A256096(n)%(n+1)²)` -/
def P9923198453042633571.Spec : Prop :=
  ∀ n, P9923198453042633571.a n = A233471 (n + 1)

end A233471

/-! ## A233471.P13571563686147037527

`A000244(n+1)-(n+1)²*A230664(n+1)`
-/

namespace A233471.P13571563686147037527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - ((n + 1) ^ 2 : ℤ) * A230664 (n + 1)

end

end A233471.P13571563686147037527

namespace A233471

/-- `A000244(n+1)-(n+1)²*A230664(n+1)` -/
def P13571563686147037527.Spec : Prop :=
  ∀ n, P13571563686147037527.a n = A233471 (n + 1)

end A233471

/-!
# A233473: Least k such that there are n triangular numbers between triangular(k) and k^2.

The programs for A233473, there is no canonical definition to state claims against.
-/

/-! ## A233473.P4228361088355801266

`ceil(Δ[(n*log(3))²])%∑[n+2]`
-/

namespace A233473.P4228361088355801266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) * Real.log (3 : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈f1 (n + 1) - f1 n⌉ ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A233473.P4228361088355801266

/-! ## A233473.P5060853893231017817

`comp[round(n*sqrt(2))]-(abs(1-n)+1)`
-/

namespace A233473.P5060853893231017817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (|1 - (n : ℤ)| + 1)

end

end A233473.P5060853893231017817

/-! ## A233473.P3974532513669625931

`ceil(Δ[((C(2, n+2)-n)*log(3))²])`
-/

namespace A233473.P3974532513669625931
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((Nat.choose 2 (n + 2) : ℤ) - (n : ℤ) : ℝ) * Real.log (3 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A233473.P3974532513669625931

/-! ## A233473.P6145045225772315844

`ceil(Δ[((A000007(n)+n)*log(3))²])`
-/

namespace A233473.P6145045225772315844
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000007 n + (n : ℤ) : ℝ) * Real.log (3 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A233473.P6145045225772315844

/-! ## A233473.P1773886789484498872

`ceil(Δ[(n*log(3))²]-A000038(n))`
-/

namespace A233473.P1773886789484498872
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) * Real.log (3 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n - (A000038 n : ℝ)⌉

end

end A233473.P1773886789484498872

/-! ## A233473.P17779393111717182600

`ceil(Δ[(n*log(3))²]*A057427(n))`
-/

namespace A233473.P17779393111717182600
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) * Real.log (3 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n) * (A057427 n : ℝ)⌉

end

end A233473.P17779393111717182600

/-! ## A233473.P6875017260689249551

`ceil(Δ[((A008683(9*(n+1))^n-n)*log(3))²])`
-/

namespace A233473.P6875017260689249551
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A008683 (9 * (n + 1)) ^ n - (n : ℤ) : ℝ) * Real.log (3 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A233473.P6875017260689249551

/-!
# A233474: Numbers m such that 5*T(m)-1 is a square, where T = A000217.

The programs for A233474, the canonical program `A233474.P341788617094122790` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233474 has offset 1).

The definition of A233474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233474.P341788617094122790

`A005668(or(1, n))+floor(A221875(n+1)/2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A233474

/-- `A005668(or(1, n))+floor(A221875(n+1)/2)` -/
def P341788617094122790.Spec : Prop :=
  ∀ n, P341788617094122790.a n = A233474 (n + 1)

theorem P341788617094122790.correct : P341788617094122790.Spec := by
  intro n
  simp only [A233474, Nat.add_sub_cancel]

end A233474

/-! ## A233474.P5630124069817151164

`A222390(n+1)+A005668(A109613(n))`
-/

namespace A233474.P5630124069817151164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222390 (n + 1) + A005668 (A109613 n).toNat

end

end A233474.P5630124069817151164

namespace A233474

/-- `A222390(n+1)+A005668(A109613(n))` -/
def P5630124069817151164.Spec : Prop :=
  ∀ n, P5630124069817151164.a n = A233474 (n + 1)

end A233474

/-! ## A233474.P9213235358698132481

`A295334(A047235(n+1))-A254332(n+1)`
-/

namespace A233474.P9213235358698132481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A047235 (n + 1)).toNat - A254332 (n + 1)

end

end A233474.P9213235358698132481

namespace A233474

/-- `A295334(A047235(n+1))-A254332(n+1)` -/
def P9213235358698132481.Spec : Prop :=
  ∀ n, P9213235358698132481.a n = A233474 (n + 1)

end A233474

/-! ## A233474.P122272284299741496

`A295334(A047241(n+1)+1)-A254332(n+1)`
-/

namespace A233474.P122272284299741496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A047241 (n + 1) + 1).toNat - A254332 (n + 1)

end

end A233474.P122272284299741496

namespace A233474

/-- `A295334(A047241(n+1)+1)-A254332(n+1)` -/
def P122272284299741496.Spec : Prop :=
  ∀ n, P122272284299741496.a n = A233474 (n + 1)

end A233474

/-!
# A233475: Number of (n+2)X(1+2) 0..3 arrays with no increasing sequence of length 3 horizontally or vertically.

The programs for A233475, there is no canonical definition to state claims against.
-/

/-! ## A233475.P9854829332575605880

`A233480(∑[n]+1)`
-/

namespace A233475.P9854829332575605880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233480 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233475.P9854829332575605880

/-! ## A233475.P1860357537263336718

`record[A010054(n)*A233480(n+1)]`
-/

namespace A233475.P1860357537263336718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233475.P1860357537263336718

/-! ## A233475.P10901190007871643244

`record[A103451(n)*A233480(n+1)]`
-/

namespace A233475.P10901190007871643244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A233480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233475.P10901190007871643244

/-! ## A233475.P10217678646040452259

`record[root(A233480(n+1), A183456(n+1))]`
-/

namespace A233475.P10217678646040452259
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233480 (n + 1) : ℝ) ^ (1 / (A183456 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233475.P10217678646040452259

/-! ## A233475.P1125689982219724263

`record[gcd(A025581(n), A233480(n+1))]`
-/

namespace A233475.P1125689982219724263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A233480 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233475.P1125689982219724263

/-!
# A233476: Number of (n+2)X(2+2) 0..3 arrays with no increasing sequence of length 3 horizontally or vertically.

The programs for A233476, there is no canonical definition to state claims against.
-/

/-! ## A233476.P11734779150657292360

`A233480(∑[n+1]+2)`
-/

namespace A233476.P11734779150657292360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233480 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233476.P11734779150657292360

/-! ## A233476.P15435666334124672314

`record[A010054(n)*A233480(n+2)]`
-/

namespace A233476.P15435666334124672314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233480 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233476.P15435666334124672314

/-!
# A233477: 

The programs for A233477, there is no canonical definition to state claims against.
-/

/-! ## A233477.P4133173362343597973

`A233480(A034856(n+1)+5)`
-/

namespace A233477.P4133173362343597973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233480 (A034856 (n + 1) + 5).toNat

end

end A233477.P4133173362343597973

/-! ## A233477.P3281874186641123853

`A233480(A034856(n+2))`
-/

namespace A233477.P3281874186641123853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233480 (A034856 (n + 2)).toNat

end

end A233477.P3281874186641123853

/-!
# A233481: Number of singletons (strong fixed points) in pair-partitions.

The programs for A233481, the canonical program `A233481.P6110522581576059579` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233481 has offset 0).

The definition of A233481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233481.P6110522581576059579

`n*((3*n-4)*a(n-1)/(n-1)-(2*n-3)*a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233481

/-- `n*((3*n-4)*a(n-1)/(n-1)-(2*n-3)*a(n-2))` -/
def P6110522581576059579.Spec : Prop :=
  ∀ n, P6110522581576059579.a n = (A233481 n : ℚ)

end A233481

/-! ## A233481.P10160981971280990495

`A034430(n)-A001147(n)`
-/

namespace A233481.P10160981971280990495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034430 n - A001147 n

end

end A233481.P10160981971280990495

namespace A233481

/-- `A034430(n)-A001147(n)` -/
def P10160981971280990495.Spec : Prop :=
  ∀ n, P10160981971280990495.a n = A233481 n

end A233481

/-! ## A233481.P3413945119838751622

`A034430(n)-A001497(∑[n])`
-/

namespace A233481.P3413945119838751622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034430 n - A001497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233481.P3413945119838751622

namespace A233481

/-- `A034430(n)-A001497(∑[n])` -/
def P3413945119838751622.Spec : Prop :=
  ∀ n, P3413945119838751622.a n = A233481 n

end A233481

/-! ## A233481.P7693779014926483913

`A034430(n)-A028338(∑[n])`
-/

namespace A233481.P7693779014926483913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034430 n - A028338 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233481.P7693779014926483913

namespace A233481

/-- `A034430(n)-A028338(∑[n])` -/
def P7693779014926483913.Spec : Prop :=
  ∀ n, P7693779014926483913.a n = A233481 n

end A233481

/-! ## A233481.P7968357894413550492

`A034430(n)-A053979(∑[n])`
-/

namespace A233481.P7968357894413550492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034430 n - A053979 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233481.P7968357894413550492

namespace A233481

/-- `A034430(n)-A053979(∑[n])` -/
def P7968357894413550492.Spec : Prop :=
  ∀ n, P7968357894413550492.a n = A233481 n

end A233481

/-! ## A233481.P8403748864207923419

`A034430(n)-A102625(∑[n])`
-/

namespace A233481.P8403748864207923419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034430 n - A102625 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233481.P8403748864207923419

namespace A233481

/-- `A034430(n)-A102625(∑[n])` -/
def P8403748864207923419.Spec : Prop :=
  ∀ n, P8403748864207923419.a n = A233481 n

end A233481

/-! ## A233481.P8918271176374506778

`A034430(n)-A126063(∑[n])`
-/

namespace A233481.P8918271176374506778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034430 n - A126063 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233481.P8918271176374506778

namespace A233481

/-- `A034430(n)-A126063(∑[n])` -/
def P8918271176374506778.Spec : Prop :=
  ∀ n, P8918271176374506778.a n = A233481 n

end A233481

/-! ## A233481.P15627308353458931346

`A034430(n)-A161198(∑[n])`
-/

namespace A233481.P15627308353458931346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034430 n - A161198 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233481.P15627308353458931346

namespace A233481

/-- `A034430(n)-A161198(∑[n])` -/
def P15627308353458931346.Spec : Prop :=
  ∀ n, P15627308353458931346.a n = A233481 n

end A233481

/-! ## A233481.P16449621309654306845

`A034430(n)-Δ[A076795(n)]`
-/

namespace A233481.P16449621309654306845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034430 n - (f1 (n + 1) - f1 n)

end

end A233481.P16449621309654306845

namespace A233481

/-- `A034430(n)-Δ[A076795(n)]` -/
def P16449621309654306845.Spec : Prop :=
  ∀ n, P16449621309654306845.a n = A233481 n

end A233481

/-! ## A233481.P15543288159996236210

`abs(A006882(abs(1-2*n))-A034430(n))`
-/

namespace A233481.P15543288159996236210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A006882 |1 - (2 * n : ℤ)|.toNat - A034430 n)|

end

end A233481.P15543288159996236210

namespace A233481

/-- `abs(A006882(abs(1-2*n))-A034430(n))` -/
def P15543288159996236210.Spec : Prop :=
  ∀ n, P15543288159996236210.a n = A233481 n

end A233481

/-!
# A233483: Number of (n+2)X(1+2) 0..3 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or vertically.

The programs for A233483, there is no canonical definition to state claims against.
-/

/-! ## A233483.P4917548175744214578

`A233488(∑[n]+1)`
-/

namespace A233483.P4917548175744214578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233488 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233483.P4917548175744214578

/-! ## A233483.P1705865875810804107

`record[A233488(A246276(n+1))]`
-/

namespace A233483.P1705865875810804107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233488 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233483.P1705865875810804107

/-! ## A233483.P17130748257405722320

`record[root(A233488(n+1), A060543(n))]`
-/

namespace A233483.P17130748257405722320
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233488 (n + 1) : ℝ) ^ (1 / (A060543 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233483.P17130748257405722320

/-! ## A233483.P2692712152274936138

`record[root(A233488(n+1), A142589(n))]`
-/

namespace A233483.P2692712152274936138
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233488 (n + 1) : ℝ) ^ (1 / (A142589 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233483.P2692712152274936138

/-! ## A233483.P7959902520856960624

`record[gcd(A002262(n), A233488(n+1))]`
-/

namespace A233483.P7959902520856960624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233488 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233483.P7959902520856960624

/-!
# A233484: Number of (n+2)X(2+2) 0..3 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or vertically.

The programs for A233484, there is no canonical definition to state claims against.
-/

/-! ## A233484.P12717090970927100175

`A233488(∑[n+1]+2)`
-/

namespace A233484.P12717090970927100175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233488 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233484.P12717090970927100175

/-! ## A233484.P14021821049302416333

`record[gcd(A002262(n), A233488(n+2))]`
-/

namespace A233484.P14021821049302416333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233488 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233484.P14021821049302416333

/-!
# A233487: 

The programs for A233487, there is no canonical definition to state claims against.
-/

/-! ## A233487.P6672787292911262866

`A233488(A320699(2*n+2)+A320664(n)+1)`
-/

namespace A233487.P6672787292911262866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233488 (A320699 (2 * n + 2) + (A320664 n + 1)).toNat

end

end A233487.P6672787292911262866

/-!
# A233489: 

The programs for A233489, there is no canonical definition to state claims against.
-/

/-! ## A233489.P3366153163681000372

`A233497(∑[4*n]+1)`
-/

namespace A233489.P3366153163681000372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233497 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233489.P3366153163681000372

/-! ## A233489.P16214648217116507857

`lcm(A233497(A001844(n)), A260196(n))`
-/

namespace A233489.P16214648217116507857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A233497 (A001844 n).toNat) (A260196 n)

end

end A233489.P16214648217116507857

/-! ## A233489.P13617073841750107869

`A233497(A001844(n))+A034561(n+1)`
-/

namespace A233489.P13617073841750107869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233497 (A001844 n).toNat + A034561 (n + 1)

end

end A233489.P13617073841750107869

/-! ## A233489.P17121105700145318432

`A233497(A001844(n))+A044940(n+1)`
-/

namespace A233489.P17121105700145318432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233497 (A001844 n).toNat + A044940 (n + 1)

end

end A233489.P17121105700145318432

/-!
# A233490: Number of (n+2) X (1+2) 0..2 arrays with no increasing sequence of length 3 horizontally or antidiagonally downwards.

The programs for A233490, there is no canonical definition to state claims against.
-/

/-! ## A233490.P11464894293980268894

`A233497(∑[n+1])`
-/

namespace A233490.P11464894293980268894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233490.P11464894293980268894

/-! ## A233490.P17849111462110311805

`record[root(A233497(n+1), A104988(n))]`
-/

namespace A233490.P17849111462110311805
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233497 (n + 1) : ℝ) ^ (1 / (A104988 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233490.P17849111462110311805

/-! ## A233490.P15952899606239660971

`record[root(A233497(n+1), A177020(n))]`
-/

namespace A233490.P15952899606239660971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233497 (n + 1) : ℝ) ^ (1 / (A177020 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233490.P15952899606239660971

/-! ## A233490.P1171561431572787803

`record[gcd(A025581(n), A233497(n+1))]`
-/

namespace A233490.P1171561431572787803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A233497 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233490.P1171561431572787803

/-! ## A233490.P7007383339625330567

`record[root(A233497(n+1), A004736(n+1))]`
-/

namespace A233490.P7007383339625330567
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233497 (n + 1) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233490.P7007383339625330567

/-!
# A233491: Number of (n+2)X(2+2) 0..2 arrays with no increasing sequence of length 3 horizontally or antidiagonally downwards.

The programs for A233491, there is no canonical definition to state claims against.
-/

/-! ## A233491.P17801734581266749477

`A233497(∑[n+2])`
-/

namespace A233491.P17801734581266749477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233491.P17801734581266749477

/-!
# A233498: Number of (1+2)X(n+2) 0..2 arrays with no increasing sequence of length 3 horizontally or antidiagonally downwards.

The programs for A233498, there is no canonical definition to state claims against.
-/

/-! ## A233498.P11495779157497784709

`A233497(∑[n]+1)`
-/

namespace A233498.P11495779157497784709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233497 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233498.P11495779157497784709

/-! ## A233498.P14093794135740139764

`record[gcd(A002262(n), A233497(n+1))]`
-/

namespace A233498.P14093794135740139764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233497 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233498.P14093794135740139764

/-! ## A233498.P14425530681852194354

`record[root(A233497(n+1), A209073(n+1))]`
-/

namespace A233498.P14425530681852194354
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233497 (n + 1) : ℝ) ^ (1 / (A209073 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233498.P14425530681852194354

/-! ## A233498.P9891887174875757842

`A014902(n)*A233497(A000124(n))`
-/

namespace A233498.P9891887174875757842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 n * A233497 (A000124 n).toNat

end

end A233498.P9891887174875757842

/-! ## A233498.P7266142605780330549

`lcm(A033999(n), A233497(A000124(n)))`
-/

namespace A233498.P7266142605780330549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A233497 (A000124 n).toNat)

end

end A233498.P7266142605780330549

/-!
# A233499: Number of (2+2) X (n+2) 0..2 arrays with no increasing sequence of length 3 horizontally or antidiagonally downwards.

The programs for A233499, there is no canonical definition to state claims against.
-/

/-! ## A233499.P9663884607328508831

`A233497(∑[n+1]+2)`
-/

namespace A233499.P9663884607328508831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233497 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233499.P9663884607328508831

