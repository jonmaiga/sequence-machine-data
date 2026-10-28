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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A174600: T(n,k) = 1 if the sum of +-k..+-n with arbitrary signs never equals zero, = 0 otherwise (lower triangle).

The programs for A174600, there is no canonical definition to state claims against.
-/

/-! ## A174600.P1519522337913740649

`A175253(xor(22, A263284(n+1)))`
-/

namespace A174600.P1519522337913740649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (Int.xor 22 (A263284 (n + 1))).toNat

end

end A174600.P1519522337913740649

/-! ## A174600.P17735673890884412582

`A243753(or(2, A171380(A171380(n))))`
-/

namespace A174600.P17735673890884412582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243753 (Int.lor 2 (A171380 (A171380 n).toNat)).toNat

end

end A174600.P17735673890884412582

/-! ## A174600.P15313073062844862517

`A333925(and(A268830(n), A271822(n+1)))`
-/

namespace A174600.P15313073062844862517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (Int.land (A268830 n) (A271822 (n + 1))).toNat

end

end A174600.P15313073062844862517

/-! ## A174600.P15781533600829869731

`A212412(∑[∑{e}[n, #]]*A238858(n))`
-/

namespace A174600.P15781533600829869731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A238858 n).toNat

end

end A174600.P15781533600829869731

/-! ## A174600.P11745289618078366936

`A000035(gcd(A035331(3*n+2), A137178(3*n+1)))`
-/

namespace A174600.P11745289618078366936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (A035331 (3 * n + 2)) (A137178 (3 * n + 1)))

end

end A174600.P11745289618078366936

/-!
# A174601: Numbers of divisors of orders of sporadic simple groups.

The programs for A174601, there is no canonical definition to state claims against.
-/

/-! ## A174601.P9540373356257015188

`∏{e}[A001228(n+1), #+1]`
-/

namespace A174601.P9540373356257015188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A174601.P9540373356257015188

/-!
# A174603: a(n) = n!*3^n/Gamma((n+1)/3) *sum_{k=0..floor(n/3)} 3^(-k) *Gamma((n+1)/3-k) / (k!*(n-3*k)!) , where Gamma (Greek capital gamma) is the Gamma-function.

The programs for A174603, there is no canonical definition to state claims against.
-/

/-! ## A174603.P5577743650928233200

`A002061(n)*A165824(A130187(n))`
-/

namespace A174603.P5577743650928233200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A165824 (A130187 n).toNat

end

end A174603.P5577743650928233200

/-!
# A174605: Partial sums of A011371.

The programs for A174605, the canonical program `A174605.P3556819156427171389` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174605 has offset 0).

The definition of A174605 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174605.P3556819156427171389

`n*(n+1)/2-A000788(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174605

/-- `n*(n+1)/2-A000788(n)` -/
def P3556819156427171389.Spec : Prop :=
  ∀ n, P3556819156427171389.a n = (A174605 n : ℚ)

end A174605

/-! ## A174605.P3013750227224875557

`∑[∑[∑{e}[and(n, -n), #]]]`
-/

namespace A174605.P3013750227224875557
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P3013750227224875557

namespace A174605

/-- `∑[∑[∑{e}[and(n, -n), #]]]` -/
def P3013750227224875557.Spec : Prop :=
  ∀ n, (P3013750227224875557.a n : ℤ) = A174605 n

end A174605

/-! ## A174605.P15655511882202545244

`∑[a(n-1)+val(n, 2)]` with `a(0)=0`
-/

namespace A174605.P15655511882202545244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P15655511882202545244

namespace A174605

/-- `∑[a(n-1)+val(n, 2)]` -/
def P15655511882202545244.Spec : Prop :=
  ∀ n, (P15655511882202545244.a n : ℤ) = A174605 n

end A174605

/-! ## A174605.P10650457091077515783

`∑[a(floor(n/2))+n]-∑[n]` with `a(0)=0`
-/

namespace A174605.P10650457091077515783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A174605.P10650457091077515783

namespace A174605

/-- `∑[a(floor(n/2))+n]-∑[n]` -/
def P10650457091077515783.Spec : Prop :=
  ∀ n, P10650457091077515783.a n = A174605 n

end A174605

/-! ## A174605.P5422314868216801614

`∑[∑[a(∑[n]%n)+1]-n]` with `a(0)=0`
-/

namespace A174605.P5422314868216801614
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ((∑ j ∈ Finset.range (n + 1), f3 j) % n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P5422314868216801614

namespace A174605

/-- `∑[∑[a(∑[n]%n)+1]-n]` -/
def P5422314868216801614.Spec : Prop :=
  ∀ n, P5422314868216801614.a n = A174605 n

end A174605

/-! ## A174605.P5005765929009253744

`∑[n]-∑[a(and(n, n-1))+1]` with `a(0)=0`
-/

namespace A174605.P5005765929009253744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A174605.P5005765929009253744

namespace A174605

/-- `∑[n]-∑[a(and(n, n-1))+1]` -/
def P5005765929009253744.Spec : Prop :=
  ∀ n, P5005765929009253744.a n = A174605 n

end A174605

/-! ## A174605.P6395099531991155136

`∑[∑[val(comp[2*(n+1)]+1, 2)]-n]`
-/

namespace A174605.P6395099531991155136
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P6395099531991155136

namespace A174605

/-- `∑[∑[val(comp[2*(n+1)]+1, 2)]-n]` -/
def P6395099531991155136.Spec : Prop :=
  ∀ n, P6395099531991155136.a n = A174605 n

end A174605

/-! ## A174605.P9832155771090040626

`∑[A011371(n)]`
-/

namespace A174605.P9832155771090040626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P9832155771090040626

namespace A174605

/-- `∑[A011371(n)]` -/
def P9832155771090040626.Spec : Prop :=
  ∀ n, P9832155771090040626.a n = A174605 n

end A174605

/-! ## A174605.P6304075874134263502

`∑[n-A000120(n)]`
-/

namespace A174605.P6304075874134263502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P6304075874134263502

namespace A174605

/-- `∑[n-A000120(n)]` -/
def P6304075874134263502.Spec : Prop :=
  ∀ n, P6304075874134263502.a n = A174605 n

end A174605

/-! ## A174605.P5525639842141684096

`∑[A005187(n)-n]`
-/

namespace A174605.P5525639842141684096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P5525639842141684096

namespace A174605

/-- `∑[A005187(n)-n]` -/
def P5525639842141684096.Spec : Prop :=
  ∀ n, P5525639842141684096.a n = A174605 n

end A174605

/-! ## A174605.P16605532288486730650

`A122247(n)-∑[n]`
-/

namespace A174605.P16605532288486730650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122247 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174605.P16605532288486730650

namespace A174605

/-- `A122247(n)-∑[n]` -/
def P16605532288486730650.Spec : Prop :=
  ∀ n, P16605532288486730650.a n = A174605 n

end A174605

/-! ## A174605.P2811387740921711236

`∑[A005187(floor(n/2))]`
-/

namespace A174605.P2811387740921711236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P2811387740921711236

namespace A174605

/-- `∑[A005187(floor(n/2))]` -/
def P2811387740921711236.Spec : Prop :=
  ∀ n, P2811387740921711236.a n = A174605 n

end A174605

/-! ## A174605.P9618379485248385405

`∑[∑[val(A008486(n), 2)]]`
-/

namespace A174605.P9618379485248385405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008486 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P9618379485248385405

namespace A174605

/-- `∑[∑[val(A008486(n), 2)]]` -/
def P9618379485248385405.Spec : Prop :=
  ∀ n, (P9618379485248385405.a n : ℤ) = A174605 n

end A174605

/-! ## A174605.P14148833517512546766

`∑[∑[val(A008706(n), 2)]]`
-/

namespace A174605.P14148833517512546766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008706 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P14148833517512546766

namespace A174605

/-- `∑[∑[val(A008706(n), 2)]]` -/
def P14148833517512546766.Spec : Prop :=
  ∀ n, (P14148833517512546766.a n : ℤ) = A174605 n

end A174605

/-! ## A174605.P11680107586396216055

`∑[∑[val(A028310(n), 2)]]`
-/

namespace A174605.P11680107586396216055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P11680107586396216055

namespace A174605

/-- `∑[∑[val(A028310(n), 2)]]` -/
def P11680107586396216055.Spec : Prop :=
  ∀ n, (P11680107586396216055.a n : ℤ) = A174605 n

end A174605

/-! ## A174605.P6801304544248506023

`∑[∑[val(A288534(n), 2)]]`
-/

namespace A174605.P6801304544248506023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A288534 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P6801304544248506023

namespace A174605

/-- `∑[∑[val(A288534(n), 2)]]` -/
def P6801304544248506023.Spec : Prop :=
  ∀ n, (P6801304544248506023.a n : ℤ) = A174605 n

end A174605

/-! ## A174605.P17512937423514955300

`∑[∑[val(A302436(n), 2)]]`
-/

namespace A174605.P17512937423514955300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A302436 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P17512937423514955300

namespace A174605

/-- `∑[∑[val(A302436(n), 2)]]` -/
def P17512937423514955300.Spec : Prop :=
  ∀ n, (P17512937423514955300.a n : ℤ) = A174605 n

end A174605

/-! ## A174605.P18335187301070691296

`∑[A134467(n)-n²]`
-/

namespace A174605.P18335187301070691296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134467 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174605.P18335187301070691296

namespace A174605

/-- `∑[A134467(n)-n²]` -/
def P18335187301070691296.Spec : Prop :=
  ∀ n, P18335187301070691296.a n = A174605 n

end A174605

/-! ## A174605.P15812909957577978193

`∑[n]-sqrt(A163095(n))`
-/

namespace A174605.P15812909957577978193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.sqrt (A163095 n : ℝ)

end

end A174605.P15812909957577978193

namespace A174605

/-- `∑[n]-sqrt(A163095(n))` -/
def P15812909957577978193.Spec : Prop :=
  ∀ n, P15812909957577978193.a n = (A174605 n : ℝ)

end A174605

/-!
# A174611: Decimal expansion of log(2)/log(phi) - 1 where phi=(1+sqrt(5))/2.

The programs for A174611, there is no canonical definition to state claims against.
-/

/-! ## A174611.P2352886413132797099

`A104287(n+1)`
-/

namespace A174611.P2352886413132797099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104287 (n + 1 + 1)

end

end A174611.P2352886413132797099

/-!
# A174613: Number of five-prime Carmichael numbers less than 10^n.

The programs for A174613, there is no canonical definition to state claims against.
-/

/-! ## A174613.P16744785171105217233

`A065716(A320749(n+1)+6)`
-/

namespace A174613.P16744785171105217233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A320749 (n + 1) + 6).toNat

end

end A174613.P16744785171105217233

/-! ## A174613.P17438879621064112461

`A002487(A262172(n)-A262167(n))`
-/

namespace A174613.P17438879621064112461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A262172 n - A262167 n).toNat

end

end A174613.P17438879621064112461

/-! ## A174613.P11569426032782899588

`A051856(n+1)%A002095(A000045(n))`
-/

namespace A174613.P11569426032782899588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051856 (n + 1)) (A002095 (A000045 n).toNat)

end

end A174613.P11569426032782899588

/-! ## A174613.P6937980230702121848

`A065716(A084708(n+1)-A080107(n+1)+6)`
-/

namespace A174613.P6937980230702121848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A084708 (n + 1) - A080107 (n + 1) + 6).toNat

end

end A174613.P6937980230702121848

/-! ## A174613.P10651085452664663228

`A065716(A084423(n+1)-A084708(n+1)+6)`
-/

namespace A174613.P10651085452664663228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A084423 (n + 1) - A084708 (n + 1) + 6).toNat

end

end A174613.P10651085452664663228

/-!
# A174614: Number of six-prime Carmichael numbers less than 10^n.

The programs for A174614, there is no canonical definition to state claims against.
-/

/-! ## A174614.P1646596972219962782

`A140204(C(∏{p}[n+1, #*val(n+1, #)], 9))`
-/

namespace A174614.P1646596972219962782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) 9)

end

end A174614.P1646596972219962782

/-! ## A174614.P16611903826655674419

`Δ[A093022(A309864(n))]`
-/

namespace A174614.P16611903826655674419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093022 (A309864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174614.P16611903826655674419

/-! ## A174614.P10293513533692594817

`A398230(A035041(n+1))`
-/

namespace A174614.P10293513533692594817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398230 (A035041 (n + 1)).toNat

end

end A174614.P10293513533692594817

/-! ## A174614.P18232421409960867097

`A337841(A111696(n+1))`
-/

namespace A174614.P18232421409960867097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337841 (A111696 (n + 1)).toNat

end

end A174614.P18232421409960867097

/-! ## A174614.P4745712998467394627

`A260466(A229889(n+1))`
-/

namespace A174614.P4745712998467394627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260466 (A229889 (n + 1)).toNat

end

end A174614.P4745712998467394627

/-!
# A174615: Number of seven-prime Carmichael numbers less than 10^n.

The programs for A174615, there is no canonical definition to state claims against.
-/

/-! ## A174615.P11111041290217152728

`and(A025432(A088626(n)), A080654(3*n+1))`
-/

namespace A174615.P11111041290217152728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025432 (A088626 n).toNat) (A080654 (3 * n + 1))

end

end A174615.P11111041290217152728

/-! ## A174615.P6059560891309855582

`A379308(A005185(n+2)*A326682(2*n+1))`
-/

namespace A174615.P6059560891309855582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379308 (A005185 (n + 2) * A326682 (2 * n + 1)).toNat

end

end A174615.P6059560891309855582

/-! ## A174615.P16858600150886091648

`round(41/A135290(n))`
-/

namespace A174615.P16858600150886091648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (41 / (A135290 n : ℚ))

end

end A174615.P16858600150886091648

/-! ## A174615.P8257339585200663904

`A014085(C(2*n, 20))`
-/

namespace A174615.P8257339585200663904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (Nat.choose (2 * n) 20)

end

end A174615.P8257339585200663904

/-! ## A174615.P15543615485792263802

`A121856(C(2*n, 20))`
-/

namespace A174615.P15543615485792263802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (Nat.choose (2 * n) 20)

end

end A174615.P15543615485792263802

/-!
# A174616: Number of eight-prime Carmichael numbers less than 10^n.

The programs for A174616, there is no canonical definition to state claims against.
-/

/-! ## A174616.P12255272275435766182

`∑[A133620((n%10)^(∑{digits}[n, #]²-∑{digits}[n, #²]))]`
-/

namespace A174616.P12255272275435766182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (SequenceMachineLib.roundAway (((n % 10 : ℕ) : ℚ) ^ (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174616.P12255272275435766182

/-! ## A174616.P5715531835266371529

`A348960(A036426(n))`
-/

namespace A174616.P5715531835266371529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A036426 n).toNat

end

end A174616.P5715531835266371529

/-! ## A174616.P11418903018774415180

`A050748(A326636(n)!)`
-/

namespace A174616.P11418903018774415180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050748 (Nat.factorial (A326636 n).toNat)

end

end A174616.P11418903018774415180

/-! ## A174616.P5955439886943739114

`A280130(A153934(n+1))`
-/

namespace A174616.P5955439886943739114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 (A153934 (n + 1)).toNat

end

end A174616.P5955439886943739114

/-! ## A174616.P12090909228286940812

`A153151(A184955(n+3))`
-/

namespace A174616.P12090909228286940812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A184955 (n + 3)).toNat

end

end A174616.P12090909228286940812

/-!
# A174618: For n odd a(n) = a(n-2) + a(n-3), for n even a(n) = a(n-2) + a(n-5); with a(1) = 0, a(2) = 1.

The programs for A174618, the canonical program `A174618.P5509515053531697084` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174618 has offset 1).

The definition of A174618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174618.P5509515053531697084

`ogf((x-x^3+x^4)/(1-2x^2+x^4-x^8))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174618

/-- `ogf((x-x^3+x^4)/(1-2x^2+x^4-x^8))` -/
def P5509515053531697084.Spec : Prop :=
  ∀ n, P5509515053531697084.a n = A174618 (n + 1)

theorem P5509515053531697084.correct : P5509515053531697084.Spec := by
  intro n
  simp only [A174618, Nat.add_sub_cancel]

end A174618

/-! ## A174618.P6358166203418930279

`A005252(A004526(n))-A014021(n)`
-/

namespace A174618.P6358166203418930279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (A004526 n).toNat - A014021 n

end

end A174618.P6358166203418930279

namespace A174618

/-- `A005252(A004526(n))-A014021(n)` -/
def P6358166203418930279.Spec : Prop :=
  ∀ n, P6358166203418930279.a n = A174618 (n + 1)

end A174618

/-! ## A174618.P2940284290773508436

`A005252(A123108(n))-A014021(n)`
-/

namespace A174618.P2940284290773508436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (A123108 n).toNat - A014021 n

end

end A174618.P2940284290773508436

namespace A174618

/-- `A005252(A123108(n))-A014021(n)` -/
def P2940284290773508436.Spec : Prop :=
  ∀ n, P2940284290773508436.a n = A174618 (n + 1)

end A174618

/-! ## A174618.P7393569912784185416

`A174619(n)-a(n-1)` with `a(0)=0`
-/

namespace A174618.P7393569912784185416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A174619 n - a (n - 1)

end

end A174618.P7393569912784185416

namespace A174618

/-- `A174619(n)-a(n-1)` -/
def P7393569912784185416.Spec : Prop :=
  ∀ n, P7393569912784185416.a n = A174618 (n + 1)

end A174618

/-! ## A174618.P7439720685439907227

`Δ[A174619(n+7)-A174619(n+5)]`
-/

namespace A174618.P7439720685439907227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (n + 7) - A174619 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174618.P7439720685439907227

namespace A174618

/-- `Δ[A174619(n+7)-A174619(n+5)]` -/
def P7439720685439907227.Spec : Prop :=
  ∀ n, P7439720685439907227.a n = A174618 (n + 1)

end A174618

/-! ## A174618.P2239361950242942244

`Δ[Δ[A174619(n+5)+A174619(n+6)]]`
-/

namespace A174618.P2239361950242942244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (n + 5) + A174619 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174618.P2239361950242942244

namespace A174618

/-- `Δ[Δ[A174619(n+5)+A174619(n+6)]]` -/
def P2239361950242942244.Spec : Prop :=
  ∀ n, P2239361950242942244.a n = A174618 (n + 1)

end A174618

/-!
# A174619: a(n) = A174618(n) + A174618(n+1).

The programs for A174619, the canonical program `A174619.P6087512133157114876` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174619 has offset 1).

The definition of A174619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174619.P829730994021097499

`ogf((1+x-x^2+x^4)/(1-2x^2+x^4-x^8))`
-/

namespace A174619.P829730994021097499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 0, 1] [1, 0, -2, 0, 1, 0, 0, 0, -1] n

end

end A174619.P829730994021097499

namespace A174619

/-- `ogf((1+x-x^2+x^4)/(1-2x^2+x^4-x^8))` -/
def P829730994021097499.Spec : Prop :=
  ∀ n, P829730994021097499.a n = A174619 (n + 1)

end A174619

/-! ## A174619.P6087512133157114876

`A174618(n+1)+A174618(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174619

/-- `A174618(n+1)+A174618(n+2)` -/
def P6087512133157114876.Spec : Prop :=
  ∀ n, P6087512133157114876.a n = A174619 (n + 1)

theorem P6087512133157114876.correct : P6087512133157114876.Spec := by
  intro n
  simp only [A174619, Nat.add_sub_cancel]

end A174619

/-! ## A174619.P1106429600137991270

`2*a(n-2)-a(n-4)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3, a(6)=3, a(7)=4`
-/

namespace A174619.P1106429600137991270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 3, 3, 4] fun n a =>
  2 * a (n - 2) - a (n - 4) + a (n - 8)

end

end A174619.P1106429600137991270

namespace A174619

/-- `2*a(n-2)-a(n-4)+a(n-8)` -/
def P1106429600137991270.Spec : Prop :=
  ∀ n, P1106429600137991270.a n = A174619 (n + 1)

end A174619

/-! ## A174619.P7663034211774680365

`A093997(A013583(A096748(n+1)))`
-/

namespace A174619.P7663034211774680365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A013583 (A096748 (n + 1)).toNat).toNat

end

end A174619.P7663034211774680365

namespace A174619

/-- `A093997(A013583(A096748(n+1)))` -/
def P7663034211774680365.Spec : Prop :=
  ∀ n, P7663034211774680365.a n = A174619 (n + 1)

end A174619

/-! ## A174619.P4128342961236211756

`A242736(ceil(sqrt(A242738(n+4))))`
-/

namespace A174619.P4128342961236211756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242736 ⌈Real.sqrt (A242738 (n + 4) : ℝ)⌉.toNat

end

end A174619.P4128342961236211756

namespace A174619

/-- `A242736(ceil(sqrt(A242738(n+4))))` -/
def P4128342961236211756.Spec : Prop :=
  ∀ n, P4128342961236211756.a n = A174619 (n + 1)

end A174619

/-!
# A174620: a(n) = 2^A141468(n) mod prime(n), where A141468(n) is the n-th nonnegative nonprime.

The programs for A174620, the canonical program `A174620.P16519671325999291648` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174620 has offset 1).

The definition of A174620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^A141468(n+1))%A000040(n+1)` (program `A174620.P16519671325999291648`, by `A174620.P16519671325999291648.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174620.P16519671325999291648

