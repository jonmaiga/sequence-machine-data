import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A111500: Number of squares in an n X n grid of squares with diagonals.

The programs for A111500, the canonical program `A111500.P16911634620617595178` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111500 has offset 0).

The definition of A111500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111500.P16911634620617595178

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=10, a(2)=31, a(3)=72, a(4)=137`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111500

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P16911634620617595178.Spec : Prop :=
  ∀ n, P16911634620617595178.a n = A111500 n

theorem P16911634620617595178.correct : P16911634620617595178.Spec := by
  intro n
  simp only [A111500]

end A111500

/-! ## A111500.P6206782284850253373

`∑[or(1, ∑[6*n+1])]`
-/

namespace A111500.P6206782284850253373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111500.P6206782284850253373

namespace A111500

/-- `∑[or(1, ∑[6*n+1])]` -/
def P6206782284850253373.Spec : Prop :=
  ∀ n, (P6206782284850253373.a n : ℤ) = A111500 n

end A111500

/-! ## A111500.P1124704769143673156

`floor((3/2+n)*(n+1)²)`
-/

namespace A111500.P1124704769143673156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 + (n : ℚ)) * ((n + 1) ^ 2 : ℚ)⌋

end

end A111500.P1124704769143673156

namespace A111500

/-- `floor((3/2+n)*(n+1)²)` -/
def P1124704769143673156.Spec : Prop :=
  ∀ n, P1124704769143673156.a n = A111500 n

end A111500

/-! ## A111500.P10500460597005195434

`∑[∑[∑[floor(a(n-2))]]]` with `a(0)=1, a(1)=7, a(2)=4, a(3)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A111500.P10500460597005195434
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 4, 8] fun n f3 =>
  f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111500.P10500460597005195434

namespace A111500

/-- `∑[∑[∑[floor(a(n-2))]]]` -/
def P10500460597005195434.Spec : Prop :=
  ∀ n, (P10500460597005195434.a n : ℤ) = A111500 n

end A111500

/-! ## A111500.P17466548576370966491

`∑[n%2+n]+(n+1)^3`
-/

namespace A111500.P17466548576370966491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A111500.P17466548576370966491

namespace A111500

/-- `∑[n%2+n]+(n+1)^3` -/
def P17466548576370966491.Spec : Prop :=
  ∀ n, (P17466548576370966491.a n : ℤ) = A111500 n

end A111500

/-! ## A111500.P14740999310074023019

`∑[a(n-2)+2]+(n+1)^3` with `a(0)=0, a(1)=2`
-/

namespace A111500.P14740999310074023019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A111500.P14740999310074023019

namespace A111500

/-- `∑[a(n-2)+2]+(n+1)^3` -/
def P14740999310074023019.Spec : Prop :=
  ∀ n, (P14740999310074023019.a n : ℤ) = A111500 n

end A111500

/-! ## A111500.P15036858269496254382

`∑[and(1, n)]+(2*n+1)*∑[n+1]`
-/

namespace A111500.P15036858269496254382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A111500.P15036858269496254382

namespace A111500

/-- `∑[and(1, n)]+(2*n+1)*∑[n+1]` -/
def P15036858269496254382.Spec : Prop :=
  ∀ n, (P15036858269496254382.a n : ℤ) = A111500 n

end A111500

/-! ## A111500.P9464756070727758318

`2*n*(n+1)²+2*n+1-a(n-1)` with `a(0)=1`
-/

namespace A111500.P9464756070727758318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n * (n + 1) ^ 2 : ℤ) + ((2 * n + 1 : ℤ) - a (n - 1))

end

end A111500.P9464756070727758318

namespace A111500

/-- `2*n*(n+1)²+2*n+1-a(n-1)` -/
def P9464756070727758318.Spec : Prop :=
  ∀ n, P9464756070727758318.a n = A111500 n

end A111500

/-! ## A111500.P8096332973693404675

`2*n*∑[2*n+1]+2*n+1-a(n-1)` with `a(0)=1`
-/

namespace A111500.P8096332973693404675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n + 1) : ℕ) : ℤ) - a (n - 1)

end

end A111500.P8096332973693404675

namespace A111500

/-- `2*n*∑[2*n+1]+2*n+1-a(n-1)` -/
def P8096332973693404675.Spec : Prop :=
  ∀ n, P8096332973693404675.a n = A111500 n

end A111500

/-! ## A111500.P9346668724650168731

`∑[∑[A063221(n+1)-2]]`
-/

namespace A111500.P9346668724650168731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063221 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111500.P9346668724650168731

namespace A111500

/-- `∑[∑[A063221(n+1)-2]]` -/
def P9346668724650168731.Spec : Prop :=
  ∀ n, P9346668724650168731.a n = A111500 n

end A111500

/-! ## A111500.P17140895734859300847

`∑[A077221(n+1)+n²]`
-/

namespace A111500.P17140895734859300847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111500.P17140895734859300847

namespace A111500

/-- `∑[A077221(n+1)+n²]` -/
def P17140895734859300847.Spec : Prop :=
  ∀ n, P17140895734859300847.a n = A111500 n

end A111500

/-! ## A111500.P890943800235639605

`A111746(n)+∑[(n+1)²]`
-/

namespace A111500.P890943800235639605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111746 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A111500.P890943800235639605

namespace A111500

/-- `A111746(n)+∑[(n+1)²]` -/
def P890943800235639605.Spec : Prop :=
  ∀ n, P890943800235639605.a n = A111500 n

end A111500

/-! ## A111500.P16574616644962242433

`∑[∑[A047522(n+1)]+n²]`
-/

namespace A111500.P16574616644962242433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111500.P16574616644962242433

namespace A111500

/-- `∑[∑[A047522(n+1)]+n²]` -/
def P16574616644962242433.Spec : Prop :=
  ∀ n, P16574616644962242433.a n = A111500 n

end A111500

/-! ## A111500.P16649624812840553957

`A032528(n+1)+n*(n+1)²`
-/

namespace A111500.P16649624812840553957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (n + 1) + (n * (n + 1) ^ 2 : ℤ)

end

end A111500.P16649624812840553957

namespace A111500

/-- `A032528(n+1)+n*(n+1)²` -/
def P16649624812840553957.Spec : Prop :=
  ∀ n, P16649624812840553957.a n = A111500 n

end A111500

/-! ## A111500.P3274991942378060833

`∑[∑[A016873(n)+n-1]]+floor((n+1)/2)`
-/

namespace A111500.P3274991942378060833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n + 1 : ℚ) / 2⌋

end

end A111500.P3274991942378060833

namespace A111500

/-- `∑[∑[A016873(n)+n-1]]+floor((n+1)/2)` -/
def P3274991942378060833.Spec : Prop :=
  ∀ n, P3274991942378060833.a n = A111500 n

end A111500

/-! ## A111500.P11366794339197239330

`A139595(n)+A081435(n)`
-/

namespace A111500.P11366794339197239330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139595 n + A081435 n

end

end A111500.P11366794339197239330

namespace A111500

/-- `A139595(n)+A081435(n)` -/
def P11366794339197239330.Spec : Prop :=
  ∀ n, P11366794339197239330.a n = A111500 n

end A111500

/-! ## A111500.P5129626156520192005

`A156859(n)+A081436(n)`
-/

namespace A111500.P5129626156520192005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156859 n + A081436 n

end

end A111500.P5129626156520192005

namespace A111500

/-- `A156859(n)+A081436(n)` -/
def P5129626156520192005.Spec : Prop :=
  ∀ n, P5129626156520192005.a n = A111500 n

end A111500

/-! ## A111500.P7712045453942156507

`A081437(n)-A007590(n)`
-/

namespace A111500.P7712045453942156507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 n - A007590 n

end

end A111500.P7712045453942156507

namespace A111500

/-- `A081437(n)-A007590(n)` -/
def P7712045453942156507.Spec : Prop :=
  ∀ n, P7712045453942156507.a n = A111500 n

end A111500

/-! ## A111500.P9151379116744206360

`A081438(n)-A035608(n)`
-/

namespace A111500.P9151379116744206360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n - A035608 n

end

end A111500.P9151379116744206360

namespace A111500

/-- `A081438(n)-A035608(n)` -/
def P9151379116744206360.Spec : Prop :=
  ∀ n, P9151379116744206360.a n = A111500 n

end A111500

/-! ## A111500.P13298943497152929027

`A139757(n)-A100583(n)`
-/

namespace A111500.P13298943497152929027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n - A100583 n

end

end A111500.P13298943497152929027

namespace A111500

/-- `A139757(n)-A100583(n)` -/
def P13298943497152929027.Spec : Prop :=
  ∀ n, P13298943497152929027.a n = A111500 n

end A111500

/-!
# A111501: Numbers k such that k^3 - k^2 + 1 is prime.

The programs for A111501, there is no canonical definition to state claims against.
-/

/-! ## A111501.P8813510372552660430

`A154686(n+1)+1`
-/

namespace A111501.P8813510372552660430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1) + 1

end

end A111501.P8813510372552660430

/-! ## A111501.P8476125643124831979

`A115018(n+1)+2`
-/

namespace A111501.P8476125643124831979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115018 (n + 1) + 2

end

end A111501.P8476125643124831979

/-! ## A111501.P3105926353563623547

`ceil(root(A162292(n+1), 3))`
-/

namespace A111501.P3105926353563623547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162292 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A111501.P3105926353563623547

/-! ## A111501.P6090899525634710663

`round(root(A162292(n+1), 3))%A017557(n)`
-/

namespace A111501.P6090899525634710663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A162292 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A017557 n)

end

end A111501.P6090899525634710663

/-! ## A111501.P3882060471398730023

`floor(root(A162292(n+1), 3))+A033999(n)²`
-/

namespace A111501.P3882060471398730023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162292 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ + A033999 n ^ 2

end

end A111501.P3882060471398730023

/-! ## A111501.P16945742539076677623

`floor(root(A162292(n+1), 3))+A097807(n)²`
-/

namespace A111501.P16945742539076677623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162292 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ + A097807 n ^ 2

end

end A111501.P16945742539076677623

/-! ## A111501.P12120044644933050576

`floor(root(A162292(n+1), 3))+A257075(n)²`
-/

namespace A111501.P12120044644933050576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162292 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ + A257075 n ^ 2

end

end A111501.P12120044644933050576

/-! ## A111501.P3985376371939438945

`A020725(A154686(n+1))`
-/

namespace A111501.P3985376371939438945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A154686 (n + 1)).toNat

end

end A111501.P3985376371939438945

/-!
# A111503: Numbers k such that k^3 - k^2 - 1 and k^3 - k^2 + 1 are twin primes.

The programs for A111503, there is no canonical definition to state claims against.
-/

/-! ## A111503.P11837369378176104295

`ceil(root(A154731(n+1), 3))`
-/

namespace A111503.P11837369378176104295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154731 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A111503.P11837369378176104295

/-! ## A111503.P14924953886822474211

`∩[A111501(n+1), A162293(n+1)]`
-/

namespace A111503.P14924953886822474211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111503.P14924953886822474211

/-! ## A111503.P7784855956432830559

`∩[A154686(n+1)+1, A162293(n+1)]`
-/

namespace A111503.P7784855956432830559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111503.P7784855956432830559

/-! ## A111503.P14714249262152344696

`round(root(A154731(n+1), 3))%A000045(n+5)`
-/

namespace A111503.P14714249262152344696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A154731 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A000045 (n + 5))

end

end A111503.P14714249262152344696

/-! ## A111503.P9681526572742256202

`∩[A020725(A154686(n+1)), A162293(n+1)]`
-/

namespace A111503.P9681526572742256202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A154686 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111503.P9681526572742256202

/-!
# A111505: Right half of Pascal's triangle (A007318) with zeros.

The programs for A111505, the canonical program `A111505.P11919683708089814919` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111505 has offset 0).

The definition of A111505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111505.P2583053785655471105

`ceil(sqrt(8*(n+1)))%2*A007318(n)`
-/

namespace A111505.P2583053785655471105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2 * A007318 n

end

end A111505.P2583053785655471105

namespace A111505

/-- `ceil(sqrt(8*(n+1)))%2*A007318(n)` -/
def P2583053785655471105.Spec : Prop :=
  ∀ n, P2583053785655471105.a n = A111505 n

end A111505

/-! ## A111505.P11919683708089814919

`A007318(n)*A101688(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A111505

/-- `A007318(n)*A101688(n)` -/
def P11919683708089814919.Spec : Prop :=
  ∀ n, P11919683708089814919.a n = A111505 n

theorem P11919683708089814919.correct : P11919683708089814919.Spec := by
  intro n
  simp only [A111505]

end A111505

/-! ## A111505.P5645238444695487297

`A091918(n)*A101688(n)`
-/

namespace A111505.P5645238444695487297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A101688 n

end

end A111505.P5645238444695487297

namespace A111505

/-- `A091918(n)*A101688(n)` -/
def P5645238444695487297.Spec : Prop :=
  ∀ n, P5645238444695487297.a n = A111505 n

end A111505

/-! ## A111505.P5524269188339761500

`A101508(n)*A101688(n)`
-/

namespace A111505.P5524269188339761500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 n * A101688 n

end

end A111505.P5524269188339761500

namespace A111505

/-- `A101508(n)*A101688(n)` -/
def P5524269188339761500.Spec : Prop :=
  ∀ n, P5524269188339761500.a n = A111505 n

end A111505

/-! ## A111505.P15286290277678595988

`A101688(n)*A128807(n)`
-/

namespace A111505.P15286290277678595988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A128807 n

end

end A111505.P15286290277678595988

namespace A111505

/-- `A101688(n)*A128807(n)` -/
def P15286290277678595988.Spec : Prop :=
  ∀ n, P15286290277678595988.a n = A111505 n

end A111505

/-! ## A111505.P11913032912920761968

`A101688(n)*A132749(n)`
-/

namespace A111505.P11913032912920761968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A132749 n

end

end A111505.P11913032912920761968

namespace A111505

/-- `A101688(n)*A132749(n)` -/
def P11913032912920761968.Spec : Prop :=
  ∀ n, P11913032912920761968.a n = A111505 n

end A111505

/-! ## A111505.P18106478324386900

`A101688(n)*A135227(n)`
-/

namespace A111505.P18106478324386900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A135227 n

end

end A111505.P18106478324386900

namespace A111505

/-- `A101688(n)*A135227(n)` -/
def P18106478324386900.Spec : Prop :=
  ∀ n, P18106478324386900.a n = A111505 n

end A111505

/-! ## A111505.P11929125011761885321

`A091917(n)*A187034(n)`
-/

namespace A111505.P11929125011761885321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 n * A187034 n

end

end A111505.P11929125011761885321

namespace A111505

/-- `A091917(n)*A187034(n)` -/
def P11929125011761885321.Spec : Prop :=
  ∀ n, P11929125011761885321.a n = A111505 n

end A111505

/-! ## A111505.P17185209888461482502

`A101688(n)*A183154(n)`
-/

namespace A111505.P17185209888461482502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A183154 n

end

end A111505.P17185209888461482502

namespace A111505

/-- `A101688(n)*A183154(n)` -/
def P17185209888461482502.Spec : Prop :=
  ∀ n, P17185209888461482502.a n = A111505 n

end A111505

/-! ## A111505.P14740364762928280233

`A101688(n)*A206735(n)`
-/

namespace A111505.P14740364762928280233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A206735 n

end

end A111505.P14740364762928280233

namespace A111505

/-- `A101688(n)*A206735(n)` -/
def P14740364762928280233.Spec : Prop :=
  ∀ n, P14740364762928280233.a n = A111505 n

end A111505

/-! ## A111505.P798902716733589911

`A130595(n)*A187034(n)`
-/

namespace A111505.P798902716733589911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A187034 n

end

end A111505.P798902716733589911

namespace A111505

/-- `A130595(n)*A187034(n)` -/
def P798902716733589911.Spec : Prop :=
  ∀ n, P798902716733589911.a n = A111505 n

end A111505

/-! ## A111505.P5317705172700848522

`A137683(n)*A187034(n)`
-/

namespace A111505.P5317705172700848522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137683 n * A187034 n

end

end A111505.P5317705172700848522

namespace A111505

/-- `A137683(n)*A187034(n)` -/
def P5317705172700848522.Spec : Prop :=
  ∀ n, P5317705172700848522.a n = A111505 n

end A111505

/-! ## A111505.P5509994392213696774

`lcm(A007318(n), A187034(n))`
-/

namespace A111505.P5509994392213696774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A187034 n)

end

end A111505.P5509994392213696774

namespace A111505

/-- `lcm(A007318(n), A187034(n))` -/
def P5509994392213696774.Spec : Prop :=
  ∀ n, (P5509994392213696774.a n : ℤ) = A111505 n

end A111505

/-! ## A111505.P16624214432705483267

`A077227(n+1)*A101688(n)`
-/

namespace A111505.P16624214432705483267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077227 (n + 1) * A101688 n

end

end A111505.P16624214432705483267

namespace A111505

/-- `A077227(n+1)*A101688(n)` -/
def P16624214432705483267.Spec : Prop :=
  ∀ n, P16624214432705483267.a n = A111505 n

end A111505

/-! ## A111505.P1960694222154467700

`A101391(n+1)*A101688(n)`
-/

namespace A111505.P1960694222154467700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101391 (n + 1) * A101688 n

end

end A111505.P1960694222154467700

namespace A111505

/-- `A101391(n+1)*A101688(n)` -/
def P1960694222154467700.Spec : Prop :=
  ∀ n, P1960694222154467700.a n = A111505 n

end A111505

/-! ## A111505.P18167319877042484126

`A101688(n)*A129262(n+1)`
-/

namespace A111505.P18167319877042484126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A129262 (n + 1)

end

end A111505.P18167319877042484126

namespace A111505

/-- `A101688(n)*A129262(n+1)` -/
def P18167319877042484126.Spec : Prop :=
  ∀ n, P18167319877042484126.a n = A111505 n

end A111505

/-! ## A111505.P16442710372085955256

`A101688(n)*A129570(n+1)`
-/

namespace A111505.P16442710372085955256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A129570 (n + 1)

end

end A111505.P16442710372085955256

namespace A111505

/-- `A101688(n)*A129570(n+1)` -/
def P16442710372085955256.Spec : Prop :=
  ∀ n, P16442710372085955256.a n = A111505 n

end A111505

/-! ## A111505.P13379523665544402362

`A101688(n)*A129571(n+1)`
-/

namespace A111505.P13379523665544402362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A129571 (n + 1)

end

end A111505.P13379523665544402362

namespace A111505

/-- `A101688(n)*A129571(n+1)` -/
def P13379523665544402362.Spec : Prop :=
  ∀ n, P13379523665544402362.a n = A111505 n

end A111505

/-! ## A111505.P17180765722585915145

`A101688(n)*A137151(n+1)`
-/

namespace A111505.P17180765722585915145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A137151 (n + 1)

end

end A111505.P17180765722585915145

namespace A111505

/-- `A101688(n)*A137151(n+1)` -/
def P17180765722585915145.Spec : Prop :=
  ∀ n, P17180765722585915145.a n = A111505 n

end A111505

/-! ## A111505.P3307555561401256687

`round(1/A242114(n+1))*A007318(n)`
-/

namespace A111505.P3307555561401256687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A242114 (n + 1) : ℚ)) * A007318 n

end

end A111505.P3307555561401256687

namespace A111505

/-- `round(1/A242114(n+1))*A007318(n)` -/
def P3307555561401256687.Spec : Prop :=
  ∀ n, P3307555561401256687.a n = A111505 n

end A111505

/-!
# A111515: Number of partitions of T where T=(7*n + 1) if n is even and T=((7*n + 1)/2) if n is odd.

The programs for A111515, there is no canonical definition to state claims against.
-/

/-! ## A111515.P5198222757603738910

`A000041(gcd(∑[n]+3*n², (7*n+1)²))`
-/

namespace A111515.P5198222757603738910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + 3 * n ^ 2) ((7 * n + 1) ^ 2))

end

end A111515.P5198222757603738910

/-! ## A111515.P8151726129305032116

`A000041(abs(A030640(7*n)))`
-/

namespace A111515.P8151726129305032116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |A030640 (7 * n)|.toNat

end

end A111515.P8151726129305032116

/-! ## A111515.P2176376423651630794

`A000041(A026741(7*n+1))`
-/

namespace A111515.P2176376423651630794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A026741 (7 * n + 1)).toNat

end

end A111515.P2176376423651630794

/-! ## A111515.P10166720482718333179

`A000041(A047356(2*n+1)/A000034(n))`
-/

namespace A111515.P10166720482718333179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A047356 (2 * n + 1) : ℚ) / (A000034 n : ℚ))).toNat

end

end A111515.P10166720482718333179

/-! ## A111515.P13061756573931107797

`A035363(lcm(2, A016993(n)))`
-/

namespace A111515.P13061756573931107797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (Int.lcm 2 (A016993 n))

end

end A111515.P13061756573931107797

/-!
# A111516: Triangle G(n,k) read by rows: number of order-preserving partial transformations (of an n-element totally ordered set) of waist k (waist(alpha) = max(Im(alpha))).

The programs for A111516, there is no canonical definition to state claims against.
-/

/-! ## A111516.P17689938765112219976

`A055807(A245300(n))`
-/

namespace A111516.P17689938765112219976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A245300 n).toNat

end

end A111516.P17689938765112219976

/-! ## A111516.P11187442854032214307

`A050143(A245300(n)+A004736(n+1))`
-/

namespace A111516.P11187442854032214307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050143 (A245300 n + A004736 (n + 1)).toNat

end

end A111516.P11187442854032214307

/-!
# A111517: Numbers k such that (7*k + 1)/2 is prime.

The programs for A111517, the canonical program `A111517.P10858931416104658569` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111517 has offset 1).

The definition of A111517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111517.P7399666259068454016

`2*A024902(n+1)+1`
-/

namespace A111517.P7399666259068454016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024902 (n + 1) + 1

end

end A111517.P7399666259068454016

namespace A111517

/-- `2*A024902(n+1)+1` -/
def P7399666259068454016.Spec : Prop :=
  ∀ n, P7399666259068454016.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P12147140312891293492

`2*A101123(n+1)+3`
-/

namespace A111517.P12147140312891293492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101123 (n + 1) + 3

end

end A111517.P12147140312891293492

namespace A111517

/-- `2*A101123(n+1)+3` -/
def P12147140312891293492.Spec : Prop :=
  ∀ n, P12147140312891293492.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P10858931416104658569

`floor(2*A045471(n+1)/7)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111517

/-- `floor(2*A045471(n+1)/7)` -/
def P10858931416104658569.Spec : Prop :=
  ∀ n, P10858931416104658569.a n = A111517 (n + 1)

theorem P10858931416104658569.correct : P10858931416104658569.Spec := by
  intro n
  simp only [A111517, Nat.add_sub_cancel]

end A111517

/-! ## A111517.P13397895202134749214

`A014601(A024902(n+1))`
-/

namespace A111517.P13397895202134749214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A024902 (n + 1)).toNat

end

end A111517.P13397895202134749214

namespace A111517

/-- `A014601(A024902(n+1))` -/
def P13397895202134749214.Spec : Prop :=
  ∀ n, P13397895202134749214.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P2039387968106937433

`A166519(A101123(n+1))`
-/

namespace A111517.P2039387968106937433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (A101123 (n + 1)).toNat

end

end A111517.P2039387968106937433

namespace A111517

/-- `A166519(A101123(n+1))` -/
def P2039387968106937433.Spec : Prop :=
  ∀ n, P2039387968106937433.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P11558838115458957893