`(2^A141468(n+1))%A000040(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174620

/-- `(2^A141468(n+1))%A000040(n+1)` -/
def P16519671325999291648.Spec : Prop :=
  ∀ n, P16519671325999291648.a n = A174620 (n + 1)

theorem P16519671325999291648.correct : P16519671325999291648.Spec := by
  intro n
  simp only [A174620, Nat.add_sub_cancel]

end A174620

/-! ## A174620.P12222603482429184282

`A000079(A141468(n+1))%p?[A057979(n)]`
-/

namespace A174620.P12222603482429184282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A141468 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A174620.P12222603482429184282

namespace A174620

/-- `A000079(A141468(n+1))%p?[A057979(n)]` -/
def P12222603482429184282.Spec : Prop :=
  ∀ n, P12222603482429184282.a n = A174620 (n + 1)

end A174620

/-! ## A174620.P8038445288877592492

`A016116(A176100(n+1))%A000040(n+1)`
-/

namespace A174620.P8038445288877592492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016116 (A176100 (n + 1)).toNat) (A000040 (n + 1))

end

end A174620.P8038445288877592492

namespace A174620

/-- `A016116(A176100(n+1))%A000040(n+1)` -/
def P8038445288877592492.Spec : Prop :=
  ∀ n, P8038445288877592492.a n = A174620 (n + 1)

end A174620

/-! ## A174620.P8427715826304374870

`A000079(record[A113520(n+1)])%A000040(n+1)`
-/

namespace A174620.P8427715826304374870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000040 (n + 1))

end

end A174620.P8427715826304374870

namespace A174620

/-- `A000079(record[A113520(n+1)])%A000040(n+1)` -/
def P8427715826304374870.Spec : Prop :=
  ∀ n, P8427715826304374870.a n = A174620 (n + 1)

end A174620

/-! ## A174620.P1193609242409860107

`A137688(A144551(n+1))%A000040(n+1)`
-/

namespace A174620.P1193609242409860107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 (A144551 (n + 1)).toNat) (A000040 (n + 1))

end

end A174620.P1193609242409860107

namespace A174620

/-- `A137688(A144551(n+1))%A000040(n+1)` -/
def P1193609242409860107.Spec : Prop :=
  ∀ n, P1193609242409860107.a n = A174620 (n + 1)

end A174620

/-!
# A174621: a(n) is the smallest generator for the group of numbers relatively prime to n under multiplication mod n; a(n) = -1 if n is not a power of a prime or twice a power of a prime.

The programs for A174621, there is no canonical definition to state claims against.
-/

/-! ## A174621.P3289785688595054563

`A046145(n+2)-A000007(A046145(n+2))`
-/

namespace A174621.P3289785688595054563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (n + 2) - A000007 (A046145 (n + 2)).toNat

end

end A174621.P3289785688595054563

/-! ## A174621.P9283805121443454802

`A046145(n+2)-A157928(A104194(n+2))`
-/

namespace A174621.P9283805121443454802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (n + 2) - A157928 (A104194 (n + 2)).toNat

end

end A174621.P9283805121443454802

/-! ## A174621.P9581722659114176155

`A046145(n+2)-A157928(A157230(n+2))`
-/

namespace A174621.P9581722659114176155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (n + 2) - A157928 (A157230 (n + 2)).toNat

end

end A174621.P9581722659114176155

/-! ## A174621.P13214024495917777206

`A046145(n+2)-A157928(A290084(n+2))`
-/

namespace A174621.P13214024495917777206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (n + 2) - A157928 (A290084 (n + 2)).toNat

end

end A174621.P13214024495917777206

/-! ## A174621.P16503065302291024797

`A046145(n+2)-A008683(4*(n+1))^A046145(n+2)`
-/

namespace A174621.P16503065302291024797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046145 (n + 2) : ℚ) - (A008683 (4 * (n + 1)) : ℚ) ^ (A046145 (n + 2) : ℤ)

end

end A174621.P16503065302291024797

/-! ## A174621.P14012187171769639320

`A046145(n+2)-A062328(A034380(n+2))`
-/

namespace A174621.P14012187171769639320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (n + 2) - A062328 (A034380 (n + 2)).toNat

end

end A174621.P14012187171769639320

/-!
# A174622: Partial sums of A005256.

The programs for A174622, the canonical program `A174622.P14034591481856896786` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174622 has offset 1).

The definition of A174622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174622.P14034591481856896786

`∑[A005256(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174622

/-- `∑[A005256(n+1)]` -/
def P14034591481856896786.Spec : Prop :=
  ∀ n, P14034591481856896786.a n = A174622 (n + 1)

theorem P14034591481856896786.correct : P14034591481856896786.Spec := by
  intro n
  simp only [A174622, Nat.add_sub_cancel]

end A174622

/-! ## A174622.P7337571108680025302

`∑[∑[A002083(n+3)]]`
-/

namespace A174622.P7337571108680025302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174622.P7337571108680025302

namespace A174622

/-- `∑[∑[A002083(n+3)]]` -/
def P7337571108680025302.Spec : Prop :=
  ∀ n, P7337571108680025302.a n = A174622 (n + 1)

end A174622

/-! ## A174622.P7990976254874370034

`∑[A005255(n+2)-1]`
-/

namespace A174622.P7990976254874370034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005255 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174622.P7990976254874370034

namespace A174622

/-- `∑[A005255(n+2)-1]` -/
def P7990976254874370034.Spec : Prop :=
  ∀ n, P7990976254874370034.a n = A174622 (n + 1)

end A174622

/-! ## A174622.P14230602972227850514

`∑[A062178(n+3)-2]`
-/

namespace A174622.P14230602972227850514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174622.P14230602972227850514

namespace A174622

/-- `∑[A062178(n+3)-2]` -/
def P14230602972227850514.Spec : Prop :=
  ∀ n, P14230602972227850514.a n = A174622 (n + 1)

end A174622

/-! ## A174622.P5615089211131921365

`∑[A037254(∑[n+2])]`
-/

namespace A174622.P5615089211131921365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174622.P5615089211131921365

namespace A174622

/-- `∑[A037254(∑[n+2])]` -/
def P5615089211131921365.Spec : Prop :=
  ∀ n, P5615089211131921365.a n = A174622 (n + 1)

end A174622

/-!
# A174623: (2^p+1)^2 where p is prime.

The programs for A174623, the canonical program `A174623.P10737350361225580097` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174623 has offset 1).

The definition of A174623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174623.P10737350361225580097

`A098640(n+1)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174623

/-- `A098640(n+1)²` -/
def P10737350361225580097.Spec : Prop :=
  ∀ n, P10737350361225580097.a n = A174623 (n + 1)

theorem P10737350361225580097.correct : P10737350361225580097.Spec := by
  intro n
  simp only [A174623, Nat.add_sub_cancel]

end A174623

/-! ## A174623.P7313764984315034342

`(2^A000040(n+1)+1)²`
-/

namespace A174623.P7313764984315034342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000040 (n + 1) : ℤ) + 1) ^ 2

end

end A174623.P7313764984315034342

namespace A174623

/-- `(2^A000040(n+1)+1)²` -/
def P7313764984315034342.Spec : Prop :=
  ∀ n, P7313764984315034342.a n = (A174623 (n + 1) : ℚ)

end A174623

/-! ## A174623.P11116490929099456703

`(2^p?[comp[n²]]+1)²`
-/

namespace A174623.P11116490929099456703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) ^ 2

end

end A174623.P11116490929099456703

namespace A174623

/-- `(2^p?[comp[n²]]+1)²` -/
def P11116490929099456703.Spec : Prop :=
  ∀ n, (P11116490929099456703.a n : ℤ) = A174623 (n + 1)

end A174623

/-! ## A174623.P5340127663281927366

`xor(1, 2^p?[comp[n²]])²`
-/

namespace A174623.P5340127663281927366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2

end

end A174623.P5340127663281927366

namespace A174623

/-- `xor(1, 2^p?[comp[n²]])²` -/
def P5340127663281927366.Spec : Prop :=
  ∀ n, (P5340127663281927366.a n : ℤ) = A174623 (n + 1)

end A174623

/-! ## A174623.P13373443992346456324

`(2^eq[1, ∑{e}[n, #]]+1)²`
-/

namespace A174623.P13373443992346456324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) ^ 2

end

end A174623.P13373443992346456324

namespace A174623

/-- `(2^eq[1, ∑{e}[n, #]]+1)²` -/
def P13373443992346456324.Spec : Prop :=
  ∀ n, (P13373443992346456324.a n : ℤ) = A174623 (n + 1)

end A174623

/-!
# A174624: Triangle read by rows: T(n,k) = prime(n) mod 2^Omega(k), where Omega() is the number of prime divisors (counted with multiplicity).

The programs for A174624, the canonical program `A174624.P3947770956588604789` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174624 has offset 1).

The definition of A174624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(row(n)+1)%(2^A001222(col(n)+1))` (program `A174624.P3947770956588604789`, by `A174624.P3947770956588604789.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174624.P3947770956588604789

`A000040(row(n)+1)%(2^A001222(col(n)+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174624

/-- `A000040(row(n)+1)%(2^A001222(col(n)+1))` -/
def P3947770956588604789.Spec : Prop :=
  ∀ n, P3947770956588604789.a n = A174624 (n + 1)

theorem P3947770956588604789.correct : P3947770956588604789.Spec := by
  intro n
  simp only [A174624, Nat.add_sub_cancel]

end A174624

/-! ## A174624.P10494728959227698802

`A005145(n+1)%A061142(A002260(n+1))`
-/

namespace A174624.P10494728959227698802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 1)) (A061142 (A002260 (n + 1)).toNat)

end

end A174624.P10494728959227698802

namespace A174624

/-- `A005145(n+1)%A061142(A002260(n+1))` -/
def P10494728959227698802.Spec : Prop :=
  ∀ n, P10494728959227698802.a n = A174624 (n + 1)

end A174624

/-! ## A174624.P13438072527854737538

`A000040(A002024(n+1))%A061142(A002260(n+1))`
-/

namespace A174624.P13438072527854737538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A002024 (n + 1)).toNat) (A061142 (A002260 (n + 1)).toNat)

end

end A174624.P13438072527854737538

namespace A174624

/-- `A000040(A002024(n+1))%A061142(A002260(n+1))` -/
def P13438072527854737538.Spec : Prop :=
  ∀ n, P13438072527854737538.a n = A174624 (n + 1)

end A174624

/-! ## A174624.P7185120447389147342

`A006530(A087112(n+1))%A061142(A002260(n+1))`
-/

namespace A174624.P7185120447389147342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A087112 (n + 1)).toNat) (A061142 (A002260 (n + 1)).toNat)

end

end A174624.P7185120447389147342

namespace A174624

/-- `A006530(A087112(n+1))%A061142(A002260(n+1))` -/
def P7185120447389147342.Spec : Prop :=
  ∀ n, P7185120447389147342.a n = A174624 (n + 1)

end A174624

/-! ## A174624.P1556889253232890273

`A000040(A107436(n+1))%A061142(A002260(n+1))`
-/

namespace A174624.P1556889253232890273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A107436 (n + 1)).toNat) (A061142 (A002260 (n + 1)).toNat)

end

end A174624.P1556889253232890273

namespace A174624

/-- `A000040(A107436(n+1))%A061142(A002260(n+1))` -/
def P1556889253232890273.Spec : Prop :=
  ∀ n, P1556889253232890273.a n = A174624 (n + 1)

end A174624

/-! ## A174624.P13405240136657861559

`A000040(A123578(n+1))%A061142(A002260(n+1))`
-/

namespace A174624.P13405240136657861559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A123578 (n + 1)).toNat) (A061142 (A002260 (n + 1)).toNat)

end

end A174624.P13405240136657861559

namespace A174624

/-- `A000040(A123578(n+1))%A061142(A002260(n+1))` -/
def P13405240136657861559.Spec : Prop :=
  ∀ n, P13405240136657861559.a n = A174624 (n + 1)

end A174624

/-!
# A174626: Antidiagonal of sequence: q=5; t(n,m) = Sum((2*cos(i*Pi/q))^m*cos[(m - 2*n)*i*Pi/q), {i, 0, q - 1}]/q.

The programs for A174626, there is no canonical definition to state claims against.
-/

/-! ## A174626.P11121776314259770235

`A131255(A292564(n))`
-/

namespace A174626.P11121776314259770235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131255 (A292564 n).toNat

end

end A174626.P11121776314259770235

/-! ## A174626.P6535616939737697316

`A131255(lt[5, A131304(n+1)])`
-/

namespace A174626.P6535616939737697316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A174626.P6535616939737697316

/-! ## A174626.P17203752085630861976

`A261019(n+1)-A244220(A225499(3*n+4))`
-/

namespace A174626.P17203752085630861976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261019 (n + 1) - A244220 (A225499 (3 * n + 4)).toNat

end

end A174626.P17203752085630861976

/-! ## A174626.P15485994940843947262

`A320655(A010060(n+1)+A007598(n))`
-/

namespace A174626.P15485994940843947262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A010060 (n + 1) + A007598 n).toNat

end

end A174626.P15485994940843947262

/-! ## A174626.P8358654704227957039

`A342910(A054723(n+1))+A259095(n+1)`
-/

namespace A174626.P8358654704227957039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (A054723 (n + 1)).toNat + A259095 (n + 1)

end

end A174626.P8358654704227957039

/-!
# A174627: Partial sums of A002833.

The programs for A174627, there is no canonical definition to state claims against.
-/

/-! ## A174627.P13099915584076662428

`∑[A002833(n)]`
-/

namespace A174627.P13099915584076662428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174627.P13099915584076662428

/-! ## A174627.P4946150531029850685

`A002833(n)+a(A235049(n))` with `a(0)=0`
-/

namespace A174627.P4946150531029850685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002833 n + a (A235049 n).toNat

end

end A174627.P4946150531029850685

/-! ## A174627.P10995552080426498224

`∑[Δ[A001529(n)]-A003184(n+1)]`
-/

namespace A174627.P10995552080426498224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001529 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174627.P10995552080426498224

/-! ## A174627.P7723955598358191039

`∑[A001530(n+1)]-A001532(n+1)`
-/

namespace A174627.P7723955598358191039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001532 (n + 1)

end

end A174627.P7723955598358191039

/-!
# A174628: "Binary dates": take the dates with the format dd/mm/yy that have only 0's and 1's and transform their value to base 10.

The programs for A174628, there is no canonical definition to state claims against.
-/

/-! ## A174628.P5388402397074325199

`A126007(A174629(n+1))`
-/

namespace A174628.P5388402397074325199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126007 (A174629 (n + 1)).toNat

end

end A174628.P5388402397074325199

/-! ## A174628.P7853805338083942637

`A126007(4*eq[5, A349990(n)])`
-/

namespace A174628.P7853805338083942637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126007 (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174628.P7853805338083942637

/-! ## A174628.P9948003108842540926

`A126007(eq[60, or(n, A004468(n))])`
-/

namespace A174628.P9948003108842540926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A004468 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174628.P9948003108842540926

/-!
# A174629: "Binary dates" take the dates with the format mm/dd/yy that have only 0's and 1's and transform their value to decimal base.

The programs for A174629, there is no canonical definition to state claims against.
-/

/-! ## A174629.P723537971323196470

`A126007(A174628(n+1))`
-/

namespace A174629.P723537971323196470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126007 (A174628 (n + 1)).toNat

end

end A174629.P723537971323196470

/-! ## A174629.P18402571396936326150

`4*eq[5, A349990(n)]`
-/

namespace A174629.P18402571396936326150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174629.P18402571396936326150

/-! ## A174629.P17448625631566949814

`eq[60, or(n, A004468(n))]`
-/

namespace A174629.P17448625631566949814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A004468 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174629.P17448625631566949814

/-! ## A174629.P1469552993870623352

`eq[2, A318702(or(n, floor(n/2)))]`
-/

namespace A174629.P1469552993870623352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174629.P1469552993870623352

/-! ## A174629.P10952512187105804129

`eq[2, A318703(A163617(n))]`
-/

namespace A174629.P10952512187105804129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A163617 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174629.P10952512187105804129

/-!
# A174631: a(n) = Floor[(alpha^n-beta^n)(alpha-beta)], with alpha = (1 + Sqrt(a0))/2; beta = (1 - Sqrt(a0))/2; a0 = real minimal Pisot root of x^3-x-1=0(1.324717957244746).

The programs for A174631, there is no canonical definition to state claims against.
-/

/-! ## A174631.P6927379539456729640

`A226046(A246079(n+1)+A071840(n+1))`
-/

namespace A174631.P6927379539456729640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A246079 (n + 1) + A071840 (n + 1)).toNat

end

end A174631.P6927379539456729640

/-! ## A174631.P16308616977468967611

`A226046(A340763(n+1)+A246079(n+1))`
-/

namespace A174631.P16308616977468967611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A340763 (n + 1) + A246079 (n + 1)).toNat

end

end A174631.P16308616977468967611

/-! ## A174631.P12699299507846595152

`A226046(A246079(n+1)+A048766(2*n))`
-/

namespace A174631.P12699299507846595152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A246079 (n + 1) + A048766 (2 * n)).toNat

end

end A174631.P12699299507846595152

/-!
# A174632: Partial sums of A029768.

The programs for A174632, there is no canonical definition to state claims against.
-/

/-! ## A174632.P6022455896286771215

`∑[A029768(n)]`
-/

namespace A174632.P6022455896286771215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174632.P6022455896286771215

/-! ## A174632.P401447232208509278

`A111851(A088368(n))+n`
-/

namespace A174632.P401447232208509278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 (A088368 n).toNat + (n : ℤ)

end

end A174632.P401447232208509278

/-! ## A174632.P2942478149564532061

`A385365(3*n+4)%A385332(A385318(3*n+1))`
-/

namespace A174632.P2942478149564532061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385365 (3 * n + 4)) (A385332 (A385318 (3 * n + 1)).toNat)

end

end A174632.P2942478149564532061

/-!
# A174633: Let H(p) = p*tau(p)/sigma(p). Numbers 2^(H(p) - 1)*(2^H(p) - 1) where H(p) is an integer (i.e., p in A001599).

The programs for A174633, there is no canonical definition to state claims against.
-/

/-! ## A174633.P12462421608576758248

`A006516(A001600(n+1))`
-/

namespace A174633.P12462421608576758248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (A001600 (n + 1)).toNat

end

end A174633.P12462421608576758248

/-! ## A174633.P17182488736010708032

`A171476(A001600(n+1)-1)`
-/

namespace A174633.P17182488736010708032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 (A001600 (n + 1) - 1).toNat

end

end A174633.P17182488736010708032

/-! ## A174633.P2019152084963745020

`C(A131577(A001600(n+1)+1), 2)`
-/

namespace A174633.P2019152084963745020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131577 (A001600 (n + 1) + 1).toNat).toNat 2

end

end A174633.P2019152084963745020

/-! ## A174633.P8724140650890569087

`A161680(2^A001600(n+1))`
-/

namespace A174633.P8724140650890569087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001600 (n + 1) : ℤ))).toNat

end

end A174633.P8724140650890569087

/-! ## A174633.P15698396927725384983

`A179865(2^A001600(n+1))`
-/

namespace A174633.P15698396927725384983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001600 (n + 1) : ℤ))).toNat

end

end A174633.P15698396927725384983

/-!
# A174634: a(n) = 3^n * Fibonacci(n+2).

The programs for A174634, the canonical program `A174634.P11399981421626407773` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174634 has offset 0).

The definition of A174634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*A000045(n+2)` (program `A174634.P11399981421626407773`, by `A174634.P11399981421626407773.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174634.P13991289826515034194

`ogf((1+3x)/(1-3x-9x^2))`
-/

namespace A174634.P13991289826515034194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, -9] n

end

end A174634.P13991289826515034194

namespace A174634

/-- `ogf((1+3x)/(1-3x-9x^2))` -/
def P13991289826515034194.Spec : Prop :=
  ∀ n, P13991289826515034194.a n = A174634 n

end A174634

/-! ## A174634.P11399981421626407773

`3^n*A000045(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174634

/-- `3^n*A000045(n+2)` -/
def P11399981421626407773.Spec : Prop :=
  ∀ n, P11399981421626407773.a n = A174634 n

theorem P11399981421626407773.correct : P11399981421626407773.Spec := by
  intro n
  simp only [A174634]

end A174634

/-! ## A174634.P15243242818362992241

`3*(a(n-1)+3*a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A174634.P15243242818362992241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * (a (n - 1) + 3 * a (n - 2))

end

end A174634.P15243242818362992241

namespace A174634

/-- `3*(a(n-1)+3*a(n-2))` -/
def P15243242818362992241.Spec : Prop :=
  ∀ n, (P15243242818362992241.a n : ℤ) = A174634 n

end A174634

/-! ## A174634.P6057622809968954435

`3^n*A212804(n+3)`
-/

namespace A174634.P6057622809968954435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A212804 (n + 3)

end

end A174634.P6057622809968954435

namespace A174634

/-- `3^n*A212804(n+3)` -/
def P6057622809968954435.Spec : Prop :=
  ∀ n, P6057622809968954435.a n = A174634 n

end A174634

/-! ## A174634.P2804453521596886868

`3^n*A324969(n+3)`
-/

namespace A174634.P2804453521596886868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A324969 (n + 3)

end

end A174634.P2804453521596886868

namespace A174634

/-- `3^n*A324969(n+3)` -/
def P2804453521596886868.Spec : Prop :=
  ∀ n, P2804453521596886868.a n = A174634 n

end A174634

/-! ## A174634.P10005976549243707725

`3^n*record[Δ[A000045(n)]]`
-/

namespace A174634.P10005976549243707725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174634.P10005976549243707725

namespace A174634

/-- `3^n*record[Δ[A000045(n)]]` -/
def P10005976549243707725.Spec : Prop :=
  ∀ n, P10005976549243707725.a n = A174634 n

end A174634

/-! ## A174634.P1190764508971667741

`(A000071(n+2)+1)*3^n`
-/

namespace A174634.P1190764508971667741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 2) + 1) * (3 ^ n : ℤ)

end

end A174634.P1190764508971667741

namespace A174634

/-- `(A000071(n+2)+1)*3^n` -/
def P1190764508971667741.Spec : Prop :=
  ∀ n, P1190764508971667741.a n = A174634 n

theorem P1190764508971667741.correct : P1190764508971667741.Spec := by
  intro n
  simp only [A174634, Nat.add_sub_cancel, A174634.P1190764508971667741.a, A174634.P11399981421626407773.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A174634

/-! ## A174634.P14179763724649795979

`3^(n-1)*A022086(n+2)`
-/

namespace A174634.P14179763724649795979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A022086 (n + 2) : ℚ)

end

end A174634.P14179763724649795979

namespace A174634

/-- `3^(n-1)*A022086(n+2)` -/
def P14179763724649795979.Spec : Prop :=
  ∀ n, P14179763724649795979.a n = (A174634 n : ℚ)

end A174634

/-! ## A174634.P2098009993764061884

`3^(n-1)*A097135(n+2)`
-/

namespace A174634.P2098009993764061884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A097135 (n + 2) : ℚ)

end

end A174634.P2098009993764061884

namespace A174634

/-- `3^(n-1)*A097135(n+2)` -/
def P2098009993764061884.Spec : Prop :=
  ∀ n, P2098009993764061884.a n = (A174634 n : ℚ)

end A174634

/-! ## A174634.P14480908972843255415

`3^(n-2)*A022092(n+2)`
-/

namespace A174634.P14480908972843255415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A022092 (n + 2) : ℚ)

end

end A174634.P14480908972843255415

namespace A174634

/-- `3^(n-2)*A022092(n+2)` -/
def P14480908972843255415.Spec : Prop :=
  ∀ n, P14480908972843255415.a n = (A174634 n : ℚ)

theorem P14480908972843255415.correct : P14480908972843255415.Spec := by
  intro n
  simp only [A174634, Nat.add_sub_cancel, A174634.P14480908972843255415.a, A174634.P11399981421626407773.a, A000045, A000045.P11838749114346432762.a, A022092, A022092.P12154545116690058814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174634

/-! ## A174634.P10588160780247690509

`3*(A099012(n)+a(n-1))` with `a(0)=1`
-/

namespace A174634.P10588160780247690509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (A099012 n + a (n - 1))

end

end A174634.P10588160780247690509

namespace A174634

/-- `3*(A099012(n)+a(n-1))` -/
def P10588160780247690509.Spec : Prop :=
  ∀ n, P10588160780247690509.a n = A174634 n

end A174634

/-! ## A174634.P15884155907466480958

`Δ[A000045(n+3)]/3^-n`
-/

namespace A174634.P15884155907466480958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A174634.P15884155907466480958

namespace A174634

/-- `Δ[A000045(n+3)]/3^-n` -/
def P15884155907466480958.Spec : Prop :=
  ∀ n, P15884155907466480958.a n = (A174634 n : ℚ)

end A174634

/-! ## A174634.P14151811444067183042

`3^n*record[A000045(abs(1-n))]`
-/

namespace A174634.P14151811444067183042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174634.P14151811444067183042

namespace A174634

/-- `3^n*record[A000045(abs(1-n))]` -/
def P14151811444067183042.Spec : Prop :=
  ∀ n, P14151811444067183042.a n = A174634 n

end A174634

/-! ## A174634.P18192532722470726920

`A000045(n+2)*A000244(n)`
-/

namespace A174634.P18192532722470726920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A000244 n

end

end A174634.P18192532722470726920

namespace A174634

/-- `A000045(n+2)*A000244(n)` -/
def P18192532722470726920.Spec : Prop :=
  ∀ n, P18192532722470726920.a n = A174634 n

theorem P18192532722470726920.correct : P18192532722470726920.Spec := by
  intro n
  simp only [A174634, Nat.add_sub_cancel, A174634.P18192532722470726920.a, A174634.P11399981421626407773.a, A000045, A000045.P11838749114346432762.a, A000244, A000244.P17162167222172810417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A174634

/-! ## A174634.P6405442236422358429

`A000244(n)*A211228(2*n)`
-/

namespace A174634.P6405442236422358429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A211228 (2 * n)

end

end A174634.P6405442236422358429

namespace A174634

/-- `A000244(n)*A211228(2*n)` -/
def P6405442236422358429.Spec : Prop :=
  ∀ n, P6405442236422358429.a n = A174634 n

end A174634

/-! ## A174634.P2436848972132787994

`A000045(n+2)*Δ[A007051(n)]`
-/

namespace A174634.P2436848972132787994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * (f1 (n + 1) - f1 n)

end

end A174634.P2436848972132787994

namespace A174634

/-- `A000045(n+2)*Δ[A007051(n)]` -/
def P2436848972132787994.Spec : Prop :=
  ∀ n, P2436848972132787994.a n = A174634 n

end A174634

/-! ## A174634.P8573969879646614036

`A008776(n)/2*Δ[A018910(n)]`
-/

namespace A174634.P8573969879646614036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008776 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A174634.P8573969879646614036

namespace A174634

/-- `A008776(n)/2*Δ[A018910(n)]` -/
def P8573969879646614036.Spec : Prop :=
  ∀ n, P8573969879646614036.a n = (A174634 n : ℚ)

end A174634

/-! ## A174634.P7440134613247569139

`(∑[A001611(n)]-n)*A000244(n)`
-/

namespace A174634.P7440134613247569139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * A000244 n

end

end A174634.P7440134613247569139

namespace A174634

/-- `(∑[A001611(n)]-n)*A000244(n)` -/
def P7440134613247569139.Spec : Prop :=
  ∀ n, P7440134613247569139.a n = A174634 n

end A174634

/-! ## A174634.P16907153307774409332

`A000045(n+2)*A133494(n+1)`
-/

namespace A174634.P16907153307774409332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A133494 (n + 1)

end

end A174634.P16907153307774409332

namespace A174634

/-- `A000045(n+2)*A133494(n+1)` -/
def P16907153307774409332.Spec : Prop :=
  ∀ n, P16907153307774409332.a n = A174634 n

end A174634

/-!
# A174635: Prime numbers that are not Ramanujan primes.

The programs for A174635, there is no canonical definition to state claims against.
-/

/-! ## A174635.P13430961672830884132

`A065091(comp[A179196(n+1)-1])`
-/

namespace A174635.P13430961672830884132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179196 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A174635.P13430961672830884132

/-! ## A174635.P6052025636408714686

`A000040(comp[A179196(n+1)-1]+1)`
-/

namespace A174635.P6052025636408714686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179196 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A174635.P6052025636408714686

/-! ## A174635.P14131971363924624736

`A093515(2*comp[A179196(n+1)-1])`
-/

namespace A174635.P14131971363924624736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179196 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A174635.P14131971363924624736

/-! ## A174635.P17686068549471781830

`p?[comp[A104272(n+1)]]`
-/

namespace A174635.P17686068549471781830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A174635.P17686068549471781830

/-! ## A174635.P14367235959257712153

`A065091(lt[0, A280379(n+1)])`
-/

namespace A174635.P14367235959257712153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A174635.P14367235959257712153

/-!
# A174637: Number of n X n (0,1) matrices with two 1's in each row the permanent of which equals to 4.

The programs for A174637, the canonical program `A174637.P6931239550470735759` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174637 has offset 1).

The definition of A174637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174637.P6931239550470735759

`(n+1)!/4*∑{#}[n-3, C(n, #)*(n+1)^#*A000276(n+1-#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174637

/-- `(n+1)!/4*∑{#}[n-3, C(n, #)*(n+1)^#*A000276(n+1-#)]` -/
def P6931239550470735759.Spec : Prop :=
  ∀ n, P6931239550470735759.a n = (A174637 (n + 1) : ℚ)

end A174637

/-!
# A174638: Number of n X n (0,1)-matrices with two 1's in each row and permanent equal to 8.

The programs for A174638, there is no canonical definition to state claims against.
-/

/-! ## A174638.P14550621774599236969

`A132760(A007895(n)*A058837(n))`
-/

namespace A174638.P14550621774599236969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132760 (A007895 n * A058837 n).toNat

end

end A174638.P14550621774599236969

/-! ## A174638.P14715234097869768742

`A074985(n+1)*A180047(A088809(n))`
-/

namespace A174638.P14715234097869768742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074985 (n + 1) * A180047 (A088809 n).toNat

end

end A174638.P14715234097869768742

/-! ## A174638.P4731691097368940522

`A008724(A056313(n+1))/A345993(n+3)`
-/

namespace A174638.P4731691097368940522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008724 (A056313 (n + 1)).toNat : ℚ) / (A345993 (n + 3) : ℚ)

end

end A174638.P4731691097368940522

/-!
# A174639: Triangle read by rows: T(n,k) = binomial(n,k) * bell(k+1) * bell(n-k+1) - bell(n+1) + 1 where bell(n) = A000110(n) are the Bell numbers.

The programs for A174639, the canonical program `A174639.P3084202139116492515` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174639 has offset 0).

The definition of A174639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174639.P3084202139116492515

`C(row(n), col(n))*A000110(col(n)+1)*A000110(row(n)-col(n)+1)-A000110(row(n)+1)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174639

/-- `C(row(n), col(n))*A000110(col(n)+1)*A000110(row(n)-col(n)+1)-A000110(row(n)+1)+1` -/
def P3084202139116492515.Spec : Prop :=
  ∀ n, P3084202139116492515.a n = A174639 n

theorem P3084202139116492515.correct : P3084202139116492515.Spec := by
  intro n
  simp only [A174639]

end A174639

/-! ## A174639.P2253889640994071148

`A111651(A022183(n))`
-/

namespace A174639.P2253889640994071148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A022183 n).toNat

end

end A174639.P2253889640994071148

namespace A174639

/-- `A111651(A022183(n))` -/
def P2253889640994071148.Spec : Prop :=
  ∀ n, P2253889640994071148.a n = A174639 n

end A174639

/-! ## A174639.P17483404538366627748

`A135646(A022170(n))`
-/

namespace A174639.P17483404538366627748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (A022170 n).toNat

end

end A174639.P17483404538366627748

namespace A174639

/-- `A135646(A022170(n))` -/
def P17483404538366627748.Spec : Prop :=
  ∀ n, P17483404538366627748.a n = A174639 n

end A174639

/-! ## A174639.P5073196084078289014

`A084616(A176483(n))`
-/

namespace A174639.P5073196084078289014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084616 (A176483 n).toNat

end

end A174639.P5073196084078289014

namespace A174639

/-- `A084616(A176483(n))` -/
def P5073196084078289014.Spec : Prop :=
  ∀ n, P5073196084078289014.a n = A174639 n

end A174639

/-! ## A174639.P119097374715000324

`A129525(A157221(n))`
-/

namespace A174639.P119097374715000324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129525 (A157221 n).toNat

end

end A174639.P119097374715000324

namespace A174639

/-- `A129525(A157221(n))` -/
def P119097374715000324.Spec : Prop :=
  ∀ n, P119097374715000324.a n = A174639 n

end A174639

/-!
# A174640: Triangle read by rows: T(n,k) = A033306(n,k) - A033306(n,0) + 1.

The programs for A174640, the canonical program `A174640.P7504223729505968141` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174640 has offset 0).

The definition of A174640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3681 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174640.P7504223729505968141

`A033306(n)+1-A123081(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174640

/-- `A033306(n)+1-A123081(n)` -/
def P7504223729505968141.Spec : Prop :=
  ∀ n, P7504223729505968141.a n = A174640 n

theorem P7504223729505968141.correct : P7504223729505968141.Spec := by
  intro n
  simp only [A174640]

end A174640

/-!
# A174641: Smallest prime that begins a run of n consecutive primes that are not Ramanujan primes.

The programs for A174641, there is no canonical definition to state claims against.
-/

/-! ## A174641.P13748941250785290564

`A168425(A202188(n+1))`
-/

namespace A174641.P13748941250785290564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (A202188 (n + 1)).toNat

end

end A174641.P13748941250785290564

/-! ## A174641.P11201586467918995446

`∏{p}[A104272(A202188(n+1)), A151800(#)]`
-/

namespace A174641.P11201586467918995446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (A202188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A151800 p

end

end A174641.P11201586467918995446

/-! ## A174641.P17921190696532928524

`A193507(A202188(n+1)+1)`
-/

namespace A174641.P17921190696532928524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193507 (A202188 (n + 1) + 1).toNat

end

end A174641.P17921190696532928524

/-!
# A174642: Number of ways to place 4 nonattacking amazons (superqueens) on a 4 X n board.

The programs for A174642, the canonical program `A174642.P15816650211631413385` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174642 has offset 1).

The definition of A174642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174642.P15816650211631413385

`ogf((12x^7+12x^10)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174642

/-- `ogf((12x^7+12x^10)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15816650211631413385.Spec : Prop :=
  ∀ n, P15816650211631413385.a n = A174642 (n + 1)

theorem P15816650211631413385.correct : P15816650211631413385.Spec := by
  intro n
  simp only [A174642, Nat.add_sub_cancel]

end A174642

/-! ## A174642.P17297221818858433972

`lcm(12, A116564(A000048(n)))`
-/

namespace A174642.P17297221818858433972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (A116564 (A000048 n).toNat)

end

end A174642.P17297221818858433972

namespace A174642

/-- `lcm(12, A116564(A000048(n)))` -/
def P17297221818858433972.Spec : Prop :=
  ∀ n, (P17297221818858433972.a n : ℤ) = A174642 (n + 1)

end A174642

/-! ## A174642.P9742742225130762485

`A046092(∑{p}[A111428(n), #])`
-/

namespace A174642.P9742742225130762485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A174642.P9742742225130762485

namespace A174642

/-- `A046092(∑{p}[A111428(n), #])` -/
def P9742742225130762485.Spec : Prop :=
  ∀ n, P9742742225130762485.a n = A174642 (n + 1)

end A174642

/-! ## A174642.P6665934223241270948

`Δ[A112063(∏[A303168(n)])]`
-/

namespace A174642.P6665934223241270948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112063 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174642.P6665934223241270948

namespace A174642

/-- `Δ[A112063(∏[A303168(n)])]` -/
def P6665934223241270948.Spec : Prop :=
  ∀ n, P6665934223241270948.a n = A174642 (n + 1)

end A174642

/-! ## A174642.P4719717812573077697

`floor((A389646(A362608(n)+2)-1)²/2)`
-/

namespace A174642.P4719717812573077697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A389646 (A362608 n + 2).toNat - 1) ^ 2 : ℚ) / 2⌋

end

end A174642.P4719717812573077697

namespace A174642

/-- `floor((A389646(A362608(n)+2)-1)²/2)` -/
def P4719717812573077697.Spec : Prop :=
  ∀ n, P4719717812573077697.a n = A174642 (n + 1)

end A174642

/-!
# A174643: Partial sums of A050536.

The programs for A174643, there is no canonical definition to state claims against.
-/

/-! ## A174643.P15673629249389856553

`∑[C(a(n-1)+1, 2)]` with `a(0)=8`
-/

namespace A174643.P15673629249389856553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  Nat.choose (f1 (n - 1) + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174643.P15673629249389856553

/-! ## A174643.P11773895921623998897

`∑[(a(n-1)+a(n-1)²)/2]` with `a(0)=8`
-/

namespace A174643.P11773895921623998897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [8] fun n f1 =>
  (f1 (n - 1) + f1 (n - 1) ^ 2) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174643.P11773895921623998897

/-! ## A174643.P6720891017183279677

`∑[(a(n-1)+1)/2*a(n-1)]` with `a(0)=8`
-/

namespace A174643.P6720891017183279677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [8] fun n f1 =>
  (f1 (n - 1) + 1) / 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174643.P6720891017183279677

/-! ## A174643.P11413511538341759031

`∑[A050536(n)]`
-/

namespace A174643.P11413511538341759031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174643.P11413511538341759031

/-!
# A174644: Number of ways to place 5 nonattacking amazons (superqueens) on a 5 X n board.

The programs for A174644, the canonical program `A174644.P10367049117237094182` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174644 has offset 1).

The definition of A174644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174644.P10367049117237094182

`ogf((4x^7+16x^8+24x^9+4x^10+40x^11+20x^12-24x^13+28x^14+4x^15+4x^16)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174644

/-- `ogf((4x^7+16x^8+24x^9+4x^10+40x^11+20x^12-24x^13+28x^14+4x^15+4x^16)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P10367049117237094182.Spec : Prop :=
  ∀ n, P10367049117237094182.a n = A174644 (n + 1)

theorem P10367049117237094182.correct : P10367049117237094182.Spec := by
  intro n
  simp only [A174644, Nat.add_sub_cancel]

end A174644

/-! ## A174644.P3493568231103745656

`A303603(p?[xor(3, A231182(n))])`
-/

namespace A174644.P3493568231103745656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A231182 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174644.P3493568231103745656

namespace A174644

/-- `A303603(p?[xor(3, A231182(n))])` -/
def P3493568231103745656.Spec : Prop :=
  ∀ n, P3493568231103745656.a n = A174644 (n + 1)

end A174644

/-! ## A174644.P5368693954086195845

`4*A265562(A034349(n+1))`
-/

namespace A174644.P5368693954086195845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A265562 (A034349 (n + 1)).toNat

end

end A174644.P5368693954086195845

namespace A174644

/-- `4*A265562(A034349(n+1))` -/
def P5368693954086195845.Spec : Prop :=
  ∀ n, P5368693954086195845.a n = A174644 (n + 1)

end A174644

/-! ## A174644.P3484582946120972159

`4*A265562(A034354(n+1))`
-/

namespace A174644.P3484582946120972159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A265562 (A034354 (n + 1)).toNat

end

end A174644.P3484582946120972159

namespace A174644

/-- `4*A265562(A034354(n+1))` -/
def P3484582946120972159.Spec : Prop :=
  ∀ n, P3484582946120972159.a n = A174644 (n + 1)

end A174644

/-! ## A174644.P16457566945314543951

`A146639(floor(((n+2)²+2)/6))-A146630(n+1)`
-/

namespace A174644.P16457566945314543951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146639 ⌊((n + 2) ^ 2 + 2 : ℚ) / 6⌋.toNat - A146630 (n + 1)

end

end A174644.P16457566945314543951

namespace A174644

/-- `A146639(floor(((n+2)²+2)/6))-A146630(n+1)` -/
def P16457566945314543951.Spec : Prop :=
  ∀ n, P16457566945314543951.a n = A174644 (n + 1)

end A174644

/-!
# A174645: Number of ways to place 6 nonattacking amazons (superqueens) on a 6 X n board.

The programs for A174645, there is no canonical definition to state claims against.
-/

/-! ## A174645.P15519668110673336444

`A215702(abs(and(n, floor(-(n/2)))-3))`
-/

namespace A174645.P15519668110673336444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215702 |Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋ - 3|.toNat

end

end A174645.P15519668110673336444

/-! ## A174645.P172695030114942419

`A080099(∑[n]^(n%∑[char[n!]]!))`
-/

namespace A174645.P172695030114942419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j)))

end

end A174645.P172695030114942419

/-! ## A174645.P3961506148921345734

`A215702(or((gcd(4, n)+1)%4, floor(n/2)))`
-/

namespace A174645.P3961506148921345734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215702 (Int.lor (((Nat.gcd 4 n + 1) % 4 : ℕ) : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A174645.P3961506148921345734

/-! ## A174645.P3358950557716338485

`A215702(gcd(n-3, ∏{p}[n+1, val(#², 2)]))`
-/

namespace A174645.P3358950557716338485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215702 (Int.gcd ((n : ℤ) - 3) ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p ^ 2) 2 : ℕ) : ℤ))

end

end A174645.P3358950557716338485

/-! ## A174645.P2218838901291087138

`A322337(A373292(n))`
-/

namespace A174645.P2218838901291087138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322337 (A373292 n).toNat

end

end A174645.P2218838901291087138

/-!
# A174646: Number of ways to place 7 nonattacking amazons (superqueens) on a 7 X n board.

The programs for A174646, there is no canonical definition to state claims against.
-/

/-! ## A174646.P14236321851791408989

`(n+1)^a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=2`
-/

namespace A174646.P14236321851791408989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0, 2] fun n a =>
  (n + 1) ^ a (n - 1)

end

end A174646.P14236321851791408989

/-! ## A174646.P17720092944242024087

`Δ[A332277(C(n, 8))]`
-/

namespace A174646.P17720092944242024087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332277 (Nat.choose n 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174646.P17720092944242024087

/-! ## A174646.P9612979747138792102

`∑[and(98, A178999(n+1))]`
-/

namespace A174646.P9612979747138792102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 98 (A178999 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174646.P9612979747138792102

/-! ## A174646.P5842852089558782928

`Δ[ceil(A211125(n+1)/46)]`
-/

namespace A174646.P5842852089558782928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211125 (n + 1) : ℚ) / 46⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174646.P5842852089558782928

/-! ## A174646.P4049765105601938756

`A085150(A049164(n))`
-/

namespace A174646.P4049765105601938756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085150 (A049164 n).toNat

end

end A174646.P4049765105601938756

/-!
# A174647: Determinant of the matrix a(i,j) = 1 if abs(i-j) < 2 and -1 in the rest.

The programs for A174647, there is no canonical definition to state claims against.
-/

/-! ## A174647.P5662324405833922294

`ogf((1-x+2x^2+8x^3)/(1-2x+4x^2+8x^3-16x^4+32x^5))`
-/

namespace A174647.P5662324405833922294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, 8] [1, -2, 4, 8, -16, 32] n

end

end A174647.P5662324405833922294

/-!
# A174648: Partial sums of A000452.

The programs for A174648, the canonical program `A174648.P6169375116423577086` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174648 has offset 1).

The definition of A174648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174648.P6169375116423577086

`∑[A000452(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A174648

/-- `∑[A000452(n+1)]` -/
def P6169375116423577086.Spec : Prop :=
  ∀ n, P6169375116423577086.a n = A174648 (n + 1)

theorem P6169375116423577086.correct : P6169375116423577086.Spec := by
  intro n
  simp only [A174648, Nat.add_sub_cancel]

end A174648

/-! ## A174648.P17492316237733485002

`∑[eq[1, A294932(n+1)]+1]`
-/

namespace A174648.P17492316237733485002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174648.P17492316237733485002

namespace A174648

/-- `∑[eq[1, A294932(n+1)]+1]` -/
def P17492316237733485002.Spec : Prop :=
  ∀ n, (P17492316237733485002.a n : ℤ) = A174648 (n + 1)

end A174648

/-! ## A174648.P2928471488437614875

`∑[record[A000452(A344180(n))]]`
-/

namespace A174648.P2928471488437614875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174648.P2928471488437614875

namespace A174648

/-- `∑[record[A000452(A344180(n))]]` -/
def P2928471488437614875.Spec : Prop :=
  ∀ n, P2928471488437614875.a n = A174648 (n + 1)

end A174648

/-! ## A174648.P12400962182033075419

`a(n-1)+A000452(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A174648.P12400962182033075419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000452 (n + 1) + A000007 n)

end

end A174648.P12400962182033075419

namespace A174648

/-- `a(n-1)+A000452(n+1)+A000007(n)` -/
def P12400962182033075419.Spec : Prop :=
  ∀ n, P12400962182033075419.a n = A174648 (n + 1)

end A174648

/-! ## A174648.P11859765584822068487

`∑[record[A000452(A133310(n))]]`
-/

namespace A174648.P11859765584822068487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174648.P11859765584822068487

namespace A174648

/-- `∑[record[A000452(A133310(n))]]` -/
def P11859765584822068487.Spec : Prop :=
  ∀ n, P11859765584822068487.a n = A174648 (n + 1)

end A174648

/-! ## A174648.P4639508105283955621

`∑[record[A000452(A141256(n))]]`
-/