`A004442(2*A024902(n+1))`
-/

namespace A111517.P11558838115458957893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A024902 (n + 1)).toNat

end

end A111517.P11558838115458957893

namespace A111517

/-- `A004442(2*A024902(n+1))` -/
def P11558838115458957893.Spec : Prop :=
  ∀ n, P11558838115458957893.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P4319511212907884315

`A057356(or(1, p?[a(n-1)+7]))` with `a(0)=11`
-/

namespace A111517.P4319511212907884315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A111517.P4319511212907884315

namespace A111517

/-- `A057356(or(1, p?[a(n-1)+7]))` -/
def P4319511212907884315.Spec : Prop :=
  ∀ n, P4319511212907884315.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P3798619819652728397

`A057356(or(1, p?[6*n+11+n]))`
-/

namespace A111517.P3798619819652728397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 11 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A111517.P3798619819652728397

namespace A111517

/-- `A057356(or(1, p?[6*n+11+n]))` -/
def P3798619819652728397.Spec : Prop :=
  ∀ n, P3798619819652728397.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P5535085784672430284

`A057356(p?[A017029(n)])`
-/

namespace A111517.P5535085784672430284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111517.P5535085784672430284

namespace A111517

/-- `A057356(p?[A017029(n)])` -/
def P5535085784672430284.Spec : Prop :=
  ∀ n, P5535085784672430284.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P10522690319487296382

`A057356(A045471(n+1))`
-/

namespace A111517.P10522690319487296382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A045471 (n + 1)).toNat

end

end A111517.P10522690319487296382

namespace A111517

/-- `A057356(A045471(n+1))` -/
def P10522690319487296382.Spec : Prop :=
  ∀ n, P10522690319487296382.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P12179216368046469713

`A057356(A045462(n+2))`
-/

namespace A111517.P12179216368046469713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A045462 (n + 2)).toNat

end

end A111517.P12179216368046469713

namespace A111517

/-- `A057356(A045462(n+2))` -/
def P12179216368046469713.Spec : Prop :=
  ∀ n, P12179216368046469713.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P2785036319638400847

`A132270(2*A045471(n+1))`
-/

namespace A111517.P2785036319638400847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (2 * A045471 (n + 1)).toNat

end

end A111517.P2785036319638400847

namespace A111517

/-- `A132270(2*A045471(n+1))` -/
def P2785036319638400847.Spec : Prop :=
  ∀ n, P2785036319638400847.a n = A111517 (n + 1)

end A111517

/-! ## A111517.P11575780972918973844

`A132270(2*A045462(n+2))`
-/

namespace A111517.P11575780972918973844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (2 * A045462 (n + 2)).toNat

end

end A111517.P11575780972918973844

namespace A111517

/-- `A132270(2*A045462(n+2))` -/
def P11575780972918973844.Spec : Prop :=
  ∀ n, P11575780972918973844.a n = A111517 (n + 1)

end A111517

/-!
# A111518: Sequence is {a(0,n)}, where a(m,0)=1, a(m,n) = a(m-1,n)+a(m,n-1) and a(0,n+1) is such that a(n+1,n+1) = a(0,n).

The programs for A111518, there is no canonical definition to state claims against.
-/

/-! ## A111518.P17916663884083565397

`Δ[A111519(abs(1-n))]^A178334(n)`
-/

namespace A111518.P17916663884083565397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111519 |1 - (n : ℤ)|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A178334 n : ℤ)

end

end A111518.P17916663884083565397

/-!
# A111519: Sequence is {a(1,n)}, where a(m,n) is defined at sequence A111518.

The programs for A111519, there is no canonical definition to state claims against.
-/

/-! ## A111519.P16850490328204506455

`∑[A111518(n)]`
-/

namespace A111519.P16850490328204506455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111519.P16850490328204506455

/-! ## A111519.P2258108082805181479

`A111518(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A111519.P2258108082805181479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111518 n + a (A023443 n).toNat

end

end A111519.P2258108082805181479

/-! ## A111519.P15060057343119676314

`Δ[A111520(n)]-A111518(n+1)`
-/

namespace A111519.P15060057343119676314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A111518 (n + 1)

end

end A111519.P15060057343119676314

/-! ## A111519.P10822749584441224986

`Δ[A111520(n)-A111518(n)]-A111518(n)`
-/

namespace A111519.P10822749584441224986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111520 n - A111518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A111518 n

end

end A111519.P10822749584441224986

/-! ## A111519.P9215425155282226334

`A111520(n+1)-(A111520(n)+A111518(n+1))`
-/

namespace A111519.P9215425155282226334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111520 (n + 1) - (A111520 n + A111518 (n + 1))

end

end A111519.P9215425155282226334

/-!
# A111520: Sequence is {a(2,n)}, where a(m,n) is defined at sequence A111518.

The programs for A111520, there is no canonical definition to state claims against.
-/

/-! ## A111520.P11528460174269708175

`∑[A111519(n)]`
-/

namespace A111520.P11528460174269708175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111520.P11528460174269708175

/-! ## A111520.P5542761707893771213

`∑[∑[A111518(n)]]`
-/

namespace A111520.P5542761707893771213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111518 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111520.P5542761707893771213

/-! ## A111520.P15926247988809216452

`A111519(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A111520.P15926247988809216452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111519 n + a (A023443 n).toNat

end

end A111520.P15926247988809216452

/-! ## A111520.P5839374448674976334

`A111519(n)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A111520.P5839374448674976334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111519 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A111520.P5839374448674976334

/-! ## A111520.P1588150447766092226

`Δ[A111521(n)]-A111519(n+1)`
-/

namespace A111520.P1588150447766092226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A111519 (n + 1)

end

end A111520.P1588150447766092226

/-!
# A111521: Sequence is {a(3,n)}, where a(m,n) is defined at sequence A111518.

The programs for A111521, there is no canonical definition to state claims against.
-/

/-! ## A111521.P12336040349585829245

`∑[A111520(n)]`
-/

namespace A111521.P12336040349585829245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111521.P12336040349585829245

/-! ## A111521.P4739309422440284138

`∑[∑[A111519(n)]]`
-/

namespace A111521.P4739309422440284138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111521.P4739309422440284138

/-! ## A111521.P2641468495554597267

`∑[∑[∑[A111518(n)]]]`
-/

namespace A111521.P2641468495554597267
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111518 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111521.P2641468495554597267

/-! ## A111521.P11309394289644315527

`A111520(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A111521.P11309394289644315527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111520 n + a (A023443 n).toNat

end

end A111521.P11309394289644315527

/-! ## A111521.P6514675403543065885

`Δ[A111522(n)]-A111520(n+1)`
-/

namespace A111521.P6514675403543065885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A111520 (n + 1)

end

end A111521.P6514675403543065885

/-!
# A111522: Sequence is {a(4,n)}, where a(m,n) is defined at sequence A111518.

The programs for A111522, there is no canonical definition to state claims against.
-/

/-! ## A111522.P13087481266583514731

`∑[A111521(n)]`
-/

namespace A111522.P13087481266583514731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111522.P13087481266583514731

/-! ## A111522.P4230762126460482559

`∑[∑[A111520(n)]]`
-/

namespace A111522.P4230762126460482559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111520 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111522.P4230762126460482559

/-! ## A111522.P559477979062943478

`∑[∑[∑[A111519(n)]]]`
-/

namespace A111522.P559477979062943478
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111522.P559477979062943478

/-! ## A111522.P15916054060475174711

`A111521(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A111522.P15916054060475174711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111521 n + a (A023443 n).toNat

end

end A111522.P15916054060475174711

/-! ## A111522.P15129543202336078736

`Δ[A111523(n)]-A111521(n+1)`
-/

namespace A111522.P15129543202336078736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A111521 (n + 1)

end

end A111522.P15129543202336078736

/-!
# A111523: Sequence is {a(5,n)}, where a(m,n) is defined at sequence A111518.

The programs for A111523, there is no canonical definition to state claims against.
-/

/-! ## A111523.P18364880658809660171

`∑[∑[∑[A111519(n)+a(n-1)]]]` with `a(0)=1`
-/

namespace A111523.P18364880658809660171
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A111519 n + f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111523.P18364880658809660171

/-! ## A111523.P11924798350202723027

`∑[A111522(n)]`
-/

namespace A111523.P11924798350202723027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111523.P11924798350202723027

/-! ## A111523.P10590425021684418910

`∑[∑[A111521(n)]]`
-/

namespace A111523.P10590425021684418910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111521 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111523.P10590425021684418910

/-! ## A111523.P7024007932631563138

`∑[∑[∑[A111520(n)]]]`
-/

namespace A111523.P7024007932631563138
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111523.P7024007932631563138

/-! ## A111523.P2688249090179630879

`A111522(A090109(n))+a(n-1)` with `a(0)=1`
-/

namespace A111523.P2688249090179630879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111522 (A090109 n).toNat + a (n - 1)

end

end A111523.P2688249090179630879

/-!
# A111526: Number triangle T(n,k)=C((n+k)/2,k)(n+1)(1+(-1)^(n-k))/(2(k+1)); T(n,k)=(-1)^((n-k)/2)*A053120(n+1,k+1)/2^k; Riordan array ((1+x^2)/(1-x^2)^2,x/(1-x^2)).

The programs for A111526, the canonical program `A111526.P13173134436555251813` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111526 has offset 0).

The definition of A111526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111526.P17857063104136417001

`abs(A117179(n))`
-/

namespace A111526.P17857063104136417001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117179 n|

end

end A111526.P17857063104136417001

namespace A111526

/-- `abs(A117179(n))` -/
def P17857063104136417001.Spec : Prop :=
  ∀ n, P17857063104136417001.a n = A111526 n

end A111526

/-! ## A111526.P15461383319549341831

`A117179(n)*A117568(n)`
-/

namespace A111526.P15461383319549341831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117179 n * A117568 n

end

end A111526.P15461383319549341831

namespace A111526

/-- `A117179(n)*A117568(n)` -/
def P15461383319549341831.Spec : Prop :=
  ∀ n, P15461383319549341831.a n = A111526 n

end A111526

/-! ## A111526.P15407228223630491715

`A117179(n)*A369736(n)`
-/

namespace A111526.P15407228223630491715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117179 n * A369736 n

end

end A111526.P15407228223630491715

namespace A111526

/-- `A117179(n)*A369736(n)` -/
def P15407228223630491715.Spec : Prop :=
  ∀ n, P15407228223630491715.a n = A111526 n

end A111526

/-! ## A111526.P8191668172444957517

`gcd(A000038(n), A117179(n))`
-/

namespace A111526.P8191668172444957517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A117179 n)

end

end A111526.P8191668172444957517

namespace A111526

/-- `gcd(A000038(n), A117179(n))` -/
def P8191668172444957517.Spec : Prop :=
  ∀ n, (P8191668172444957517.a n : ℤ) = A111526 n

end A111526

/-! ## A111526.P3349296031462899119

`lcm(A020985(n), A117179(n))`
-/

namespace A111526.P3349296031462899119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A117179 n)

end

end A111526.P3349296031462899119

namespace A111526

/-- `lcm(A020985(n), A117179(n))` -/
def P3349296031462899119.Spec : Prop :=
  ∀ n, (P3349296031462899119.a n : ℤ) = A111526 n

end A111526

/-! ## A111526.P13173134436555251813

`lcm(A105438(n), A369736(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A111526

/-- `lcm(A105438(n), A369736(n))` -/
def P13173134436555251813.Spec : Prop :=
  ∀ n, (P13173134436555251813.a n : ℤ) = A111526 n

theorem P13173134436555251813.correct : P13173134436555251813.Spec := by
  intro n
  simp only [A111526]

end A111526

/-! ## A111526.P8376103638551000492

`A117179(n)²/A105438(n)`
-/

namespace A111526.P8376103638551000492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117179 n ^ 2 : ℚ) / (A105438 n : ℚ)

end

end A111526.P8376103638551000492

namespace A111526

/-- `A117179(n)²/A105438(n)` -/
def P8376103638551000492.Spec : Prop :=
  ∀ n, P8376103638551000492.a n = (A111526 n : ℚ)

end A111526

/-! ## A111526.P584598672673253069

`A105438(n)*A128174(n+1)`
-/

namespace A111526.P584598672673253069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105438 n * A128174 (n + 1)

end

end A111526.P584598672673253069

namespace A111526

/-- `A105438(n)*A128174(n+1)` -/
def P584598672673253069.Spec : Prop :=
  ∀ n, P584598672673253069.a n = A111526 n

end A111526

/-! ## A111526.P16728089680386131053

`A117179(n)*A130194(n+1)`
-/

namespace A111526.P16728089680386131053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117179 n * A130194 (n + 1)

end

end A111526.P16728089680386131053

namespace A111526

/-- `A117179(n)*A130194(n+1)` -/
def P16728089680386131053.Spec : Prop :=
  ∀ n, P16728089680386131053.a n = A111526 n

end A111526

/-! ## A111526.P7512130309017259227

`abs(A127672(∑[A035214(n)]))`
-/

namespace A111526.P7512130309017259227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127672 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A111526.P7512130309017259227

namespace A111526

/-- `abs(A127672(∑[A035214(n)]))` -/
def P7512130309017259227.Spec : Prop :=
  ∀ n, P7512130309017259227.a n = A111526 n

end A111526

/-! ## A111526.P14356302830816221192

`abs(A127672(A003056(n)+2+n))`
-/

namespace A111526.P14356302830816221192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127672 (A003056 n + 2 + (n : ℤ)).toNat|

end

end A111526.P14356302830816221192

namespace A111526

/-- `abs(A127672(A003056(n)+2+n))` -/
def P14356302830816221192.Spec : Prop :=
  ∀ n, P14356302830816221192.a n = A111526 n

end A111526

/-! ## A111526.P8593479378813636062

`A114525(comp[∑[n]])`
-/

namespace A111526.P8593479378813636062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A111526.P8593479378813636062

namespace A111526

/-- `A114525(comp[∑[n]])` -/
def P8593479378813636062.Spec : Prop :=
  ∀ n, P8593479378813636062.a n = A111526 n

end A111526

/-! ## A111526.P4277866478799287798

`abs(A108045(∑[A035214(n)]))`
-/

namespace A111526.P4277866478799287798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A111526.P4277866478799287798

namespace A111526

/-- `abs(A108045(∑[A035214(n)]))` -/
def P4277866478799287798.Spec : Prop :=
  ∀ n, P4277866478799287798.a n = A111526 n

end A111526

/-! ## A111526.P11712200329394303257

`abs(A108045(A014132(n+1)))`
-/

namespace A111526.P11712200329394303257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108045 (A014132 (n + 1)).toNat|

end

end A111526.P11712200329394303257

namespace A111526

/-- `abs(A108045(A014132(n+1)))` -/
def P11712200329394303257.Spec : Prop :=
  ∀ n, P11712200329394303257.a n = A111526 n

end A111526

/-! ## A111526.P4988901908034247827

`∑{d}[A114525(A003056(n)+2+n), A000010(#)]`
-/

namespace A111526.P4988901908034247827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 (A003056 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A111526.P4988901908034247827

namespace A111526

/-- `∑{d}[A114525(A003056(n)+2+n), A000010(#)]` -/
def P4988901908034247827.Spec : Prop :=
  ∀ n, P4988901908034247827.a n = A111526 n

end A111526

/-!
# A111527: Inverse of A111526. Row sums have general term C(n,floor(n/2))*(cos(Pi*n/2) + sin(Pi*n/2)).

The programs for A111527, the canonical program `A111527.P12584013183539316242` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111527 has offset 0).

The definition of A111527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111527.P12584013183539316242

`A117178(n)*A117568(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A111527

/-- `A117178(n)*A117568(n)` -/
def P12584013183539316242.Spec : Prop :=
  ∀ n, P12584013183539316242.a n = A111527 n

theorem P12584013183539316242.correct : P12584013183539316242.Spec := by
  intro n
  simp only [A111527]

end A111527

/-! ## A111527.P2525780458536121510

`A117178(n)*A369736(n)`
-/

namespace A111527.P2525780458536121510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117178 n * A369736 n

end

end A111527.P2525780458536121510

namespace A111527

/-- `A117178(n)*A369736(n)` -/
def P2525780458536121510.Spec : Prop :=
  ∀ n, P2525780458536121510.a n = A111527 n

end A111527

/-! ## A111527.P16141689055721439484

`A117184(n)*A369736(n)`
-/

namespace A111527.P16141689055721439484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117184 n * A369736 n

end

end A111527.P16141689055721439484

namespace A111527

/-- `A117184(n)*A369736(n)` -/
def P16141689055721439484.Spec : Prop :=
  ∀ n, P16141689055721439484.a n = A111527 n

end A111527

/-! ## A111527.P6005773411410755715

`A117178(n)*A130194(n+1)`
-/

namespace A111527.P6005773411410755715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117178 n * A130194 (n + 1)

end

end A111527.P6005773411410755715

namespace A111527

/-- `A117178(n)*A130194(n+1)` -/
def P6005773411410755715.Spec : Prop :=
  ∀ n, P6005773411410755715.a n = A111527 n

end A111527

/-! ## A111527.P9434081466949649602

`A335322(n+1)*A369736(n)`
-/

namespace A111527.P9434081466949649602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335322 (n + 1) * A369736 n

end

end A111527.P9434081466949649602

namespace A111527

/-- `A335322(n+1)*A369736(n)` -/
def P9434081466949649602.Spec : Prop :=
  ∀ n, P9434081466949649602.a n = A111527 n

end A111527

/-! ## A111527.P6552095644624004079

`A010892(A104568(n))*A117178(n)`
-/

namespace A111527.P6552095644624004079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A104568 n).toNat * A117178 n

end

end A111527.P6552095644624004079

namespace A111527

/-- `A010892(A104568(n))*A117178(n)` -/
def P6552095644624004079.Spec : Prop :=
  ∀ n, P6552095644624004079.a n = A111527 n

end A111527

/-! ## A111527.P2996163586689769401

`A117178(n)*A188510(A099375(n))`
-/

namespace A111527.P2996163586689769401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117178 n * A188510 (A099375 n).toNat

end

end A111527.P2996163586689769401

namespace A111527

/-- `A117178(n)*A188510(A099375(n))` -/
def P2996163586689769401.Spec : Prop :=
  ∀ n, P2996163586689769401.a n = A111527 n

end A111527

/-! ## A111527.P8326159941718464823

`A108044(A014132(n+1))*A117568(n)`
-/

namespace A111527.P8326159941718464823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 (A014132 (n + 1)).toNat * A117568 n

end

end A111527.P8326159941718464823

namespace A111527

/-- `A108044(A014132(n+1))*A117568(n)` -/
def P8326159941718464823.Spec : Prop :=
  ∀ n, P8326159941718464823.a n = A111527 n

end A111527

/-! ## A111527.P7611566341139258638

`A100257(A099375(n)+n)*A117568(n)`
-/

namespace A111527.P7611566341139258638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100257 (A099375 n + (n : ℤ)).toNat * A117568 n

end

end A111527.P7611566341139258638

namespace A111527

/-- `A100257(A099375(n)+n)*A117568(n)` -/
def P7611566341139258638.Spec : Prop :=
  ∀ n, P7611566341139258638.a n = A111527 n

end A111527

/-! ## A111527.P6143059464737810377

`A158020(A292565(n+1))`
-/

namespace A111527.P6143059464737810377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158020 (A292565 (n + 1)).toNat

end

end A111527.P6143059464737810377

namespace A111527

/-- `A158020(A292565(n+1))` -/
def P6143059464737810377.Spec : Prop :=
  ∀ n, P6143059464737810377.a n = A111527 n

end A111527

/-! ## A111527.P3880455582904367278

`A158020(eq[0, A259875(2*n+1)])`
-/

namespace A111527.P3880455582904367278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111527.P3880455582904367278

namespace A111527

/-- `A158020(eq[0, A259875(2*n+1)])` -/
def P3880455582904367278.Spec : Prop :=
  ∀ n, P3880455582904367278.a n = A111527 n

end A111527

/-!
# A111528: Square table, read by antidiagonals, where the g.f. for row n+1 is generated by: x*R_{n+1}(x) = (1+n*x - 1/R_n(x))/(n+1) with R_0(x) = Sum_{n>=0} n!*x^n.

The programs for A111528, there is no canonical definition to state claims against.
-/

/-! ## A111528.P10339303461066584098

`A091863(A145085(n))`
-/

namespace A111528.P10339303461066584098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (A145085 n).toNat

end

end A111528.P10339303461066584098

/-! ## A111528.P16111635668272271629

`A239086(A363007(n))`
-/

namespace A111528.P16111635668272271629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A363007 n).toNat

end

end A111528.P16111635668272271629

/-! ## A111528.P5008215712950930360

`A349864(A156582(n))%25`
-/

namespace A111528.P5008215712950930360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349864 (A156582 n).toNat) 25

end

end A111528.P5008215712950930360

/-! ## A111528.P13395971102925696554

`A195098(A326323(comp[∑[n-1]]))`
-/

namespace A111528.P13395971102925696554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A326323 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A111528.P13395971102925696554

/-! ## A111528.P6394417633046342158

`A363007(n)-A070139(A156953(n))`
-/

namespace A111528.P6394417633046342158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363007 n - A070139 (A156953 n).toNat

end

end A111528.P6394417633046342158

/-!
# A111529: Row 2 of table A111528.

The programs for A111529, there is no canonical definition to state claims against.
-/

/-! ## A111529.P9420416035953481076

`A111528(∑[n+3])`
-/

namespace A111529.P9420416035953481076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111529.P9420416035953481076

/-! ## A111529.P16499706391627198544

`ceil(A111537(n)/2)`
-/

namespace A111529.P16499706391627198544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111537 n : ℚ) / 2⌉

end

end A111529.P16499706391627198544

/-! ## A111529.P9115953219798814328

`A111537(n^floor(atan(n)))/2`
-/

namespace A111529.P9115953219798814328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111537 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat : ℚ) / 2

end

end A111529.P9115953219798814328

/-! ## A111529.P5973449924739414510

`A111537(round(sqrt(n²+1)))/2`
-/

namespace A111529.P5973449924739414510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111537 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A111529.P5973449924739414510

/-! ## A111529.P12411025278996801854

`(A111537(n)+A000007(n))/2`
-/

namespace A111529.P12411025278996801854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111537 n + A000007 n : ℚ) / 2

end

end A111529.P12411025278996801854

/-!
# A111530: Row 3 of table A111528.

The programs for A111530, there is no canonical definition to state claims against.
-/

/-! ## A111530.P13590366493872263406

`ceil(A111546(n)/3)`
-/

namespace A111530.P13590366493872263406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111546 n : ℚ) / 3⌉

end

end A111530.P13590366493872263406

/-! ## A111530.P10985521463038584883

`A111528(∑[n+4]+2)`
-/

namespace A111530.P10985521463038584883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A111530.P10985521463038584883

/-! ## A111530.P581220972679855256

`A111546(A028310(n))/3`
-/

namespace A111530.P581220972679855256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111546 (A028310 n).toNat : ℚ) / 3

end

end A111530.P581220972679855256

/-! ## A111530.P10570771101448144590

`A111546(n)/A005408(A178334(n))`
-/

namespace A111530.P10570771101448144590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111546 n : ℚ) / (A005408 (A178334 n).toNat : ℚ)

end

end A111530.P10570771101448144590

/-! ## A111530.P5232285702665373050

`A111546(n)/A111546(A178334(n)²)`
-/

namespace A111530.P5232285702665373050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111546 n : ℚ) / (A111546 (A178334 n ^ 2).toNat : ℚ)

end

end A111530.P5232285702665373050

/-! ## A111530.P15133695450859477992

`A111546(n)/A111546(sqrt(A178334(n)))`
-/

namespace A111530.P15133695450859477992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111546 n : ℚ) / (A111546 (SequenceMachineLib.roundAway (Real.sqrt (A178334 n : ℝ))).toNat : ℚ)

end

end A111530.P15133695450859477992

/-!
# A111531: Row 4 of table A111528.

The programs for A111531, there is no canonical definition to state claims against.
-/

/-! ## A111531.P17855780788177141718

`ceil(A111556(n)/4)`
-/

namespace A111531.P17855780788177141718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111556 n : ℚ) / 4⌉

end

end A111531.P17855780788177141718

/-! ## A111531.P15626503602539028144

`A111556(floor(acot(n)+n))/4`
-/

namespace A111531.P15626503602539028144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111556 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat : ℚ) / 4

end

end A111531.P15626503602539028144

/-! ## A111531.P6098536366861628736

`A111556(xor(n, floor(acot(n))))/4`
-/

namespace A111531.P6098536366861628736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111556 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat : ℚ) / 4

end

end A111531.P6098536366861628736

/-! ## A111531.P10551415645696588113

`A111556(abs(floor(acot(n)-n)))/4`
-/

namespace A111531.P10551415645696588113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111556 |⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋|.toNat : ℚ) / 4

end

end A111531.P10551415645696588113

/-! ## A111531.P14527702189381506409

`A111556(A028310(n))/4`
-/

namespace A111531.P14527702189381506409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111556 (A028310 n).toNat : ℚ) / 4

end

end A111531.P14527702189381506409

/-! ## A111531.P9644217921539755991

`A111528(eq[3, A212551(n)])`
-/

namespace A111531.P9644217921539755991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111531.P9644217921539755991

/-! ## A111531.P7378855674394148066

`A111528(eq[4, A025581(n)])`
-/

namespace A111531.P7378855674394148066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111531.P7378855674394148066

/-! ## A111531.P11360002995628888143

`A111528(eq[9, A099375(n)])`
-/

namespace A111531.P11360002995628888143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111531.P11360002995628888143

/-! ## A111531.P11720179515547294005

`A111556(A123108(2*n))/4`
-/

namespace A111531.P11720179515547294005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111556 (A123108 (2 * n)).toNat : ℚ) / 4

end

end A111531.P11720179515547294005

/-!
# A111532: Row 5 of table A111528.

The programs for A111532, there is no canonical definition to state claims against.
-/

/-! ## A111532.P5379072597036629111

`A111528(eq[4, A212551(n)])`
-/

namespace A111532.P5379072597036629111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111532.P5379072597036629111

/-! ## A111532.P1242649161568419164

`A111528(eq[5, A025581(n)])`
-/

namespace A111532.P1242649161568419164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111532.P1242649161568419164

/-! ## A111532.P15665236617076672363

`A111528(eq[6, A193739(n)])`
-/

namespace A111532.P15665236617076672363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111532.P15665236617076672363

/-! ## A111532.P1613026330078254307

`A111528(Δ[A023551(n+1)])`
-/

namespace A111532.P1613026330078254307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (f1 (n + 1) - f1 n).toNat

end

end A111532.P1613026330078254307

/-! ## A111532.P17482058716343181577

`A111528(Δ[A026054(n+3)])`
-/

namespace A111532.P17482058716343181577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (f1 (n + 1) - f1 n).toNat

end

end A111532.P17482058716343181577

/-! ## A111532.P15537779321707773637

`A111528(eq[6, A004736(n+1)])`
-/

namespace A111532.P15537779321707773637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111532.P15537779321707773637

/-!
# A111533: Row 6 of table A111528.

The programs for A111533, there is no canonical definition to state claims against.
-/

/-! ## A111533.P2788024917422364875

`A111528(eq[6, A025581(n)])`
-/

namespace A111533.P2788024917422364875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111533.P2788024917422364875

/-! ## A111533.P17388162578738356729

`A111528(eq[7, A193739(n)])`
-/

namespace A111533.P17388162578738356729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111533.P17388162578738356729

/-! ## A111533.P14720300225762526515

`A111528(eq[7, A004736(n+1)])`
-/

namespace A111533.P14720300225762526515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111533.P14720300225762526515

/-! ## A111533.P6536845848994127549

`A111528(eq[11, A027293(n+1)])`
-/

namespace A111533.P6536845848994127549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111533.P6536845848994127549

/-! ## A111533.P17753854257601205956

`A111528(Δ[Δ[A055832(n+5)]])`
-/

namespace A111533.P17753854257601205956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (f1 (n + 1) - f1 n).toNat

end

end A111533.P17753854257601205956

/-! ## A111533.P1066794307131976270

`A111528(Δ[A023551(n+2)]-1)`
-/

namespace A111533.P1066794307131976270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (f1 (n + 1) - f1 n - 1).toNat

end

end A111533.P1066794307131976270

/-! ## A111533.P11202545457067472176

`A111528(Δ[A026054(n+4)]-1)`
-/

namespace A111533.P11202545457067472176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (f1 (n + 1) - f1 n - 1).toNat

end

end A111533.P11202545457067472176

/-!
# A111534: Main diagonal of table A111528.

The programs for A111534, there is no canonical definition to state claims against.
-/

/-! ## A111534.P10576619050706446244

`A111528(∑[4*n])`
-/

namespace A111534.P10576619050706446244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111534.P10576619050706446244

/-! ## A111534.P17920655126841073213

`A111528(A046092(n))+A025469(n)`
-/

namespace A111534.P17920655126841073213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 (A046092 n).toNat + A025469 n

end

end A111534.P17920655126841073213

/-! ## A111534.P7870767967572470278

`gcd(A000038(n), A111528(A046092(n)))`
-/

namespace A111534.P7870767967572470278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A111528 (A046092 n).toNat)

end

end A111534.P7870767967572470278

/-! ## A111534.P17692176027555763923

`lcm(A057077(n), A111528(A046092(n)))`
-/

namespace A111534.P17692176027555763923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A111528 (A046092 n).toNat)

end

end A111534.P17692176027555763923

/-! ## A111534.P9663652942432204584

`and(A111528(A046092(n)), A260196(n))`
-/

namespace A111534.P9663652942432204584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111528 (A046092 n).toNat) (A260196 n)

end

end A111534.P9663652942432204584

/-!
# A111535: a(n) = A111534(n)/n = A111528(n,n)/n for n>=1.

The programs for A111535, there is no canonical definition to state claims against.
-/

/-! ## A111535.P7518187850177267133

`A111534(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111535.P7518187850177267133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111534 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A111535.P7518187850177267133

/-!
# A111537: Column 1 of triangle A111536.

The programs for A111537, there is no canonical definition to state claims against.
-/

/-! ## A111537.P12573686708516943445

`A029653(∑[n])*A111529(n)`
-/

namespace A111537.P12573686708516943445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (∑ j ∈ Finset.range (n + 1), f1 j) * A111529 n

end

end A111537.P12573686708516943445

/-! ## A111537.P1720376009932258793

`A040001(2*n)*A111529(n)`
-/

namespace A111537.P1720376009932258793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A111529 n

end

end A111537.P1720376009932258793

/-! ## A111537.P4043104978647724583

`A020639(A001316(n))*A111529(n)`
-/

namespace A111537.P4043104978647724583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A111529 n

end

end A111537.P4043104978647724583

/-! ## A111537.P239543887019740254

`A020639(A008574(n))*A111529(n)`
-/

namespace A111537.P239543887019740254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A111529 n

end

end A111537.P239543887019740254

/-! ## A111537.P15641385737695533678

`A111529(n)+A111529(n)%A111546(n)`
-/

namespace A111537.P15641385737695533678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111529 n + Int.tmod (A111529 n) (A111546 n)

end

end A111537.P15641385737695533678

/-!
# A111538: Column 2 of triangle A111536; also equals column 0 of triangle A111541, which is the matrix log of triangle A111536.

The programs for A111538, there is no canonical definition to state claims against.
-/

/-! ## A111538.P15068606331659282139

`A111542(n+1)-A111537(n)`
-/

namespace A111538.P15068606331659282139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111542 (n + 1) - A111537 n

end

end A111538.P15068606331659282139

/-! ## A111538.P9552114685568063311

`A111543(n+1)-A111542(n+1)`
-/

namespace A111538.P9552114685568063311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111543 (n + 1) - A111542 (n + 1)

end

end A111538.P9552114685568063311

/-! ## A111538.P15904127862458414056

`A111543(n+1)%A111542(A000027(n+1))`
-/

namespace A111538.P15904127862458414056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111543 (n + 1)) (A111542 (A000027 (n + 1)).toNat)

end

end A111538.P15904127862458414056

/-! ## A111538.P4277796655435419441

`record[Δ[A111541(n)]]`
-/

namespace A111538.P4277796655435419441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111538.P4277796655435419441

/-!
# A111539: Row sums of triangle A111536.

The programs for A111539, there is no canonical definition to state claims against.
-/

/-! ## A111539.P13387064496249248807

`A125688(A006125(n))+A002720(n)`
-/

namespace A111539.P13387064496249248807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A006125 n).toNat + A002720 n

end

end A111539.P13387064496249248807

/-! ## A111539.P11618601358635629065

`A341976(A001333(n))+A002720(n)`
-/

namespace A111539.P11618601358635629065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341976 ((A001333 n).toNat + 18) + A002720 n

end

end A111539.P11618601358635629065

/-!
# A111542: Column 1 of triangle A111541, which is the matrix logarithm of A111536.

The programs for A111542, there is no canonical definition to state claims against.
-/

/-! ## A111542.P4748919278654238804

`A111543(n)-A111541(∑[n])`
-/

namespace A111542.P4748919278654238804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111543 n - A111541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111542.P4748919278654238804

/-! ## A111542.P11762367434597050349

`A111543(n)-record[A111541(n)]`
-/

namespace A111542.P11762367434597050349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111543 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111542.P11762367434597050349

/-! ## A111542.P16761571003098631712

`record[A111541(comp[∑[n]])]`
-/

namespace A111542.P16761571003098631712
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111541 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111542.P16761571003098631712

/-! ## A111542.P18192455888799230

`A111541(∑[n+1]+1)`
-/

namespace A111542.P18192455888799230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111541 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111542.P18192455888799230

/-! ## A111542.P3347276675743909073

`record[A067586(n)*A111541(n)]`
-/

namespace A111542.P3347276675743909073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067586 n * A111541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111542.P3347276675743909073

/-!
# A111543: Column 2 of triangle A111541, which is the matrix logarithm of A111536.

The programs for A111543, there is no canonical definition to state claims against.
-/

/-! ## A111543.P18221639049397905193

`A111542(n)+A111541(∑[n])`
-/

namespace A111543.P18221639049397905193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111542 n + A111541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111543.P18221639049397905193

/-! ## A111543.P3958038287931590863

`A111542(n)+record[A111541(n)]`
-/

namespace A111543.P3958038287931590863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111542 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111543.P3958038287931590863

/-! ## A111543.P16751925758588754340

`A111541(∑[n+1]+1)+record[A111541(n)]`
-/

namespace A111543.P16751925758588754340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111541 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A111543.P16751925758588754340

/-! ## A111543.P15836688367462143602

`A111541(∑[n+1]+1)+A111541(A000217(n))`
-/

namespace A111543.P15836688367462143602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111541 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A111541 (A000217 n).toNat

end

end A111543.P15836688367462143602

/-!
# A111544: Triangular matrix T, read by rows, that satisfies: SHIFT_LEFT(column 0 of T^p) = p*(column p+3 of T), or [T^p](m,0) = p*T(p+m,p+3) for all m>=1 and p>=-3.

The programs for A111544, there is no canonical definition to state claims against.
-/

/-! ## A111544.P10218036228141474953

`and(A109281(n), A349026(A206838(n+1)))`
-/

namespace A111544.P10218036228141474953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109281 n) (A349026 (A206838 (n + 1)).toNat)

end

end A111544.P10218036228141474953

/-!
# A111545: Column 1 of triangle A111544.

The programs for A111545, there is no canonical definition to state claims against.
-/

/-! ## A111545.P8180211292224403404

`A111550(n+1)-A111547(n)`
-/

namespace A111545.P8180211292224403404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111550 (n + 1) - A111547 n

end

end A111545.P8180211292224403404

/-! ## A111545.P7700067802081460392

`record[A111544(comp[∑[n]])]`
-/

namespace A111545.P7700067802081460392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111544 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111545.P7700067802081460392

/-! ## A111545.P16259081323337649955

`A111544(∑[n+1]+1)`
-/

namespace A111545.P16259081323337649955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111545.P16259081323337649955

/-! ## A111545.P7521323825903270684

`record[A051168(n)*A111544(n)]`
-/

namespace A111545.P7521323825903270684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A111544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111545.P7521323825903270684

/-! ## A111545.P12321793669501599820

`record[A072233(n)*A111544(n)]`
-/

namespace A111545.P12321793669501599820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A111544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111545.P12321793669501599820

/-!
# A111546: Column 2 of triangle A111544.

The programs for A111546, there is no canonical definition to state claims against.
-/

/-! ## A111546.P4509896952168953804

`A005408(A178334(n))*A111530(n)`
-/

namespace A111546.P4509896952168953804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A178334 n).toNat * A111530 n

end

end A111546.P4509896952168953804

/-! ## A111546.P5021261038905155450

`gcd(3, A005412(n+1))*A111530(n)`
-/

namespace A111546.P5021261038905155450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A005412 (n + 1)) : ℤ) * A111530 n

end

end A111546.P5021261038905155450

/-! ## A111546.P18036088474742495246

`A066601(A066593(n+1))*A111530(n)`
-/

namespace A111546.P18036088474742495246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (A066593 (n + 1)).toNat * A111530 n

end

end A111546.P18036088474742495246

/-! ## A111546.P728695725281134651

`2*A111545(n)-a(n-1)` with `a(0)=1`
-/

namespace A111546.P728695725281134651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A111545 n - a (n - 1)

end

end A111546.P728695725281134651

/-!
# A111547: Column 3 of triangle A111544; also found in column 0 of triangle A111549, which equals the matrix logarithm of A111544.

The programs for A111547, there is no canonical definition to state claims against.
-/

/-! ## A111547.P12065632477377761061

`A111550(n+1)-A111545(n)`
-/

namespace A111547.P12065632477377761061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111550 (n + 1) - A111545 n

end

end A111547.P12065632477377761061

/-! ## A111547.P2623062907240729114

`record[Δ[A111549(n)]]`
-/

namespace A111547.P2623062907240729114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111547.P2623062907240729114

/-! ## A111547.P7055437718223297358

`A111549(∑[n+1])`
-/

namespace A111547.P7055437718223297358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111549 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111547.P7055437718223297358

/-! ## A111547.P13032733286160095873

`record[A111549(n+1)]`
-/

namespace A111547.P13032733286160095873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111547.P13032733286160095873

/-! ## A111547.P17892281456014358468

`record[A111549(n)^A178334(n)]`
-/

namespace A111547.P17892281456014358468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111549 n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111547.P17892281456014358468

/-!
# A111550: Column 1 of A111549, which is the matrix log of A111544.

The programs for A111550, there is no canonical definition to state claims against.
-/

/-! ## A111550.P15882205721506127032

`record[A111549(comp[∑[n]])]`
-/

namespace A111550.P15882205721506127032
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111549 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111550.P15882205721506127032

/-! ## A111550.P16361259030603125727

`A111549(∑[n+1]+1)`
-/

namespace A111550.P16361259030603125727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111549 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111550.P16361259030603125727

/-! ## A111550.P4723255657275563424

`record[A002262(n)*A111549(n)]`
-/

namespace A111550.P4723255657275563424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A111549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111550.P4723255657275563424

/-! ## A111550.P157822706190765797

`record[A053616(n)*A111549(n)]`
-/

namespace A111550.P157822706190765797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n * A111549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111550.P157822706190765797

/-! ## A111550.P5255718603946870715

`record[A072233(n)*A111549(n)]`
-/

namespace A111550.P5255718603946870715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A111549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111550.P5255718603946870715

/-!
# A111551: Column 2 of A111549, which is the matrix log of A111544.

The programs for A111551, there is no canonical definition to state claims against.
-/

/-! ## A111551.P14605025625892914423

`A111549(∑[n+2]+3)`
-/

namespace A111551.P14605025625892914423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111549 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A111551.P14605025625892914423

/-! ## A111551.P7849096329271208638

`record[A111549(lt[1, A002262(n)])]`
-/

namespace A111551.P7849096329271208638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111549 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111551.P7849096329271208638

/-! ## A111551.P3391011541180798821

`record[A111549(lt[1, A111528(n)])]`
-/

namespace A111551.P3391011541180798821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111549 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111551.P3391011541180798821

/-! ## A111551.P9206622554652210216

`record[A111549(n)*A227985(n)]`
-/

namespace A111551.P9206622554652210216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111549 n * A227985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111551.P9206622554652210216

/-!
# A111552: Row sums of triangle A111544.

The programs for A111552, there is no canonical definition to state claims against.
-/

/-! ## A111552.P3072022354975168268

`A277573(A356409(n))+A051724(n)`
-/

namespace A111552.P3072022354975168268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277573 (A356409 n).toNat + A051724 n

end

end A111552.P3072022354975168268

/-! ## A111552.P2110234855400712958

`A057889(xor(A138574(n), A182176(n)))`
-/

namespace A111552.P2110234855400712958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.xor (A138574 n) (A182176 n)).toNat

end

end A111552.P2110234855400712958

/-!
# A111554: Column 1 of triangle A111553.

The programs for A111554, there is no canonical definition to state claims against.
-/

/-! ## A111554.P13739729540736881857

`A111561(n+1)-A111557(n)`
-/

namespace A111554.P13739729540736881857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111561 (n + 1) - A111557 n

end

end A111554.P13739729540736881857

/-! ## A111554.P1973717275512422106

`A111561(n)-(A111557(n)-Δ[A111561(n)])`
-/

namespace A111554.P1973717275512422106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111561 n - (A111557 n - (f1 (n + 1) - f1 n))

end

end A111554.P1973717275512422106

/-! ## A111554.P7877122549713838223

`record[A111553(comp[∑[n]])]`
-/

namespace A111554.P7877122549713838223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111553 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111554.P7877122549713838223

/-! ## A111554.P6863149072794659175

`A111553(∑[n+1]+1)`
-/

namespace A111554.P6863149072794659175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111554.P6863149072794659175

/-! ## A111554.P5965712737369665384

`record[A097805(n)*A111553(n)]`
-/

namespace A111554.P5965712737369665384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A111553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111554.P5965712737369665384

/-!
# A111555: Column 2 of triangle A111553.

The programs for A111555, there is no canonical definition to state claims against.
-/

/-! ## A111555.P2481442444486142034

`A111562(n+1)-A111561(n+1)`
-/

namespace A111555.P2481442444486142034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111562 (n + 1) - A111561 (n + 1)

end

end A111555.P2481442444486142034

/-! ## A111555.P6527713435490761318

`A111562(A028310(n+1))%A111561(n+1)`
-/

namespace A111555.P6527713435490761318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111562 (A028310 (n + 1)).toNat) (A111561 (n + 1))

end

end A111555.P6527713435490761318

/-! ## A111555.P14379376196982899131

`A111562(n+1)-(A111557(n)+A111554(n))`
-/

namespace A111555.P14379376196982899131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111562 (n + 1) - (A111557 n + A111554 n)

end

end A111555.P14379376196982899131

/-! ## A111555.P8973560228269493354

`A111553(∑[n+2]+3)`
-/

namespace A111555.P8973560228269493354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111553 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A111555.P8973560228269493354

/-!
# A111556: Column 3 of triangle A111553.

The programs for A111556, there is no canonical definition to state claims against.
-/

/-! ## A111556.P15289074829197279287

`A111531(n)*A123932(n)`
-/

namespace A111556.P15289074829197279287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111531 n * A123932 n

end

end A111556.P15289074829197279287

/-! ## A111556.P11246981600531947201

`A280560(n)²*A111531(n)`
-/

namespace A111556.P11246981600531947201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n ^ 2 * A111531 n

end

end A111556.P11246981600531947201

/-! ## A111556.P18252324265367684251

`A036453(n+1)²*A111531(n)`
-/

namespace A111556.P18252324265367684251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ 2 * A111531 n

end

end A111556.P18252324265367684251

/-! ## A111556.P976473544342151271

`dr(A111529(n+1))*A111531(n)`
-/

namespace A111556.P976473544342151271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A111529 (n + 1)) : ℤ) * A111531 n

end

end A111556.P976473544342151271

/-! ## A111556.P2571571831950619352

`A111531(n)*A174571(A000040(n+1))`
-/

namespace A111556.P2571571831950619352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111531 n * A174571 (A000040 (n + 1)).toNat

end

end A111556.P2571571831950619352

/-!
# A111557: Column 4 of triangle A111553; also found in column 0 of triangle A111560, which equals the matrix logarithm of A111553.

The programs for A111557, there is no canonical definition to state claims against.
-/

/-! ## A111557.P17066005078124993196

`A111561(n+1)-A111554(n)`
-/

namespace A111557.P17066005078124993196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111561 (n + 1) - A111554 n

end

end A111557.P17066005078124993196

/-! ## A111557.P7641601065041289245

`A111561(n)-(A111554(n)-Δ[A111561(n)])`
-/

namespace A111557.P7641601065041289245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111561 n - (A111554 n - (f1 (n + 1) - f1 n))

end

end A111557.P7641601065041289245

/-! ## A111557.P11210585969885061556

`record[Δ[A111560(n)]]`
-/

namespace A111557.P11210585969885061556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111557.P11210585969885061556

/-! ## A111557.P13559939920512678829

`A111560(∑[n+1])`
-/

namespace A111557.P13559939920512678829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111560 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111557.P13559939920512678829

/-! ## A111557.P9787419640208314866

`record[A111560(n+1)]`
-/

namespace A111557.P9787419640208314866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111557.P9787419640208314866

/-!
# A111558: Row sums of triangle A111553.

The programs for A111558, there is no canonical definition to state claims against.
-/

/-! ## A111558.P12605874312907701029

`A002522(n)+A002479(A004213(n))`
-/

namespace A111558.P12605874312907701029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + A002479 (A004213 n).toNat

end

end A111558.P12605874312907701029

/-!
# A111561: Column 1 of A111560, which is the matrix log of A111553.

The programs for A111561, there is no canonical definition to state claims against.
-/

/-! ## A111561.P8151049489359940506

`record[A111560(comp[∑[n]])]`
-/

namespace A111561.P8151049489359940506
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111560 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111561.P8151049489359940506

/-! ## A111561.P14802202312315350253

`A111560(∑[n+1]+1)`
-/

namespace A111561.P14802202312315350253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111560 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111561.P14802202312315350253

/-! ## A111561.P7019070952263533996

`record[A002262(n)*A111560(n)]`
-/

namespace A111561.P7019070952263533996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A111560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111561.P7019070952263533996

/-! ## A111561.P7425401796075875136

`record[A004197(n)*A111560(n)]`
-/

namespace A111561.P7425401796075875136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n * A111560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111561.P7425401796075875136

/-! ## A111561.P17192892179583250234

`record[A053616(n)*A111560(n)]`
-/