namespace A174648.P4639508105283955621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174648.P4639508105283955621

namespace A174648

/-- `∑[record[A000452(A141256(n))]]` -/
def P4639508105283955621.Spec : Prop :=
  ∀ n, P4639508105283955621.a n = A174648 (n + 1)

end A174648

/-! ## A174648.P3008743938776201582

`∑[record[A000452(A262519(n))]]`
-/

namespace A174648.P3008743938776201582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174648.P3008743938776201582

namespace A174648

/-- `∑[record[A000452(A262519(n))]]` -/
def P3008743938776201582.Spec : Prop :=
  ∀ n, P3008743938776201582.a n = A174648 (n + 1)

end A174648

/-! ## A174648.P12051118203013685986

`a(n-1)+A000452(n+1)%A052997(n)` with `a(0)=1`
-/

namespace A174648.P12051118203013685986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A000452 (n + 1)) (A052997 n)

end

end A174648.P12051118203013685986

namespace A174648

/-- `a(n-1)+A000452(n+1)%A052997(n)` -/
def P12051118203013685986.Spec : Prop :=
  ∀ n, P12051118203013685986.a n = A174648 (n + 1)

end A174648

/-! ## A174648.P2111776952819193147

`A028310(a(n-1))+A000452(n+1)` with `a(0)=1`
-/

namespace A174648.P2111776952819193147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A000452 (n + 1)

end

end A174648.P2111776952819193147

namespace A174648

/-- `A028310(a(n-1))+A000452(n+1)` -/
def P2111776952819193147.Spec : Prop :=
  ∀ n, P2111776952819193147.a n = A174648 (n + 1)

end A174648

/-!
# A174649: Numbers k such that semiprime(k)+/ -1 are both semiprime.

The programs for A174649, the canonical program `A174649.P7185639192184824919` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174649 has offset 1).

The definition of A174649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174649.P7185639192184824919

`A072000(A086005(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A174649

/-- `A072000(A086005(n+1))` -/
def P7185639192184824919.Spec : Prop :=
  ∀ n, P7185639192184824919.a n = A174649 (n + 1)

theorem P7185639192184824919.correct : P7185639192184824919.Spec := by
  intro n
  simp only [A174649, Nat.add_sub_cancel]

end A174649

/-! ## A174649.P10330030528574661456

`A072000(A056809(n+1)+1)`
-/

namespace A174649.P10330030528574661456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A056809 (n + 1) + 1).toNat

end

end A174649.P10330030528574661456

namespace A174649

/-- `A072000(A056809(n+1)+1)` -/
def P10330030528574661456.Spec : Prop :=
  ∀ n, P10330030528574661456.a n = A174649 (n + 1)

end A174649

/-! ## A174649.P2611214816283934790

`A072000(A115393(n+1)-1)`
-/

namespace A174649.P2611214816283934790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A115393 (n + 1) - 1).toNat

end

end A174649.P2611214816283934790

namespace A174649

/-- `A072000(A115393(n+1)-1)` -/
def P2611214816283934790.Spec : Prop :=
  ∀ n, P2611214816283934790.a n = A174649 (n + 1)

theorem P2611214816283934790.correct : P2611214816283934790.Spec := by
  intro n
  simp only [A174649, Nat.add_sub_cancel, A174649.P2611214816283934790.a, A174649.P7185639192184824919.a, A072000, A072000.P3706059858088101648.a, A086005, A086005.P8028588650396263204.a, A115393, A115393.P13485975269135048129.a, A056809, A056809.P5257664665188293059.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A123255, A123255.P11098668165499929543.f1, A123255.P11098668165499929543.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A082130, A082130.P5668457322223937576.a, A305809, A305809.P13406550948487456153.f1, A305809.P13406550948487456153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174649

/-! ## A174649.P15564615771316971912

`A072000(2*A086006(n+1))`
-/

namespace A174649.P15564615771316971912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * A086006 (n + 1)).toNat

end

end A174649.P15564615771316971912

namespace A174649

/-- `A072000(2*A086006(n+1))` -/
def P15564615771316971912.Spec : Prop :=
  ∀ n, P15564615771316971912.a n = A174649 (n + 1)

end A174649

/-! ## A174649.P2858842445908286935

`A072000(lcm(2, A086006(n+1)))`
-/

namespace A174649.P2858842445908286935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (Int.lcm 2 (A086006 (n + 1)))

end

end A174649.P2858842445908286935

namespace A174649

/-- `A072000(lcm(2, A086006(n+1)))` -/
def P2858842445908286935.Spec : Prop :=
  ∀ n, P2858842445908286935.a n = A174649 (n + 1)

end A174649

/-! ## A174649.P2592728677289725134

`A072000(xor(1, A115393(n+1)))`
-/

namespace A174649.P2592728677289725134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (Int.xor 1 (A115393 (n + 1))).toNat

end

end A174649.P2592728677289725134

namespace A174649

/-- `A072000(xor(1, A115393(n+1)))` -/
def P2592728677289725134.Spec : Prop :=
  ∀ n, P2592728677289725134.a n = A174649 (n + 1)

end A174649

/-! ## A174649.P11848288214781582885

`A072000(A086006(n+1)+A086006(n+1))`
-/

namespace A174649.P11848288214781582885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A086006 (n + 1) + A086006 (n + 1)).toNat

end

end A174649.P11848288214781582885

namespace A174649

/-- `A072000(A086006(n+1)+A086006(n+1))` -/
def P11848288214781582885.Spec : Prop :=
  ∀ n, P11848288214781582885.a n = A174649 (n + 1)

end A174649

/-! ## A174649.P7038241545208894411

`A058933(A086005(n+1))`
-/

namespace A174649.P7038241545208894411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A086005 (n + 1)).toNat

end

end A174649.P7038241545208894411

namespace A174649

/-- `A058933(A086005(n+1))` -/
def P7038241545208894411.Spec : Prop :=
  ∀ n, P7038241545208894411.a n = A174649 (n + 1)

end A174649

/-! ## A174649.P14041542030941347852

`A058933(A056809(n+1)+1)`
-/

namespace A174649.P14041542030941347852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A056809 (n + 1) + 1).toNat

end

end A174649.P14041542030941347852

namespace A174649

/-- `A058933(A056809(n+1)+1)` -/
def P14041542030941347852.Spec : Prop :=
  ∀ n, P14041542030941347852.a n = A174649 (n + 1)

end A174649

/-! ## A174649.P6490569584877289502

`A058933(2*A086006(n+1))`
-/

namespace A174649.P6490569584877289502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A086006 (n + 1)).toNat

end

end A174649.P6490569584877289502

namespace A174649

/-- `A058933(2*A086006(n+1))` -/
def P6490569584877289502.Spec : Prop :=
  ∀ n, P6490569584877289502.a n = A174649 (n + 1)

end A174649

/-! ## A174649.P18207101631261230399

`A058933(A005843(A086006(n+1)))`
-/

namespace A174649.P18207101631261230399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A005843 (A086006 (n + 1)).toNat).toNat

end

end A174649.P18207101631261230399

namespace A174649

/-- `A058933(A005843(A086006(n+1)))` -/
def P18207101631261230399.Spec : Prop :=
  ∀ n, P18207101631261230399.a n = A174649 (n + 1)

end A174649

/-!
# A174650: Expansion of 1 / (1 - x - x^2 + x^3 - x^5 + x^15 - x^17 - x^18 + x^19 + x^20).

The programs for A174650, the canonical program `A174650.P17804275756560368922` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174650 has offset 0).

The definition of A174650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^5+x^15-x^17-x^18+x^19+x^20))` (program `A174650.P17804275756560368922`, by `A174650.P17804275756560368922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174650.P17804275756560368922

`ogf(1/(1-x-x^2+x^3-x^5+x^15-x^17-x^18+x^19+x^20))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174650

/-- `ogf(1/(1-x-x^2+x^3-x^5+x^15-x^17-x^18+x^19+x^20))` -/
def P17804275756560368922.Spec : Prop :=
  ∀ n, P17804275756560368922.a n = A174650 n

theorem P17804275756560368922.correct : P17804275756560368922.Spec := by
  intro n
  simp only [A174650]

end A174650

/-! ## A174650.P4543270732070959010

`A172471(floor(sqrt(A149906(n))))`
-/

namespace A174650.P4543270732070959010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.sqrt (A149906 n)).toNat

end

end A174650.P4543270732070959010

namespace A174650

/-- `A172471(floor(sqrt(A149906(n))))` -/
def P4543270732070959010.Spec : Prop :=
  ∀ n, P4543270732070959010.a n = A174650 n

end A174650

/-! ## A174650.P11412188756772281334

`A055086(ceil(sqrt(A279553(n))))`
-/

namespace A174650.P11412188756772281334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 ⌈Real.sqrt (A279553 n : ℝ)⌉.toNat

end

end A174650.P11412188756772281334

namespace A174650

/-- `A055086(ceil(sqrt(A279553(n))))` -/
def P11412188756772281334.Spec : Prop :=
  ∀ n, P11412188756772281334.a n = A174650 n

end A174650

/-! ## A174650.P11150191018661499826

`A240354(A265973(n+1))+A107293(n+4)`
-/

namespace A174650.P11150191018661499826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240354 (A265973 (n + 1)).toNat + A107293 (n + 4)

end

end A174650.P11150191018661499826

namespace A174650

/-- `A240354(A265973(n+1))+A107293(n+4)` -/
def P11150191018661499826.Spec : Prop :=
  ∀ n, P11150191018661499826.a n = A174650 n

end A174650

/-! ## A174650.P17057111975778619311

`filter[A107293(n), A381101(#)]`
-/

namespace A174650.P17057111975778619311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381101 (f1 j).toNat = 1) n)

end

end A174650.P17057111975778619311

namespace A174650

/-- `filter[A107293(n), A381101(#)]` -/
def P17057111975778619311.Spec : Prop :=
  ∀ n, P17057111975778619311.a n = A174650 n

end A174650

/-!
# A174652: Partial sums of A002814.

The programs for A174652, there is no canonical definition to state claims against.
-/

/-! ## A174652.P9780173120003790045

`∑[A002814(n)]`
-/

namespace A174652.P9780173120003790045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174652.P9780173120003790045

/-!
# A174653: Semiprimes s such that neither s-1 nor s+1 is semiprime.

The programs for A174653, there is no canonical definition to state claims against.
-/

/-! ## A174653.P15699540627179730021

`filter[A109290(n+1), A064911(#)]`
-/

namespace A174653.P15699540627179730021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A174653.P15699540627179730021

/-! ## A174653.P3622371495748263734

`filter[A109290(n+1), A101040(#)]`
-/

namespace A174653.P3622371495748263734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A174653.P3622371495748263734

/-! ## A174653.P13866138239896608088

`∩[A001358(n+1), A109290(n+1)]`
-/

namespace A174653.P13866138239896608088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174653.P13866138239896608088

/-! ## A174653.P2735367217345255238

`∩[A037143(n+1), A109290(n+1)]`
-/

namespace A174653.P2735367217345255238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174653.P2735367217345255238

/-! ## A174653.P9583607955128328258

`∩[A109290(n+1), A176540(n+1)]`
-/

namespace A174653.P9583607955128328258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174653.P9583607955128328258

/-! ## A174653.P12941300951142934481

`∩[A109290(n+1), A186621(n+1)+1]`
-/

namespace A174653.P12941300951142934481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174653.P12941300951142934481

/-! ## A174653.P15901989443734822967

`∩[A109290(n+1), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A174653.P15901989443734822967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174653.P15901989443734822967

/-!
# A174654: Partial sums of A030279.

The programs for A174654, there is no canonical definition to state claims against.
-/

/-! ## A174654.P13332026139900235723

`∑[A030279(n+1)]`
-/

namespace A174654.P13332026139900235723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174654.P13332026139900235723

/-! ## A174654.P4287020152055892704

`∑[record[A030279(A065648(n))]]`
-/

namespace A174654.P4287020152055892704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030279 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174654.P4287020152055892704

/-! ## A174654.P907400549653401225

`∑[record[A030279(A126759(n))]]`
-/

namespace A174654.P907400549653401225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030279 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174654.P907400549653401225

/-! ## A174654.P7364001609877241584

`∑[record[A030279(A134478(n))]]`
-/

namespace A174654.P7364001609877241584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030279 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174654.P7364001609877241584

/-! ## A174654.P1756724539803804216

`∑[record[A030279(A344180(n))]]`
-/

namespace A174654.P1756724539803804216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030279 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174654.P1756724539803804216

/-!
# A174655: Partial sums of A049486.

The programs for A174655, the canonical program `A174655.P18326500229170347041` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174655 has offset 1).

The definition of A174655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174655.P7488629404495765102

`ogf((1+2x+2x^2+3x^3-x^4+x^5)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A174655.P7488629404495765102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 3, -1, 1] [1, -3, 2, 2, -3, 1] n

end

end A174655.P7488629404495765102

namespace A174655

/-- `ogf((1+2x+2x^2+3x^3-x^4+x^5)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P7488629404495765102.Spec : Prop :=
  ∀ n, P7488629404495765102.a n = A174655 (n + 1)

end A174655

/-! ## A174655.P18326500229170347041

`∑[A049486(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174655

/-- `∑[A049486(n+1)]` -/
def P18326500229170347041.Spec : Prop :=
  ∀ n, P18326500229170347041.a n = A174655 (n + 1)

theorem P18326500229170347041.correct : P18326500229170347041.Spec := by
  intro n
  simp only [A174655, Nat.add_sub_cancel]

end A174655

/-! ## A174655.P5715444095233023822

`∑[A174296(n)+2*n²]`
-/

namespace A174655.P5715444095233023822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 n + (2 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174655.P5715444095233023822

namespace A174655

/-- `∑[A174296(n)+2*n²]` -/
def P5715444095233023822.Spec : Prop :=
  ∀ n, P5715444095233023822.a n = A174655 (n + 1)

end A174655

/-! ## A174655.P14098686955527281178

`∑[A005893(n)+char[2*n+3]]`
-/

namespace A174655.P14098686955527281178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174655.P14098686955527281178

namespace A174655

/-- `∑[A005893(n)+char[2*n+3]]` -/
def P14098686955527281178.Spec : Prop :=
  ∀ n, P14098686955527281178.a n = A174655 (n + 1)

end A174655

/-! ## A174655.P226528888672095097

`A005894(n)+∑[char[2*n+3]]`
-/

namespace A174655.P226528888672095097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174655.P226528888672095097

namespace A174655

/-- `A005894(n)+∑[char[2*n+3]]` -/
def P226528888672095097.Spec : Prop :=
  ∀ n, P226528888672095097.a n = A174655 (n + 1)

end A174655

/-! ## A174655.P967495730398491182

`record[n/gcd(3, n)]+∑[A058331(n)]`
-/

namespace A174655.P967495730398491182
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A174655.P967495730398491182

namespace A174655

/-- `record[n/gcd(3, n)]+∑[A058331(n)]` -/
def P967495730398491182.Spec : Prop :=
  ∀ n, P967495730398491182.a n = (A174655 (n + 1) : ℚ)

end A174655

/-! ## A174655.P8116639871351291895

`A265284(n)+A002412(n)`
-/

namespace A174655.P8116639871351291895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265284 n + A002412 n

end

end A174655.P8116639871351291895

namespace A174655

/-- `A265284(n)+A002412(n)` -/
def P8116639871351291895.Spec : Prop :=
  ∀ n, P8116639871351291895.a n = A174655 (n + 1)

end A174655

/-! ## A174655.P7919630888275885483

`A140106(n+1)+A005894(n)`
-/

namespace A174655.P7919630888275885483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1) + A005894 n

end

end A174655.P7919630888275885483

namespace A174655

/-- `A140106(n+1)+A005894(n)` -/
def P7919630888275885483.Spec : Prop :=
  ∀ n, P7919630888275885483.a n = A174655 (n + 1)

end A174655

/-!
# A174656: a(n) counts strict partitions of n into powers of 3^t, 5^f and 7^s with positive exponents t, f and s.

The programs for A174656, there is no canonical definition to state claims against.
-/

/-! ## A174656.P7696045501819178916

`A178686(A325383(n+1))`
-/

namespace A174656.P7696045501819178916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178686 (A325383 (n + 1)).toNat

end

end A174656.P7696045501819178916

/-! ## A174656.P7699420000459815675

`A178686(A331166(n+1))`
-/

namespace A174656.P7699420000459815675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178686 (A331166 (n + 1)).toNat

end

end A174656.P7699420000459815675

/-! ## A174656.P13625740616021716431

`A178686(A389908(n+1))`
-/

namespace A174656.P13625740616021716431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178686 (A389908 (n + 1)).toNat

end

end A174656.P13625740616021716431

/-! ## A174656.P12767673185368263818

`A178686((n+1)%A309105(A071797(n+2)+2))`
-/

namespace A174656.P12767673185368263818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178686 (Int.tmod (n + 1 : ℤ) (A309105 (A071797 (n + 2) + 2).toNat)).toNat

end

end A174656.P12767673185368263818

/-! ## A174656.P12977689777619748563

`A178686(A236851(n+1))`
-/

namespace A174656.P12977689777619748563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178686 (A236851 (n + 1)).toNat

end

end A174656.P12977689777619748563

/-!
# A174657: Balanced ternary numbers with more negative trits than positive trits.

The programs for A174657, the canonical program `A174657.P17082722901622877186` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174657 has offset 1).

The definition of A174657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174657.P17082722901622877186

`lt[A065363(n), 0]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174657

/-- `lt[A065363(n), 0]` -/
def P17082722901622877186.Spec : Prop :=
  ∀ n, (P17082722901622877186.a n : ℤ) = A174657 (n + 1)

theorem P17082722901622877186.correct : P17082722901622877186.Spec := by
  intro n
  simp only [A174657, Nat.add_sub_cancel]

end A174657

/-! ## A174657.P6651762050349791842

`lt[A134024(n), A134022(n)]`
-/

namespace A174657.P6651762050349791842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174657.P6651762050349791842

namespace A174657

/-- `lt[A134024(n), A134022(n)]` -/
def P6651762050349791842.Spec : Prop :=
  ∀ n, (P6651762050349791842.a n : ℤ) = A174657 (n + 1)

end A174657

/-! ## A174657.P6472770038271227074

`eq[or(7, A065363(n)), A260196(n)]`
-/

namespace A174657.P6472770038271227074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A065363 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174657.P6472770038271227074

namespace A174657

/-- `eq[or(7, A065363(n)), A260196(n)]` -/
def P6472770038271227074.Spec : Prop :=
  ∀ n, (P6472770038271227074.a n : ℤ) = A174657 (n + 1)

end A174657

/-! ## A174657.P1477645155683060540

`eq[or(7, A065363(n))², A001221((-1)^n+3)]`
-/

namespace A174657.P1477645155683060540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A065363 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((-1) ^ n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174657.P1477645155683060540

namespace A174657

/-- `eq[or(7, A065363(n))², A001221((-1)^n+3)]` -/
def P1477645155683060540.Spec : Prop :=
  ∀ n, (P1477645155683060540.a n : ℤ) = A174657 (n + 1)

end A174657

/-! ## A174657.P3183608591368453036

`lt[A053735(2*n), A053735(n)]`
-/

namespace A174657.P3183608591368453036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174657.P3183608591368453036

namespace A174657

/-- `lt[A053735(2*n), A053735(n)]` -/
def P3183608591368453036.Spec : Prop :=
  ∀ n, (P3183608591368453036.a n : ℤ) = A174657 (n + 1)

end A174657

/-! ## A174657.P15720499393852060765

`lt[A180017(2*n), A180017(n)]`
-/

namespace A174657.P15720499393852060765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174657.P15720499393852060765

namespace A174657

/-- `lt[A180017(2*n), A180017(n)]` -/
def P15720499393852060765.Spec : Prop :=
  ∀ n, (P15720499393852060765.a n : ℤ) = A174657 (n + 1)

end A174657

/-! ## A174657.P11130832980031273660

`lt[A269223(2*n), A269223(n)]`
-/

namespace A174657.P11130832980031273660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269223 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174657.P11130832980031273660

namespace A174657

/-- `lt[A269223(2*n), A269223(n)]` -/
def P11130832980031273660.Spec : Prop :=
  ∀ n, (P11130832980031273660.a n : ℤ) = A174657 (n + 1)

end A174657

/-! ## A174657.P2994123814760732634

`eq[0, A277170(n)%3]`
-/

namespace A174657.P2994123814760732634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277170 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174657.P2994123814760732634

namespace A174657

/-- `eq[0, A277170(n)%3]` -/
def P2994123814760732634.Spec : Prop :=
  ∀ n, (P2994123814760732634.a n : ℤ) = A174657 (n + 1)

end A174657

/-!
# A174658: Balanced ternary numbers with equal count of negative trits and positive trits.

The programs for A174658, the canonical program `A174658.P17580556523659380236` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174658 has offset 1).

The definition of A174658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174658.P17580556523659380236

`2*eq[A089643(2*n), A089643(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174658

/-- `2*eq[A089643(2*n), A089643(n)]` -/
def P17580556523659380236.Spec : Prop :=
  ∀ n, (P17580556523659380236.a n : ℤ) = A174658 (n + 1)

theorem P17580556523659380236.correct : P17580556523659380236.Spec := by
  intro n
  simp only [A174658, Nat.add_sub_cancel]

end A174658

/-! ## A174658.P10082502385923475232

`A343604(a(n-1))` with `a(0)=0`
-/

namespace A174658.P10082502385923475232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A343604 (a (n - 1)).toNat

end

end A174658.P10082502385923475232

namespace A174658

/-- `A343604(a(n-1))` -/
def P10082502385923475232.Spec : Prop :=
  ∀ n, P10082502385923475232.a n = A174658 (n + 1)

end A174658

/-! ## A174658.P16211372432618076051

`eq[0, A065363(n)]`
-/

namespace A174658.P16211372432618076051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174658.P16211372432618076051

namespace A174658

/-- `eq[0, A065363(n)]` -/
def P16211372432618076051.Spec : Prop :=
  ∀ n, (P16211372432618076051.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P6320335905065612114

`record[(n+1)*(1-A065363(n+1)²)]`
-/

namespace A174658.P6320335905065612114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A065363 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174658.P6320335905065612114

namespace A174658

/-- `record[(n+1)*(1-A065363(n+1)²)]` -/
def P6320335905065612114.Spec : Prop :=
  ∀ n, P6320335905065612114.a n = A174658 (n + 1)

end A174658

/-! ## A174658.P4316553442324335531

`eq[A074306(n), A127427(n)]`
-/

namespace A174658.P4316553442324335531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P4316553442324335531

namespace A174658

/-- `eq[A074306(n), A127427(n)]` -/
def P4316553442324335531.Spec : Prop :=
  ∀ n, (P4316553442324335531.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P11792552925804553416

`eq[A134022(n), A134024(n)]`
-/

namespace A174658.P11792552925804553416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P11792552925804553416

namespace A174658

/-- `eq[A134022(n), A134024(n)]` -/
def P11792552925804553416.Spec : Prop :=
  ∀ n, (P11792552925804553416.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P15702819006273152673

`eq[A053735(n)/2, A089643(n)]`
-/

namespace A174658.P15702819006273152673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A174658.P15702819006273152673

namespace A174658

/-- `eq[A053735(n)/2, A089643(n)]` -/
def P15702819006273152673.Spec : Prop :=
  ∀ n, (P15702819006273152673.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P6187877153712522703

`eq[n, A350229(n)]`
-/

namespace A174658.P6187877153712522703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174658.P6187877153712522703

namespace A174658

/-- `eq[n, A350229(n)]` -/
def P6187877153712522703.Spec : Prop :=
  ∀ n, (P6187877153712522703.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P17342428624442768378

`eq[A000989(n), A089643(n)]`
-/

namespace A174658.P17342428624442768378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P17342428624442768378

namespace A174658

/-- `eq[A000989(n), A089643(n)]` -/
def P17342428624442768378.Spec : Prop :=
  ∀ n, (P17342428624442768378.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P6847003854862473268

`eq[A071045(n), A127427(n)]`
-/

namespace A174658.P6847003854862473268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P6847003854862473268

namespace A174658

/-- `eq[A071045(n), A127427(n)]` -/
def P6847003854862473268.Spec : Prop :=
  ∀ n, (P6847003854862473268.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P184905060171496431

`eq[A053735(2*n), A053735(n)]`
-/

namespace A174658.P184905060171496431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P184905060171496431

namespace A174658

/-- `eq[A053735(2*n), A053735(n)]` -/
def P184905060171496431.Spec : Prop :=
  ∀ n, (P184905060171496431.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P18110434213280325109

`eq[A096288(2*n), A096288(n)]`
-/

namespace A174658.P18110434213280325109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P18110434213280325109

namespace A174658

/-- `eq[A096288(2*n), A096288(n)]` -/
def P18110434213280325109.Spec : Prop :=
  ∀ n, (P18110434213280325109.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P7338670763707080091

`eq[A180017(2*n), A180017(n)]`
-/

namespace A174658.P7338670763707080091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P7338670763707080091

namespace A174658

/-- `eq[A180017(2*n), A180017(n)]` -/
def P7338670763707080091.Spec : Prop :=
  ∀ n, (P7338670763707080091.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P15192892457571327815

`eq[A269223(2*n), A269223(n)]`
-/

namespace A174658.P15192892457571327815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269223 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P15192892457571327815

namespace A174658

/-- `eq[A269223(2*n), A269223(n)]` -/
def P15192892457571327815.Spec : Prop :=
  ∀ n, (P15192892457571327815.a n : ℤ) = A174658 (n + 1)

end A174658

/-! ## A174658.P9645586913071321238

`eq[A230641(2*n)+n, A230641(3*n)]`
-/

namespace A174658.P9645586913071321238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P9645586913071321238

namespace A174658

/-- `eq[A230641(2*n)+n, A230641(3*n)]` -/
def P9645586913071321238.Spec : Prop :=
  ∀ n, (P9645586913071321238.a n : ℤ) = A174658 (n + 1)

end A174658

/-!
# A174659: Numbers whose balanced ternary representation has more positive trits than negative trits.

The programs for A174659, the canonical program `A174659.P7843834769306507909` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174659 has offset 1).

The definition of A174659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5782 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174659.P7843834769306507909

`lt[0, A065363(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174659

/-- `lt[0, A065363(n)]` -/
def P7843834769306507909.Spec : Prop :=
  ∀ n, (P7843834769306507909.a n : ℤ) = A174659 (n + 1)

theorem P7843834769306507909.correct : P7843834769306507909.Spec := by
  intro n
  simp only [A174659, Nat.add_sub_cancel]

end A174659

/-! ## A174659.P3457985278460404851

`record[(n+1)%(A065363(n+1)+n+1)]`
-/

namespace A174659.P3457985278460404851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A065363 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174659.P3457985278460404851

namespace A174659

/-- `record[(n+1)%(A065363(n+1)+n+1)]` -/
def P3457985278460404851.Spec : Prop :=
  ∀ n, P3457985278460404851.a n = A174659 (n + 1)

end A174659

/-! ## A174659.P6616113778038228098

`lt[A134022(n), A134024(n)]`
-/

namespace A174659.P6616113778038228098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174659.P6616113778038228098

namespace A174659

/-- `lt[A134022(n), A134024(n)]` -/
def P6616113778038228098.Spec : Prop :=
  ∀ n, (P6616113778038228098.a n : ℤ) = A174659 (n + 1)

end A174659

/-! ## A174659.P15656207204963572014

`eq[A065363(n), A098925(A065363(n)²)]`
-/

namespace A174659.P15656207204963572014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A065363 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174659.P15656207204963572014

namespace A174659

/-- `eq[A065363(n), A098925(A065363(n)²)]` -/
def P15656207204963572014.Spec : Prop :=
  ∀ n, (P15656207204963572014.a n : ℤ) = A174659 (n + 1)

end A174659

/-! ## A174659.P17941621862010140220

`lt[A053735(n), A053735(2*n)]`
-/

namespace A174659.P17941621862010140220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174659.P17941621862010140220

namespace A174659

/-- `lt[A053735(n), A053735(2*n)]` -/
def P17941621862010140220.Spec : Prop :=
  ∀ n, (P17941621862010140220.a n : ℤ) = A174659 (n + 1)

end A174659

/-! ## A174659.P18067895714798337776

`lt[A180017(n), A180017(2*n)]`
-/

namespace A174659.P18067895714798337776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174659.P18067895714798337776

namespace A174659

/-- `lt[A180017(n), A180017(2*n)]` -/
def P18067895714798337776.Spec : Prop :=
  ∀ n, (P18067895714798337776.a n : ℤ) = A174659 (n + 1)

end A174659

/-! ## A174659.P16195063410371448261

`lt[A269223(n), A269223(2*n)]`
-/

namespace A174659.P16195063410371448261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269223 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174659.P16195063410371448261

namespace A174659

/-- `lt[A269223(n), A269223(2*n)]` -/
def P16195063410371448261.Spec : Prop :=
  ∀ n, (P16195063410371448261.a n : ℤ) = A174659 (n + 1)

end A174659

/-!
# A174660: a(n) = 2^A158611(n) mod A002808(n).

The programs for A174660, the canonical program `A174660.P18203838442809272468` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174660 has offset 1).

The definition of A174660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174660.P18203838442809272468

`(2^A158611(n+1))%A002808(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174660

/-- `(2^A158611(n+1))%A002808(n+1)` -/
def P18203838442809272468.Spec : Prop :=
  ∀ n, P18203838442809272468.a n = A174660 (n + 1)

theorem P18203838442809272468.correct : P18203838442809272468.Spec := by
  intro n
  simp only [A174660, Nat.add_sub_cancel]

end A174660

/-! ## A174660.P2873684908719834329

`record[A328964(n)]%A018252(n+2)`
-/

namespace A174660.P2873684908719834329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A018252 (n + 2))

end

end A174660.P2873684908719834329

namespace A174660

/-- `record[A328964(n)]%A018252(n+2)` -/
def P2873684908719834329.Spec : Prop :=
  ∀ n, P2873684908719834329.a n = A174660 (n + 1)

end A174660

/-! ## A174660.P14760754978131981464

`A000079(record[A351078(n)])%A002808(n+1)`
-/

namespace A174660.P14760754978131981464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A002808 (n + 1))

end

end A174660.P14760754978131981464

namespace A174660

/-- `A000079(record[A351078(n)])%A002808(n+1)` -/
def P14760754978131981464.Spec : Prop :=
  ∀ n, P14760754978131981464.a n = A174660 (n + 1)

end A174660

/-! ## A174660.P7657822496454338916

`A000079(A158611(n+1))%A002808(n+1)`
-/

namespace A174660.P7657822496454338916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A158611 (n + 1)).toNat) (A002808 (n + 1))

end

end A174660.P7657822496454338916

namespace A174660

/-- `A000079(A158611(n+1))%A002808(n+1)` -/
def P7657822496454338916.Spec : Prop :=
  ∀ n, P7657822496454338916.a n = A174660 (n + 1)

end A174660

/-! ## A174660.P12522763314973067498

`A000079(eq[1, A226378(n)])%A002808(n+1)`
-/

namespace A174660.P12522763314973067498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A002808 (n + 1))

end

end A174660.P12522763314973067498

namespace A174660

/-- `A000079(eq[1, A226378(n)])%A002808(n+1)` -/
def P12522763314973067498.Spec : Prop :=
  ∀ n, P12522763314973067498.a n = A174660 (n + 1)

end A174660

/-! ## A174660.P15942297213132331691

`A000079(comp[A018252(n+2)])%A002808(n+1)`
-/

namespace A174660.P15942297213132331691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A002808 (n + 1))

end

end A174660.P15942297213132331691

namespace A174660

/-- `A000079(comp[A018252(n+2)])%A002808(n+1)` -/
def P15942297213132331691.Spec : Prop :=
  ∀ n, P15942297213132331691.a n = A174660 (n + 1)

end A174660

/-!
# A174661: E.g.f.: Product_{n>=1} 1/(1 - x^n/n!)^n.

The programs for A174661, there is no canonical definition to state claims against.
-/

/-! ## A174661.P9731679565883316727

`A008616(xor(5, A131785(n+1)))`
-/

namespace A174661.P9731679565883316727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor 5 (A131785 (n + 1))).toNat

end

end A174661.P9731679565883316727

/-! ## A174661.P5054408719494403485

`A308805(A287275(n))+A226234(n)`
-/

namespace A174661.P5054408719494403485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308805 (A287275 n).toNat + A226234 n

end

end A174661.P5054408719494403485

/-!
# A174662: Partial sums of A003149.

The programs for A174662, there is no canonical definition to state claims against.
-/

/-! ## A174662.P4489375181309592675

`∑[n!+(n+1)/2*a(n-1)]` with `a(0)=1`
-/

namespace A174662.P4489375181309592675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.factorial n : ℚ) + (n + 1 : ℚ) / 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174662.P4489375181309592675

/-! ## A174662.P660980584251161733

`∑[A003149(n)]`
-/

namespace A174662.P660980584251161733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174662.P660980584251161733

/-! ## A174662.P5663396012698571195

`∑[∑[A186374(n+1)]]`
-/

namespace A174662.P5663396012698571195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174662.P5663396012698571195

/-! ## A174662.P7377045920859725523

`∑[A025527(n+1)*A025533(n)]`
-/

namespace A174662.P7377045920859725523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A025533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174662.P7377045920859725523

/-! ## A174662.P8406675983885020623

`∑[A000142(n)/A046826(n)*A046825(n)]`
-/

namespace A174662.P8406675983885020623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A046826 n : ℚ) * (A046825 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174662.P8406675983885020623

/-! ## A174662.P7388192084384867661

`∑[A084938(∑[n+2]+3)]`
-/

namespace A174662.P7388192084384867661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174662.P7388192084384867661

/-!
# A174663: a(n) is the number of solutions to the congruence Sum_{k=1..n} x_k == 1 (mod 2n), where x_k are distinct elements of the set {0, 1, ..., 2n}, k = 1..n.

The programs for A174663, there is no canonical definition to state claims against.
-/

/-! ## A174663.P9609619927037904398

`Δ[(n+1)!]*A131868(n+1)`
-/

namespace A174663.P9609619927037904398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A131868 (n + 1)

end

end A174663.P9609619927037904398

/-! ## A174663.P11589219266279652994

`A001563(n+1)*A131868(n+1)`
-/

namespace A174663.P11589219266279652994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (n + 1) * A131868 (n + 1)

end

end A174663.P11589219266279652994

/-! ## A174663.P10700339476583021801

`Δ[A000142(n+1)]*A131868(n+1)`
-/

namespace A174663.P10700339476583021801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A131868 (n + 1)

end

end A174663.P10700339476583021801

/-! ## A174663.P15575368033769388856

`sqrt(A176128(n+1))*A131868(n+1)`
-/

namespace A174663.P15575368033769388856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A176128 (n + 1) : ℝ) * (A131868 (n + 1) : ℝ)

end

end A174663.P15575368033769388856

/-! ## A174663.P5104451834265638659

`(n+1)/6*A254593(n+1)*sqrt(A176128(n+1))`
-/

namespace A174663.P5104451834265638659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 6 * (A254593 (n + 1) : ℚ) : ℝ) * Real.sqrt (A176128 (n + 1) : ℝ)

end

end A174663.P5104451834265638659

/-!
# A174664: a(0)=1, a(1)=2, and a(n)=a(abs(floor((1/3)*n-a(n-2)))) for n>=2.

The programs for A174664, the canonical program `A174664.P16318458669777665331` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174664 has offset 0).

The definition of A174664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(abs(floor(1/3*n-a(n-2))))` (program `A174664.P16318458669777665331`, by `A174664.P16318458669777665331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174664.P16318458669777665331

`a(abs(floor(1/3*n-a(n-2))))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174664

/-- `a(abs(floor(1/3*n-a(n-2))))` -/
def P16318458669777665331.Spec : Prop :=
  ∀ n, (P16318458669777665331.a n : ℤ) = A174664 n

theorem P16318458669777665331.correct : P16318458669777665331.Spec := by
  intro n
  simp only [A174664]

end A174664

/-! ## A174664.P16677540007604059193

`a(abs(A002264(n)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A174664.P16677540007604059193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a |A002264 n - (a (n - 2) : ℤ)|.toNat

end

end A174664.P16677540007604059193

namespace A174664

/-- `a(abs(A002264(n)-a(n-2)))` -/
def P16677540007604059193.Spec : Prop :=
  ∀ n, (P16677540007604059193.a n : ℤ) = A174664 n

end A174664

/-! ## A174664.P10878202883763289311

`A105220(A163247(n+1)-A046660(n+1))`
-/

namespace A174664.P10878202883763289311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 (A163247 (n + 1) - A046660 (n + 1)).toNat

end

end A174664.P10878202883763289311

namespace A174664

/-- `A105220(A163247(n+1)-A046660(n+1))` -/
def P10878202883763289311.Spec : Prop :=
  ∀ n, P10878202883763289311.a n = A174664 n

end A174664

/-! ## A174664.P17381985714414219047

`A105220(xor(A046660(n+1), A163247(n+1)))`
-/

namespace A174664.P17381985714414219047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 (Int.xor (A046660 (n + 1)) (A163247 (n + 1))).toNat

end

end A174664.P17381985714414219047

namespace A174664

/-- `A105220(xor(A046660(n+1), A163247(n+1)))` -/
def P17381985714414219047.Spec : Prop :=
  ∀ n, P17381985714414219047.a n = A174664 n

end A174664

/-!
# A174665: Sequence whose indices are based on the Fibonacci sequence as explained in comments.

The programs for A174665, there is no canonical definition to state claims against.
-/

/-! ## A174665.P8828068478206006987

`A153775(Δ[record[A003188(n)]])`
-/

namespace A174665.P8828068478206006987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (f1 (n + 1) - f1 n).toNat

end

end A174665.P8828068478206006987

/-! ## A174665.P6835836662383576410

`A153775(Δ[A295897(n+1)])`
-/

namespace A174665.P6835836662383576410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (f1 (n + 1) - f1 n).toNat

end

end A174665.P6835836662383576410

/-! ## A174665.P5972449219933650051

`ceil((A115098(A035614(n))+1)/3)`
-/

namespace A174665.P5972449219933650051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115098 (A035614 n).toNat + 1 : ℚ) / 3⌉

end

end A174665.P5972449219933650051

/-! ## A174665.P917954157693435292

`A008619(A094388(A035614(n)))`
-/

namespace A174665.P917954157693435292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A094388 (A035614 n).toNat).toNat

end

end A174665.P917954157693435292

/-! ## A174665.P5056552095776459606

`A002264(A115098(A035614(n))+3)`
-/

namespace A174665.P5056552095776459606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A115098 (A035614 n).toNat + 3).toNat

end

end A174665.P5056552095776459606

/-! ## A174665.P11231075410787527503

`A008619(A003278(Δ[A295897(n+1)]))`
-/

namespace A174665.P11231075410787527503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003278 (f1 (n + 1) - f1 n).toNat).toNat

end

end A174665.P11231075410787527503

/-!
# A174666: a(n) = 2 * a(n-2) * a(n-1) with a(1)=1 and a(2)=3.

The programs for A174666, the canonical program `A174666.P11387100773315578026` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174666 has offset 1).

The definition of A174666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)*a(n-1)` (program `A174666.P11387100773315578026`, by `A174666.P11387100773315578026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174666.P11387100773315578026