namespace A111561.P17192892179583250234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n * A111560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111561.P17192892179583250234

/-!
# A111562: Column 2 of A111560, which is the matrix log of A111553.

The programs for A111562, there is no canonical definition to state claims against.
-/

/-! ## A111562.P11901906305490986055

`A111560(∑[n+2]+3)`
-/

namespace A111562.P11901906305490986055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111560 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A111562.P11901906305490986055

/-! ## A111562.P7101300820525354860

`record[A111560(lt[1, A111528(n)])]`
-/

namespace A111562.P7101300820525354860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111560 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111562.P7101300820525354860

/-! ## A111562.P15626633752684657991

`record[A082858(n)*A111560(n+1)]`
-/

namespace A111562.P15626633752684657991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 n * A111560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111562.P15626633752684657991

/-! ## A111562.P3198985832484559458

`record[(A002262(n)-1)*A111560(n)]`
-/

namespace A111562.P3198985832484559458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n - 1) * A111560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111562.P3198985832484559458

/-!
# A111563: Number of connected outerplanar graphs on n unlabeled nodes.

The programs for A111563, there is no canonical definition to state claims against.
-/

/-! ## A111563.P12085519656538151119

`A262689(A118581(n))`
-/

namespace A111563.P12085519656538151119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A118581 n).toNat

end

end A111563.P12085519656538151119

/-! ## A111563.P5535898609962974269

`A026819(∑[A088311(n)])`
-/

namespace A111563.P5535898609962974269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111563.P5535898609962974269

/-! ## A111563.P18294266302175429492

`A046155(∑[A088311(n)])`
-/

namespace A111563.P18294266302175429492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111563.P18294266302175429492

/-!
# A111564: Number of outerplanar graphs on n unlabeled nodes.

The programs for A111564, there is no canonical definition to state claims against.
-/

/-! ## A111564.P799269738677579015

`A185255(5*n)+A085633(n+1)`
-/

namespace A111564.P799269738677579015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (5 * n) + A085633 (n + 1)

end

end A111564.P799269738677579015

/-! ## A111564.P1754033890987789827

`A000006(A037992(n)+∑{e}[n+1, #])`
-/

namespace A111564.P1754033890987789827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A037992 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A111564.P1754033890987789827

/-! ## A111564.P3526867201981211015

`A000006(A037992(n)+(n+1)/∏{p}[n+1, #])`
-/

namespace A111564.P3526867201981211015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (SequenceMachineLib.roundAway ((A037992 n : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A111564.P3526867201981211015

/-!
# A111565: Largest prime factor of prime power > 1 that divides the n-th composite number; or a(n) = 0 iff n-th composite number is equal to the product of distinct primes.

The programs for A111565, the canonical program `A111565.P16591623447080358305` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111565 has offset 1).

The definition of A111565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111565.P16591623447080358305

`A392109(A002808(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A111565

/-- `A392109(A002808(n+1))` -/
def P16591623447080358305.Spec : Prop :=
  ∀ n, P16591623447080358305.a n = A111565 (n + 1)

theorem P16591623447080358305.correct : P16591623447080358305.Spec := by
  intro n
  simp only [A111565, Nat.add_sub_cancel]

end A111565

/-! ## A111565.P1301922891465360119

`A392109(A018252(n+2))`
-/

namespace A111565.P1301922891465360119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392109 (A018252 (n + 2)).toNat

end

end A111565.P1301922891465360119

namespace A111565

/-- `A392109(A018252(n+2))` -/
def P1301922891465360119.Spec : Prop :=
  ∀ n, P1301922891465360119.a n = A111565 (n + 1)

end A111565

/-! ## A111565.P7829699464343711285

`A392109(lt[2, A353851(n)])`
-/

namespace A111565.P7829699464343711285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111565.P7829699464343711285

namespace A111565

/-- `A392109(lt[2, A353851(n)])` -/
def P7829699464343711285.Spec : Prop :=
  ∀ n, P7829699464343711285.a n = A111565 (n + 1)

end A111565

/-! ## A111565.P3813580489205673500

`∑{p}[A083730(Δ[A053767(n)]), #]`
-/

namespace A111565.P3813580489205673500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083730 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111565.P3813580489205673500

namespace A111565

/-- `∑{p}[A083730(Δ[A053767(n)]), #]` -/
def P3813580489205673500.Spec : Prop :=
  ∀ n, (P3813580489205673500.a n : ℤ) = A111565 (n + 1)

end A111565

/-! ## A111565.P2762091034343813539

`∑{p}[A249740(Δ[A053767(n)]), #]`
-/

namespace A111565.P2762091034343813539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111565.P2762091034343813539

namespace A111565

/-- `∑{p}[A249740(Δ[A053767(n)]), #]` -/
def P2762091034343813539.Spec : Prop :=
  ∀ n, (P2762091034343813539.a n : ℤ) = A111565 (n + 1)

end A111565

/-! ## A111565.P15520196619217184424

`∑{p}[A083730(lt[1, A001222(n+1)]+1), #]`
-/

namespace A111565.P15520196619217184424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083730 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111565.P15520196619217184424

namespace A111565

/-- `∑{p}[A083730(lt[1, A001222(n+1)]+1), #]` -/
def P15520196619217184424.Spec : Prop :=
  ∀ n, (P15520196619217184424.a n : ℤ) = A111565 (n + 1)

end A111565

/-! ## A111565.P15477892233649161191

`∑{p}[A083730(lt[2, A000005(n+1)]+1), #]`
-/

namespace A111565.P15477892233649161191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083730 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111565.P15477892233649161191

namespace A111565

/-- `∑{p}[A083730(lt[2, A000005(n+1)]+1), #]` -/
def P15477892233649161191.Spec : Prop :=
  ∀ n, (P15477892233649161191.a n : ℤ) = A111565 (n + 1)

end A111565

/-! ## A111565.P6433381809902711668

`∑{p}[A249740(lt[2, A000005(n+1)]+1), #]`
-/

namespace A111565.P6433381809902711668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111565.P6433381809902711668

namespace A111565

/-- `∑{p}[A249740(lt[2, A000005(n+1)]+1), #]` -/
def P6433381809902711668.Spec : Prop :=
  ∀ n, (P6433381809902711668.a n : ℤ) = A111565 (n + 1)

end A111565

/-! ## A111565.P11321397140309952054

`∑{p}[A274006(lt[2, A000005(n+1)]+1), #]`
-/

namespace A111565.P11321397140309952054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274006 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111565.P11321397140309952054

namespace A111565

/-- `∑{p}[A274006(lt[2, A000005(n+1)]+1), #]` -/
def P11321397140309952054.Spec : Prop :=
  ∀ n, (P11321397140309952054.a n : ℤ) = A111565 (n + 1)

end A111565

/-! ## A111565.P8976010841301824913

`∑{p}[A083730(lt[A000010(n+1), n]+1), #]`
-/

namespace A111565.P8976010841301824913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083730 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111565.P8976010841301824913

namespace A111565

/-- `∑{p}[A083730(lt[A000010(n+1), n]+1), #]` -/
def P8976010841301824913.Spec : Prop :=
  ∀ n, (P8976010841301824913.a n : ℤ) = A111565 (n + 1)

end A111565

/-! ## A111565.P5431572355533369789

`∑{p}[A083730(comp[A000040(n+1)-2]+2), #]`
-/

namespace A111565.P5431572355533369789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083730 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111565.P5431572355533369789

namespace A111565

/-- `∑{p}[A083730(comp[A000040(n+1)-2]+2), #]` -/
def P5431572355533369789.Spec : Prop :=
  ∀ n, (P5431572355533369789.a n : ℤ) = A111565 (n + 1)

end A111565

/-! ## A111565.P13738704828609810450

`A348029(A249740(A002808(n+1))²)`
-/

namespace A111565.P13738704828609810450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (A249740 (A002808 (n + 1)).toNat ^ 2).toNat

end

end A111565.P13738704828609810450

namespace A111565

/-- `A348029(A249740(A002808(n+1))²)` -/
def P13738704828609810450.Spec : Prop :=
  ∀ n, P13738704828609810450.a n = A111565 (n + 1)

end A111565

/-! ## A111565.P18311629754540685487

`A001414(A249740(A072668(n+1)+1))`
-/

namespace A111565.P18311629754540685487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A249740 (A072668 (n + 1) + 1).toNat).toNat

end

end A111565.P18311629754540685487

namespace A111565

/-- `A001414(A249740(A072668(n+1)+1))` -/
def P18311629754540685487.Spec : Prop :=
  ∀ n, P18311629754540685487.a n = A111565 (n + 1)

end A111565

/-! ## A111565.P8854149791593832010

`∑{p}[A249740(A002808(n+1)), A006530(#)]`
-/

namespace A111565.P8854149791593832010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A111565.P8854149791593832010

namespace A111565

/-- `∑{p}[A249740(A002808(n+1)), A006530(#)]` -/
def P8854149791593832010.Spec : Prop :=
  ∀ n, P8854149791593832010.a n = A111565 (n + 1)

end A111565

/-! ## A111565.P3884622901677392603

`∑{p}[A249740(A002808(n+1)), A014963(#)]`
-/

namespace A111565.P3884622901677392603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A111565.P3884622901677392603

namespace A111565

/-- `∑{p}[A249740(A002808(n+1)), A014963(#)]` -/
def P3884622901677392603.Spec : Prop :=
  ∀ n, P3884622901677392603.a n = A111565 (n + 1)

end A111565

/-!
# A111566: a(n) = ((1+sqrt(8))*(2+sqrt(2))^n + (1-sqrt(8))*(2-sqrt(2))^n)/2.

The programs for A111566, the canonical program `A111566.P8945683267204842856` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111566 has offset 0).

The definition of A111566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111566.P8945683267204842856

`4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111566

/-- `4*a(n-1)-2*a(n-2)` -/
def P8945683267204842856.Spec : Prop :=
  ∀ n, P8945683267204842856.a n = A111566 n

theorem P8945683267204842856.correct : P8945683267204842856.Spec := by
  intro n
  simp only [A111566]

end A111566

/-! ## A111566.P6445171656979935195

`4*A007070(n)-A007052(n+1)`
-/

namespace A111566.P6445171656979935195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007070 n - A007052 (n + 1)

end

end A111566.P6445171656979935195

namespace A111566

/-- `4*A007070(n)-A007052(n+1)` -/
def P6445171656979935195.Spec : Prop :=
  ∀ n, P6445171656979935195.a n = A111566 n

end A111566

/-! ## A111566.P16521746867051288351

`A007052(n)-A006012(n)+A111567(n)`
-/

namespace A111566.P16521746867051288351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n - A006012 n + A111567 n

end

end A111566.P16521746867051288351

namespace A111566

/-- `A007052(n)-A006012(n)+A111567(n)` -/
def P16521746867051288351.Spec : Prop :=
  ∀ n, P16521746867051288351.a n = A111566 n

end A111566

/-! ## A111566.P12171091923814384688

`ogf((1+2x)/(1-4x+2x^2))`
-/

namespace A111566.P12171091923814384688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4, 2] n

end

end A111566.P12171091923814384688

namespace A111566

/-- `ogf((1+2x)/(1-4x+2x^2))` -/
def P12171091923814384688.Spec : Prop :=
  ∀ n, P12171091923814384688.a n = A111566 n

end A111566

/-! ## A111566.P12592929550079394930

`((1+sqrt(8))*(2+sqrt(2))^n+(1-sqrt(8))*(2-sqrt(2))^n)/2`
-/

namespace A111566.P12592929550079394930
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (8 : ℝ)) * (2 + Real.sqrt (2 : ℝ)) ^ n + (1 - Real.sqrt (8 : ℝ)) * (2 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A111566.P12592929550079394930

namespace A111566

/-- `((1+sqrt(8))*(2+sqrt(2))^n+(1-sqrt(8))*(2-sqrt(2))^n)/2` -/
def P12592929550079394930.Spec : Prop :=
  ∀ n, P12592929550079394930.a n = (A111566 n : ℝ)

end A111566

/-! ## A111566.P1520410995956788380

`∑[A161941(n)]-1`
-/

namespace A111566.P1520410995956788380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A111566.P1520410995956788380

namespace A111566

/-- `∑[A161941(n)]-1` -/
def P1520410995956788380.Spec : Prop :=
  ∀ n, P1520410995956788380.a n = A111566 n

end A111566

/-! ## A111566.P8848100385991766374

`∑[A001882(2*n+1)]-1`
-/

namespace A111566.P8848100385991766374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001882 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A111566.P8848100385991766374

namespace A111566

/-- `∑[A001882(2*n+1)]-1` -/
def P8848100385991766374.Spec : Prop :=
  ∀ n, P8848100385991766374.a n = A111566 n

end A111566

/-! ## A111566.P1330741684238891516

`A163613(n)+A106731(n)`
-/

namespace A111566.P1330741684238891516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163613 n + A106731 n

end

end A111566.P1330741684238891516

namespace A111566

/-- `A163613(n)+A106731(n)` -/
def P1330741684238891516.Spec : Prop :=
  ∀ n, P1330741684238891516.a n = A111566 n

end A111566

/-! ## A111566.P12801624452435169668

`A048580(n)-A056236(n)`
-/

namespace A111566.P12801624452435169668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n - A056236 n

end

end A111566.P12801624452435169668

namespace A111566

/-- `A048580(n)-A056236(n)` -/
def P12801624452435169668.Spec : Prop :=
  ∀ n, P12801624452435169668.a n = A111566 n

end A111566

/-! ## A111566.P18132568178790086109

`A007070(n)-A106731(n)`
-/

namespace A111566.P18132568178790086109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n - A106731 n

end

end A111566.P18132568178790086109

namespace A111566

/-- `A007070(n)-A106731(n)` -/
def P18132568178790086109.Spec : Prop :=
  ∀ n, P18132568178790086109.a n = A111566 n

end A111566

/-! ## A111566.P3843998965789626952

`A163608(n)-A265185(n)`
-/

namespace A111566.P3843998965789626952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163608 n - A265185 n

end

end A111566.P3843998965789626952

namespace A111566

/-- `A163608(n)-A265185(n)` -/
def P3843998965789626952.Spec : Prop :=
  ∀ n, P3843998965789626952.a n = A111566 n

end A111566

/-! ## A111566.P13573253802777571882

`∑[A007052(n)]-A106731(n)`
-/

namespace A111566.P13573253802777571882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A106731 n

end

end A111566.P13573253802777571882

namespace A111566

/-- `∑[A007052(n)]-A106731(n)` -/
def P13573253802777571882.Spec : Prop :=
  ∀ n, P13573253802777571882.a n = A111566 n

end A111566

/-! ## A111566.P9746906682580077763

`A060995(n+1)+A007070(n)`
-/

namespace A111566.P9746906682580077763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060995 (n + 1) + A007070 n

end

end A111566.P9746906682580077763

namespace A111566

/-- `A060995(n+1)+A007070(n)` -/
def P9746906682580077763.Spec : Prop :=
  ∀ n, P9746906682580077763.a n = A111566 n

end A111566

/-! ## A111566.P719851156324956362

`A007052(n+1)-A056236(n)`
-/

namespace A111566.P719851156324956362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1) - A056236 n

end

end A111566.P719851156324956362

namespace A111566

/-- `A007052(n+1)-A056236(n)` -/
def P719851156324956362.Spec : Prop :=
  ∀ n, P719851156324956362.a n = A111566 n

end A111566

/-! ## A111566.P3650824502176664605

`A007070(n+1)-A161938(n)`
-/

namespace A111566.P3650824502176664605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 1) - A161938 n

end

end A111566.P3650824502176664605

namespace A111566

/-- `A007070(n+1)-A161938(n)` -/
def P3650824502176664605.Spec : Prop :=
  ∀ n, P3650824502176664605.a n = A111566 n

end A111566

/-! ## A111566.P16234202102367633665

`A163613(n)-A060995(n+1)`
-/

namespace A111566.P16234202102367633665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163613 n - A060995 (n + 1)

end

end A111566.P16234202102367633665

namespace A111566

/-- `A163613(n)-A060995(n+1)` -/
def P16234202102367633665.Spec : Prop :=
  ∀ n, P16234202102367633665.a n = A111566 n

end A111566

/-! ## A111566.P5807013236620933821

`A204089(n+1)-A106731(n)`
-/

namespace A111566.P5807013236620933821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1) - A106731 n

end

end A111566.P5807013236620933821

namespace A111566

/-- `A204089(n+1)-A106731(n)` -/
def P5807013236620933821.Spec : Prop :=
  ∀ n, P5807013236620933821.a n = A111566 n

end A111566

/-! ## A111566.P4139174833011795220

`A060995(n+2)-A006012(n)`
-/

namespace A111566.P4139174833011795220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060995 (n + 2) - A006012 n

end

end A111566.P4139174833011795220

namespace A111566

/-- `A060995(n+2)-A006012(n)` -/
def P4139174833011795220.Spec : Prop :=
  ∀ n, P4139174833011795220.a n = A111566 n

end A111566

/-! ## A111566.P7621258347445922072

`A164298(n)+2*A106731(n)`
-/

namespace A111566.P7621258347445922072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164298 n + 2 * A106731 n

end

end A111566.P7621258347445922072

namespace A111566

/-- `A164298(n)+2*A106731(n)` -/
def P7621258347445922072.Spec : Prop :=
  ∀ n, P7621258347445922072.a n = A111566 n

end A111566

/-! ## A111566.P10234814438647622599

`A068912(2*n)-A106731(n)`
-/

namespace A111566.P10234814438647622599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068912 (2 * n) - A106731 n

end

end A111566.P10234814438647622599

namespace A111566

/-- `A068912(2*n)-A106731(n)` -/
def P10234814438647622599.Spec : Prop :=
  ∀ n, P10234814438647622599.a n = A111566 n

end A111566

/-!
# A111567: Binomial transform of A048654: generalized Pellian with second term equal to 4.

The programs for A111567, the canonical program `A111567.P5018651694238807994` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111567 has offset 0).

The definition of A111567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111567.P5018651694238807994

`4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111567

/-- `4*a(n-1)-2*a(n-2)` -/
def P5018651694238807994.Spec : Prop :=
  ∀ n, P5018651694238807994.a n = A111567 n

theorem P5018651694238807994.correct : P5018651694238807994.Spec := by
  intro n
  simp only [A111567]

end A111567

/-! ## A111567.P1474606798102520734

`ogf((1+x)/(1-4x+2x^2))`
-/

namespace A111567.P1474606798102520734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, 2] n

end

end A111567.P1474606798102520734

namespace A111567

/-- `ogf((1+x)/(1-4x+2x^2))` -/
def P1474606798102520734.Spec : Prop :=
  ∀ n, P1474606798102520734.a n = A111567 n

end A111567

/-! ## A111567.P15490162655601559727

`ceil((sqrt(2)+2)*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A111567.P15490162655601559727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A111567.P15490162655601559727

namespace A111567

/-- `ceil((sqrt(2)+2)*a(n-1))` -/
def P15490162655601559727.Spec : Prop :=
  ∀ n, P15490162655601559727.a n = A111567 n

end A111567

/-! ## A111567.P11218196453888378439

`∑[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=1, a(1)=4`
-/

namespace A111567.P11218196453888378439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111567.P11218196453888378439

namespace A111567

/-- `∑[floor((sqrt(2)+2)*a(n-1))]` -/
def P11218196453888378439.Spec : Prop :=
  ∀ n, P11218196453888378439.a n = A111567 n

end A111567

/-! ## A111567.P16463898596746360978

`∑[round((sqrt(2)+2)*a(n-1))]` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A111567.P16463898596746360978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111567.P16463898596746360978

namespace A111567

/-- `∑[round((sqrt(2)+2)*a(n-1))]` -/
def P16463898596746360978.Spec : Prop :=
  ∀ n, P16463898596746360978.a n = A111567 n

end A111567

/-! ## A111567.P16851143958783009331

`A007052(n)-A106731(n)`
-/

namespace A111567.P16851143958783009331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n - A106731 n

end

end A111567.P16851143958783009331

namespace A111567

/-- `A007052(n)-A106731(n)` -/
def P16851143958783009331.Spec : Prop :=
  ∀ n, P16851143958783009331.a n = A111567 n

end A111567

/-! ## A111567.P7153745008564037011

`∑[A003480(n)]-A106731(n)`
-/

namespace A111567.P7153745008564037011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A106731 n

end

end A111567.P7153745008564037011

namespace A111567

/-- `∑[A003480(n)]-A106731(n)` -/
def P7153745008564037011.Spec : Prop :=
  ∀ n, P7153745008564037011.a n = A111567 n

end A111567

/-! ## A111567.P13819588209102828543

`A060995(n+1)+A007052(n)`
-/

namespace A111567.P13819588209102828543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060995 (n + 1) + A007052 n

end

end A111567.P13819588209102828543

namespace A111567

/-- `A060995(n+1)+A007052(n)` -/
def P13819588209102828543.Spec : Prop :=
  ∀ n, P13819588209102828543.a n = A111567 n

end A111567

/-! ## A111567.P3101491264175541800

`A062112(2*n)+A007070(n)`
-/

namespace A111567.P3101491264175541800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n) + A007070 n

end

end A111567.P3101491264175541800

namespace A111567

/-- `A062112(2*n)+A007070(n)` -/
def P3101491264175541800.Spec : Prop :=
  ∀ n, P3101491264175541800.a n = A111567 n

end A111567

/-! ## A111567.P17886285237577674393

`A062113(2*n)-A106731(n)`
-/

namespace A111567.P17886285237577674393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (2 * n) - A106731 n

end

end A111567.P17886285237577674393

namespace A111567

/-- `A062113(2*n)-A106731(n)` -/
def P17886285237577674393.Spec : Prop :=
  ∀ n, P17886285237577674393.a n = A111567 n

end A111567

/-! ## A111567.P9894566479288984246

`A007070(n)-A106731(n)/2`
-/

namespace A111567.P9894566479288984246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 n : ℚ) - (A106731 n : ℚ) / 2

end

end A111567.P9894566479288984246

namespace A111567

/-- `A007070(n)-A106731(n)/2` -/
def P9894566479288984246.Spec : Prop :=
  ∀ n, P9894566479288984246.a n = (A111567 n : ℚ)

end A111567

/-! ## A111567.P14743982636060541163

`floor(sqrt(A000079(n))*A048654(n))`
-/

namespace A111567.P14743982636060541163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000079 n : ℝ) * (A048654 n : ℝ)⌋

end

end A111567.P14743982636060541163

namespace A111567

/-- `floor(sqrt(A000079(n))*A048654(n))` -/
def P14743982636060541163.Spec : Prop :=
  ∀ n, P14743982636060541163.a n = A111567 n

end A111567

/-! ## A111567.P4188198357556233241

`∑[2*A007052(n)-A003480(n)]`
-/

namespace A111567.P4188198357556233241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007052 n - A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111567.P4188198357556233241

namespace A111567

/-- `∑[2*A007052(n)-A003480(n)]` -/
def P4188198357556233241.Spec : Prop :=
  ∀ n, P4188198357556233241.a n = A111567 n

end A111567

/-! ## A111567.P14423938082701468557

`A121720(2*n+1)+A007070(n)`
-/

namespace A111567.P14423938082701468557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (2 * n + 1) + A007070 n

end

end A111567.P14423938082701468557

namespace A111567

/-- `A121720(2*n+1)+A007070(n)` -/
def P14423938082701468557.Spec : Prop :=
  ∀ n, P14423938082701468557.a n = A111567 n

end A111567

/-! ## A111567.P17778237346594800348

`A204089(n+1)+A062112(2*n)`
-/

namespace A111567.P17778237346594800348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1) + A062112 (2 * n)

end

end A111567.P17778237346594800348

namespace A111567

/-- `A204089(n+1)+A062112(2*n)` -/
def P17778237346594800348.Spec : Prop :=
  ∀ n, P17778237346594800348.a n = A111567 n

end A111567

/-! ## A111567.P13711425638562467639

`A007070(n)+A060995(n+1)/2`
-/

namespace A111567.P13711425638562467639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 n : ℚ) + (A060995 (n + 1) : ℚ) / 2

end

end A111567.P13711425638562467639

namespace A111567

/-- `A007070(n)+A060995(n+1)/2` -/
def P13711425638562467639.Spec : Prop :=
  ∀ n, P13711425638562467639.a n = (A111567 n : ℚ)

end A111567

/-! ## A111567.P10471883083409906869

`A217730(2*n)+A062112(2*n)`
-/

namespace A111567.P10471883083409906869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 (2 * n) + A062112 (2 * n)

end

end A111567.P10471883083409906869

namespace A111567

/-- `A217730(2*n)+A062112(2*n)` -/
def P10471883083409906869.Spec : Prop :=
  ∀ n, P10471883083409906869.a n = A111567 n

end A111567

/-! ## A111567.P1685270646553528385

`A062112(2*n)+Δ[A030436(2*n)]`
-/

namespace A111567.P1685270646553528385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n) + (f1 (n + 1) - f1 n)

end

end A111567.P1685270646553528385

namespace A111567

/-- `A062112(2*n)+Δ[A030436(2*n)]` -/
def P1685270646553528385.Spec : Prop :=
  ∀ n, P1685270646553528385.a n = A111567 n

end A111567

/-! ## A111567.P6995660855278255758

`A062112(2*n)+A007068(2*n+1)`
-/

namespace A111567.P6995660855278255758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n) + A007068 (2 * n + 1)

end

end A111567.P6995660855278255758

namespace A111567

/-- `A062112(2*n)+A007068(2*n+1)` -/
def P6995660855278255758.Spec : Prop :=
  ∀ n, P6995660855278255758.a n = A111567 n

end A111567

/-! ## A111567.P10785759603405836726

`A121720(2*n+1)+A007068(2*n+1)`
-/

namespace A111567.P10785759603405836726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (2 * n + 1) + A007068 (2 * n + 1)

end

end A111567.P10785759603405836726

namespace A111567

/-- `A121720(2*n+1)+A007068(2*n+1)` -/
def P10785759603405836726.Spec : Prop :=
  ∀ n, P10785759603405836726.a n = A111567 n

end A111567

/-!
# A111569: a(n) = a(n-1) + a(n-3) + a(n-4) for n > 3, a(0) = -1, a(1) = 1, a(2) = 2, a(3) = 1.

The programs for A111569, the canonical program `A111569.P10508374527766698501` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111569 has offset 0).

The definition of A111569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A111569.P10508374527766698501`, by `A111569.P10508374527766698501.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111569.P10508374527766698501

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=-1, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111569

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P10508374527766698501.Spec : Prop :=
  ∀ n, P10508374527766698501.a n = A111569 n

theorem P10508374527766698501.correct : P10508374527766698501.Spec := by
  intro n
  simp only [A111569]

end A111569

/-! ## A111569.P12731049787928873507

`2*A056594(n+3)/5-6*A056594(n)/5+A000032(n+1)/5`
-/

namespace A111569.P12731049787928873507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A056594 (n + 3) : ℚ) / 5 - (6 * A056594 n : ℚ) / 5 + (A000032 (n + 1) : ℚ) / 5

end

end A111569.P12731049787928873507

namespace A111569

/-- `2*A056594(n+3)/5-6*A056594(n)/5+A000032(n+1)/5` -/
def P12731049787928873507.Spec : Prop :=
  ∀ n, P12731049787928873507.a n = (A111569 n : ℚ)

end A111569

/-! ## A111569.P12512793485335130699

`ogf((1-2x-x^2)/(-1+x+x^3+x^4))`
-/

namespace A111569.P12512793485335130699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, 1] [1, -1, 0, -1, -1] n

end

end A111569.P12512793485335130699

namespace A111569

/-- `ogf((1-2x-x^2)/(-1+x+x^3+x^4))` -/
def P12512793485335130699.Spec : Prop :=
  ∀ n, P12512793485335130699.a n = A111569 n

end A111569

/-! ## A111569.P8173259502235434787

`A074677(n)-A056594(n)`
-/

namespace A111569.P8173259502235434787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n - A056594 n

end

end A111569.P8173259502235434787

namespace A111569

/-- `A074677(n)-A056594(n)` -/
def P8173259502235434787.Spec : Prop :=
  ∀ n, P8173259502235434787.a n = A111569 n

end A111569

/-! ## A111569.P984334519797733346

`A163805(n+1)+A074677(n)`
-/

namespace A111569.P984334519797733346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (n + 1) + A074677 n

end

end A111569.P984334519797733346

namespace A111569

/-- `A163805(n+1)+A074677(n)` -/
def P984334519797733346.Spec : Prop :=
  ∀ n, P984334519797733346.a n = A111569 n

end A111569

/-! ## A111569.P8458797775447643335

`A295682(n)-A295672(n+1)`
-/

namespace A111569.P8458797775447643335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 n - A295672 (n + 1)

end

end A111569.P8458797775447643335

namespace A111569

/-- `A295682(n)-A295672(n+1)` -/
def P8458797775447643335.Spec : Prop :=
  ∀ n, P8458797775447643335.a n = A111569 n

end A111569

/-! ## A111569.P6127117321425659751

`A112299(2*(n+1))+A074677(n)`
-/

namespace A111569.P6127117321425659751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (2 * (n + 1)) + A074677 n

end

end A111569.P6127117321425659751

namespace A111569

/-- `A112299(2*(n+1))+A074677(n)` -/
def P6127117321425659751.Spec : Prop :=
  ∀ n, P6127117321425659751.a n = A111569 n

end A111569

/-! ## A111569.P16849555559003456491

`∑[-A111571(n+1)]`
-/

namespace A111569.P16849555559003456491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A111571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111569.P16849555559003456491

namespace A111569

/-- `∑[-A111571(n+1)]` -/
def P16849555559003456491.Spec : Prop :=
  ∀ n, P16849555559003456491.a n = A111569 n

end A111569

/-! ## A111569.P4690085611674585359

`A111574(n+1)-A000045(n)`
-/

namespace A111569.P4690085611674585359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111574 (n + 1) - A000045 n

end

end A111569.P4690085611674585359

namespace A111569

/-- `A111574(n+1)-A000045(n)` -/
def P4690085611674585359.Spec : Prop :=
  ∀ n, P4690085611674585359.a n = A111569 n

end A111569

/-! ## A111569.P1025271160375757943

`(A111572(n)-A111571(n))/2`
-/

namespace A111569.P1025271160375757943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111572 n - A111571 n : ℚ) / 2

end

end A111569.P1025271160375757943

namespace A111569

/-- `(A111572(n)-A111571(n))/2` -/
def P1025271160375757943.Spec : Prop :=
  ∀ n, P1025271160375757943.a n = (A111569 n : ℚ)

end A111569

/-! ## A111569.P3973859324554789010

`Δ[A295680(n)-A000045(n)]+A000045(n)`
-/

namespace A111569.P3973859324554789010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 n

end

end A111569.P3973859324554789010

namespace A111569

/-- `Δ[A295680(n)-A000045(n)]+A000045(n)` -/
def P3973859324554789010.Spec : Prop :=
  ∀ n, P3973859324554789010.a n = A111569 n

end A111569

/-! ## A111569.P1014480685944358501

`A000045(n+1)-(A295683(n)+A056594(n+1))`
-/

namespace A111569.P1014480685944358501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (A295683 n + A056594 (n + 1))

end

end A111569.P1014480685944358501

namespace A111569

/-- `A000045(n+1)-(A295683(n)+A056594(n+1))` -/
def P1014480685944358501.Spec : Prop :=
  ∀ n, P1014480685944358501.a n = A111569 n

end A111569

/-! ## A111569.P7713411639594606659

`Δ[A195971(abs(1-n))]`
-/

namespace A111569.P7713411639594606659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111569.P7713411639594606659

namespace A111569

/-- `Δ[A195971(abs(1-n))]` -/
def P7713411639594606659.Spec : Prop :=
  ∀ n, P7713411639594606659.a n = A111569 n

end A111569

/-! ## A111569.P17253007345946199230

`A070550(n)-A295688(n)`
-/

namespace A111569.P17253007345946199230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 n - A295688 n

end

end A111569.P17253007345946199230

namespace A111569

/-- `A070550(n)-A295688(n)` -/
def P17253007345946199230.Spec : Prop :=
  ∀ n, P17253007345946199230.a n = A111569 n

end A111569

/-! ## A111569.P9152119084771511064

`A293411(n)-A074662(n)`
-/

namespace A111569.P9152119084771511064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 n - A074662 n

end

end A111569.P9152119084771511064

namespace A111569

/-- `A293411(n)-A074662(n)` -/
def P9152119084771511064.Spec : Prop :=
  ∀ n, P9152119084771511064.a n = A111569 n

end A111569

/-! ## A111569.P5659895656901081993

`Δ[A295680(n)+Δ[A000045(n)]]`
-/

namespace A111569.P5659895656901081993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111569.P5659895656901081993

namespace A111569

/-- `Δ[A295680(n)+Δ[A000045(n)]]` -/
def P5659895656901081993.Spec : Prop :=
  ∀ n, P5659895656901081993.a n = A111569 n

end A111569

/-! ## A111569.P6157676353841036787

`Δ[A295680(n)+Δ[A002062(n)]]`
-/

namespace A111569.P6157676353841036787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111569.P6157676353841036787

namespace A111569

/-- `Δ[A295680(n)+Δ[A002062(n)]]` -/
def P6157676353841036787.Spec : Prop :=
  ∀ n, P6157676353841036787.a n = A111569 n

end A111569

/-! ## A111569.P3493364405569898051

`A115008(n+1)-A006498(n+1)`
-/

namespace A111569.P3493364405569898051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 (n + 1) - A006498 (n + 1)

end

end A111569.P3493364405569898051

namespace A111569

/-- `A115008(n+1)-A006498(n+1)` -/
def P3493364405569898051.Spec : Prop :=
  ∀ n, P3493364405569898051.a n = A111569 n

end A111569

/-! ## A111569.P16230445637692050185

`A111574(n+2)-A111572(n+1)`
-/

namespace A111569.P16230445637692050185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111574 (n + 2) - A111572 (n + 1)

end

end A111569.P16230445637692050185

namespace A111569

/-- `A111574(n+2)-A111572(n+1)` -/
def P16230445637692050185.Spec : Prop :=
  ∀ n, P16230445637692050185.a n = A111569 n

end A111569

/-! ## A111569.P11304807258691960576

`A006498(n+1)-(A057077(n+1)+A006498(n))`
-/

namespace A111569.P11304807258691960576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 1) - (A057077 (n + 1) + A006498 n)

end

end A111569.P11304807258691960576

namespace A111569

/-- `A006498(n+1)-(A057077(n+1)+A006498(n))` -/
def P11304807258691960576.Spec : Prop :=
  ∀ n, P11304807258691960576.a n = A111569 n

end A111569

/-!
# A111570: a(n) = a(n-1) + a(n-3) + a(n-4), n >= 4, with initial terms 2,5,4,7.

The programs for A111570, the canonical program `A111570.P15974183153392783279` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111570 has offset 0).

The definition of A111570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A111570.P15974183153392783279`, by `A111570.P15974183153392783279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111570.P15974183153392783279

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=5, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111570

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P15974183153392783279.Spec : Prop :=
  ∀ n, (P15974183153392783279.a n : ℤ) = A111570 n

theorem P15974183153392783279.correct : P15974183153392783279.Spec := by
  intro n
  simp only [A111570]

end A111570

/-! ## A111570.P2822841032107283323

`ogf((2+3x-x^2+x^3)/(1-x-x^3-x^4))`
-/

namespace A111570.P2822841032107283323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -1, 1] [1, -1, 0, -1, -1] n

end

end A111570.P2822841032107283323

namespace A111570

/-- `ogf((2+3x-x^2+x^3)/(1-x-x^3-x^4))` -/
def P2822841032107283323.Spec : Prop :=
  ∀ n, P2822841032107283323.a n = A111570 n

end A111570

/-! ## A111570.P424562608525376222

`A295690(n)+A022086(n)`
-/

namespace A111570.P424562608525376222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 n + A022086 n

end

end A111570.P424562608525376222

namespace A111570

/-- `A295690(n)+A022086(n)` -/
def P424562608525376222.Spec : Prop :=
  ∀ n, P424562608525376222.a n = A111570 n

end A111570

/-! ## A111570.P310202975228450397

`A295682(n)+A295681(n+3)`
-/

namespace A111570.P310202975228450397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 n + A295681 (n + 3)

end

end A111570.P310202975228450397

namespace A111570

/-- `A295682(n)+A295681(n+3)` -/
def P310202975228450397.Spec : Prop :=
  ∀ n, P310202975228450397.a n = A111570 n

end A111570

/-! ## A111570.P12452134122193393669

`A295690(n)+3*A000045(n)`
-/

namespace A111570.P12452134122193393669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 n + 3 * A000045 n

end

end A111570.P12452134122193393669

namespace A111570

/-- `A295690(n)+3*A000045(n)` -/
def P12452134122193393669.Spec : Prop :=
  ∀ n, P12452134122193393669.a n = A111570 n

end A111570

/-! ## A111570.P13342164995991904326

`A295690(n)+Δ[A111314(n)]`
-/

namespace A111570.P13342164995991904326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 n + (f1 (n + 1) - f1 n)

end

end A111570.P13342164995991904326

namespace A111570

/-- `A295690(n)+Δ[A111314(n)]` -/
def P13342164995991904326.Spec : Prop :=
  ∀ n, P13342164995991904326.a n = A111570 n

end A111570

/-!
# A111571: a(n) = a(n-1) + a(n-3) + a(n-4), n >= 4, with initial terms 1,1,-2,-1.

The programs for A111571, the canonical program `A111571.P5678665651128799681` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111571 has offset 0).

The definition of A111571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A111571.P5678665651128799681`, by `A111571.P5678665651128799681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111571.P5678665651128799681

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=-2, a(3)=-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111571

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P5678665651128799681.Spec : Prop :=
  ∀ n, P5678665651128799681.a n = A111571 n

theorem P5678665651128799681.correct : P5678665651128799681.Spec := by
  intro n
  simp only [A111571]

end A111571

/-! ## A111571.P16426278898923211198

`ogf((-1+3x^2)/(-1+x+x^3+x^4))`
-/

namespace A111571.P16426278898923211198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -1, 0, -1, -1] n

end

end A111571.P16426278898923211198

namespace A111571

/-- `ogf((-1+3x^2)/(-1+x+x^3+x^4))` -/
def P16426278898923211198.Spec : Prop :=
  ∀ n, P16426278898923211198.a n = A111571 n

end A111571

/-! ## A111571.P1372029770418110515

`Δ[a(n-1)-gcd(-a(n-2), a(n-2))]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A111571.P1372029770418110515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (Int.gcd (-f1 (n - 2)) (f1 (n - 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 2)

end

end A111571.P1372029770418110515

namespace A111571

/-- `Δ[a(n-1)-gcd(-a(n-2), a(n-2))]-a(n-2)` -/
def P1372029770418110515.Spec : Prop :=
  ∀ n, P1372029770418110515.a n = A111571 n

end A111571

/-! ## A111571.P5286673471612690327

`Δ[a(n-1)-lcm(-a(n-2), a(n-2))]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A111571.P5286673471612690327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (Int.lcm (-f1 (n - 2)) (f1 (n - 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 2)

end

end A111571.P5286673471612690327

namespace A111571

/-- `Δ[a(n-1)-lcm(-a(n-2), a(n-2))]-a(n-2)` -/
def P5286673471612690327.Spec : Prop :=
  ∀ n, P5286673471612690327.a n = A111571 n

end A111571

/-! ## A111571.P10495746070660922491

`Δ[a(n-4)-A000045(n-3)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A111571.P10495746070660922491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 0] fun n f1 =>
  f1 (n - 4) - A000045 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111571.P10495746070660922491

namespace A111571

/-- `Δ[a(n-4)-A000045(n-3)]` -/
def P10495746070660922491.Spec : Prop :=
  ∀ n, P10495746070660922491.a n = A111571 n

end A111571

/-! ## A111571.P16837990203710905664

`A000045(n-2)-(A000045(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A111571.P16837990203710905664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (n - 2) - (A000045 (n - 1) + a (n - 2))

end

end A111571.P16837990203710905664

namespace A111571

/-- `A000045(n-2)-(A000045(n-1)+a(n-2))` -/
def P16837990203710905664.Spec : Prop :=
  ∀ n, P16837990203710905664.a n = A111571 n

end A111571

/-! ## A111571.P16480413309338142893

`A111572(n)-2*A111569(n)`
-/

namespace A111571.P16480413309338142893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111572 n - 2 * A111569 n

end

end A111571.P16480413309338142893

namespace A111571

/-- `A111572(n)-2*A111569(n)` -/
def P16480413309338142893.Spec : Prop :=
  ∀ n, P16480413309338142893.a n = A111571 n

end A111571

/-! ## A111571.P5020023975527143733

`A000045(n+1)-A295680(n+1)-A295680(n+1)`
-/

namespace A111571.P5020023975527143733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A295680 (n + 1) - A295680 (n + 1)

end

end A111571.P5020023975527143733

namespace A111571

/-- `A000045(n+1)-A295680(n+1)-A295680(n+1)` -/
def P5020023975527143733.Spec : Prop :=
  ∀ n, P5020023975527143733.a n = A111571 n

end A111571

/-! ## A111571.P9716764957431468833

`A295678(n)-A195971(n)`
-/

namespace A111571.P9716764957431468833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 n - A195971 n

end

end A111571.P9716764957431468833

namespace A111571

/-- `A295678(n)-A195971(n)` -/
def P9716764957431468833.Spec : Prop :=
  ∀ n, P9716764957431468833.a n = A111571 n

end A111571

/-! ## A111571.P4763118267879022116

`Δ[A126116(n)-A295688(n)]`
-/

namespace A111571.P4763118267879022116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n - A295688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111571.P4763118267879022116

namespace A111571

/-- `Δ[A126116(n)-A295688(n)]` -/
def P4763118267879022116.Spec : Prop :=
  ∀ n, P4763118267879022116.a n = A111571 n

end A111571

/-! ## A111571.P5013600529363898036

`A111572(n+1)-A000032(n)`
-/

namespace A111571.P5013600529363898036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111572 (n + 1) - A000032 n

end

end A111571.P5013600529363898036

namespace A111571

/-- `A111572(n+1)-A000032(n)` -/
def P5013600529363898036.Spec : Prop :=
  ∀ n, P5013600529363898036.a n = A111571 n

end A111571

/-! ## A111571.P4828281981324479469

`Δ[Δ[A295680(n)-A000045(n)]]`
-/

namespace A111571.P4828281981324479469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 n - A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111571.P4828281981324479469

namespace A111571

/-- `Δ[Δ[A295680(n)-A000045(n)]]` -/
def P4828281981324479469.Spec : Prop :=
  ∀ n, P4828281981324479469.a n = A111571 n

end A111571

/-! ## A111571.P12324808502447940946

`Δ[Δ[A295680(n)-A002062(n)]]`
-/

namespace A111571.P12324808502447940946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 n - A002062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111571.P12324808502447940946

namespace A111571

/-- `Δ[Δ[A295680(n)-A002062(n)]]` -/
def P12324808502447940946.Spec : Prop :=
  ∀ n, P12324808502447940946.a n = A111571 n

end A111571

/-! ## A111571.P4176536348195074433

`A000045(n+1)-2*A295680(n+1)`
-/

namespace A111571.P4176536348195074433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - 2 * A295680 (n + 1)

end

end A111571.P4176536348195074433

namespace A111571

/-- `A000045(n+1)-2*A295680(n+1)` -/
def P4176536348195074433.Spec : Prop :=
  ∀ n, P4176536348195074433.a n = A111571 n

end A111571

/-! ## A111571.P17561183964976593749

`A000032(n+1)-2*A195971(n)`
-/

namespace A111571.P17561183964976593749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - 2 * A195971 n

end

end A111571.P17561183964976593749

namespace A111571

/-- `A000032(n+1)-2*A195971(n)` -/
def P17561183964976593749.Spec : Prop :=
  ∀ n, P17561183964976593749.a n = A111571 n

end A111571

/-! ## A111571.P756515611562625611

`A000204(n+1)-2*A195971(n)`
-/

namespace A111571.P756515611562625611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - 2 * A195971 n

end

end A111571.P756515611562625611

namespace A111571

/-- `A000204(n+1)-2*A195971(n)` -/
def P756515611562625611.Spec : Prop :=
  ∀ n, P756515611562625611.a n = A111571 n

end A111571

/-! ## A111571.P6077654140478910299

`2*A295678(n)-A000204(n+1)`
-/

namespace A111571.P6077654140478910299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295678 n - A000204 (n + 1)

end

end A111571.P6077654140478910299

namespace A111571

/-- `2*A295678(n)-A000204(n+1)` -/
def P6077654140478910299.Spec : Prop :=
  ∀ n, P6077654140478910299.a n = A111571 n

end A111571

/-!
# A111572: a(n) = a(n-1) + a(n-3) + a(n-4), n >= 4, with initial terms -1,3,2,1.

The programs for A111572, the canonical program `A111572.P10732248676196147343` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111572 has offset 0).

The definition of A111572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A111572.P10732248676196147343`, by `A111572.P10732248676196147343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111572.P10732248676196147343

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=-1, a(1)=3, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111572

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P10732248676196147343.Spec : Prop :=
  ∀ n, P10732248676196147343.a n = A111572 n

theorem P10732248676196147343.correct : P10732248676196147343.Spec := by
  intro n
  simp only [A111572]

end A111572

/-! ## A111572.P720071215209174566

`ogf((1-4x+x^2)/(-1+x+x^3+x^4))`
-/

namespace A111572.P720071215209174566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4, -1] [1, -1, 0, -1, -1] n

end

end A111572.P720071215209174566

namespace A111572

/-- `ogf((1-4x+x^2)/(-1+x+x^3+x^4))` -/
def P720071215209174566.Spec : Prop :=
  ∀ n, P720071215209174566.a n = A111572 n

end A111572

/-! ## A111572.P104544417447570028

`A000045(n)-A111571(n+1)`
-/

namespace A111572.P104544417447570028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A111571 (n + 1)

end

end A111572.P104544417447570028

namespace A111572

/-- `A000045(n)-A111571(n+1)` -/
def P104544417447570028.Spec : Prop :=
  ∀ n, P104544417447570028.a n = A111572 n

end A111572

/-! ## A111572.P10288005928045241712

`A111571(n)+2*A111569(n)`
-/

namespace A111572.P10288005928045241712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111571 n + 2 * A111569 n

end

end A111572.P10288005928045241712

namespace A111572

/-- `A111571(n)+2*A111569(n)` -/
def P10288005928045241712.Spec : Prop :=
  ∀ n, P10288005928045241712.a n = A111572 n

end A111572

/-! ## A111572.P6953672643390448924

`A000045(n+1)-Δ[Δ[A295680(n+1)]]`
-/

namespace A111572.P6953672643390448924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (f1 (n + 1) - f1 n)

end

end A111572.P6953672643390448924

namespace A111572

/-- `A000045(n+1)-Δ[Δ[A295680(n+1)]]` -/
def P6953672643390448924.Spec : Prop :=
  ∀ n, P6953672643390448924.a n = A111572 n

end A111572

/-! ## A111572.P14863154693799522504

`5*A074677(n)-A293411(n)`
-/

namespace A111572.P14863154693799522504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A074677 n - A293411 n

end

end A111572.P14863154693799522504

namespace A111572

/-- `5*A074677(n)-A293411(n)` -/
def P14863154693799522504.Spec : Prop :=
  ∀ n, P14863154693799522504.a n = A111572 n

end A111572

/-! ## A111572.P15779239369611629255

`Δ[A000045(n)+Δ[A295678(n)]]`
-/

namespace A111572.P15779239369611629255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111572.P15779239369611629255

namespace A111572

/-- `Δ[A000045(n)+Δ[A295678(n)]]` -/
def P15779239369611629255.Spec : Prop :=
  ∀ n, P15779239369611629255.a n = A111572 n

end A111572

/-! ## A111572.P11457287496753522179

`Δ[A157726(n)+Δ[A295678(n)]]`
-/

namespace A111572.P11457287496753522179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111572.P11457287496753522179

namespace A111572

/-- `Δ[A157726(n)+Δ[A295678(n)]]` -/
def P11457287496753522179.Spec : Prop :=
  ∀ n, P11457287496753522179.a n = A111572 n

end A111572

/-! ## A111572.P15525355799741566467

`A212804(n)+Δ[Δ[A295678(n)]]`
-/

namespace A111572.P15525355799741566467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + (f1 (n + 1) - f1 n)

end

end A111572.P15525355799741566467

namespace A111572

/-- `A212804(n)+Δ[Δ[A295678(n)]]` -/
def P15525355799741566467.Spec : Prop :=
  ∀ n, P15525355799741566467.a n = A111572 n

end A111572

/-! ## A111572.P15943531305527581979

`Δ[A000071(n+2)-Δ[A295680(n+1)]]`
-/

namespace A111572.P15943531305527581979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111572.P15943531305527581979

namespace A111572

/-- `Δ[A000071(n+2)-Δ[A295680(n+1)]]` -/
def P15943531305527581979.Spec : Prop :=
  ∀ n, P15943531305527581979.a n = A111572 n

end A111572

/-! ## A111572.P15057910149616980986

`A302506(n+2)-(A302506(n+1)+A000032(n))`
-/

namespace A111572.P15057910149616980986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302506 (n + 2) - (A302506 (n + 1) + A000032 n)

end

end A111572.P15057910149616980986

namespace A111572

/-- `A302506(n+2)-(A302506(n+1)+A000032(n))` -/
def P15057910149616980986.Spec : Prop :=
  ∀ n, P15057910149616980986.a n = A111572 n

end A111572

/-!
# A111573: a(n) = a(n-1) + a(n-3) + a(n-4), n >= 4, with initial terms 0,1,3,3.

The programs for A111573, the canonical program `A111573.P9574875227048522995` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111573 has offset 0).

The definition of A111573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A111573.P9574875227048522995`, by `A111573.P9574875227048522995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111573.P9574875227048522995

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111573

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P9574875227048522995.Spec : Prop :=
  ∀ n, (P9574875227048522995.a n : ℤ) = A111573 n

theorem P9574875227048522995.correct : P9574875227048522995.Spec := by
  intro n
  simp only [A111573]

end A111573

/-! ## A111573.P17364377873695632308

`ogf((x+2x^2)/(1-x-x^3-x^4))`
-/

namespace A111573.P17364377873695632308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -1, 0, -1, -1] n

end

end A111573.P17364377873695632308

namespace A111573

/-- `ogf((x+2x^2)/(1-x-x^3-x^4))` -/
def P17364377873695632308.Spec : Prop :=
  ∀ n, P17364377873695632308.a n = A111573 n

end A111573

/-! ## A111573.P15372290002125862760

`A115008(n)-A087960(n)`
-/

namespace A111573.P15372290002125862760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 n - A087960 n

end

end A111573.P15372290002125862760

namespace A111573

/-- `A115008(n)-A087960(n)` -/
def P15372290002125862760.Spec : Prop :=
  ∀ n, P15372290002125862760.a n = A111573 n

end A111573

/-! ## A111573.P7226877981872807080

`A081659(n)-A290561(n)`
-/

namespace A111573.P7226877981872807080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n - A290561 n

end

end A111573.P7226877981872807080

namespace A111573

/-- `A081659(n)-A290561(n)` -/
def P7226877981872807080.Spec : Prop :=
  ∀ n, P7226877981872807080.a n = A111573 n

end A111573

/-! ## A111573.P452721500885570160

`A007877(n)+A000071(n+1)`
-/

namespace A111573.P452721500885570160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n + A000071 (n + 1)

end

end A111573.P452721500885570160

namespace A111573

/-- `A007877(n)+A000071(n+1)` -/
def P452721500885570160.Spec : Prop :=
  ∀ n, P452721500885570160.a n = A111573 n

end A111573

/-! ## A111573.P201583428981928220

`A295680(n+1)+A074677(n)`
-/

namespace A111573.P201583428981928220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (n + 1) + A074677 n

end

end A111573.P201583428981928220

namespace A111573

/-- `A295680(n+1)+A074677(n)` -/
def P201583428981928220.Spec : Prop :=
  ∀ n, P201583428981928220.a n = A111573 n

end A111573

/-! ## A111573.P12989319392046553548

`A000045(n+1)-A056594(n)`
-/

namespace A111573.P12989319392046553548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A056594 n

end

end A111573.P12989319392046553548

namespace A111573

/-- `A000045(n+1)-A056594(n)` -/
def P12989319392046553548.Spec : Prop :=
  ∀ n, P12989319392046553548.a n = A111573 n

end A111573

/-! ## A111573.P15729081421713575304

`A115008(n)-A057077(n+1)`
-/

namespace A111573.P15729081421713575304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 n - A057077 (n + 1)

end

end A111573.P15729081421713575304

namespace A111573

/-- `A115008(n)-A057077(n+1)` -/
def P15729081421713575304.Spec : Prop :=
  ∀ n, P15729081421713575304.a n = A111573 n

end A111573

/-! ## A111573.P4948132623067979012

`A074662(n)-2*A056594(n)`
-/

namespace A111573.P4948132623067979012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n - 2 * A056594 n

end

end A111573.P4948132623067979012

namespace A111573

/-- `A074662(n)-2*A056594(n)` -/
def P4948132623067979012.Spec : Prop :=
  ∀ n, P4948132623067979012.a n = A111573 n

end A111573

/-! ## A111573.P9189813183253380028

`∑[A212804(n)-A057077(n+1)]`
-/

namespace A111573.P9189813183253380028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - A057077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111573.P9189813183253380028

namespace A111573

/-- `∑[A212804(n)-A057077(n+1)]` -/
def P9189813183253380028.Spec : Prop :=
  ∀ n, P9189813183253380028.a n = A111573 n

end A111573

/-! ## A111573.P6807023344922113749

`A056594(n+2)+A000045(n+1)`
-/

namespace A111573.P6807023344922113749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 2) + A000045 (n + 1)

end

end A111573.P6807023344922113749

namespace A111573

/-- `A056594(n+2)+A000045(n+1)` -/
def P6807023344922113749.Spec : Prop :=
  ∀ n, P6807023344922113749.a n = A111573 n

end A111573

/-! ## A111573.P5882790895039693371

`A000071(n+1)+1-A056594(n)`
-/

namespace A111573.P5882790895039693371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (1 - A056594 n)

end

end A111573.P5882790895039693371

namespace A111573

/-- `A000071(n+1)+1-A056594(n)` -/
def P5882790895039693371.Spec : Prop :=
  ∀ n, P5882790895039693371.a n = A111573 n

end A111573

/-! ## A111573.P3537207545523235918

`A000045(n+1)-A101455(n+1)`
-/

namespace A111573.P3537207545523235918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A101455 (n + 1)

end

end A111573.P3537207545523235918

namespace A111573

/-- `A000045(n+1)-A101455(n+1)` -/
def P3537207545523235918.Spec : Prop :=
  ∀ n, P3537207545523235918.a n = A111573 n

end A111573

/-! ## A111573.P868904483418851155

`A129728(n+1)-A047404(n+1)`
-/

namespace A111573.P868904483418851155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129728 (n + 1) - A047404 (n + 1)

end

end A111573.P868904483418851155

namespace A111573

/-- `A129728(n+1)-A047404(n+1)` -/
def P868904483418851155.Spec : Prop :=
  ∀ n, P868904483418851155.a n = A111573 n

end A111573

/-! ## A111573.P14100949570064831705

`A303427(n+1)*A303427(n+2)`
-/

namespace A111573.P14100949570064831705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (n + 1) * A303427 (n + 2)

end

end A111573.P14100949570064831705

namespace A111573

/-- `A303427(n+1)*A303427(n+2)` -/
def P14100949570064831705.Spec : Prop :=
  ∀ n, P14100949570064831705.a n = A111573 n

end A111573

/-! ## A111573.P12288454263729536077

`A000045(n+1)-A014017(2*n)`
-/

namespace A111573.P12288454263729536077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A014017 (2 * n)

end

end A111573.P12288454263729536077

namespace A111573

/-- `A000045(n+1)-A014017(2*n)` -/
def P12288454263729536077.Spec : Prop :=
  ∀ n, P12288454263729536077.a n = A111573 n

end A111573

/-! ## A111573.P5051767123289048748

`A000045(n+1)-A046980(2*n)`
-/

namespace A111573.P5051767123289048748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A046980 (2 * n)

end

end A111573.P5051767123289048748

namespace A111573

/-- `A000045(n+1)-A046980(2*n)` -/
def P5051767123289048748.Spec : Prop :=
  ∀ n, P5051767123289048748.a n = A111573 n

end A111573

/-! ## A111573.P16659842038038833474

`A000045(n+1)-∑[A057077(n+1)]`
-/

namespace A111573.P16659842038038833474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111573.P16659842038038833474

namespace A111573

/-- `A000045(n+1)-∑[A057077(n+1)]` -/
def P16659842038038833474.Spec : Prop :=
  ∀ n, P16659842038038833474.a n = A111573 n

end A111573

/-! ## A111573.P4029774972684036668

`A112299(2*(n+1))+A000045(n+1)`
-/

namespace A111573.P4029774972684036668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (2 * (n + 1)) + A000045 (n + 1)

end

end A111573.P4029774972684036668

namespace A111573

/-- `A112299(2*(n+1))+A000045(n+1)` -/
def P4029774972684036668.Spec : Prop :=
  ∀ n, P4029774972684036668.a n = A111573 n

end A111573

/-! ## A111573.P2173461630309869237

`A000045(n+1)-A230075(2*n)/2`
-/

namespace A111573.P2173461630309869237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) - (A230075 (2 * n) : ℚ) / 2

end

end A111573.P2173461630309869237

namespace A111573

/-- `A000045(n+1)-A230075(2*n)/2` -/
def P2173461630309869237.Spec : Prop :=
  ∀ n, P2173461630309869237.a n = (A111573 n : ℚ)

end A111573

/-!
# A111574: a(n) = a(n-1) + a(n-3) + a(n-4), n >= 4, with initial terms 1,-1,2,3.

The programs for A111574, the canonical program `A111574.P2906463081187386783` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111574 has offset 0).

The definition of A111574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A111574.P2906463081187386783`, by `A111574.P2906463081187386783.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111574.P2906463081187386783

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111574

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P2906463081187386783.Spec : Prop :=
  ∀ n, P2906463081187386783.a n = A111574 n

theorem P2906463081187386783.correct : P2906463081187386783.Spec := by
  intro n
  simp only [A111574]

end A111574

/-! ## A111574.P3462374441641909571

`ogf((-1+2x-3x^2)/(-1+x+x^3+x^4))`
-/

namespace A111574.P3462374441641909571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -1, 0, -1, -1] n

end

end A111574.P3462374441641909571

namespace A111574

/-- `ogf((-1+2x-3x^2)/(-1+x+x^3+x^4))` -/
def P3462374441641909571.Spec : Prop :=
  ∀ n, P3462374441641909571.a n = A111574 n

end A111574

/-! ## A111574.P3905883652255109403

`A000045(n+1)-Δ[A295680(n+1)]`
-/

namespace A111574.P3905883652255109403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (f1 (n + 1) - f1 n)

end

end A111574.P3905883652255109403

namespace A111574

/-- `A000045(n+1)-Δ[A295680(n+1)]` -/
def P3905883652255109403.Spec : Prop :=
  ∀ n, P3905883652255109403.a n = A111574 n

end A111574

/-! ## A111574.P5147349211913503525

`A000045(n+1)+A111569(n)-A111572(n)`
-/

namespace A111574.P5147349211913503525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A111569 n - A111572 n)

end

end A111574.P5147349211913503525

namespace A111574

/-- `A000045(n+1)+A111569(n)-A111572(n)` -/
def P5147349211913503525.Spec : Prop :=
  ∀ n, P5147349211913503525.a n = A111574 n

end A111574

/-! ## A111574.P4127518033137524230

`A000045(n+1)-(A111571(n)+A111569(n))`
-/

namespace A111574.P4127518033137524230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (A111571 n + A111569 n)

end

end A111574.P4127518033137524230

namespace A111574

/-- `A000045(n+1)-(A111571(n)+A111569(n))` -/
def P4127518033137524230.Spec : Prop :=
  ∀ n, P4127518033137524230.a n = A111574 n

end A111574

/-! ## A111574.P16245839968520809007

`A111569(n+1)+A111571(n+1)-A111571(n)`
-/

namespace A111574.P16245839968520809007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (n + 1) + (A111571 (n + 1) - A111571 n)

end

end A111574.P16245839968520809007

namespace A111574

/-- `A111569(n+1)+A111571(n+1)-A111571(n)` -/
def P16245839968520809007.Spec : Prop :=
  ∀ n, P16245839968520809007.a n = A111574 n

end A111574

/-! ## A111574.P18015444844153584562

`A295681(n+1)+A295681(n+1)-A000045(n+1)`
-/

namespace A111574.P18015444844153584562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 (n + 1) + (A295681 (n + 1) - A000045 (n + 1))

end

end A111574.P18015444844153584562

namespace A111574

/-- `A295681(n+1)+A295681(n+1)-A000045(n+1)` -/
def P18015444844153584562.Spec : Prop :=
  ∀ n, P18015444844153584562.a n = A111574 n

end A111574

/-! ## A111574.P8303544617748962721

`Δ[A295678(n)]`
-/

namespace A111574.P8303544617748962721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111574.P8303544617748962721

namespace A111574

/-- `Δ[A295678(n)]` -/
def P8303544617748962721.Spec : Prop :=
  ∀ n, P8303544617748962721.a n = A111574 n

end A111574

/-! ## A111574.P10920011020945871446

`A000032(n)-A111569(n+1)`
-/

namespace A111574.P10920011020945871446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A111569 (n + 1)

end

end A111574.P10920011020945871446

namespace A111574

/-- `A000032(n)-A111569(n+1)` -/
def P10920011020945871446.Spec : Prop :=
  ∀ n, P10920011020945871446.a n = A111574 n

end A111574

/-! ## A111574.P5567953626899803109

`A295678(n+1)-A295678(n)`
-/

namespace A111574.P5567953626899803109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 (n + 1) - A295678 n

end

end A111574.P5567953626899803109

namespace A111574

/-- `A295678(n+1)-A295678(n)` -/
def P5567953626899803109.Spec : Prop :=
  ∀ n, P5567953626899803109.a n = A111574 n

end A111574

/-! ## A111574.P14588756238901442426

`A329723(n+2)-A111569(n+1)`
-/

namespace A111574.P14588756238901442426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2) - A111569 (n + 1)

end

end A111574.P14588756238901442426

namespace A111574

/-- `A329723(n+2)-A111569(n+1)` -/
def P14588756238901442426.Spec : Prop :=
  ∀ n, P14588756238901442426.a n = A111574 n

end A111574

/-! ## A111574.P12987979511407836940

`2*A295681(n+1)-A000045(n+1)`
-/

namespace A111574.P12987979511407836940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295681 (n + 1) - A000045 (n + 1)

end

end A111574.P12987979511407836940

namespace A111574

/-- `2*A295681(n+1)-A000045(n+1)` -/
def P12987979511407836940.Spec : Prop :=
  ∀ n, P12987979511407836940.a n = A111574 n

end A111574

/-! ## A111574.P9442272277042376442

`Δ[A000032(n-1)+A000045(n)-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A111574.P9442272277042376442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000032 (n - 1) + (A000045 n - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111574.P9442272277042376442

namespace A111574

/-- `Δ[A000032(n-1)+A000045(n)-a(n-2)]` -/
def P9442272277042376442.Spec : Prop :=
  ∀ n, P9442272277042376442.a n = A111574 n

end A111574

/-! ## A111574.P14988979700316815065

`A000032(n)-Δ[A195971(n)]`
-/

namespace A111574.P14988979700316815065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (f1 (n + 1) - f1 n)

end

end A111574.P14988979700316815065

namespace A111574

/-- `A000032(n)-Δ[A195971(n)]` -/
def P14988979700316815065.Spec : Prop :=
  ∀ n, P14988979700316815065.a n = A111574 n

end A111574

/-! ## A111574.P3303868076281603027

`Δ[A000071(n+2)-A295680(n+1)]`
-/

namespace A111574.P3303868076281603027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - A295680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111574.P3303868076281603027

namespace A111574

/-- `Δ[A000071(n+2)-A295680(n+1)]` -/
def P3303868076281603027.Spec : Prop :=
  ∀ n, P3303868076281603027.a n = A111574 n

end A111574

/-! ## A111574.P9425271589114281200

`A000045(n+1)-Δ[Δ[A126116(n+1)]]`
-/

namespace A111574.P9425271589114281200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (f1 (n + 1) - f1 n)

end

end A111574.P9425271589114281200

namespace A111574

/-- `A000045(n+1)-Δ[Δ[A126116(n+1)]]` -/
def P9425271589114281200.Spec : Prop :=
  ∀ n, P9425271589114281200.a n = A111574 n

end A111574

/-! ## A111574.P4096849975416005375

`Δ[A000071(n+2)-Δ[A126116(n+1)]]`
-/

namespace A111574.P4096849975416005375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111574.P4096849975416005375

namespace A111574

/-- `Δ[A000071(n+2)-Δ[A126116(n+1)]]` -/
def P4096849975416005375.Spec : Prop :=
  ∀ n, P4096849975416005375.a n = A111574 n

end A111574

/-! ## A111574.P2733593042450875520

`A000032(n)+A195971(n)-A195971(n+1)`
-/

namespace A111574.P2733593042450875520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A195971 n - A195971 (n + 1))

end

end A111574.P2733593042450875520

namespace A111574

/-- `A000032(n)+A195971(n)-A195971(n+1)` -/
def P2733593042450875520.Spec : Prop :=
  ∀ n, P2733593042450875520.a n = A111574 n

end A111574

/-! ## A111574.P13155925842496411138

`A291660(n)-(A286350(n)+A111569(n+1))`
-/

namespace A111574.P13155925842496411138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291660 n - (A286350 n + A111569 (n + 1))

end

end A111574.P13155925842496411138

namespace A111574

/-- `A291660(n)-(A286350(n)+A111569(n+1))` -/
def P13155925842496411138.Spec : Prop :=
  ∀ n, P13155925842496411138.a n = A111574 n

end A111574

/-! ## A111574.P11732802103803735129

`A075091(n)-(A111569(n+1)+A061084(n+1))`
-/

namespace A111574.P11732802103803735129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075091 n - (A111569 (n + 1) + A061084 (n + 1))

end

end A111574.P11732802103803735129

namespace A111574

/-- `A075091(n)-(A111569(n+1)+A061084(n+1))` -/
def P11732802103803735129.Spec : Prop :=
  ∀ n, P11732802103803735129.a n = A111574 n

end A111574

/-!
# A111575: Powers of 3 repeated four times.

The programs for A111575, the canonical program `A111575.P14114774631773575918` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111575 has offset 0).

The definition of A111575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111575.P14114774631773575918

`3^floor(n/4)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111575

/-- `3^floor(n/4)` -/
def P14114774631773575918.Spec : Prop :=
  ∀ n, P14114774631773575918.a n = (A111575 n : ℚ)

end A111575

/-! ## A111575.P8163463525671893847

`3*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A111575.P8163463525671893847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  3 * a (n - 4)

end

end A111575.P8163463525671893847

namespace A111575

/-- `3*a(n-4)` -/
def P8163463525671893847.Spec : Prop :=
  ∀ n, (P8163463525671893847.a n : ℤ) = A111575 n

end A111575

/-! ## A111575.P8062425336963688741

`a(n-4)+lcm(2, a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A111575.P8062425336963688741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 4) + Nat.lcm 2 (a (n - 4))

end

end A111575.P8062425336963688741

namespace A111575

/-- `a(n-4)+lcm(2, a(n-4))` -/
def P8062425336963688741.Spec : Prop :=
  ∀ n, (P8062425336963688741.a n : ℤ) = A111575 n

end A111575

/-! ## A111575.P11111392118723156518

`a(n-4)+a(n-4)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A111575.P11111392118723156518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 4) + (a (n - 4) + a (n - 4))

end

end A111575.P11111392118723156518

namespace A111575

/-- `a(n-4)+a(n-4)+a(n-4)` -/
def P11111392118723156518.Spec : Prop :=
  ∀ n, (P11111392118723156518.a n : ℤ) = A111575 n

end A111575

/-! ## A111575.P8170550615152816348

`A108411(floor(n/2))`
-/

namespace A111575.P8170550615152816348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 ⌊(n : ℚ) / 2⌋.toNat

end

end A111575.P8170550615152816348

namespace A111575

/-- `A108411(floor(n/2))` -/
def P8170550615152816348.Spec : Prop :=
  ∀ n, P8170550615152816348.a n = A111575 n

end A111575

/-! ## A111575.P15735745982541430415

`∏[A093148(abs(1-n))]`
-/

namespace A111575.P15735745982541430415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111575.P15735745982541430415

namespace A111575

/-- `∏[A093148(abs(1-n))]` -/
def P15735745982541430415.Spec : Prop :=
  ∀ n, P15735745982541430415.a n = A111575 n

end A111575

/-! ## A111575.P16158108026980948

`∏[gcd(3, A217516(n+2))]`
-/

namespace A111575.P16158108026980948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A217516 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111575.P16158108026980948

namespace A111575

/-- `∏[gcd(3, A217516(n+2))]` -/
def P16158108026980948.Spec : Prop :=
  ∀ n, (P16158108026980948.a n : ℤ) = A111575 n

end A111575

/-! ## A111575.P16303275712000216830

`A000244(A002265(n))`
-/

namespace A111575.P16303275712000216830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002265 n).toNat

end

end A111575.P16303275712000216830

namespace A111575

/-- `A000244(A002265(n))` -/
def P16303275712000216830.Spec : Prop :=
  ∀ n, P16303275712000216830.a n = A111575 n

end A111575

/-! ## A111575.P17214562423768262474

`A017913(A092533(n))`
-/

namespace A111575.P17214562423768262474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A092533 n).toNat