`2*a(n-2)*a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174666

/-- `2*a(n-2)*a(n-1)` -/
def P11387100773315578026.Spec : Prop :=
  ∀ n, (P11387100773315578026.a n : ℤ) = A174666 (n + 1)

theorem P11387100773315578026.correct : P11387100773315578026.Spec := by
  intro n
  simp only [A174666, Nat.add_sub_cancel]

end A174666

/-! ## A174666.P522785616287206881

`A166470(n)/2`
-/

namespace A174666.P522785616287206881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166470 n : ℚ) / 2

end

end A174666.P522785616287206881

namespace A174666

/-- `A166470(n)/2` -/
def P522785616287206881.Spec : Prop :=
  ∀ n, P522785616287206881.a n = (A174666 (n + 1) : ℚ)

end A174666

/-! ## A174666.P11382414228723181567

`2^A000071(n+1)*3^A000045(n)`
-/

namespace A174666.P11382414228723181567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000071 (n + 1) : ℤ) * (3 : ℚ) ^ (A000045 n : ℤ)

end

end A174666.P11382414228723181567

namespace A174666

/-- `2^A000071(n+1)*3^A000045(n)` -/
def P11382414228723181567.Spec : Prop :=
  ∀ n, P11382414228723181567.a n = (A174666 (n + 1) : ℚ)

end A174666

/-! ## A174666.P4944325435132178972

`2^(A000045(n+1)-1)*3^A000045(n)`
-/

namespace A174666.P4944325435132178972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000045 (n + 1) - 1 : ℤ) * (3 : ℚ) ^ (A000045 n : ℤ)

end

end A174666.P4944325435132178972

namespace A174666

/-- `2^(A000045(n+1)-1)*3^A000045(n)` -/
def P4944325435132178972.Spec : Prop :=
  ∀ n, P4944325435132178972.a n = (A174666 (n + 1) : ℚ)

end A174666

/-! ## A174666.P7683056869264922828

`(a(n-1)+a(n-1))/a(n-2)^(-1)` with `a(0)=1, a(1)=3`
-/

namespace A174666.P7683056869264922828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) + a (n - 1)) / a (n - 2) ^ (-1 : ℤ)

end

end A174666.P7683056869264922828

namespace A174666

/-- `(a(n-1)+a(n-1))/a(n-2)^(-1)` -/
def P7683056869264922828.Spec : Prop :=
  ∀ n, P7683056869264922828.a n = (A174666 (n + 1) : ℚ)

end A174666

/-!
# A174667: Triangle read by rows: T(n, k) = A154692(n, k) - A154692(n, 0) + 1.

The programs for A174667, there is no canonical definition to state claims against.
-/

/-! ## A174667.P5343072131514374389

`A154692(n)+A174673(n)-A154694(n)`
-/

namespace A174667.P5343072131514374389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154692 n + (A174673 n - A154694 n)

end

end A174667.P5343072131514374389

/-! ## A174667.P16394869326786970128

`A154692(n)+A174675(n)-A154696(n)`
-/

namespace A174667.P16394869326786970128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154692 n + (A174675 n - A154696 n)

end

end A174667.P16394869326786970128

/-! ## A174667.P15878195218460669173

`A298305(A174033(n))`
-/

namespace A174667.P15878195218460669173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298305 (A174033 n).toNat

end

end A174667.P15878195218460669173

/-! ## A174667.P4613401970765013910

`A294649(A177808(n))`
-/

namespace A174667.P4613401970765013910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (A177808 n).toNat

end

end A174667.P4613401970765013910

/-! ## A174667.P5574872762799562205

`A325763(A176560(n))`
-/

namespace A174667.P5574872762799562205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A176560 n).toNat

end

end A174667.P5574872762799562205

/-!
# A174668: a(n) is the number of solutions of the congruence Sum_{k=1..n} x_k == n (mod 2n) where x_k are distinct elements of the set {0,1,...,2n}.

The programs for A174668, there is no canonical definition to state claims against.
-/

/-! ## A174668.P12563997093392967423

`∏[n+1]*A145855(n+1)`
-/

namespace A174668.P12563997093392967423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A145855 (n + 1)

end

end A174668.P12563997093392967423

/-! ## A174668.P4849866388940823731

`A169888(n+1)/2*∏[n+1]`
-/

namespace A174668.P4849866388940823731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169888 (n + 1) : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A174668.P4849866388940823731

/-! ## A174668.P9582840349361122254

`(n+1)!*A061865(A001844(n))`
-/

namespace A174668.P9582840349361122254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A061865 (A001844 n).toNat

end

end A174668.P9582840349361122254

/-! ## A174668.P16807463707480698632

`record[A306549(n)]*A061865(A001844(n))`
-/

namespace A174668.P16807463707480698632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A061865 (A001844 n).toNat

end

end A174668.P16807463707480698632

/-! ## A174668.P6476779424509162653

`record[A134134(n+1)]*A061865(A001844(n))`
-/

namespace A174668.P6476779424509162653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A061865 (A001844 n).toNat

end

end A174668.P6476779424509162653

/-!
# A174669: Sequence A154690 adjusted to leading one:t(n,m)=A154690(n,m)-A154690(n,0)+1.

The programs for A174669, there is no canonical definition to state claims against.
-/

/-! ## A174669.P15435824785614425566

`A154690(n)-∏[char[∑[n+1]]+1]`
-/

namespace A174669.P15435824785614425566
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154690 n - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174669.P15435824785614425566

/-! ## A174669.P7157093527952416652

`A013609(n)+A038207(n)-A137688(n)`
-/

namespace A174669.P7157093527952416652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (A038207 n - A137688 n)

end

end A174669.P7157093527952416652

/-! ## A174669.P4332068567939191727

`A007318(n)*A271709(n)-A137688(n)`
-/

namespace A174669.P4332068567939191727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A271709 n - A137688 n

end

end A174669.P4332068567939191727

/-! ## A174669.P14556401672389825908

`A013609(n)+abs(A065109(n))-A137688(n)`
-/

namespace A174669.P14556401672389825908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (|A065109 n| - A137688 n)

end

end A174669.P14556401672389825908

/-! ## A174669.P4578582517107531394

`A038207(n)+abs(A303872(n))-A137688(n)`
-/

namespace A174669.P4578582517107531394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + (|A303872 n| - A137688 n)

end

end A174669.P4578582517107531394

/-! ## A174669.P16898900791035941760

`abs(A108086(n)*A271709(n))-A137688(n)`
-/

namespace A174669.P16898900791035941760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A271709 n| - A137688 n

end

end A174669.P16898900791035941760

/-! ## A174669.P7160085652751264124

`sqrt(A008459(n))*A271709(n)-A137688(n)`
-/

namespace A174669.P7160085652751264124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A271709 n : ℝ) - (A137688 n : ℝ)

end

end A174669.P7160085652751264124

/-!
# A174672: Sequence A154693 adjusted to leading one:t(n,m)=A154693(n,m)-A154693(n,0)+1.

The programs for A174672, there is no canonical definition to state claims against.
-/

/-! ## A174672.P17093120141384272416

`A154693(n)-∏[char[∑[n+1]]+1]`
-/

namespace A174672.P17093120141384272416
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154693 n - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174672.P17093120141384272416

/-! ## A174672.P8907068165432906680

`A008292(n+1)*A271709(n)-A137688(n)`
-/

namespace A174672.P8907068165432906680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A271709 n - A137688 n

end

end A174672.P8907068165432906680

/-! ## A174672.P15643233629112506712

`ceil(A176200(n)/2)*A271709(n)-A137688(n)`
-/

namespace A174672.P15643233629112506712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176200 n : ℚ) / 2⌉ * A271709 n - A137688 n

end

end A174672.P15643233629112506712

/-! ## A174672.P15363487321017550625

`(A131816(n)+1)*A008292(n+1)-A137688(n)`
-/

namespace A174672.P15363487321017550625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131816 n + 1) * A008292 (n + 1) - A137688 n

end

end A174672.P15363487321017550625

/-! ## A174672.P13025036827831269608

`(A176204(n)+3)/4*A271709(n)-A137688(n)`
-/

namespace A174672.P13025036827831269608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176204 n + 3 : ℚ) / 4 * (A271709 n : ℚ) - (A137688 n : ℚ)

end

end A174672.P13025036827831269608

/-!
# A174673: Triangle read by rows: T(n,m)=A154694(n,m)-A154694(n,0)+1.

The programs for A174673, there is no canonical definition to state claims against.
-/

/-! ## A174673.P13046942985696254940

`A154694(n)+A174667(n)-A154692(n)`
-/

namespace A174673.P13046942985696254940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154694 n + (A174667 n - A154692 n)

end

end A174673.P13046942985696254940

/-! ## A174673.P18141820518638244314

`A154694(n)+A174675(n)-A154696(n)`
-/

namespace A174673.P18141820518638244314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154694 n + (A174675 n - A154696 n)

end

end A174673.P18141820518638244314

/-! ## A174673.P16054935284755191691

`A210677(A131061(n)%A159158(n+6))`
-/

namespace A174673.P16054935284755191691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 (Int.tmod (A131061 n) (A159158 (n + 6))).toNat

end

end A174673.P16054935284755191691

/-! ## A174673.P11328333376242899435

`A047387(A027935(n)^n)`
-/

namespace A174673.P11328333376242899435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047387 (A027935 n ^ n).toNat

end

end A174673.P11328333376242899435

/-!
# A174674: Sequence A154695 adjusted to leading one:t(n,m)=A154695(n,m)-A154695(n,0)+1.

The programs for A174674, there is no canonical definition to state claims against.
-/

/-! ## A174674.P12836598767296418341

`A154695(n)-∏[char[∑[n+1]]+1]`
-/

namespace A174674.P12836598767296418341
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154695 n - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174674.P12836598767296418341

/-! ## A174674.P7739734439274948302

`abs(A137688(n)-A154695(n))`
-/

namespace A174674.P7739734439274948302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137688 n - A154695 n|

end

end A174674.P7739734439274948302

/-! ## A174674.P8598109491393352024

`A174669(n)+A154695(n)-A154690(n)`
-/

namespace A174674.P8598109491393352024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174669 n + (A154695 n - A154690 n)

end

end A174674.P8598109491393352024

/-! ## A174674.P112776023529576325

`A174672(n)+A154695(n)-A154693(n)`
-/

namespace A174674.P112776023529576325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174672 n + (A154695 n - A154693 n)

end

end A174674.P112776023529576325

/-! ## A174674.P8464912941684438522

`A060187(n+1)*A271709(n)-A137688(n)`
-/

namespace A174674.P8464912941684438522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) * A271709 n - A137688 n

end

end A174674.P8464912941684438522

/-!
# A174675: Sequence A154696 adjusted to leading one:t(n,m)=A154696(n,m)-A154696(n,0)+1.

The programs for A174675, there is no canonical definition to state claims against.
-/

/-! ## A174675.P8534973237976011037

`A154696(n)+A174667(n)-A154692(n)`
-/

namespace A174675.P8534973237976011037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154696 n + (A174667 n - A154692 n)

end

end A174675.P8534973237976011037

/-! ## A174675.P11734681103772845124

`A154696(n)+A174673(n)-A154694(n)`
-/

namespace A174675.P11734681103772845124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154696 n + (A174673 n - A154694 n)

end

end A174675.P11734681103772845124

/-! ## A174675.P3811380574913232443

`A079300(A193734(n)^3)`
-/

namespace A174675.P3811380574913232443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (A193734 n ^ 3).toNat

end

end A174675.P3811380574913232443

/-! ## A174675.P16389749193018923939

`A226048(∑[∏{p}[A366535(2*n+3), #-1]^n])`
-/

namespace A174675.P16389749193018923939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366535 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n).natAbs, ((p : ℤ) - 1)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226048 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174675.P16389749193018923939

/-!
# A174677: a(n) = 2*a(n-1)*a(n-2) with a(0)=1 and a(1)=1.

The programs for A174677, the canonical program `A174677.P8020362186263559157` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174677 has offset 0).

The definition of A174677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)` (program `A174677.P8020362186263559157`, by `A174677.P8020362186263559157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174677.P8020362186263559157

`2*a(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174677

/-- `2*a(n-1)*a(n-2)` -/
def P8020362186263559157.Spec : Prop :=
  ∀ n, (P8020362186263559157.a n : ℤ) = A174677 n

theorem P8020362186263559157.correct : P8020362186263559157.Spec := by
  intro n
  simp only [A174677]

end A174677

/-! ## A174677.P14432378827935448708

`1/2*A000301(n+1)`
-/

namespace A174677.P14432378827935448708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000301 (n + 1) : ℚ)

end

end A174677.P14432378827935448708

namespace A174677

/-- `1/2*A000301(n+1)` -/
def P14432378827935448708.Spec : Prop :=
  ∀ n, P14432378827935448708.a n = (A174677 n : ℚ)

end A174677

/-! ## A174677.P7181684544470156908

`2^(A000045(n+1)-1)`
-/

namespace A174677.P7181684544470156908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000045 (n + 1) - 1 : ℤ)

end

end A174677.P7181684544470156908

namespace A174677

/-- `2^(A000045(n+1)-1)` -/
def P7181684544470156908.Spec : Prop :=
  ∀ n, P7181684544470156908.a n = (A174677 n : ℚ)

end A174677

/-!
# A174678: Sequence A154647 adjusted to leading ones:t(n,m)=A154647(n,m)-A154647(n,0)+1.

The programs for A174678, there is no canonical definition to state claims against.
-/

/-! ## A174678.P6633611675937669204

`ceil(A176199(n)/2)`
-/

namespace A174678.P6633611675937669204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176199 n : ℚ) / 2⌉

end

end A174678.P6633611675937669204

/-! ## A174678.P14361093379241163466

`round((A176199(n)+A010054(n))/2)`
-/

namespace A174678.P14361093379241163466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A176199 n + A010054 n : ℚ) / 2)

end

end A174678.P14361093379241163466

/-! ## A174678.P4719482517799153325

`(A176199(n)-A057428(n+1))/2`
-/

namespace A174678.P4719482517799153325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176199 n - A057428 (n + 1) : ℚ) / 2

end

end A174678.P4719482517799153325

/-! ## A174678.P9508883742973087843

`(A328570(2*n)+A176199(n))/2`
-/

namespace A174678.P9508883742973087843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328570 (2 * n) + A176199 n : ℚ) / 2

end

end A174678.P9508883742973087843

/-! ## A174678.P11338840468254108431

`(2*A154647(n)-A098355(n)+1)/2`
-/

namespace A174678.P11338840468254108431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A154647 n - A098355 n + 1 : ℚ) / 2

end

end A174678.P11338840468254108431

/-!
# A174679: a(4n) = n^2. a(4n+1) = (4n-1)^2. a(4n+2) = (2n)^2. a(4n+3) = (4n+1)^2.

The programs for A174679, the canonical program `A174679.P13497234996843719673` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174679 has offset 0).

The definition of A174679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174679.P13497234996843719673

`ogf((x+x^3+x^4+6x^5+4x^6+22x^7+x^8+25x^9+4x^10+9x^11)/(1-3x^4+3x^8-x^12))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174679

/-- `ogf((x+x^3+x^4+6x^5+4x^6+22x^7+x^8+25x^9+4x^10+9x^11)/(1-3x^4+3x^8-x^12))` -/
def P13497234996843719673.Spec : Prop :=
  ∀ n, P13497234996843719673.a n = A174679 n

theorem P13497234996843719673.correct : P13497234996843719673.Spec := by
  intro n
  simp only [A174679]

end A174679

/-! ## A174679.P2421680749324741374

`floor((2-n)/gcd(4, n))²`
-/

namespace A174679.P2421680749324741374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - (n : ℤ) : ℚ) / (Nat.gcd 4 n : ℚ)⌋ ^ 2

end

end A174679.P2421680749324741374

namespace A174679

/-- `floor((2-n)/gcd(4, n))²` -/
def P2421680749324741374.Spec : Prop :=
  ∀ n, P2421680749324741374.a n = A174679 n

end A174679

/-! ## A174679.P17012269944771992884

`(n+1-A071054(A071054(n)-(n+1)))²`
-/

namespace A174679.P17012269944771992884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A071054 (A071054 n - (n + 1 : ℤ)).toNat) ^ 2

end

end A174679.P17012269944771992884

namespace A174679

/-- `(n+1-A071054(A071054(n)-(n+1)))²` -/
def P17012269944771992884.Spec : Prop :=
  ∀ n, P17012269944771992884.a n = A174679 n

end A174679

/-! ## A174679.P12797629235355250762

`(A000034(n)-A029579(A026741(n)))²`
-/

namespace A174679.P12797629235355250762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n - A029579 (A026741 n).toNat) ^ 2

end

end A174679.P12797629235355250762

namespace A174679

/-- `(A000034(n)-A029579(A026741(n)))²` -/
def P12797629235355250762.Spec : Prop :=
  ∀ n, P12797629235355250762.a n = A174679 n

end A174679

/-! ## A174679.P14121353390960304339

`(A000035(n)-A029578(A026741(n)))²`
-/

namespace A174679.P14121353390960304339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n - A029578 (A026741 n).toNat) ^ 2

end

end A174679.P14121353390960304339

namespace A174679

/-- `(A000035(n)-A029578(A026741(n)))²` -/
def P14121353390960304339.Spec : Prop :=
  ∀ n, P14121353390960304339.a n = A174679 n

end A174679

/-! ## A174679.P4361233104374427124

`(A057979(A027656(n))-A029578(n))²`
-/

namespace A174679.P4361233104374427124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057979 (A027656 n).toNat - A029578 n) ^ 2

end

end A174679.P4361233104374427124

namespace A174679

/-- `(A057979(A027656(n))-A029578(n))²` -/
def P4361233104374427124.Spec : Prop :=
  ∀ n, P4361233104374427124.a n = A174679 n

end A174679

/-! ## A174679.P6467020158721120940

`(A057979(A029579(n))-A097140(n))²`
-/

namespace A174679.P6467020158721120940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057979 (A029579 n).toNat - A097140 n) ^ 2

end

end A174679.P6467020158721120940

namespace A174679

/-- `(A057979(A029579(n))-A097140(n))²` -/
def P6467020158721120940.Spec : Prop :=
  ∀ n, P6467020158721120940.a n = A174679 n

end A174679

/-! ## A174679.P12039283906282579199

`(A124625(n)-A029579(A142150(n)))²`
-/

namespace A174679.P12039283906282579199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124625 n - A029579 (A142150 n).toNat) ^ 2

end

end A174679.P12039283906282579199

namespace A174679

/-- `(A124625(n)-A029579(A142150(n)))²` -/
def P12039283906282579199.Spec : Prop :=
  ∀ n, P12039283906282579199.a n = A174679 n

end A174679

/-! ## A174679.P480628896428873827

`(n-A029578(A029578(n)+n))²`
-/

namespace A174679.P480628896428873827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A029578 (A029578 n + (n : ℤ)).toNat) ^ 2

end

end A174679.P480628896428873827

namespace A174679

/-- `(n-A029578(A029578(n)+n))²` -/
def P480628896428873827.Spec : Prop :=
  ∀ n, P480628896428873827.a n = A174679 n

end A174679

/-! ## A174679.P2428902007472625836

`(A010673(n)-A029578(A064680(n)))²`
-/

namespace A174679.P2428902007472625836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010673 n - A029578 (A064680 n).toNat) ^ 2

end

end A174679.P2428902007472625836

namespace A174679

/-- `(A010673(n)-A029578(A064680(n)))²` -/
def P2428902007472625836.Spec : Prop :=
  ∀ n, P2428902007472625836.a n = A174679 n

end A174679

/-!
# A174680: Numerator of 1/16 - 1/n^2, using -1 at the pole where n=0.

The programs for A174680, the canonical program `A174680.P3405325100441103306` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174680 has offset 0).

The definition of A174680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174680.P3405325100441103306

`(n²-16)/gcd(n²-16, 16*n²)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174680

/-- `(n²-16)/gcd(n²-16, 16*n²)` -/
def P3405325100441103306.Spec : Prop :=
  ∀ n, P3405325100441103306.a n = (A174680 n : ℚ)

end A174680

/-! ## A174680.P15368203462541768841

`A173651(∑[n+4]+3)`
-/

namespace A174680.P15368203462541768841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173651 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A174680.P15368203462541768841

namespace A174680

/-- `A173651(∑[n+4]+3)` -/
def P15368203462541768841.Spec : Prop :=
  ∀ n, P15368203462541768841.a n = A174680 n

end A174680

/-! ## A174680.P17163732543846914932

`or(char[1], A173651(A052905(n+1)+2))`
-/

namespace A174680.P17163732543846914932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A173651 (A052905 (n + 1) + 2).toNat)

end

end A174680.P17163732543846914932

namespace A174680

/-- `or(char[1], A173651(A052905(n+1)+2))` -/
def P17163732543846914932.Spec : Prop :=
  ∀ n, P17163732543846914932.a n = A174680 n

end A174680

/-! ## A174680.P10734437919723498653

`A173651(A052905(n+1)+2)%A085001(n)`
-/

namespace A174680.P10734437919723498653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173651 (A052905 (n + 1) + 2).toNat) (A085001 n)

end

end A174680.P10734437919723498653

namespace A174680

/-- `A173651(A052905(n+1)+2)%A085001(n)` -/
def P10734437919723498653.Spec : Prop :=
  ∀ n, P10734437919723498653.a n = A174680 n

end A174680

/-! ## A174680.P5083699073870427340

`A020985(n)²*A173651(A052905(n+1)+2)`
-/

namespace A174680.P5083699073870427340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A173651 (A052905 (n + 1) + 2).toNat

end

end A174680.P5083699073870427340

namespace A174680

/-- `A020985(n)²*A173651(A052905(n+1)+2)` -/
def P5083699073870427340.Spec : Prop :=
  ∀ n, P5083699073870427340.a n = A174680 n

end A174680

/-! ## A174680.P17887278354960199270

`A173651(A052905(n+1)+2)+A000007(n+1)`
-/

namespace A174680.P17887278354960199270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173651 (A052905 (n + 1) + 2).toNat + A000007 (n + 1)

end

end A174680.P17887278354960199270

namespace A174680

/-- `A173651(A052905(n+1)+2)+A000007(n+1)` -/
def P17887278354960199270.Spec : Prop :=
  ∀ n, P17887278354960199270.a n = A174680 n

end A174680

/-! ## A174680.P502307365897597486

`A007318(C(2, n))*A173651(A052905(n+1)+2)`
-/

namespace A174680.P502307365897597486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A173651 (A052905 (n + 1) + 2).toNat

end

end A174680.P502307365897597486

namespace A174680

/-- `A007318(C(2, n))*A173651(A052905(n+1)+2)` -/
def P502307365897597486.Spec : Prop :=
  ∀ n, P502307365897597486.a n = A174680 n

end A174680

/-! ## A174680.P7413694117862466669

`ceil(1/A007318(n))*A173651(A052905(n+1)+2)`
-/

namespace A174680.P7413694117862466669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A173651 (A052905 (n + 1) + 2).toNat

end

end A174680.P7413694117862466669

namespace A174680

/-- `ceil(1/A007318(n))*A173651(A052905(n+1)+2)` -/
def P7413694117862466669.Spec : Prop :=
  ∀ n, P7413694117862466669.a n = A174680 n

end A174680

/-! ## A174680.P17816732522561263592

`A000010(C(2, n)!)*A173651(A052905(n+1)+2)`
-/

namespace A174680.P17816732522561263592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A173651 (A052905 (n + 1) + 2).toNat

end

end A174680.P17816732522561263592

namespace A174680

/-- `A000010(C(2, n)!)*A173651(A052905(n+1)+2)` -/
def P17816732522561263592.Spec : Prop :=
  ∀ n, P17816732522561263592.a n = A174680 n

end A174680

/-! ## A174680.P13024805511676774954

`A173651(A052905(n+1)+2)+A008683(4*(n+1))`
-/

namespace A174680.P13024805511676774954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173651 (A052905 (n + 1) + 2).toNat + A008683 (4 * (n + 1))

end

end A174680.P13024805511676774954

namespace A174680

/-- `A173651(A052905(n+1)+2)+A008683(4*(n+1))` -/
def P13024805511676774954.Spec : Prop :=
  ∀ n, P13024805511676774954.a n = A174680 n

end A174680

/-! ## A174680.P16007080013032752437

`A014963(12*(n+1))*A173651(A052905(n+1)+2)`
-/

namespace A174680.P16007080013032752437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A173651 (A052905 (n + 1) + 2).toNat

end

end A174680.P16007080013032752437

namespace A174680

/-- `A014963(12*(n+1))*A173651(A052905(n+1)+2)` -/
def P16007080013032752437.Spec : Prop :=
  ∀ n, P16007080013032752437.a n = A174680 n

end A174680

/-! ## A174680.P8061875660559866591

`A000041(C(2, n+2))*A173651(A052905(n+1)+2)`
-/

namespace A174680.P8061875660559866591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A173651 (A052905 (n + 1) + 2).toNat

end

end A174680.P8061875660559866591

namespace A174680

/-- `A000041(C(2, n+2))*A173651(A052905(n+1)+2)` -/
def P8061875660559866591.Spec : Prop :=
  ∀ n, P8061875660559866591.a n = A174680 n

end A174680

/-! ## A174680.P10456981148162186817

`A007318(val(n+2, 6))*A173651(A052905(n+1)+2)`
-/

namespace A174680.P10456981148162186817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 2) 6) * A173651 (A052905 (n + 1) + 2).toNat

end

end A174680.P10456981148162186817

namespace A174680

/-- `A007318(val(n+2, 6))*A173651(A052905(n+1)+2)` -/
def P10456981148162186817.Spec : Prop :=
  ∀ n, P10456981148162186817.a n = A174680 n

end A174680

/-! ## A174680.P11620719060487382896

`A000010(gcd(n, n+2))*A173651(A052905(n+1)+2)`
-/

namespace A174680.P11620719060487382896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 2)) * A173651 (A052905 (n + 1) + 2).toNat

end

end A174680.P11620719060487382896

namespace A174680

/-- `A000010(gcd(n, n+2))*A173651(A052905(n+1)+2)` -/
def P11620719060487382896.Spec : Prop :=
  ∀ n, P11620719060487382896.a n = A174680 n

end A174680

/-!
# A174681: Half-sums (averages) of two primes with prime subscripts.

The programs for A174681, there is no canonical definition to state claims against.
-/

/-! ## A174681.P12132021724990484515

`lt[0, A281423(n)]`
-/

namespace A174681.P12132021724990484515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174681.P12132021724990484515

/-! ## A174681.P7253478341255286791

`comp[A174682(n+1)-1]+1`
-/

namespace A174681.P7253478341255286791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174682 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A174681.P7253478341255286791

/-! ## A174681.P9759351310524283396

`comp[A140106(A303403(n+1))]+1`
-/

namespace A174681.P9759351310524283396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A303403 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A174681.P9759351310524283396

/-! ## A174681.P6832558029518922458

`eq[char[A174682(n+1)], A000007(n)]`
-/

namespace A174681.P6832558029518922458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174682 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A174681.P6832558029518922458

/-! ## A174681.P14594805171760857679

`eq[char[A174682(n+1)], A000038(n)]`
-/

namespace A174681.P14594805171760857679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174682 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A174681.P14594805171760857679

/-! ## A174681.P7557939964498199040

`eq[A000010(n+2)%2, char[A174682(n+1)]]`
-/

namespace A174681.P7557939964498199040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174682 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A174681.P7557939964498199040

/-! ## A174681.P12587962196730318141

`eq[1-A070750(n+1)², char[A174682(n+1)]]`
-/

namespace A174681.P12587962196730318141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070750 (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174682 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A174681.P12587962196730318141

/-! ## A174681.P11025530283817440464

`eq[char[A174682(n+1)], A151933(n)]`
-/

namespace A174681.P11025530283817440464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174682 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A174681.P11025530283817440464

/-!
# A174682: Positive integers which cannot be represented as half-sums (averages) of two primes with prime subscripts.

The programs for A174682, there is no canonical definition to state claims against.
-/

/-! ## A174682.P9759865189892694641

`A303403(n+1)/2`
-/

namespace A174682.P9759865189892694641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303403 (n + 1) : ℚ) / 2

end

end A174682.P9759865189892694641

/-! ## A174682.P6031239753274647117

`A001281(A303403(n+1))`
-/

namespace A174682.P6031239753274647117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A303403 (n + 1)).toNat

end

end A174682.P6031239753274647117

/-! ## A174682.P5963043499971399421

`A004524(A303403(n+1)+1)`
-/

namespace A174682.P5963043499971399421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A303403 (n + 1) + 1).toNat

end

end A174682.P5963043499971399421

/-! ## A174682.P3587986502388468692

`A004526(A303403(n+1)+1)`
-/

namespace A174682.P3587986502388468692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A303403 (n + 1) + 1).toNat

end

end A174682.P3587986502388468692

/-! ## A174682.P14060658008063808042

`A028242(A303403(n+1)+1)`
-/

namespace A174682.P14060658008063808042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A303403 (n + 1) + 1).toNat

end

end A174682.P14060658008063808042

/-! ## A174682.P5589594561028860137

`A057979(A303403(n+1)+1)`
-/

namespace A174682.P5589594561028860137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A303403 (n + 1) + 1).toNat

end

end A174682.P5589594561028860137

/-! ## A174682.P3249562950555161875

`A000463(A303403(n+1)-1)`
-/

namespace A174682.P3249562950555161875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A303403 (n + 1) - 1).toNat

end

end A174682.P3249562950555161875

/-! ## A174682.P3029372154363530297

`A001057(A303403(n+1)-1)`
-/

namespace A174682.P3029372154363530297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A303403 (n + 1) - 1).toNat

end

end A174682.P3029372154363530297

/-! ## A174682.P11251235686722725536

`A003602(A303403(n+1)-1)`
-/

namespace A174682.P11251235686722725536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A303403 (n + 1) - 1).toNat

end

end A174682.P11251235686722725536

/-! ## A174682.P2400189282623825444

`A110654(A303403(n+1)-1)`
-/

namespace A174682.P2400189282623825444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A303403 (n + 1) - 1).toNat

end

end A174682.P2400189282623825444

/-!
# A174683: Denominator of 1/16 - 1/n^2.

The programs for A174683, there is no canonical definition to state claims against.
-/

/-! ## A174683.P8830394968207425865

`lcm(n, A355461(n+1)%2-5)²`
-/

namespace A174683.P8830394968207425865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod (A355461 (n + 1)) 2 - 5) ^ 2

end

end A174683.P8830394968207425865

/-! ## A174683.P13449074506801559593

`lcm((A039927(2*n+1)+3)², n²)`
-/

namespace A174683.P13449074506801559593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((A039927 (2 * n + 1) + 3) ^ 2) (n ^ 2 : ℤ)

end

end A174683.P13449074506801559593

/-! ## A174683.P9287663758888819352

`(4/gcd(4, n))²*record[A236112(n+1)]`
-/

namespace A174683.P9287663758888819352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236112 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 / (Nat.gcd 4 n : ℚ)) ^ 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A174683.P9287663758888819352

/-! ## A174683.P9319661656540864580

`lcm(A000290(n), A134660(A000051(n+2)))`
-/

namespace A174683.P9319661656540864580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000290 n) (A134660 (A000051 (n + 2)).toNat)

end

end A174683.P9319661656540864580

/-! ## A174683.P6398091379582354509

`∑{e}[5^n, lcm(4, #)²]`
-/

namespace A174683.P6398091379582354509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.lcm 4 (Nat.factorization (f1 n) p) ^ 2

end

end A174683.P6398091379582354509

/-!
# A174685: Indices i such that 2*A000326(i)+1 is also a pentagonal number.

The programs for A174685, there is no canonical definition to state claims against.
-/

/-! ## A174685.P10760726101096243821

`A253822(n+1)-A253821(n+1)`
-/

namespace A174685.P10760726101096243821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253822 (n + 1) - A253821 (n + 1)

end

end A174685.P10760726101096243821

/-! ## A174685.P15728135464584326287

`A253821(n+1)-A260937(n+1)`
-/

namespace A174685.P15728135464584326287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253821 (n + 1) - A260937 (n + 1)

end

end A174685.P15728135464584326287

/-! ## A174685.P10415500618617160964

`A253822(A000027(n+1))%A253821(n+1)`
-/

namespace A174685.P10415500618617160964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253822 (A000027 (n + 1)).toNat) (A253821 (n + 1))

end

end A174685.P10415500618617160964

/-! ## A174685.P1421101900739425635

`(A253822(n+1)%A253821(n+1))%A131750(n+1)`
-/

namespace A174685.P1421101900739425635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A253822 (n + 1)) (A253821 (n + 1))) (A131750 (n + 1))