end

end A111575.P17214562423768262474

namespace A111575

/-- `A017913(A092533(n))` -/
def P17214562423768262474.Spec : Prop :=
  ∀ n, P17214562423768262474.a n = A111575 n

end A111575

/-!
# A111576: Number of minimal non-2-stack-sortable permutations of length n.

The programs for A111576, there is no canonical definition to state claims against.
-/

/-! ## A111576.P9978240242291694313

`A128796(n)%A357201(n)`
-/

namespace A111576.P9978240242291694313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128796 n) (A357201 n)

end

end A111576.P9978240242291694313

/-! ## A111576.P1506140678226410866

`A004255(n+1)%A001256(n)`
-/

namespace A111576.P1506140678226410866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004255 (n + 1)) (A001256 n)

end

end A111576.P1506140678226410866

/-! ## A111576.P4858975213134502234

`A202197(n+1)%A032171(n+1)`
-/

namespace A111576.P4858975213134502234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202197 (n + 1)) (A032171 (n + 1))

end

end A111576.P4858975213134502234

/-! ## A111576.P17027393005463217473

`A343769(n+1)%A273873(n+1)`
-/

namespace A111576.P17027393005463217473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343769 (n + 1)) (A273873 (n + 1))

end

end A111576.P17027393005463217473

/-! ## A111576.P8570400607751583653

`A333251(A097133(n*A186726(n)))`
-/

namespace A111576.P8570400607751583653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333251 (A097133 ((n : ℤ) * A186726 n).toNat).toNat

end

end A111576.P8570400607751583653

/-!
# A111577: Galton triangle T(n, k) = T(n-1, k-1) + (3k-2)*T(n-1, k) read by rows.

The programs for A111577, there is no canonical definition to state claims against.
-/

/-! ## A111577.P9266092809000932898

`A282629(n)/A000244(A002262(n))`
-/

namespace A111577.P9266092809000932898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282629 n : ℚ) / (A000244 (A002262 n).toNat : ℚ)

end

end A111577.P9266092809000932898

/-! ## A111577.P6971859564597336973

`A282629(n)/A013622(A112367(n))`
-/

namespace A111577.P6971859564597336973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282629 n : ℚ) / (A013622 (A112367 n).toNat : ℚ)

end

end A111577.P6971859564597336973

/-! ## A111577.P10177741589532343009

`A282629(n)/A140303(A061579(n))`
-/

namespace A111577.P10177741589532343009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282629 n : ℚ) / (A140303 (A061579 n).toNat : ℚ)

end

end A111577.P10177741589532343009

/-! ## A111577.P16060603842914919346

`A282629(n)/A140303(A114327(n)+n)`
-/

namespace A111577.P16060603842914919346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282629 n : ℚ) / (A140303 (A114327 n + (n : ℤ)).toNat : ℚ)

end

end A111577.P16060603842914919346

/-! ## A111577.P15918080007360869649

`A225468(n)/A225466(n)*A282629(n)`
-/

namespace A111577.P15918080007360869649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225468 n : ℚ) / (A225466 n : ℚ) * (A282629 n : ℚ)

end

end A111577.P15918080007360869649

/-! ## A111577.P4035255003026418586

`A282629(n)/A003959(A059268(n))`
-/

namespace A111577.P4035255003026418586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282629 n : ℚ) / (A003959 (A059268 n).toNat : ℚ)

end

end A111577.P4035255003026418586

/-! ## A111577.P10047338066889641115

`A282629(n)/A000265(A036561(n))`
-/

namespace A111577.P10047338066889641115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282629 n : ℚ) / (A000265 (A036561 n).toNat : ℚ)

end

end A111577.P10047338066889641115

/-!
# A111578: Triangle T(n, m) = T(n-1, m-1) + (4m-3)*T(n-1, m) read by rows 1<=m<=n.

The programs for A111578, there is no canonical definition to state claims against.
-/

/-! ## A111578.P5899305197021375924

`A285061(n)/A059268(n)²`
-/

namespace A111578.P5899305197021375924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285061 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A111578.P5899305197021375924

/-! ## A111578.P6322830141645152741

`A285061(n)/A000302(A002262(n))`
-/

namespace A111578.P6322830141645152741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285061 n : ℚ) / (A000302 (A002262 n).toNat : ℚ)

end

end A111578.P6322830141645152741

/-! ## A111578.P10256451745848391220

`A285061(n)/A262616(A061579(n))`
-/

namespace A111578.P10256451745848391220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285061 n : ℚ) / (A262616 (A061579 n).toNat : ℚ)

end

end A111578.P10256451745848391220

/-! ## A111578.P241864753171762456

`A285061(n)/A011782(A158405(n+1))`
-/

namespace A111578.P241864753171762456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285061 n : ℚ) / (A011782 (A158405 (n + 1)).toNat : ℚ)

end

end A111578.P241864753171762456

/-! ## A111578.P2848975669935213399

`A285066(n)/A047053(A002262(n))`
-/

namespace A111578.P2848975669935213399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285066 n : ℚ) / (A047053 (A002262 n).toNat : ℚ)

end

end A111578.P2848975669935213399

/-!
# A111579: Triangle A(r,c) read by rows, which contains the row sums of the triangle T(n,k)= T(n-1,k-1)+((c-1)*k+1)*T(n-1,k) in column c.

The programs for A111579, there is no canonical definition to state claims against.
-/

/-! ## A111579.P3792543623124010292

`A278984(n+1)+A055641(A059328(n))`
-/

namespace A111579.P3792543623124010292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (n + 1) + A055641 (A059328 n).toNat

end

end A111579.P3792543623124010292

/-! ## A111579.P2734782398137892469

`A278984(n+1)+A151511(A260340(n))`
-/

namespace A111579.P2734782398137892469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (n + 1) + A151511 (A260340 n).toNat

end

end A111579.P2734782398137892469

/-! ## A111579.P10488708406549554242

`A284775(A202750(n))+A278984(n+1)`
-/

namespace A111579.P10488708406549554242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (A202750 n).toNat + A278984 (n + 1)

end

end A111579.P10488708406549554242

/-! ## A111579.P11833167903828154730

`A278984(n+1)+A010060(A282230(n+1))`
-/

namespace A111579.P11833167903828154730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (n + 1) + A010060 (A282230 (n + 1)).toNat

end

end A111579.P11833167903828154730

/-! ## A111579.P8020162537921949271

`A322392(A001263(n+1))+A278984(n+1)`
-/

namespace A111579.P8020162537921949271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322392 (A001263 (n + 1)).toNat + A278984 (n + 1)

end

end A111579.P8020162537921949271

/-!
# A111580: Expansion of eta(q)^2 * eta(q^2) * eta(q^10)^3 / eta(q^5)^2 in powers of q.

The programs for A111580, the canonical program `A111580.P12502470077332756054` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111580 has offset 1).

The definition of A111580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111580.P6669023847645568440

`(-1)^(n+2)*A138558(n+1)`
-/

namespace A111580.P6669023847645568440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A138558 (n + 1)

end

end A111580.P6669023847645568440

namespace A111580

/-- `(-1)^(n+2)*A138558(n+1)` -/
def P6669023847645568440.Spec : Prop :=
  ∀ n, P6669023847645568440.a n = A111580 (n + 1)

end A111580

/-! ## A111580.P12502470077332756054

`∑{d}[n+1, A109091(#)*A154955((n+1)/#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A111580

/-- `∑{d}[n+1, A109091(#)*A154955((n+1)/#)]` -/
def P12502470077332756054.Spec : Prop :=
  ∀ n, P12502470077332756054.a n = A111580 (n + 1)

theorem P12502470077332756054.correct : P12502470077332756054.Spec := by
  intro n
  simp only [A111580, Nat.add_sub_cancel]

end A111580

/-! ## A111580.P13061944118729649661

`A138558(n+1)/A113185(n)*A132069(n)`
-/

namespace A111580.P13061944118729649661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138558 (n + 1) : ℚ) / (A113185 n : ℚ) * (A132069 n : ℚ)

end

end A111580.P13061944118729649661

namespace A111580

/-- `A138558(n+1)/A113185(n)*A132069(n)` -/
def P13061944118729649661.Spec : Prop :=
  ∀ n, P13061944118729649661.a n = (A111580 (n + 1) : ℚ)

end A111580

/-! ## A111580.P16747479494633887249

`A138512(n+1)*A138558(n+1)/A053723(n)`
-/

namespace A111580.P16747479494633887249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138512 (n + 1) * A138558 (n + 1) : ℚ) / (A053723 n : ℚ)

end

end A111580.P16747479494633887249

namespace A111580

/-- `A138512(n+1)*A138558(n+1)/A053723(n)` -/
def P16747479494633887249.Spec : Prop :=
  ∀ n, P16747479494633887249.a n = (A111580 (n + 1) : ℚ)

end A111580

/-! ## A111580.P603831339576593490

`A113185(n+1)-(A138558(n+1)+A132069(n+1))`
-/

namespace A111580.P603831339576593490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113185 (n + 1) - (A138558 (n + 1) + A132069 (n + 1))

end

end A111580.P603831339576593490

namespace A111580

/-- `A113185(n+1)-(A138558(n+1)+A132069(n+1))` -/
def P603831339576593490.Spec : Prop :=
  ∀ n, P603831339576593490.a n = A111580 (n + 1)

end A111580

/-! ## A111580.P6294692382733635438

`A113185(n+1)*A129303(n+1)/A138483(n+1)`
-/

namespace A111580.P6294692382733635438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113185 (n + 1) * A129303 (n + 1) : ℚ) / (A138483 (n + 1) : ℚ)

end

end A111580.P6294692382733635438

namespace A111580

/-- `A113185(n+1)*A129303(n+1)/A138483(n+1)` -/
def P6294692382733635438.Spec : Prop :=
  ∀ n, P6294692382733635438.a n = (A111580 (n + 1) : ℚ)

end A111580

/-! ## A111580.P13512321127393964373

`A138558(2*(n+1))/2`
-/

namespace A111580.P13512321127393964373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138558 (2 * (n + 1)) : ℚ) / 2

end

end A111580.P13512321127393964373

namespace A111580

/-- `A138558(2*(n+1))/2` -/
def P13512321127393964373.Spec : Prop :=
  ∀ n, P13512321127393964373.a n = (A111580 (n + 1) : ℚ)

end A111580

/-! ## A111580.P2528042138146866879

`(A109091(n+1)-A109091(A004277(n+1)))/2`
-/

namespace A111580.P2528042138146866879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109091 (n + 1) - A109091 (A004277 (n + 1)).toNat : ℚ) / 2

end

end A111580.P2528042138146866879

namespace A111580

/-- `(A109091(n+1)-A109091(A004277(n+1)))/2` -/
def P2528042138146866879.Spec : Prop :=
  ∀ n, P2528042138146866879.a n = (A111580 (n + 1) : ℚ)

end A111580

/-!
# A111581: G.f.: A(x) = ( G(x)^2 - G(x^2) - 2*x/(1-x^2) )/(4*x^2) where G(x) is the g.f. of A110627.

The programs for A111581, there is no canonical definition to state claims against.
-/

/-! ## A111581.P12535691207679380521

`A110654(lt[A008343(n+1), A355072(3*n+1)])`
-/

namespace A111581.P12535691207679380521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355072 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A111581.P12535691207679380521

/-! ## A111581.P6599128469959988444

`∑[A040053(p?[A059743(n)])]`
-/

namespace A111581.P6599128469959988444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059743 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040053 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111581.P6599128469959988444

/-! ## A111581.P5757854475112170600

`∑[A030302(A003554(n+1))]`
-/

namespace A111581.P5757854475112170600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A003554 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111581.P5757854475112170600

/-! ## A111581.P2465103854958827372

`∑[A359590(A001629(n+4))]`
-/

namespace A111581.P2465103854958827372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359590 (A001629 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111581.P2465103854958827372

/-! ## A111581.P3143793112537050076

`A394641(A026621(n))`
-/

namespace A111581.P3143793112537050076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394641 (A026621 n).toNat

end

end A111581.P3143793112537050076

/-!
# A111582: G.f.: A(x) = ( G(x)^3 - G(x^3) - 3*x*(1+x)/(1-x^3) )/(9*x^2) where G(x) is the g.f. of A110628.

The programs for A111582, there is no canonical definition to state claims against.
-/

/-! ## A111582.P8324965014445575619

`∑[A347784(record[A170980(n)])]`
-/

namespace A111582.P8324965014445575619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347784 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111582.P8324965014445575619

/-! ## A111582.P12578178194448295940

`∑[A219644((n-A002623(n))²)]`
-/

namespace A111582.P12578178194448295940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 (((n : ℤ) - A002623 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111582.P12578178194448295940

/-! ## A111582.P10065027289623105784

`∑[A347784(A029804(n+1)+1)]`
-/

namespace A111582.P10065027289623105784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347784 (A029804 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111582.P10065027289623105784

/-! ## A111582.P1544673063339377199

`∑[A147981(∑[A001615(2*n+1)])]`
-/

namespace A111582.P1544673063339377199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111582.P1544673063339377199

/-! ## A111582.P17418425046765069950

`A305079(A325513(n))+A076145(n+1)`
-/

namespace A111582.P17418425046765069950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A325513 n).toNat + A076145 (n + 1)

end

end A111582.P17418425046765069950

/-!
# A111583: G.f.: A(x) = ( G(x)^5 - G(x^5) - 5*x*((1-x^4)/(1-x))/(1-x^5) )/(25*x^2) where G(x) is the g.f. of A110631.

The programs for A111583, there is no canonical definition to state claims against.
-/

/-! ## A111583.P12036695168560338484

`A080684(A371870(n+1))`
-/

namespace A111583.P12036695168560338484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080684 (A371870 (n + 1)).toNat

end

end A111583.P12036695168560338484

/-! ## A111583.P9508277893464919002

`∑[A137451(A132109(n))]`
-/

namespace A111583.P9508277893464919002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137451 (A132109 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111583.P9508277893464919002

/-!
# A111584: G.f.: A(x) = ( G(x)^7 - G(x^7) - 7*x*((1-x^6)/(1-x))/(1-x^7) )/(49*x^2) where G(x) is the g.f. of A110635.

The programs for A111584, there is no canonical definition to state claims against.
-/

/-! ## A111584.P1823906558436823799

`A259178(A127359(n)+n²)`
-/

namespace A111584.P1823906558436823799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (A127359 n + (n ^ 2 : ℤ)).toNat

end

end A111584.P1823906558436823799

/-!
# A111586: G.f.: -x*(1+x+x^2+2*x^3+3*x^4+3*x^5+x^6-x^7-x^9)/((1+x)*(-1+2*x+x^3)).

The programs for A111586, the canonical program `A111586.P6286474755017366276` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111586 has offset 0).

The definition of A111586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111586.P6286474755017366276

`2*a(n-1)+a(n-3)-2*(-1)^n` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=12, a(5)=28, a(6)=62, a(7)=136, a(8)=299, a(9)=661`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111586

/-- `2*a(n-1)+a(n-3)-2*(-1)^n` -/
def P6286474755017366276.Spec : Prop :=
  ∀ n, P6286474755017366276.a n = A111586 n

theorem P6286474755017366276.correct : P6286474755017366276.Spec := by
  intro n
  simp only [A111586]

end A111586

/-! ## A111586.P11631359972454627205

`A100196(A085839(n)-A007051(n))`
-/

namespace A111586.P11631359972454627205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A085839 n - A007051 n).toNat

end

end A111586.P11631359972454627205

namespace A111586

/-- `A100196(A085839(n)-A007051(n))` -/
def P11631359972454627205.Spec : Prop :=
  ∀ n, P11631359972454627205.a n = A111586 n

end A111586

/-! ## A111586.P1771980081354324101

`A100196(A134915(n)-A007051(n))`
-/

namespace A111586.P1771980081354324101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A134915 n - A007051 n).toNat

end

end A111586.P1771980081354324101

namespace A111586

/-- `A100196(A134915(n)-A007051(n))` -/
def P1771980081354324101.Spec : Prop :=
  ∀ n, P1771980081354324101.a n = A111586 n

end A111586

/-! ## A111586.P9378222184746395470

`A100196(A192877(n)-A002262(n))`
-/

namespace A111586.P9378222184746395470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A192877 n - A002262 n).toNat

end

end A111586.P9378222184746395470

namespace A111586

/-- `A100196(A192877(n)-A002262(n))` -/
def P9378222184746395470.Spec : Prop :=
  ∀ n, P9378222184746395470.a n = A111586 n

end A111586

/-! ## A111586.P8610581226878611940

`A100196(A192877(n)-A004526(n))`
-/

namespace A111586.P8610581226878611940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A192877 n - A004526 n).toNat

end

end A111586.P8610581226878611940

namespace A111586

/-- `A100196(A192877(n)-A004526(n))` -/
def P8610581226878611940.Spec : Prop :=
  ∀ n, P8610581226878611940.a n = A111586 n

end A111586

/-!
# A111587: a(n) = 2*a(n-1) + 2*a(n-3) + a(n-4), a(0) = 1, a(1) = 4, a(2) = 9, a(3) = 20.

The programs for A111587, the canonical program `A111587.P17897863016275322130` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111587 has offset 0).

The definition of A111587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-3)+a(n-4)` (program `A111587.P17897863016275322130`, by `A111587.P17897863016275322130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111587.P17897863016275322130

`2*a(n-1)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=20`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111587

/-- `2*a(n-1)+2*a(n-3)+a(n-4)` -/
def P17897863016275322130.Spec : Prop :=
  ∀ n, (P17897863016275322130.a n : ℤ) = A111587 n

theorem P17897863016275322130.correct : P17897863016275322130.Spec := by
  intro n
  simp only [A111587]

end A111587

/-! ## A111587.P5185286228284029763

`ogf((1+2x+x^2)/(1-2x-2x^3-x^4))`
-/

namespace A111587.P5185286228284029763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, 0, -2, -1] n

end

end A111587.P5185286228284029763

namespace A111587

/-- `ogf((1+2x+x^2)/(1-2x-2x^3-x^4))` -/
def P5185286228284029763.Spec : Prop :=
  ∀ n, P5185286228284029763.a n = A111587 n

end A111587

/-! ## A111587.P16010450874332210326

`Δ[A116404(n+1)]`
-/

namespace A111587.P16010450874332210326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111587.P16010450874332210326

namespace A111587

/-- `Δ[A116404(n+1)]` -/
def P16010450874332210326.Spec : Prop :=
  ∀ n, P16010450874332210326.a n = A111587 n

end A111587

/-! ## A111587.P13633240557821799418

`A048739(n)+∑[n]%2`
-/

namespace A111587.P13633240557821799418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A111587.P13633240557821799418

namespace A111587

/-- `A048739(n)+∑[n]%2` -/
def P13633240557821799418.Spec : Prop :=
  ∀ n, P13633240557821799418.a n = A111587 n

end A111587

/-! ## A111587.P9071619620722943824

`record[A002965(n+1)*A119016(n)]`
-/

namespace A111587.P9071619620722943824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (n + 1) * A119016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111587.P9071619620722943824

namespace A111587

/-- `record[A002965(n+1)*A119016(n)]` -/
def P9071619620722943824.Spec : Prop :=
  ∀ n, P9071619620722943824.a n = A111587 n

end A111587

/-! ## A111587.P18187929176286999384

`A116404(n+2)-A116404(n+1)`
-/

namespace A111587.P18187929176286999384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116404 (n + 2) - A116404 (n + 1)

end

end A111587.P18187929176286999384

namespace A111587

/-- `A116404(n+2)-A116404(n+1)` -/
def P18187929176286999384.Spec : Prop :=
  ∀ n, P18187929176286999384.a n = A111587 n

end A111587

/-! ## A111587.P6708252972170454755

`A002965(n+3)*A082766(n+2)`
-/

namespace A111587.P6708252972170454755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (n + 3) * A082766 (n + 2)

end

end A111587.P6708252972170454755

namespace A111587

/-- `A002965(n+3)*A082766(n+2)` -/
def P6708252972170454755.Spec : Prop :=
  ∀ n, P6708252972170454755.a n = A111587 n

end A111587

/-! ## A111587.P11727129312230026866

`A002965(n+3)*A119016(n+2)`
-/

namespace A111587.P11727129312230026866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (n + 3) * A119016 (n + 2)

end

end A111587.P11727129312230026866

namespace A111587

/-- `A002965(n+3)*A119016(n+2)` -/
def P11727129312230026866.Spec : Prop :=
  ∀ n, P11727129312230026866.a n = A111587 n

end A111587

/-! ## A111587.P8600346861618954043

`A048739(n)+A000035(A110654(n))`
-/

namespace A111587.P8600346861618954043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + A000035 (A110654 n).toNat

end

end A111587.P8600346861618954043

namespace A111587

/-- `A048739(n)+A000035(A110654(n))` -/
def P8600346861618954043.Spec : Prop :=
  ∀ n, P8600346861618954043.a n = A111587 n

end A111587

/-! ## A111587.P12426326039340156285

`A048739(n)+A000035(A004526(n+1))`
-/

namespace A111587.P12426326039340156285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + A000035 (A004526 (n + 1)).toNat

end

end A111587.P12426326039340156285

namespace A111587

/-- `A048739(n)+A000035(A004526(n+1))` -/
def P12426326039340156285.Spec : Prop :=
  ∀ n, P12426326039340156285.a n = A111587 n

end A111587

/-! ## A111587.P12673395745712823514

`Δ[Δ[(a(n-3)/a(n-2)+2)*a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A111587.P12673395745712823514
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  (f2 (n - 3) / f2 (n - 2) + 2) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111587.P12673395745712823514

namespace A111587

/-- `Δ[Δ[(a(n-3)/a(n-2)+2)*a(n-1)]]` -/
def P12673395745712823514.Spec : Prop :=
  ∀ n, P12673395745712823514.a n = (A111587 n : ℚ)

end A111587

/-! ## A111587.P14778227128949948502

`Δ[Δ[A089928(n)]]`
-/

namespace A111587.P14778227128949948502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111587.P14778227128949948502

namespace A111587

/-- `Δ[Δ[A089928(n)]]` -/
def P14778227128949948502.Spec : Prop :=
  ∀ n, P14778227128949948502.a n = A111587 n

end A111587

/-!
# A111588: Crazy Dice: number of ways to design a pair of n-sided dice with positive integers on their faces, so that the sums when they are tossed occur with the same probabilities as if a pair of standard n-sided dice were tossed.

The programs for A111588, there is no canonical definition to state claims against.
-/

/-! ## A111588.P17336507910648667831

`floor(2^(A001222(∏{d}[n+1, #])/3))`
-/

namespace A111588.P17336507910648667831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((A001222 (∏ d ∈ Nat.divisors (f1 n), d) : ℚ) / 3 : ℝ)⌋

end

end A111588.P17336507910648667831

/-! ## A111588.P15761395992214844614

`A045778(2^(∑{e}[n+1, #]*∏{e}[n+1, #+1]/2))`
-/

namespace A111588.P15761395992214844614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℕ) : ℚ) / 2 : ℝ))).toNat

end

end A111588.P15761395992214844614

/-! ## A111588.P17908132943802565592

`A165258(A330773(n))`
-/

namespace A111588.P17908132943802565592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165258 (A330773 n).toNat

end

end A111588.P17908132943802565592

/-! ## A111588.P15762519605804927550

`A038372(A104725(n+1))`
-/

namespace A111588.P15762519605804927550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038372 (A104725 (n + 1)).toNat

end

end A111588.P15762519605804927550

/-! ## A111588.P8308780838018018570

`A181176(A050356(n+1))`
-/

namespace A111588.P8308780838018018570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181176 (A050356 (n + 1)).toNat

end

end A111588.P8308780838018018570

/-!
# A111589: Triangle read by rows: number of idempotent order-preserving partial transformations (of an n-element totally ordered set) of width k (width(alpha) = |Dom(alpha)|).

The programs for A111589, there is no canonical definition to state claims against.
-/

/-! ## A111589.P5752271929083962145

`A007318(n)*A088305(A002262(n))`
-/

namespace A111589.P5752271929083962145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A088305 (A002262 n).toNat

end

end A111589.P5752271929083962145

/-! ## A111589.P3055599197340111135

`A007318(n)*A088305(A163351(n))`
-/

namespace A111589.P3055599197340111135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A088305 (A163351 n).toNat

end

end A111589.P3055599197340111135

/-! ## A111589.P594047792086359117

`A007318(n)*A193924(A112367(n))`
-/

namespace A111589.P594047792086359117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A193924 (A112367 n).toNat

end

end A111589.P594047792086359117

/-! ## A111589.P4661987349847490543

`A007318(n)*A088305(A298486(n))`
-/

namespace A111589.P4661987349847490543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A088305 (A298486 n).toNat

end

end A111589.P4661987349847490543

/-! ## A111589.P9487334871629458526

`A007318(n)*A088305(A025659(n+1))`
-/

namespace A111589.P9487334871629458526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A088305 (A025659 (n + 1)).toNat

end

end A111589.P9487334871629458526

/-!
# A111590: Decimal expansion of the square of cosine of 1 degree.

The programs for A111590, there is no canonical definition to state claims against.
-/

/-! ## A111590.P2426265769511728957

`9-A111486(n)`
-/

namespace A111590.P2426265769511728957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A111486 n

end

end A111590.P2426265769511728957

/-!
# A111592: Admirable numbers. A number n is admirable if there exists a proper divisor d' of n such that sigma(n)-2d'=2n, where sigma(n) is the sum of all divisors of n.

The programs for A111592, there is no canonical definition to state claims against.
-/

/-! ## A111592.P7184693700296177612

`A005101(A136119(n+1)^A144261(n+1))`
-/

namespace A111592.P7184693700296177612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.roundAway ((A136119 (n + 1) : ℚ) ^ (A144261 (n + 1) : ℤ))).toNat