end

end A174685.P1421101900739425635

/-! ## A174685.P12360078741069267517

`(A253823(n+1)+A253822(n+1))%A253821(n+1)`
-/

namespace A174685.P12360078741069267517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253823 (n + 1) + A253822 (n + 1)) (A253821 (n + 1))

end

end A174685.P12360078741069267517

/-!
# A174686: Number of equivalence classes of 3 X 3 matrices filled with n colors so that no two rotations are identical.

The programs for A174686, the canonical program `A174686.P8004641840269709808` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174686 has offset 2).

The definition of A174686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174686.P8004641840269709808

`((n+2)^9-(n+2)^5)/4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174686

/-- `((n+2)^9-(n+2)^5)/4` -/
def P8004641840269709808.Spec : Prop :=
  ∀ n, P8004641840269709808.a n = (A174686 (n + 2) : ℚ)

end A174686

/-! ## A174686.P6998554663896949848

`(n+2)/2*C((n+2)²², 2)`
-/

namespace A174686.P6998554663896949848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (Nat.choose (((n + 2) ^ 2) ^ 2) 2 : ℚ)

end

end A174686.P6998554663896949848

namespace A174686

/-- `(n+2)/2*C((n+2)²², 2)` -/
def P6998554663896949848.Spec : Prop :=
  ∀ n, P6998554663896949848.a n = (A174686 (n + 2) : ℚ)

end A174686

/-! ## A174686.P318800979178460608

`A282613(n+2)-A168178(n+2)`
-/

namespace A174686.P318800979178460608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282613 (n + 2) - A168178 (n + 2)

end

end A174686.P318800979178460608

namespace A174686

/-- `A282613(n+2)-A168178(n+2)` -/
def P318800979178460608.Spec : Prop :=
  ∀ n, P318800979178460608.a n = A174686 (n + 2)

end A174686

/-! ## A174686.P7678690513659931440

`A168555(n+2)-A282614(n+2)`
-/

namespace A174686.P7678690513659931440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168555 (n + 2) - A282614 (n + 2)

end

end A174686.P7678690513659931440

namespace A174686

/-- `A168555(n+2)-A282614(n+2)` -/
def P7678690513659931440.Spec : Prop :=
  ∀ n, P7678690513659931440.a n = A174686 (n + 2)

end A174686

/-! ## A174686.P17157778242178835534

`A037270(n+2)*A321672(n+2)`
-/

namespace A174686.P17157778242178835534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 (n + 2) * A321672 (n + 2)

end

end A174686.P17157778242178835534

namespace A174686

/-- `A037270(n+2)*A321672(n+2)` -/
def P17157778242178835534.Spec : Prop :=
  ∀ n, P17157778242178835534.a n = A174686 (n + 2)

end A174686

/-! ## A174686.P9542716613959026459

`(n+2)*A006011((n+2)²)`
-/

namespace A174686.P9542716613959026459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A006011 ((n + 2) ^ 2)

end

end A174686.P9542716613959026459

namespace A174686

/-- `(n+2)*A006011((n+2)²)` -/
def P9542716613959026459.Spec : Prop :=
  ∀ n, P9542716613959026459.a n = A174686 (n + 2)

end A174686

/-! ## A174686.P6015584126979229264

`A002411((n+2)²)*A135503(n+2)`
-/

namespace A174686.P6015584126979229264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 ((n + 2) ^ 2) * A135503 (n + 2)

end

end A174686.P6015584126979229264

namespace A174686

/-- `A002411((n+2)²)*A135503(n+2)` -/
def P6015584126979229264.Spec : Prop :=
  ∀ n, P6015584126979229264.a n = A174686 (n + 2)

end A174686

/-! ## A174686.P14690908952921207567

`A000578(n+2)*A276670((n+2)²)`
-/

namespace A174686.P14690908952921207567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 2) * A276670 ((n + 2) ^ 2)

end

end A174686.P14690908952921207567

namespace A174686

/-- `A000578(n+2)*A276670((n+2)²)` -/
def P14690908952921207567.Spec : Prop :=
  ∀ n, P14690908952921207567.a n = A174686 (n + 2)

end A174686

/-!
# A174687: Central coefficients T(2n,n) of the Catalan triangle A033184.

The programs for A174687, the canonical program `A174687.P9780258777249550525` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174687 has offset 0).

The definition of A174687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174687.P9780258777249550525

`(n+1)*A001764(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174687

/-- `(n+1)*A001764(n)` -/
def P9780258777249550525.Spec : Prop :=
  ∀ n, P9780258777249550525.a n = A174687 n

theorem P9780258777249550525.correct : P9780258777249550525.Spec := by
  intro n
  simp only [A174687]

end A174687

/-! ## A174687.P7515804978896974824

`C(3*n, n)*(n+1)/(2*n+1)`
-/

namespace A174687.P7515804978896974824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A174687.P7515804978896974824

namespace A174687

/-- `C(3*n, n)*(n+1)/(2*n+1)` -/
def P7515804978896974824.Spec : Prop :=
  ∀ n, P7515804978896974824.a n = (A174687 n : ℚ)

end A174687

/-! ## A174687.P1735021144307712356

`A368567(2*n)`
-/

namespace A174687.P1735021144307712356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368567 (2 * n)

end

end A174687.P1735021144307712356

namespace A174687

/-- `A368567(2*n)` -/
def P1735021144307712356.Spec : Prop :=
  ∀ n, P1735021144307712356.a n = A174687 n

end A174687

/-! ## A174687.P15805280137750143880

`(n+1)*A073147(∑[n])`
-/

namespace A174687.P15805280137750143880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073147 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174687.P15805280137750143880

namespace A174687

/-- `(n+1)*A073147(∑[n])` -/
def P15805280137750143880.Spec : Prop :=
  ∀ n, P15805280137750143880.a n = A174687 n

end A174687

/-! ## A174687.P15810908944457147457

`(n+1)*A110616(∑[n])`
-/

namespace A174687.P15810908944457147457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174687.P15810908944457147457

namespace A174687

/-- `(n+1)*A110616(∑[n])` -/
def P15810908944457147457.Spec : Prop :=
  ∀ n, P15810908944457147457.a n = A174687 n

end A174687

/-! ## A174687.P10448494241358953208

`(n+1)*A047749(2*n)`
-/

namespace A174687.P10448494241358953208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047749 (2 * n)

end

end A174687.P10448494241358953208

namespace A174687

/-- `(n+1)*A047749(2*n)` -/
def P10448494241358953208.Spec : Prop :=
  ∀ n, P10448494241358953208.a n = A174687 n

end A174687

/-! ## A174687.P18188417432654455015

`(n+1)*A052183(n)/(n+2)`
-/

namespace A174687.P18188417432654455015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A052183 n : ℚ) / (n + 2 : ℚ))

end

end A174687.P18188417432654455015

namespace A174687

/-- `(n+1)*A052183(n)/(n+2)` -/
def P18188417432654455015.Spec : Prop :=
  ∀ n, P18188417432654455015.a n = (A174687 n : ℚ)

end A174687

/-! ## A174687.P16961954667872641447

`(n+1)*∑{d}[n+1, A251662(#)]`
-/

namespace A174687.P16961954667872641447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A251662 d)

end

end A174687.P16961954667872641447

namespace A174687

/-- `(n+1)*∑{d}[n+1, A251662(#)]` -/
def P16961954667872641447.Spec : Prop :=
  ∀ n, P16961954667872641447.a n = A174687 n

end A174687

/-! ## A174687.P15139740349457168926

`(n+1)*A047761(abs(1-2*n))`
-/

namespace A174687.P15139740349457168926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047761 |1 - (2 * n : ℤ)|.toNat

end

end A174687.P15139740349457168926

namespace A174687

/-- `(n+1)*A047761(abs(1-2*n))` -/
def P15139740349457168926.Spec : Prop :=
  ∀ n, P15139740349457168926.a n = A174687 n

end A174687

/-! ## A174687.P18145676331232121649

`(n+1)*ceil(A046646(n+1)/2)`
-/

namespace A174687.P18145676331232121649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A046646 (n + 1) : ℚ) / 2⌉

end

end A174687.P18145676331232121649

namespace A174687

/-- `(n+1)*ceil(A046646(n+1)/2)` -/
def P18145676331232121649.Spec : Prop :=
  ∀ n, P18145676331232121649.a n = A174687 n

end A174687

/-! ## A174687.P18123978718087966200

`(n+1)*(n+1)/2*A000139(n)`
-/

namespace A174687.P18123978718087966200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / 2 * (A000139 n : ℚ))

end

end A174687.P18123978718087966200

namespace A174687

/-- `(n+1)*(n+1)/2*A000139(n)` -/
def P18123978718087966200.Spec : Prop :=
  ∀ n, P18123978718087966200.a n = (A174687 n : ℚ)

end A174687

/-! ## A174687.P2891929554608689432

`(n+1)*A005809(n)/(2*n+1)`
-/

namespace A174687.P2891929554608689432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A005809 n : ℚ) / (2 * n + 1 : ℚ))

end

end A174687.P2891929554608689432

namespace A174687

/-- `(n+1)*A005809(n)/(2*n+1)` -/
def P2891929554608689432.Spec : Prop :=
  ∀ n, P2891929554608689432.a n = (A174687 n : ℚ)

end A174687

/-! ## A174687.P11848317475295005375

`A045721(n)/(3*n+1)*(n+1)`
-/

namespace A174687.P11848317475295005375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045721 n : ℚ) / (3 * n + 1 : ℚ) * (n + 1 : ℚ)

end

end A174687.P11848317475295005375

namespace A174687

/-- `A045721(n)/(3*n+1)*(n+1)` -/
def P11848317475295005375.Spec : Prop :=
  ∀ n, P11848317475295005375.a n = (A174687 n : ℚ)

end A174687

/-! ## A174687.P235464132398243748

`A052183(n)-A001764(n)`
-/

namespace A174687.P235464132398243748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052183 n - A001764 n

end

end A174687.P235464132398243748

namespace A174687

/-- `A052183(n)-A001764(n)` -/
def P235464132398243748.Spec : Prop :=
  ∀ n, P235464132398243748.a n = A174687 n

end A174687

/-! ## A174687.P8505661129123188520

`(n+1)*A047764(A017545(n))`
-/

namespace A174687.P8505661129123188520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047764 (A017545 n).toNat

end

end A174687.P8505661129123188520

namespace A174687

/-- `(n+1)*A047764(A017545(n))` -/
def P8505661129123188520.Spec : Prop :=
  ∀ n, P8505661129123188520.a n = A174687 n

end A174687

/-! ## A174687.P2798828786645165074

`(n+1)*A069269(A055998(n))`
-/

namespace A174687.P2798828786645165074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069269 (A055998 n).toNat

end

end A174687.P2798828786645165074

namespace A174687

/-- `(n+1)*A069269(A055998(n))` -/
def P2798828786645165074.Spec : Prop :=
  ∀ n, P2798828786645165074.a n = A174687 n

end A174687

/-! ## A174687.P16291603506392115730

`(n+1)*A127898(A161680(n))`
-/

namespace A174687.P16291603506392115730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127898 (A161680 n).toNat

end

end A174687.P16291603506392115730

namespace A174687

/-- `(n+1)*A127898(A161680(n))` -/
def P16291603506392115730.Spec : Prop :=
  ∀ n, P16291603506392115730.a n = A174687 n

end A174687

/-! ## A174687.P4643896856326293010

`(A005809(n)+A001764(n))/2`
-/

namespace A174687.P4643896856326293010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 n + A001764 n : ℚ) / 2

end

end A174687.P4643896856326293010

namespace A174687

/-- `(A005809(n)+A001764(n))/2` -/
def P4643896856326293010.Spec : Prop :=
  ∀ n, P4643896856326293010.a n = (A174687 n : ℚ)

end A174687

/-! ## A174687.P17251370610167459658

`A052183(n)-A047749(2*n)`
-/

namespace A174687.P17251370610167459658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052183 n - A047749 (2 * n)

end

end A174687.P17251370610167459658

namespace A174687

/-- `A052183(n)-A047749(2*n)` -/
def P17251370610167459658.Spec : Prop :=
  ∀ n, P17251370610167459658.a n = A174687 n

end A174687

/-! ## A174687.P16823491270038860633

`A001764(n)*A008619(2*n)`
-/

namespace A174687.P16823491270038860633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A008619 (2 * n)

end

end A174687.P16823491270038860633

namespace A174687

/-- `A001764(n)*A008619(2*n)` -/
def P16823491270038860633.Spec : Prop :=
  ∀ n, P16823491270038860633.a n = A174687 n

end A174687

/-!
# A174689: Triangle T(n, k) = n! * binomial(n, k)^2 - n! + 1, read by rows.

The programs for A174689, the canonical program `A174689.P3386502235824571891` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174689 has offset 0).

The definition of A174689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)!*C(row(n), col(n))²-row(n)!+1` (program `A174689.P3386502235824571891`, by `A174689.P3386502235824571891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174689.P3386502235824571891

`row(n)!*C(row(n), col(n))²-row(n)!+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174689

/-- `row(n)!*C(row(n), col(n))²-row(n)!+1` -/
def P3386502235824571891.Spec : Prop :=
  ∀ n, P3386502235824571891.a n = A174689 n

theorem P3386502235824571891.correct : P3386502235824571891.Spec := by
  intro n
  simp only [A174689]

end A174689

/-! ## A174689.P14791063807516805288

`A174690(n)+A174790(n)-1`
-/

namespace A174689.P14791063807516805288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174690 n + (A174790 n - 1)

end

end A174689.P14791063807516805288

namespace A174689

/-- `A174690(n)+A174790(n)-1` -/
def P14791063807516805288.Spec : Prop :=
  ∀ n, P14791063807516805288.a n = A174689 n

end A174689

/-! ## A174689.P6165155052894223293

`A174690(n)-(A033999(n)²-A174790(n))`
-/

namespace A174689.P6165155052894223293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174690 n - (A033999 n ^ 2 - A174790 n)

end

end A174689.P6165155052894223293

namespace A174689

/-- `A174690(n)-(A033999(n)²-A174790(n))` -/
def P6165155052894223293.Spec : Prop :=
  ∀ n, P6165155052894223293.a n = A174689 n

end A174689

/-! ## A174689.P9608196630309405152

`A033999(Δ[n²])+A174790(n)+A174690(n)`
-/

namespace A174689.P9608196630309405152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (A174790 n + A174690 n)

end

end A174689.P9608196630309405152

namespace A174689

/-- `A033999(Δ[n²])+A174790(n)+A174690(n)` -/
def P9608196630309405152.Spec : Prop :=
  ∀ n, P9608196630309405152.a n = A174689 n

end A174689

/-! ## A174689.P6336522392177121182

`A062157(2*(n+1))+A174790(n)+A174690(n)`
-/

namespace A174689.P6336522392177121182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * (n + 1)) + (A174790 n + A174690 n)

end

end A174689.P6336522392177121182

namespace A174689

/-- `A062157(2*(n+1))+A174790(n)+A174690(n)` -/
def P6336522392177121182.Spec : Prop :=
  ∀ n, P6336522392177121182.a n = A174689 n

end A174689

/-! ## A174689.P16395820521429789068

`A008683(A328579(n+1))+A174790(n)+A174690(n)`
-/

namespace A174689.P16395820521429789068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A328579 (n + 1)).toNat + (A174790 n + A174690 n)

end

end A174689.P16395820521429789068

namespace A174689

/-- `A008683(A328579(n+1))+A174790(n)+A174690(n)` -/
def P16395820521429789068.Spec : Prop :=
  ∀ n, P16395820521429789068.a n = A174689 n

end A174689

/-! ## A174689.P17784536927261844023

`A008683(A002373(n+3))+A174790(n)+A174690(n)`
-/

namespace A174689.P17784536927261844023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002373 (n + 3)).toNat + (A174790 n + A174690 n)

end

end A174689.P17784536927261844023

namespace A174689

/-- `A008683(A002373(n+3))+A174790(n)+A174690(n)` -/
def P17784536927261844023.Spec : Prop :=
  ∀ n, P17784536927261844023.a n = A174689 n

end A174689

/-!
# A174690: Triangle T(n, k) = n!*binomial(n, k) - n! + 1, read by rows.

The programs for A174690, the canonical program `A174690.P16455344973437331269` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174690 has offset 0).

The definition of A174690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)!*C(row(n), col(n))-row(n)!+1` (program `A174690.P16455344973437331269`, by `A174690.P16455344973437331269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174690.P16455344973437331269

`row(n)!*C(row(n), col(n))-row(n)!+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174690

/-- `row(n)!*C(row(n), col(n))-row(n)!+1` -/
def P16455344973437331269.Spec : Prop :=
  ∀ n, P16455344973437331269.a n = A174690 n

theorem P16455344973437331269.correct : P16455344973437331269.Spec := by
  intro n
  simp only [A174690]

end A174690

/-! ## A174690.P381893584370009200

`1+(C(row(n), col(n))-1)*row(n)!`
-/

namespace A174690.P381893584370009200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) - 1) * (Nat.factorial (SequenceMachineLib.triRow n) : ℤ)

end

end A174690.P381893584370009200

namespace A174690

/-- `1+(C(row(n), col(n))-1)*row(n)!` -/
def P381893584370009200.Spec : Prop :=
  ∀ n, P381893584370009200.a n = A174690 n