end

end A111592.P7184693700296177612

/-! ## A111592.P9822910810217004582

`A005101(A184618(n+1)^A144261(n+1))`
-/

namespace A111592.P9822910810217004582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.roundAway ((A184618 (n + 1) : ℚ) ^ (A144261 (n + 1) : ℤ))).toNat

end

end A111592.P9822910810217004582

/-! ## A111592.P16142789794475134962

`A005101(A187911(n+1)^A144261(n+1))`
-/

namespace A111592.P16142789794475134962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.roundAway ((A187911 (n + 1) : ℚ) ^ (A144261 (n + 1) : ℤ))).toNat

end

end A111592.P16142789794475134962

/-! ## A111592.P17907690959461137226

`A005101(A136119(n+1)%A053437(n+1))`
-/

namespace A111592.P17907690959461137226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (Int.tmod (A136119 (n + 1)) (A053437 (n + 1))).toNat

end

end A111592.P17907690959461137226

/-! ## A111592.P6222043893911329306

`∩[A305732(A048991(n+1)), A083207(n+2)]`
-/

namespace A111592.P6222043893911329306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305732 (A048991 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111592.P6222043893911329306

/-!
# A111593: Triangle of tanh numbers.

The programs for A111593, there is no canonical definition to state claims against.
-/

/-! ## A111593.P16513242634986953072

`A134028(A094504(n+1)*A111594(n))`
-/

namespace A111593.P16513242634986953072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 (A094504 (n + 1) * A111594 n).toNat

end

end A111593.P16513242634986953072

/-! ## A111593.P4422205433902761946

`A088705(A111594(n)^3)`
-/

namespace A111593.P4422205433902761946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A111594 n ^ 3).toNat

end

end A111593.P4422205433902761946

/-! ## A111593.P337402749038522267

`A130658(A026595(n))*A147311(n)`
-/

namespace A111593.P337402749038522267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (A026595 n).toNat * A147311 n

end

end A111593.P337402749038522267

/-! ## A111593.P16170808907851803425

`A119502(n)*A147311(A055645(n))`
-/

namespace A111593.P16170808907851803425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A147311 (A055645 n).toNat

end

end A111593.P16170808907851803425

/-! ## A111593.P3146072469146588871

`A102705(A135898(n))*A104975(n)`
-/

namespace A111593.P3146072469146588871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A135898 n).toNat * A104975 n

end

end A111593.P3146072469146588871

/-!
# A111594: Triangle of arctanh numbers.

The programs for A111594, there is no canonical definition to state claims against.
-/

/-! ## A111594.P3900563766042181744

`A137513(n+1)/A059268(n)`
-/

namespace A111594.P3900563766042181744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137513 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A111594.P3900563766042181744

/-! ## A111594.P14545148382502872971

`A137513(n+1)/A000079(A002262(n))`
-/

namespace A111594.P14545148382502872971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137513 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A111594.P14545148382502872971

/-! ## A111594.P17856849953601919992

`A137513(n+1)/A003958(A036561(n))`
-/

namespace A111594.P17856849953601919992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137513 (n + 1) : ℚ) / (A003958 (A036561 n).toNat : ℚ)

end

end A111594.P17856849953601919992

/-! ## A111594.P11506141818669922248

`A137513(n+1)/A130321(A061579(n))`
-/

namespace A111594.P11506141818669922248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137513 (n + 1) : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A111594.P11506141818669922248

/-! ## A111594.P11804988428760747335

`A137513(n+1)/A000079(A329221(n))`
-/

namespace A111594.P11804988428760747335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137513 (n + 1) : ℚ) / (A000079 (A329221 n).toNat : ℚ)

end

end A111594.P11804988428760747335

/-! ## A111594.P9042367193298583041

`A137513(n+1)/A050732(A002260(n+1))`
-/

namespace A111594.P9042367193298583041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137513 (n + 1) : ℚ) / (A050732 (A002260 (n + 1)).toNat : ℚ)

end

end A111594.P9042367193298583041

/-!
# A111596: The matrix inverse of the unsigned Lah numbers A271703.

The programs for A111596, the canonical program `A111596.P6007535604357986319` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111596 has offset 0).

The definition of A111596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111596.P6007535604357986319

`A097807(n)*A271703(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A111596

/-- `A097807(n)*A271703(n)` -/
def P6007535604357986319.Spec : Prop :=
  ∀ n, P6007535604357986319.a n = A111596 n

theorem P6007535604357986319.correct : P6007535604357986319.Spec := by
  intro n
  simp only [A111596]

end A111596

/-! ## A111596.P18374803203783144174

`A033999(A025581(n))*A271703(n)`
-/

namespace A111596.P18374803203783144174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A271703 n

end

end A111596.P18374803203783144174

namespace A111596

/-- `A033999(A025581(n))*A271703(n)` -/
def P18374803203783144174.Spec : Prop :=
  ∀ n, P18374803203783144174.a n = A111596 n

end A111596

/-! ## A111596.P15882778130637329184

`A033999(A051162(n))*A271703(n)`
-/

namespace A111596.P15882778130637329184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A271703 n

end

end A111596.P15882778130637329184

namespace A111596

/-- `A033999(A051162(n))*A271703(n)` -/
def P15882778130637329184.Spec : Prop :=
  ∀ n, P15882778130637329184.a n = A111596 n

end A111596

/-! ## A111596.P17956155926975312137

`A009531(A099375(n))*A271703(n)`
-/

namespace A111596.P17956155926975312137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A271703 n

end

end A111596.P17956155926975312137

namespace A111596

/-- `A009531(A099375(n))*A271703(n)` -/
def P17956155926975312137.Spec : Prop :=
  ∀ n, P17956155926975312137.a n = A111596 n

end A111596

/-! ## A111596.P5231160287987157963

`A062157(A004736(n+1))*A271703(n)`
-/

namespace A111596.P5231160287987157963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A271703 n

end

end A111596.P5231160287987157963

namespace A111596

/-- `A062157(A004736(n+1))*A271703(n)` -/
def P5231160287987157963.Spec : Prop :=
  ∀ n, P5231160287987157963.a n = A111596 n

end A111596

/-! ## A111596.P16130041114647526471

`A033999(A108872(n+1))*A271703(n)`
-/

namespace A111596.P16130041114647526471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A108872 (n + 1)).toNat * A271703 n

end

end A111596.P16130041114647526471

namespace A111596

/-- `A033999(A108872(n+1))*A271703(n)` -/
def P16130041114647526471.Spec : Prop :=
  ∀ n, P16130041114647526471.a n = A111596 n

end A111596

/-! ## A111596.P7565533039006905917

`A062157(A094727(n+1))*A271703(n)`
-/

namespace A111596.P7565533039006905917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A094727 (n + 1)).toNat * A271703 n

end

end A111596.P7565533039006905917

namespace A111596

/-- `A062157(A094727(n+1))*A271703(n)` -/
def P7565533039006905917.Spec : Prop :=
  ∀ n, P7565533039006905917.a n = A111596 n

end A111596

/-! ## A111596.P13939409187761591378

`A057428(n)^A025581(n)*A271703(n)`
-/

namespace A111596.P13939409187761591378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A025581 n : ℤ) * (A271703 n : ℚ)

end

end A111596.P13939409187761591378

namespace A111596

/-- `A057428(n)^A025581(n)*A271703(n)` -/
def P13939409187761591378.Spec : Prop :=
  ∀ n, P13939409187761591378.a n = (A111596 n : ℚ)

end A111596

/-! ## A111596.P923593486259531651

`A130595(n)/abs(A130595(n))*A271703(n)`
-/

namespace A111596.P923593486259531651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 n : ℚ) / (|A130595 n| : ℚ) * (A271703 n : ℚ)

end

end A111596.P923593486259531651

namespace A111596

/-- `A130595(n)/abs(A130595(n))*A271703(n)` -/
def P923593486259531651.Spec : Prop :=
  ∀ n, P923593486259531651.a n = (A111596 n : ℚ)

end A111596

/-! ## A111596.P1829760142522526919

`A008836(A130321(n))*A271703(n)`
-/

namespace A111596.P1829760142522526919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A271703 n

end

end A111596.P1829760142522526919

namespace A111596

/-- `A008836(A130321(n))*A271703(n)` -/
def P1829760142522526919.Spec : Prop :=
  ∀ n, P1829760142522526919.a n = A111596 n

end A111596

/-!
# A111597: Lah numbers: a(n) = n!*binomial(n-1,6)/7!.

The programs for A111597, the canonical program `A111597.P6236241491048501046` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111597 has offset 7).

The definition of A111597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111597.P6236241491048501046

`n!*C(n+7, 7)*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111597

/-- `n!*C(n+7, 7)*C(n+6, 6)` -/
def P6236241491048501046.Spec : Prop :=
  ∀ n, (P6236241491048501046.a n : ℤ) = A111597 (n + 7)

theorem P6236241491048501046.correct : P6236241491048501046.Spec := by
  intro n
  simp only [A111597, Nat.add_sub_cancel]

end A111597

/-! ## A111597.P4864289179646805148

`(n+7)!*C(n+6, 6)/7!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111597.P4864289179646805148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 7) * Nat.choose (n + 6) 6 : ℚ) / (Nat.factorial 7 : ℚ)

end

end A111597.P4864289179646805148

namespace A111597

/-- `(n+7)!*C(n+6, 6)/7!` -/
def P4864289179646805148.Spec : Prop :=
  ∀ n, P4864289179646805148.a n = (A111597 (n + 7) : ℚ)

end A111597

/-! ## A111597.P9175403251230266797

`∏[n+6]/6*C(n+7, 7)`
-/

namespace A111597.P9175403251230266797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6 * (Nat.choose (n + 7) 7 : ℚ)

end

end A111597.P9175403251230266797

namespace A111597

/-- `∏[n+6]/6*C(n+7, 7)` -/
def P9175403251230266797.Spec : Prop :=
  ∀ n, P9175403251230266797.a n = (A111597 (n + 7) : ℚ)

end A111597

/-! ## A111597.P3249376202113168557

`(n+1)!*A134288(n)`
-/

namespace A111597.P3249376202113168557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A134288 n

end

end A111597.P3249376202113168557

namespace A111597

/-- `(n+1)!*A134288(n)` -/
def P3249376202113168557.Spec : Prop :=
  ∀ n, P3249376202113168557.a n = A111597 (n + 7)

end A111597

/-! ## A111597.P6557325411223079403

`A271703(eq[7, A002262(n)])`
-/

namespace A111597.P6557325411223079403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111597.P6557325411223079403

namespace A111597

/-- `A271703(eq[7, A002262(n)])` -/
def P6557325411223079403.Spec : Prop :=
  ∀ n, P6557325411223079403.a n = A111597 (n + 7)

end A111597

/-! ## A111597.P16819109236077466488

`A105278(A167499(n+5)+2)`
-/

namespace A111597.P16819109236077466488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A167499 (n + 5) + 2).toNat

end

end A111597.P16819109236077466488

namespace A111597

/-- `A105278(A167499(n+5)+2)` -/
def P16819109236077466488.Spec : Prop :=
  ∀ n, P16819109236077466488.a n = A111597 (n + 7)

end A111597

/-! ## A111597.P563262906833293271

`A066667(eq[7, A002260(n+1)])`
-/

namespace A111597.P563262906833293271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111597.P563262906833293271

namespace A111597

/-- `A066667(eq[7, A002260(n+1)])` -/
def P563262906833293271.Spec : Prop :=
  ∀ n, P563262906833293271.a n = A111597 (n + 7)

end A111597

/-! ## A111597.P9017144535651855580

`A271703(eq[7, A144328(n+1)])`
-/

namespace A111597.P9017144535651855580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111597.P9017144535651855580

namespace A111597

/-- `A271703(eq[7, A144328(n+1)])` -/
def P9017144535651855580.Spec : Prop :=
  ∀ n, P9017144535651855580.a n = A111597 (n + 7)

end A111597

/-! ## A111597.P4854743138964535724

`A271703(eq[8, A002260(n+1)])`
-/

namespace A111597.P4854743138964535724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111597.P4854743138964535724

namespace A111597

/-- `A271703(eq[8, A002260(n+1)])` -/
def P4854743138964535724.Spec : Prop :=
  ∀ n, P4854743138964535724.a n = A111597 (n + 7)

end A111597

/-! ## A111597.P17622748669580620952

`A000142(n+1)*A134288(n)`
-/

namespace A111597.P17622748669580620952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A134288 n

end

end A111597.P17622748669580620952

namespace A111597

/-- `A000142(n+1)*A134288(n)` -/
def P17622748669580620952.Spec : Prop :=
  ∀ n, P17622748669580620952.a n = A111597 (n + 7)

end A111597

/-!
# A111598: Lah numbers: a(n) = n!*binomial(n-1,7)/8!.

The programs for A111598, the canonical program `A111598.P16000678129907683012` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111598 has offset 8).

The definition of A111598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111598.P16000678129907683012

`n!*C(n+7, 7)*C(n+8, 8)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111598

/-- `n!*C(n+7, 7)*C(n+8, 8)` -/
def P16000678129907683012.Spec : Prop :=
  ∀ n, (P16000678129907683012.a n : ℤ) = A111598 (n + 8)

theorem P16000678129907683012.correct : P16000678129907683012.Spec := by
  intro n
  simp only [A111598, Nat.add_sub_cancel]

end A111598

/-! ## A111598.P6642946689192018462

`(n+8)!*C(n+7, 7)/8!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111598.P6642946689192018462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 8) * Nat.choose (n + 7) 7 : ℚ) / (Nat.factorial 8 : ℚ)

end

end A111598.P6642946689192018462

namespace A111598

/-- `(n+8)!*C(n+7, 7)/8!` -/
def P6642946689192018462.Spec : Prop :=
  ∀ n, P6642946689192018462.a n = (A111598 (n + 8) : ℚ)

end A111598

/-! ## A111598.P10738755105296699255

`∏[n+7]/7*C(n+8, 8)`
-/

namespace A111598.P10738755105296699255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7 * (Nat.choose (n + 8) 8 : ℚ)

end

end A111598.P10738755105296699255

namespace A111598

/-- `∏[n+7]/7*C(n+8, 8)` -/
def P10738755105296699255.Spec : Prop :=
  ∀ n, P10738755105296699255.a n = (A111598 (n + 8) : ℚ)

end A111598

/-! ## A111598.P17687556615604481395

`∏[n+1]*A134289(n)`
-/

namespace A111598.P17687556615604481395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A134289 n

end

end A111598.P17687556615604481395

namespace A111598

/-- `∏[n+1]*A134289(n)` -/
def P17687556615604481395.Spec : Prop :=
  ∀ n, P17687556615604481395.a n = A111598 (n + 8)

end A111598

/-! ## A111598.P13193375247272120196

`∏[n+7]/7*A000581(n+8)`
-/

namespace A111598.P13193375247272120196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7 * (A000581 (n + 8) : ℚ)

end

end A111598.P13193375247272120196

namespace A111598

/-- `∏[n+7]/7*A000581(n+8)` -/
def P13193375247272120196.Spec : Prop :=
  ∀ n, P13193375247272120196.a n = (A111598 (n + 8) : ℚ)

end A111598

/-! ## A111598.P13412774659283936759

`∏[n+7]/7*∑[A000580(n+7)]`
-/

namespace A111598.P13412774659283936759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A111598.P13412774659283936759

namespace A111598

/-- `∏[n+7]/7*∑[A000580(n+7)]` -/
def P13412774659283936759.Spec : Prop :=
  ∀ n, P13412774659283936759.a n = (A111598 (n + 8) : ℚ)

end A111598

/-! ## A111598.P893171197402177845

`A271703(eq[8, A002262(n)])`
-/

namespace A111598.P893171197402177845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111598.P893171197402177845

namespace A111598

/-- `A271703(eq[8, A002262(n)])` -/
def P893171197402177845.Spec : Prop :=
  ∀ n, P893171197402177845.a n = A111598 (n + 8)

end A111598

/-! ## A111598.P2036669877727191751

`A105278(A134869(n+7)+7)`
-/

namespace A111598.P2036669877727191751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A134869 (n + 7) + 7).toNat

end

end A111598.P2036669877727191751

namespace A111598

/-- `A105278(A134869(n+7)+7)` -/
def P2036669877727191751.Spec : Prop :=
  ∀ n, P2036669877727191751.a n = A111598 (n + 8)

end A111598

/-! ## A111598.P3570974756775096394

`A105278(eq[9, A131818(n+1)])`
-/

namespace A111598.P3570974756775096394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111598.P3570974756775096394

namespace A111598

/-- `A105278(eq[9, A131818(n+1)])` -/
def P3570974756775096394.Spec : Prop :=
  ∀ n, P3570974756775096394.a n = A111598 (n + 8)

end A111598

/-! ## A111598.P11702181155215442837

`A271703(eq[9, A002260(n+1)])`
-/

namespace A111598.P11702181155215442837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111598.P11702181155215442837

namespace A111598

/-- `A271703(eq[9, A002260(n+1)])` -/
def P11702181155215442837.Spec : Prop :=
  ∀ n, P11702181155215442837.a n = A111598 (n + 8)

end A111598

/-!
# A111599: Lah numbers: a(n) = n!*binomial(n-1,8)/9!.

The programs for A111599, the canonical program `A111599.P889593453866567226` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111599 has offset 9).

The definition of A111599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111599.P889593453866567226

`(n+9)!*C(n+8, 8)/9!`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111599

/-- `(n+9)!*C(n+8, 8)/9!` -/
def P889593453866567226.Spec : Prop :=
  ∀ n, P889593453866567226.a n = (A111599 (n + 9) : ℚ)

end A111599

/-! ## A111599.P9773754260867201932

`∏[n+9]/9*C(n+8, 8)`
-/

namespace A111599.P9773754260867201932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9 * (Nat.choose (n + 8) 8 : ℚ)

end

end A111599.P9773754260867201932

namespace A111599

/-- `∏[n+9]/9*C(n+8, 8)` -/
def P9773754260867201932.Spec : Prop :=
  ∀ n, P9773754260867201932.a n = (A111599 (n + 9) : ℚ)

end A111599

/-! ## A111599.P6435762156328009196

`C(n+9, 9)*A049389(n)`
-/

namespace A111599.P6435762156328009196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A049389 n

end

end A111599.P6435762156328009196

namespace A111599

/-- `C(n+9, 9)*A049389(n)` -/
def P6435762156328009196.Spec : Prop :=
  ∀ n, P6435762156328009196.a n = A111599 (n + 9)

end A111599

/-! ## A111599.P2355894711374984738

`A066667(eq[8, A002262(n)])`
-/

namespace A111599.P2355894711374984738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111599.P2355894711374984738

namespace A111599

/-- `A066667(eq[8, A002262(n)])` -/
def P2355894711374984738.Spec : Prop :=
  ∀ n, P2355894711374984738.a n = A111599 (n + 9)

end A111599

/-! ## A111599.P13807724629743584858

`A271703(eq[9, A002262(n)])`
-/

namespace A111599.P13807724629743584858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111599.P13807724629743584858

namespace A111599

/-- `A271703(eq[9, A002262(n)])` -/
def P13807724629743584858.Spec : Prop :=
  ∀ n, P13807724629743584858.a n = A111599 (n + 9)

end A111599

/-! ## A111599.P548460376015577153

`record[A262071(n)]*A134290(n)`
-/

namespace A111599.P548460376015577153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A134290 n

end

end A111599.P548460376015577153

namespace A111599

/-- `record[A262071(n)]*A134290(n)` -/
def P548460376015577153.Spec : Prop :=
  ∀ n, P548460376015577153.a n = A111599 (n + 9)

end A111599

/-! ## A111599.P1207927800861578659

`A105278(A134869(n+8)+8)`
-/

namespace A111599.P1207927800861578659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A134869 (n + 8) + 8).toNat

end

end A111599.P1207927800861578659

namespace A111599

/-- `A105278(A134869(n+8)+8)` -/
def P1207927800861578659.Spec : Prop :=
  ∀ n, P1207927800861578659.a n = A111599 (n + 9)

end A111599

/-! ## A111599.P1706472917363678646

`A066667(eq[9, A002260(n+1)])`
-/

namespace A111599.P1706472917363678646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111599.P1706472917363678646

namespace A111599

/-- `A066667(eq[9, A002260(n+1)])` -/
def P1706472917363678646.Spec : Prop :=
  ∀ n, P1706472917363678646.a n = A111599 (n + 9)

end A111599

/-! ## A111599.P17110660237275766022

`A066667(eq[9, A134868(n+1)])`
-/

namespace A111599.P17110660237275766022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111599.P17110660237275766022

namespace A111599

/-- `A066667(eq[9, A134868(n+1)])` -/
def P17110660237275766022.Spec : Prop :=
  ∀ n, P17110660237275766022.a n = A111599 (n + 9)

end A111599

/-! ## A111599.P5114113617801535373

`A271703(eq[10, A002260(n+1)])`
-/

namespace A111599.P5114113617801535373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111599.P5114113617801535373

namespace A111599

/-- `A271703(eq[10, A002260(n+1)])` -/
def P5114113617801535373.Spec : Prop :=
  ∀ n, P5114113617801535373.a n = A111599 (n + 9)

end A111599