theorem P381893584370009200.correct : P381893584370009200.Spec := by
  intro n
  simp only [A174690, Nat.add_sub_cancel, A174690.P381893584370009200.a, A174690.P16455344973437331269.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A174690

/-! ## A174690.P2784647028738832059

`A196347(n)-A033312(A003056(n))`
-/

namespace A174690.P2784647028738832059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 n - A033312 (A003056 n).toNat

end

end A174690.P2784647028738832059

namespace A174690

/-- `A196347(n)-A033312(A003056(n))` -/
def P2784647028738832059.Spec : Prop :=
  ∀ n, P2784647028738832059.a n = A174690 n

end A174690

/-! ## A174690.P10762170550627864264

`ceil(A174790(n)/A007318(n))`
-/

namespace A174690.P10762170550627864264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174790 n : ℚ) / (A007318 n : ℚ)⌉

end

end A174690.P10762170550627864264

namespace A174690

/-- `ceil(A174790(n)/A007318(n))` -/
def P10762170550627864264.Spec : Prop :=
  ∀ n, P10762170550627864264.a n = A174690 n

end A174690

/-! ## A174690.P10945087093634615753

`ceil(A174790(n)/A091918(n))`
-/

namespace A174690.P10945087093634615753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174790 n : ℚ) / (A091918 n : ℚ)⌉

end

end A174690.P10945087093634615753

namespace A174690

/-- `ceil(A174790(n)/A091918(n))` -/
def P10945087093634615753.Spec : Prop :=
  ∀ n, P10945087093634615753.a n = A174690 n

end A174690

/-! ## A174690.P9276550378771555497

`ceil(A174790(n)/A135227(n))`
-/

namespace A174690.P9276550378771555497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174790 n : ℚ) / (A135227 n : ℚ)⌉

end

end A174690.P9276550378771555497

namespace A174690

/-- `ceil(A174790(n)/A135227(n))` -/
def P9276550378771555497.Spec : Prop :=
  ∀ n, P9276550378771555497.a n = A174690 n

end A174690

/-! ## A174690.P16631789015929400001

`A174689(n)+1-A174790(n)`
-/

namespace A174690.P16631789015929400001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174689 n + (1 - A174790 n)

end

end A174690.P16631789015929400001

namespace A174690

/-- `A174689(n)+1-A174790(n)` -/
def P16631789015929400001.Spec : Prop :=
  ∀ n, P16631789015929400001.a n = A174690 n

end A174690

/-! ## A174690.P2575188241808147974

`A174689(n)%lcm(2, A196347(n))`
-/

namespace A174690.P2575188241808147974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174689 n) (Int.lcm 2 (A196347 n) : ℤ)

end

end A174690.P2575188241808147974

namespace A174690

/-- `A174689(n)%lcm(2, A196347(n))` -/
def P2575188241808147974.Spec : Prop :=
  ∀ n, P2575188241808147974.a n = A174690 n

end A174690

/-!
# A174691: A symmetrical triangle sequence: t(n,m)=n!*Eulerian[n + 1, m] - n! + 1.

The programs for A174691, there is no canonical definition to state claims against.
-/

/-! ## A174691.P13758371984228053750

`ceil(A174791(n)/A007318(n))`
-/

namespace A174691.P13758371984228053750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174791 n : ℚ) / (A007318 n : ℚ)⌉

end

end A174691.P13758371984228053750

/-! ## A174691.P175015409774503027

`ceil(A174791(n)/A091918(n))`
-/

namespace A174691.P175015409774503027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174791 n : ℚ) / (A091918 n : ℚ)⌉

end

end A174691.P175015409774503027

/-! ## A174691.P10882709350143334699

`ceil(A174791(n)/A132749(n))`
-/

namespace A174691.P10882709350143334699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174791 n : ℚ) / (A132749 n : ℚ)⌉

end

end A174691.P10882709350143334699

/-! ## A174691.P13305754060322292667

`ceil(A174791(n)/sqrt(A008459(n)))`
-/

namespace A174691.P13305754060322292667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174791 n : ℝ) / Real.sqrt (A008459 n : ℝ)⌉

end

end A174691.P13305754060322292667

/-! ## A174691.P14985609018530545312

`ceil(A174791(n)/ceil(A109128(n)/2))`
-/

namespace A174691.P14985609018530545312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174791 n : ℚ) / (⌈(A109128 n : ℚ) / 2⌉ : ℚ)⌉

end

end A174691.P14985609018530545312

/-!
# A174692: Triangle read by rows: T(n,k) = n! * Eulerian(n + 1, k)^2 - k! + 1.

The programs for A174692, there is no canonical definition to state claims against.
-/

/-! ## A174692.P7172704457321755539

`A283634(A056449(n))%A176627(n)*A056940(n)+1`
-/

namespace A174692.P7172704457321755539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283634 (A056449 n).toNat) (A176627 n) * A056940 n + 1

end

end A174692.P7172704457321755539

/-! ## A174692.P17178935953764531162

`(A203389(n+1)-A246277(A122719(n+1)))*A056940(n)+1`
-/

namespace A174692.P17178935953764531162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A203389 (n + 1) - A246277 (A122719 (n + 1)).toNat) * A056940 n + 1

end

end A174692.P17178935953764531162

/-! ## A174692.P7958144401128666577

`A226512(A365025(n))`
-/

namespace A174692.P7958144401128666577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226512 (A365025 n).toNat

end

end A174692.P7958144401128666577

/-! ## A174692.P6249896303778721132

`A117816(A088337(n)+1)`
-/

namespace A174692.P6249896303778721132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117816 (A088337 n + 1).toNat

end

end A174692.P6249896303778721132

/-!
# A174693: Triangle read by rows: T(n,k) = n! * binomial(n, k) * Eulerian(n + 1, k) - n! + 1.

The programs for A174693, there is no canonical definition to state claims against.
-/

/-! ## A174693.P7391620739794207157

`A174690(n)+A174791(n)-1`
-/

namespace A174693.P7391620739794207157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174690 n + (A174791 n - 1)

end

end A174693.P7391620739794207157

/-! ## A174693.P8692341144279233251

`and(p?[A231806(n+1)], A340430(n))`
-/

namespace A174693.P8692341144279233251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A340430 n)

end

end A174693.P8692341144279233251

/-! ## A174693.P7255343313263890893

`∑{d}[xor(1, A340427(A077739(n+1))), #]+1`
-/

namespace A174693.P7255343313263890893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A340427 (A077739 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1

end

end A174693.P7255343313263890893

/-! ## A174693.P9559729492348611765

`A300383(A048887(n+1)+A000225(n))`
-/

namespace A174693.P9559729492348611765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300383 (A048887 (n + 1) + A000225 n).toNat

end

end A174693.P9559729492348611765

/-!
# A174694: Triangle T(n, k) = n!*(1/k)*binomial(n-1, k-1)*binomial(n, k-1) - n! + 1, read by rows.

The programs for A174694, there is no canonical definition to state claims against.
-/

/-! ## A174694.P7169251129377241890

`A353952(n^ceil(n/8))`
-/

namespace A174694.P7169251129377241890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353952 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈(n : ℚ) / 8⌉ : ℤ))).toNat

end

end A174694.P7169251129377241890

/-! ## A174694.P5676630054468182888

`A351568(A172012(n))`
-/

namespace A174694.P5676630054468182888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (A172012 n).toNat

end

end A174694.P5676630054468182888

/-! ## A174694.P9029404922043289511

`A353952(n)%A269231(n)`
-/

namespace A174694.P9029404922043289511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353952 n) (A269231 n)

end

end A174694.P9029404922043289511

/-! ## A174694.P10089061882848276575

`A353952(∑[n])*A353952(n)`
-/

namespace A174694.P10089061882848276575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353952 (∑ j ∈ Finset.range (n + 1), f1 j) * A353952 n

end

end A174694.P10089061882848276575

/-! ## A174694.P14113181548633625145

`A140213(A128352(n+1)-n)`
-/

namespace A174694.P14113181548633625145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140213 (A128352 (n + 1) - (n : ℤ)).toNat

end

end A174694.P14113181548633625145

/-!
# A174695: Partial sums of A173950.

The programs for A174695, the canonical program `A174695.P15433505935837686491` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174695 has offset 1).

The definition of A174695 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112632, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174695.P15433505935837686491

`A112632(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174695

/-- `A112632(n+1)-1` -/
def P15433505935837686491.Spec : Prop :=
  ∀ n, P15433505935837686491.a n = A174695 (n + 1)

theorem P15433505935837686491.correct : P15433505935837686491.Spec := by
  intro n
  simp only [A174695, Nat.add_sub_cancel]

end A174695

/-! ## A174695.P14284164718426495468

`∑[A173950(n+1)]`
-/

namespace A174695.P14284164718426495468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174695.P14284164718426495468

namespace A174695

/-- `∑[A173950(n+1)]` -/
def P14284164718426495468.Spec : Prop :=
  ∀ n, P14284164718426495468.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P1832739470695362705

`abs(∑[A134323(n+1)]+1)`
-/

namespace A174695.P1832739470695362705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A174695.P1832739470695362705

namespace A174695

/-- `abs(∑[A134323(n+1)]+1)` -/
def P1832739470695362705.Spec : Prop :=
  ∀ n, P1832739470695362705.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P10181898664110898805

`n-∑[A008864(n+1)%3]`
-/

namespace A174695.P10181898664110898805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174695.P10181898664110898805

namespace A174695

/-- `n-∑[A008864(n+1)%3]` -/
def P10181898664110898805.Spec : Prop :=
  ∀ n, P10181898664110898805.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P12804802415724520847

`∑[A072055(n+1)%3-1]-1`
-/

namespace A174695.P12804802415724520847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072055 (n + 1)) 3 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A174695.P12804802415724520847

namespace A174695

/-- `∑[A072055(n+1)%3-1]-1` -/
def P12804802415724520847.Spec : Prop :=
  ∀ n, P12804802415724520847.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P14522117159367279832

`∑[floor((A039704(n+1)-1)/2)]-n`
-/

namespace A174695.P14522117159367279832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039704 (n + 1) - 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A174695.P14522117159367279832

namespace A174695

/-- `∑[floor((A039704(n+1)-1)/2)]-n` -/
def P14522117159367279832.Spec : Prop :=
  ∀ n, P14522117159367279832.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P5412710946900607574

`∑[(2-A000040(n+1))%3+1]-1`
-/

namespace A174695.P5412710946900607574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A000040 (n + 1)) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A174695.P5412710946900607574

namespace A174695

/-- `∑[(2-A000040(n+1))%3+1]-1` -/
def P5412710946900607574.Spec : Prop :=
  ∀ n, P5412710946900607574.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P15732369492162909398

`A258069(A112632(n+1))`
-/

namespace A174695.P15732369492162909398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (A112632 (n + 1)).toNat

end

end A174695.P15732369492162909398

namespace A174695

/-- `A258069(A112632(n+1))` -/
def P15732369492162909398.Spec : Prop :=
  ∀ n, P15732369492162909398.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P9524884475002243094

`A323048(2-∑[A134323(n+1)])-2`
-/

namespace A174695.P9524884475002243094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (2 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A174695.P9524884475002243094

namespace A174695

/-- `A323048(2-∑[A134323(n+1)])-2` -/
def P9524884475002243094.Spec : Prop :=
  ∀ n, P9524884475002243094.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P13431051959404005460

`A134323(n+2)-∑[A134323(n+2)]`
-/

namespace A174695.P13431051959404005460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174695.P13431051959404005460

namespace A174695

/-- `A134323(n+2)-∑[A134323(n+2)]` -/
def P13431051959404005460.Spec : Prop :=
  ∀ n, P13431051959404005460.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P9265426544280901332

`abs(∑[(record[A006530(n+2)]+1)%3]-n)`
-/

namespace A174695.P9265426544280901332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A174695.P9265426544280901332

namespace A174695

/-- `abs(∑[(record[A006530(n+2)]+1)%3]-n)` -/
def P9265426544280901332.Spec : Prop :=
  ∀ n, P9265426544280901332.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P8207250039910573333

`∑[A134668(A000040(n+1))]`
-/

namespace A174695.P8207250039910573333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134668 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174695.P8207250039910573333

namespace A174695

/-- `∑[A134668(A000040(n+1))]` -/
def P8207250039910573333.Spec : Prop :=
  ∀ n, P8207250039910573333.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P15426948697368441058

`∑[A163811(A008578(n+2))]`
-/

namespace A174695.P15426948697368441058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174695.P15426948697368441058

namespace A174695

/-- `∑[A163811(A008578(n+2))]` -/
def P15426948697368441058.Spec : Prop :=
  ∀ n, P15426948697368441058.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P10514458242661488177

`A321856(A008864(n+1))-1`
-/

namespace A174695.P10514458242661488177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A008864 (n + 1)).toNat - 1

end

end A174695.P10514458242661488177

namespace A174695

/-- `A321856(A008864(n+1))-1` -/
def P10514458242661488177.Spec : Prop :=
  ∀ n, P10514458242661488177.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P473037194015310123

`A321856(A028815(n+1))-1`
-/

namespace A174695.P473037194015310123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A028815 (n + 1)).toNat - 1

end

end A174695.P473037194015310123

namespace A174695

/-- `A321856(A028815(n+1))-1` -/
def P473037194015310123.Spec : Prop :=
  ∀ n, P473037194015310123.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P317308315115105052

`A321856(A078444(n+1))-1`
-/

namespace A174695.P317308315115105052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A078444 (n + 1)).toNat - 1

end

end A174695.P317308315115105052

namespace A174695

/-- `A321856(A078444(n+1))-1` -/
def P317308315115105052.Spec : Prop :=
  ∀ n, P317308315115105052.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P14435689914810410182

`A321856(A162800(n+1))-1`
-/

namespace A174695.P14435689914810410182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A162800 (n + 1)).toNat - 1

end

end A174695.P14435689914810410182

namespace A174695

/-- `A321856(A162800(n+1))-1` -/
def P14435689914810410182.Spec : Prop :=
  ∀ n, P14435689914810410182.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P14903444792644502432

`A321856(A175216(n+1))-1`
-/

namespace A174695.P14903444792644502432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A175216 (n + 1)).toNat - 1

end

end A174695.P14903444792644502432

namespace A174695

/-- `A321856(A175216(n+1))-1` -/
def P14903444792644502432.Spec : Prop :=
  ∀ n, P14903444792644502432.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P13027235469973807243

`1-∑[A128834(p?[A167171(n+1)])]`
-/

namespace A174695.P13027235469973807243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174695.P13027235469973807243

namespace A174695

/-- `1-∑[A128834(p?[A167171(n+1)])]` -/
def P13027235469973807243.Spec : Prop :=
  ∀ n, P13027235469973807243.a n = A174695 (n + 1)

end A174695

/-! ## A174695.P12111265193830019988

`∑[A128834(p?[A167171(n+1)]+3)]+1`
-/

namespace A174695.P12111265193830019988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A174695.P12111265193830019988

namespace A174695

/-- `∑[A128834(p?[A167171(n+1)]+3)]+1` -/
def P12111265193830019988.Spec : Prop :=
  ∀ n, P12111265193830019988.a n = A174695 (n + 1)

end A174695

/-!
# A174696: Triangle T(n, k) = n!*(1/k)^2*(binomial(n-1, k-1)*binomial(n, k-1))^2 - n! + 1, read by rows.

The programs for A174696, there is no canonical definition to state claims against.
-/

/-! ## A174696.P16768553275765200506

`A348742(A116469(n+1))`
-/

namespace A174696.P16768553275765200506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348742 (A116469 (n + 1)).toNat

end

end A174696.P16768553275765200506

/-! ## A174696.P4462008871205989013

`A140137(A099594(n)²)²`
-/

namespace A174696.P4462008871205989013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140137 (A099594 n ^ 2).toNat ^ 2

end

end A174696.P4462008871205989013

/-! ## A174696.P5642647565391505267

`A140137(A256894(n)²)²`
-/

namespace A174696.P5642647565391505267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140137 (A256894 n ^ 2).toNat ^ 2

end

end A174696.P5642647565391505267

/-! ## A174696.P13638263164807100190

`A332769(A028262(n)!)²`
-/

namespace A174696.P13638263164807100190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (Nat.factorial (A028262 n).toNat) ^ 2

end

end A174696.P13638263164807100190

/-! ## A174696.P825300573165152031

`A354994(A262307(n+1))²`
-/

namespace A174696.P825300573165152031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354994 (A262307 (n + 1)).toNat ^ 2

end

end A174696.P825300573165152031

/-!
# A174697: a(0)=a(1)=a(2)=1, a(n)=a(Floor[a(n-1)/2])+a(n-Floor[a(n-1)/2]).

The programs for A174697, the canonical program `A174697.P4055825028659094832` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174697 has offset 0).

The definition of A174697 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(a(n-1)/2))+a(n-floor(a(n-1)/2))` (program `A174697.P4055825028659094832`, by `A174697.P4055825028659094832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174697.P4055825028659094832

`a(floor(a(n-1)/2))+a(n-floor(a(n-1)/2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174697

/-- `a(floor(a(n-1)/2))+a(n-floor(a(n-1)/2))` -/
def P4055825028659094832.Spec : Prop :=
  ∀ n, (P4055825028659094832.a n : ℤ) = A174697 n

theorem P4055825028659094832.correct : P4055825028659094832.Spec := by
  intro n
  simp only [A174697]

end A174697

/-! ## A174697.P672730134311600874

`∑[A288729(∑[A067783(n+4)])]`
-/

namespace A174697.P672730134311600874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067783 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288729 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174697.P672730134311600874

namespace A174697

/-- `∑[A288729(∑[A067783(n+4)])]` -/
def P672730134311600874.Spec : Prop :=
  ∀ n, P672730134311600874.a n = A174697 n

end A174697

/-! ## A174697.P4438493479263354149

`∑[A010059(A195175(A084920(n+1)))]`
-/

namespace A174697.P4438493479263354149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A195175 (A084920 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174697.P4438493479263354149

namespace A174697

/-- `∑[A010059(A195175(A084920(n+1)))]` -/
def P4438493479263354149.Spec : Prop :=
  ∀ n, P4438493479263354149.a n = A174697 n

end A174697

/-! ## A174697.P3413093904561210511

`∑[A022924(A236922(n)²)]`
-/

namespace A174697.P3413093904561210511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022924 (A236922 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174697.P3413093904561210511

namespace A174697

/-- `∑[A022924(A236922(n)²)]` -/
def P3413093904561210511.Spec : Prop :=
  ∀ n, P3413093904561210511.a n = A174697 n

end A174697

/-!
# A174698: Number of ways to place 8 nonattacking knights on an 8 X n board.

The programs for A174698, there is no canonical definition to state claims against.
-/

/-! ## A174698.P5432513824712463783

`A390160(eq[7, A025581(n)]+1)`
-/

namespace A174698.P5432513824712463783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390160 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A174698.P5432513824712463783

/-!
# A174699: Triangle read by rows: T(n,k) = 2^(2n) mod (2k+1).

The programs for A174699, the canonical program `A174699.P7899571983044575740` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174699 has offset 0).

The definition of A174699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(2*row(n)))%(2*col(n)+1)` (program `A174699.P7899571983044575740`, by `A174699.P7899571983044575740.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174699.P7899571983044575740

`(2^(2*row(n)))%(2*col(n)+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174699

/-- `(2^(2*row(n)))%(2*col(n)+1)` -/
def P7899571983044575740.Spec : Prop :=
  ∀ n, (P7899571983044575740.a n : ℤ) = A174699 n

theorem P7899571983044575740.correct : P7899571983044575740.Spec := by
  intro n
  simp only [A174699]

end A174699

/-! ## A174699.P16006709078246410263

`∏[char[∑[n+1]]+1]²%(2*(n-C(∑[char[∑[n]]], 2))+1)`
-/

namespace A174699.P16006709078246410263
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)) + 1)

end

end A174699.P16006709078246410263

namespace A174699

/-- `∏[char[∑[n+1]]+1]²%(2*(n-C(∑[char[∑[n]]], 2))+1)` -/
def P16006709078246410263.Spec : Prop :=
  ∀ n, P16006709078246410263.a n = A174699 n

end A174699

/-! ## A174699.P6283222483985019302

`∏[char[∑[n+1]]+1]²%A158405(n+1)`
-/

namespace A174699.P6283222483985019302
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A158405 (n + 1))

end

end A174699.P6283222483985019302

namespace A174699

/-- `∏[char[∑[n+1]]+1]²%A158405(n+1)` -/
def P6283222483985019302.Spec : Prop :=
  ∀ n, P6283222483985019302.a n = A174699 n

end A174699

/-! ## A174699.P9992711355232741604

`A137688(n)²%(2*A002262(n)+1)`
-/

namespace A174699.P9992711355232741604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 n ^ 2) (2 * A002262 n + 1)

end

end A174699.P9992711355232741604

namespace A174699

/-- `A137688(n)²%(2*A002262(n)+1)` -/
def P9992711355232741604.Spec : Prop :=
  ∀ n, P9992711355232741604.a n = A174699 n

end A174699

/-! ## A174699.P7579606689851899952

`A137688(n)²%A005408(A002262(n))`
-/

namespace A174699.P7579606689851899952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 n ^ 2) (A005408 (A002262 n).toNat)

end

end A174699.P7579606689851899952

namespace A174699

/-- `A137688(n)²%A005408(A002262(n))` -/
def P7579606689851899952.Spec : Prop :=
  ∀ n, P7579606689851899952.a n = A174699 n

end A174699

/-! ## A174699.P11541404554767487086

`Δ[A007664(n)]²%A005408(A002262(n))`
-/

namespace A174699.P11541404554767487086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A005408 (A002262 n).toNat)

end

end A174699.P11541404554767487086

namespace A174699

/-- `Δ[A007664(n)]²%A005408(A002262(n))` -/
def P11541404554767487086.Spec : Prop :=
  ∀ n, P11541404554767487086.a n = A174699 n

end A174699

/-! ## A174699.P15733852616456412126

`A000302(A003056(n))%A005408(A002262(n))`
-/

namespace A174699.P15733852616456412126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000302 (A003056 n).toNat) (A005408 (A002262 n).toNat)

end

end A174699.P15733852616456412126

namespace A174699

/-- `A000302(A003056(n))%A005408(A002262(n))` -/
def P15733852616456412126.Spec : Prop :=
  ∀ n, P15733852616456412126.a n = A174699 n

end A174699

