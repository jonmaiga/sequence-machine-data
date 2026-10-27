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
import Seq.B000.C024
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
import Seq.B000.C040
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
import Seq.B001.C012
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A133100: Expansion of f(x, x^4) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A133100, the canonical program `A133100.P17156214478068550285` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133100 has offset 0).

The definition of A133100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133100.P17156214478068550285

`A010052(40*n+9)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133100

/-- `A010052(40*n+9)` -/
def P17156214478068550285.Spec : Prop :=
  ∀ n, P17156214478068550285.a n = A133100 n

theorem P17156214478068550285.correct : P17156214478068550285.Spec := by
  intro n
  simp only [A133100]

end A133100

/-! ## A133100.P15046017562647702515

`char[∑[2*n-gcd(n, ∑[n])]]`
-/

namespace A133100.P15046017562647702515
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133100.P15046017562647702515

namespace A133100

/-- `char[∑[2*n-gcd(n, ∑[n])]]` -/
def P15046017562647702515.Spec : Prop :=
  ∀ n, (P15046017562647702515.a n : ℤ) = A133100 n

end A133100

/-! ## A133100.P11438849573888874998

`char[∑[a(n-2)+5]-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A133100.P11438849573888874998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133100.P11438849573888874998

namespace A133100

/-- `char[∑[a(n-2)+5]-a(n-1)]` -/
def P11438849573888874998.Spec : Prop :=
  ∀ n, (P11438849573888874998.a n : ℤ) = A133100 n

end A133100

/-! ## A133100.P3391257301792615781

`abs(A113429(n))`
-/

namespace A133100.P3391257301792615781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113429 n|

end

end A133100.P3391257301792615781

namespace A133100

/-- `abs(A113429(n))` -/
def P3391257301792615781.Spec : Prop :=
  ∀ n, P3391257301792615781.a n = A133100 n

end A133100

/-! ## A133100.P392575113070459376

`char[A085787(n)]`
-/

namespace A133100.P392575113070459376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133100.P392575113070459376

namespace A133100

/-- `char[A085787(n)]` -/
def P392575113070459376.Spec : Prop :=
  ∀ n, (P392575113070459376.a n : ℤ) = A133100 n

end A133100

/-! ## A133100.P12141735553406694000

`A023531(5*n)`
-/

namespace A133100.P12141735553406694000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (5 * n)

end

end A133100.P12141735553406694000

namespace A133100

/-- `A023531(5*n)` -/
def P12141735553406694000.Spec : Prop :=
  ∀ n, P12141735553406694000.a n = A133100 n

end A133100

/-! ## A133100.P14560029302192971522

`A115356(5*n)`
-/

namespace A133100.P14560029302192971522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 (5 * n)

end

end A133100.P14560029302192971522

namespace A133100

/-- `A115356(5*n)` -/
def P14560029302192971522.Spec : Prop :=
  ∀ n, P14560029302192971522.a n = A133100 n

end A133100

/-! ## A133100.P10083521961783788962

`A122135(n)%2`
-/

namespace A133100.P10083521961783788962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122135 n) 2

end

end A133100.P10083521961783788962

namespace A133100

/-- `A122135(n)%2` -/
def P10083521961783788962.Spec : Prop :=
  ∀ n, P10083521961783788962.a n = A133100 n

end A133100

/-! ## A133100.P11793060687594586767

`char[∑[A195013(n+2)]-3*(n+1)]`
-/

namespace A133100.P11793060687594586767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (3 * (n + 1) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133100.P11793060687594586767

namespace A133100

/-- `char[∑[A195013(n+2)]-3*(n+1)]` -/
def P11793060687594586767.Spec : Prop :=
  ∀ n, (P11793060687594586767.a n : ℤ) = A133100 n

end A133100

/-! ## A133100.P14936180018233408336

`gcd(A000038(n), A113429(n))`
-/

namespace A133100.P14936180018233408336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A113429 n)

end

end A133100.P14936180018233408336

namespace A133100

/-- `gcd(A000038(n), A113429(n))` -/
def P14936180018233408336.Spec : Prop :=
  ∀ n, (P14936180018233408336.a n : ℤ) = A133100 n

end A133100

/-! ## A133100.P17698907017307970430

`lcm(A010892(n), A113429(n))`
-/

namespace A133100.P17698907017307970430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 n) (A113429 n)

end

end A133100.P17698907017307970430

namespace A133100

/-- `lcm(A010892(n), A113429(n))` -/
def P17698907017307970430.Spec : Prop :=
  ∀ n, (P17698907017307970430.a n : ℤ) = A133100 n

end A133100

/-! ## A133100.P16170831828206574521

`A113429(n)^A000010(n+2)`
-/

namespace A133100.P16170831828206574521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113429 n : ℚ) ^ (A000010 (n + 2) : ℤ)

end

end A133100.P16170831828206574521

namespace A133100

/-- `A113429(n)^A000010(n+2)` -/
def P16170831828206574521.Spec : Prop :=
  ∀ n, P16170831828206574521.a n = (A133100 n : ℚ)

end A133100

/-! ## A133100.P14335910211905952249

`char[∑[n-A026741(A026741(n))]]`
-/

namespace A133100.P14335910211905952249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A026741 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133100.P14335910211905952249

namespace A133100

/-- `char[∑[n-A026741(A026741(n))]]` -/
def P14335910211905952249.Spec : Prop :=
  ∀ n, (P14335910211905952249.a n : ℤ) = A133100 n

end A133100

/-! ## A133100.P17338177501991468226

`(A113429(n)^A000040(n+1))²`
-/

namespace A133100.P17338177501991468226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A113429 n : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A133100.P17338177501991468226

namespace A133100

/-- `(A113429(n)^A000040(n+1))²` -/
def P17338177501991468226.Spec : Prop :=
  ∀ n, P17338177501991468226.a n = (A133100 n : ℚ)

end A133100

/-! ## A133100.P15725981243831697151

`(A113429(n)^A000203(n+1))²`
-/

namespace A133100.P15725981243831697151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A113429 n : ℚ) ^ (A000203 (n + 1) : ℤ)) ^ 2

end

end A133100.P15725981243831697151

namespace A133100

/-- `(A113429(n)^A000203(n+1))²` -/
def P15725981243831697151.Spec : Prop :=
  ∀ n, P15725981243831697151.a n = (A133100 n : ℚ)

end A133100

/-! ## A133100.P14531456815471824042

`A197870(eq[1, A117898(n)])²`
-/

namespace A133100.P14531456815471824042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A133100.P14531456815471824042

namespace A133100

/-- `A197870(eq[1, A117898(n)])²` -/
def P14531456815471824042.Spec : Prop :=
  ∀ n, P14531456815471824042.a n = A133100 n

end A133100

/-! ## A133100.P343336553867265705

`A326822(A205556(n+1))`
-/

namespace A133100.P343336553867265705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 (A205556 (n + 1)).toNat

end

end A133100.P343336553867265705

namespace A133100

/-- `A326822(A205556(n+1))` -/
def P343336553867265705.Spec : Prop :=
  ∀ n, P343336553867265705.a n = A133100 n

end A133100

/-! ## A133100.P16915375602924175878

`A205633(A184012(2*n+1)+1)`
-/

namespace A133100.P16915375602924175878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205633 (A184012 (2 * n + 1) + 1).toNat

end

end A133100.P16915375602924175878

namespace A133100

/-- `A205633(A184012(2*n+1)+1)` -/
def P16915375602924175878.Spec : Prop :=
  ∀ n, P16915375602924175878.a n = A133100 n

end A133100

/-! ## A133100.P10727177313981451583

`A205633(A183870(2*(n+1))-A205633(2*n))`
-/

namespace A133100.P10727177313981451583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205633 (A183870 (2 * (n + 1)) - A205633 (2 * n)).toNat

end

end A133100.P10727177313981451583

namespace A133100

/-- `A205633(A183870(2*(n+1))-A205633(2*n))` -/
def P10727177313981451583.Spec : Prop :=
  ∀ n, P10727177313981451583.a n = A133100 n

end A133100

/-!
# A133101: Expansion of f(x^2, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A133101, the canonical program `A133101.P1108261628039295405` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133101 has offset 0).

The definition of A133101 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113428, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133101.P1108261628039295405

`abs(A113428(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A133101

/-- `abs(A113428(n))` -/
def P1108261628039295405.Spec : Prop :=
  ∀ n, P1108261628039295405.a n = A133101 n

theorem P1108261628039295405.correct : P1108261628039295405.Spec := by
  intro n
  simp only [A133101]

end A133101

/-! ## A133101.P17432707484565057485

`A122134(n)%2`
-/

namespace A133101.P17432707484565057485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122134 n) 2

end

end A133101.P17432707484565057485

namespace A133101

/-- `A122134(n)%2` -/
def P17432707484565057485.Spec : Prop :=
  ∀ n, P17432707484565057485.a n = A133101 n

end A133101

/-! ## A133101.P8210709233099839887

`and(1, char[A057569(n+1)])`
-/

namespace A133101.P8210709233099839887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A133101.P8210709233099839887

namespace A133101

/-- `and(1, char[A057569(n+1)])` -/
def P8210709233099839887.Spec : Prop :=
  ∀ n, (P8210709233099839887.a n : ℤ) = A133101 n

end A133101

/-! ## A133101.P3688579950750229346

`A113428(n)^A005897(n)`
-/

namespace A133101.P3688579950750229346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113428 n : ℚ) ^ (A005897 n : ℤ)

end

end A133101.P3688579950750229346

namespace A133101

/-- `A113428(n)^A005897(n)` -/
def P3688579950750229346.Spec : Prop :=
  ∀ n, P3688579950750229346.a n = (A133101 n : ℚ)

end A133101

/-! ## A133101.P8797280755517498165

`A113428(n)^A008458(n)`
-/

namespace A133101.P8797280755517498165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113428 n : ℚ) ^ (A008458 n : ℤ)

end

end A133101.P8797280755517498165

namespace A133101

/-- `A113428(n)^A008458(n)` -/
def P8797280755517498165.Spec : Prop :=
  ∀ n, P8797280755517498165.a n = (A133101 n : ℚ)

end A133101

/-! ## A133101.P5927920874876166395

`A113428(n)^A322131(n)`
-/

namespace A133101.P5927920874876166395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113428 n : ℚ) ^ (A322131 n : ℤ)

end

end A133101.P5927920874876166395

namespace A133101

/-- `A113428(n)^A322131(n)` -/
def P5927920874876166395.Spec : Prop :=
  ∀ n, P5927920874876166395.a n = (A133101 n : ℚ)

end A133101

/-! ## A133101.P7842591035260033591

`gcd(A000038(n), A113428(n))`
-/

namespace A133101.P7842591035260033591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A113428 n)

end

end A133101.P7842591035260033591

namespace A133101

/-- `gcd(A000038(n), A113428(n))` -/
def P7842591035260033591.Spec : Prop :=
  ∀ n, (P7842591035260033591.a n : ℤ) = A133101 n

end A133101

/-! ## A133101.P415591025004097906

`lcm(A005131(n), A113428(n))`
-/

namespace A133101.P415591025004097906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005131 n) (A113428 n)

end

end A133101.P415591025004097906

namespace A133101

/-- `lcm(A005131(n), A113428(n))` -/
def P415591025004097906.Spec : Prop :=
  ∀ n, (P415591025004097906.a n : ℤ) = A133101 n

end A133101

/-! ## A133101.P8894956134024060337

`and(A031178(n), A113428(n))`
-/

namespace A133101.P8894956134024060337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031178 n) (A113428 n)

end

end A133101.P8894956134024060337

namespace A133101

/-- `and(A031178(n), A113428(n))` -/
def P8894956134024060337.Spec : Prop :=
  ∀ n, P8894956134024060337.a n = A133101 n

end A133101

/-! ## A133101.P11479530575789987219

`and(A058281(n), A113428(n))`
-/

namespace A133101.P11479530575789987219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058281 n) (A113428 n)

end

end A133101.P11479530575789987219

namespace A133101

/-- `and(A058281(n), A113428(n))` -/
def P11479530575789987219.Spec : Prop :=
  ∀ n, P11479530575789987219.a n = A133101 n

end A133101

/-! ## A133101.P16921832713480439908

`A113428(n)^A000010(n+1)`
-/

namespace A133101.P16921832713480439908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113428 n : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A133101.P16921832713480439908

namespace A133101

/-- `A113428(n)^A000010(n+1)` -/
def P16921832713480439908.Spec : Prop :=
  ∀ n, P16921832713480439908.a n = (A133101 n : ℚ)

end A133101

/-! ## A133101.P3498823303016952642

`A113428(n)^A000203(n+3)`
-/

namespace A133101.P3498823303016952642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113428 n : ℚ) ^ (A000203 (n + 3) : ℤ)

end

end A133101.P3498823303016952642

namespace A133101

/-- `A113428(n)^A000203(n+3)` -/
def P3498823303016952642.Spec : Prop :=
  ∀ n, P3498823303016952642.a n = (A133101 n : ℚ)

end A133101

/-! ## A133101.P7656608688836059127

`and(1, A113428(n)+A008586(n))`
-/

namespace A133101.P7656608688836059127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A113428 n + A008586 n)

end

end A133101.P7656608688836059127

namespace A133101

/-- `and(1, A113428(n)+A008586(n))` -/
def P7656608688836059127.Spec : Prop :=
  ∀ n, P7656608688836059127.a n = A133101 n

end A133101

/-! ## A133101.P10663657669822350058

`(A113428(n)^A000040(n+1))²`
-/

namespace A133101.P10663657669822350058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A113428 n : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A133101.P10663657669822350058

namespace A133101

/-- `(A113428(n)^A000040(n+1))²` -/
def P10663657669822350058.Spec : Prop :=
  ∀ n, P10663657669822350058.a n = (A133101 n : ℚ)

end A133101

/-! ## A133101.P7100632618436595287

`A023531(A004273(2*n)+n)`
-/

namespace A133101.P7100632618436595287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A004273 (2 * n) + (n : ℤ)).toNat

end

end A133101.P7100632618436595287

namespace A133101

/-- `A023531(A004273(2*n)+n)` -/
def P7100632618436595287.Spec : Prop :=
  ∀ n, P7100632618436595287.a n = A133101 n

end A133101

/-! ## A133101.P17691576652472338190

`A240861(n)%2`
-/

namespace A133101.P17691576652472338190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240861 n) 2

end

end A133101.P17691576652472338190

namespace A133101

/-- `A240861(n)%2` -/
def P17691576652472338190.Spec : Prop :=
  ∀ n, P17691576652472338190.a n = A133101 n

end A133101

/-! ## A133101.P17855831358093894581

`A261866(2*n)%2`
-/

namespace A133101.P17855831358093894581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261866 (2 * n)) 2

end

end A133101.P17855831358093894581

namespace A133101

/-- `A261866(2*n)%2` -/
def P17855831358093894581.Spec : Prop :=
  ∀ n, P17855831358093894581.a n = A133101 n

end A133101

/-! ## A133101.P15132222964120534970

`A003982(A008602(n))`
-/

namespace A133101.P15132222964120534970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A008602 n).toNat

end

end A133101.P15132222964120534970

namespace A133101

/-- `A003982(A008602(n))` -/
def P15132222964120534970.Spec : Prop :=
  ∀ n, P15132222964120534970.a n = A133101 n

end A133101

/-!
# A133102: Number of partitions of n^3 into n distinct nonzero squares.

The programs for A133102, there is no canonical definition to state claims against.
-/

/-! ## A133102.P4652122354464620252

`A003987(A353881(n)+A004018(n))`
-/

namespace A133102.P4652122354464620252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A353881 n + A004018 n).toNat

end

end A133102.P4652122354464620252

/-! ## A133102.P7989863452013009099

`A171367(n)-A001221(A340025(n))`
-/

namespace A133102.P7989863452013009099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171367 n - A001221 (A340025 n).toNat

end

end A133102.P7989863452013009099

/-! ## A133102.P18219879034334416596

`A259361(A000757(n)*A163768(n))`
-/

namespace A133102.P18219879034334416596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A000757 n * A163768 n).toNat

end

end A133102.P18219879034334416596

/-! ## A133102.P11897774518670747087

`C(A001971(n), A001222(A150996(n)))`
-/

namespace A133102.P11897774518670747087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001971 n).toNat (A001222 (A150996 n).toNat).toNat

end

end A133102.P11897774518670747087

/-! ## A133102.P2796345154330501313

`xor(A063019(n), A063056(A063019(n)))`
-/

namespace A133102.P2796345154330501313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063019 n) (A063056 (A063019 n).toNat)

end

end A133102.P2796345154330501313

/-!
# A133103: Number of partitions of n^3 into n nonzero squares.

The programs for A133103, there is no canonical definition to state claims against.
-/

/-! ## A133103.P17753955464708450257

`A277488(A000302(n)+5)-n`
-/

namespace A133103.P17753955464708450257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277488 (A000302 n + 5).toNat - (n : ℤ)

end

end A133103.P17753955464708450257

/-! ## A133103.P17433923545015484961

`A000088(n)-A109077(13*n+11)`
-/

namespace A133103.P17433923545015484961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A109077 (13 * n + 11)

end

end A133103.P17433923545015484961

/-! ## A133103.P8307101376069676625

`A286539(A125813(n)+A022169(n))`
-/

namespace A133103.P8307101376069676625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286539 (A125813 n + A022169 n).toNat

end

end A133103.P8307101376069676625

/-!
# A133104: Number of partitions of n^4 into n nonzero squares.

The programs for A133104, there is no canonical definition to state claims against.
-/

/-! ## A133104.P6472675000380646790

`A008611(A292681(n)^A212804(n))`
-/

namespace A133104.P6472675000380646790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((A292681 n : ℚ) ^ (A212804 n : ℤ))).toNat

end

end A133104.P6472675000380646790

/-!
# A133105: Number of partitions of n^4 into n distinct nonzero squares.

The programs for A133105, there is no canonical definition to state claims against.
-/

/-! ## A133105.P16612220831021921723

`A344616(2*∑[ceil(n^n/2)])`
-/

namespace A133105.P16612220831021921723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A133105.P16612220831021921723

/-! ## A133105.P1455351141674657237

`A293616(∑[A013655(n)])`
-/

namespace A133105.P1455351141674657237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133105.P1455351141674657237

/-!
# A133107: Number of Ferrers diagrams with a single strictly smaller Ferrers puncture with the same orientation removed from the top with half-perimeter = n.

The programs for A133107, there is no canonical definition to state claims against.
-/

/-! ## A133107.P13857044416357621974

`A274005(2*n+1)+A010815(A261280(n))`
-/

namespace A133107.P13857044416357621974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274005 (2 * n + 1) + A010815 (A261280 n).toNat

end

end A133107.P13857044416357621974

/-! ## A133107.P6090207236907020804

`A274005(2*n+1)+A008683(A274041(2*(n+1)))`
-/

namespace A133107.P6090207236907020804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274005 (2 * n + 1) + A008683 (A274041 (2 * (n + 1))).toNat

end

end A133107.P6090207236907020804

/-!
# A133108: Representation of a dense para-sequence.

The programs for A133108, the canonical program `A133108.P13227830424064784786` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133108 has offset 1).

The definition of A133108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133108.P13227830424064784786

`A000720(p?[A008578(A253887(n+1))])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A133108

/-- `A000720(p?[A008578(A253887(n+1))])` -/
def P13227830424064784786.Spec : Prop :=
  ∀ n, P13227830424064784786.a n = A133108 (n + 1)

theorem P13227830424064784786.correct : P13227830424064784786.Spec := by
  intro n
  simp only [A133108, Nat.add_sub_cancel]

end A133108

/-! ## A133108.P6104123274025167934

`A263297(p?[A008578(A253887(n+1))])`
-/

namespace A133108.P6104123274025167934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A253887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133108.P6104123274025167934

namespace A133108

/-- `A263297(p?[A008578(A253887(n+1))])` -/
def P6104123274025167934.Spec : Prop :=
  ∀ n, P6104123274025167934.a n = A133108 (n + 1)

end A133108

/-! ## A133108.P8531570155361003214

`A055396(p?[A008578(A253887(n+1))])`
-/

namespace A133108.P8531570155361003214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A253887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133108.P8531570155361003214

namespace A133108

/-- `A055396(p?[A008578(A253887(n+1))])` -/
def P8531570155361003214.Spec : Prop :=
  ∀ n, P8531570155361003214.a n = A133108 (n + 1)

end A133108

/-! ## A133108.P13271988416658457470

`A230980(p?[A008578(A253887(n+1))])`
-/

namespace A133108.P13271988416658457470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A253887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133108.P13271988416658457470

namespace A133108

/-- `A230980(p?[A008578(A253887(n+1))])` -/
def P13271988416658457470.Spec : Prop :=
  ∀ n, P13271988416658457470.a n = A133108 (n + 1)

end A133108

/-! ## A133108.P17759916584640656152

`A324933(p?[A008578(A253887(n+1))])`
-/

namespace A133108.P17759916584640656152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A253887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133108.P17759916584640656152

namespace A133108

/-- `A324933(p?[A008578(A253887(n+1))])` -/
def P17759916584640656152.Spec : Prop :=
  ∀ n, P17759916584640656152.a n = A133108 (n + 1)

end A133108

/-!
# A133109: Triangle read by rows, A042965 on the diagonal, 0 elsewhere.

The programs for A133109, the canonical program `A133109.P15034252738295428665` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133109 has offset 1).

The definition of A133109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133109.P15034252738295428665

`A042965(Δ[A061885(n)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133109

/-- `A042965(Δ[A061885(n)])` -/
def P15034252738295428665.Spec : Prop :=
  ∀ n, P15034252738295428665.a n = A133109 (n + 1)

theorem P15034252738295428665.correct : P15034252738295428665.Spec := by
  intro n
  simp only [A133109, Nat.add_sub_cancel]

end A133109

/-! ## A133109.P6986989509467903377

`A042965(A127648(n)+1)`
-/

namespace A133109.P6986989509467903377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A127648 n + 1).toNat

end

end A133109.P6986989509467903377

namespace A133109

/-- `A042965(A127648(n)+1)` -/
def P6986989509467903377.Spec : Prop :=
  ∀ n, P6986989509467903377.a n = A133109 (n + 1)

theorem P6986989509467903377.correct : P6986989509467903377.Spec := by
  intro n
  simp only [A133109, Nat.add_sub_cancel, A133109.P6986989509467903377.a, A133109.P15034252738295428665.f1, A133109.P15034252738295428665.a, A042965, A042965.P10256174339092268817.a, A061885, A061885.P4567764245783084005.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A133109

/-! ## A133109.P8591854424228992605

`A099479(A127775(n+1))`
-/

namespace A133109.P8591854424228992605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A127775 (n + 1)).toNat

end

end A133109.P8591854424228992605

namespace A133109

/-- `A099479(A127775(n+1))` -/
def P8591854424228992605.Spec : Prop :=
  ∀ n, P8591854424228992605.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P10230102990389360684

`A131737(A198954(n+1))`
-/

namespace A133109.P10230102990389360684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A198954 (n + 1)).toNat

end

end A133109.P10230102990389360684

namespace A133109

/-- `A131737(A198954(n+1))` -/
def P10230102990389360684.Spec : Prop :=
  ∀ n, P10230102990389360684.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P17108447053712000413

`A023531(n)*A133110(n+1)`
-/

namespace A133109.P17108447053712000413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A133110 (n + 1)

end

end A133109.P17108447053712000413

namespace A133109

/-- `A023531(n)*A133110(n+1)` -/
def P17108447053712000413.Spec : Prop :=
  ∀ n, P17108447053712000413.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P17361937268302123773

`and(A131436(n+1), A133110(n+1))`
-/

namespace A133109.P17361937268302123773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131436 (n + 1)) (A133110 (n + 1))

end

end A133109.P17361937268302123773

namespace A133109

/-- `and(A131436(n+1), A133110(n+1))` -/
def P17361937268302123773.Spec : Prop :=
  ∀ n, P17361937268302123773.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P3860304753567732488

`Δ[floor(A131507(n)²/6)]`
-/

namespace A133109.P3860304753567732488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131507 n ^ 2 : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133109.P3860304753567732488

namespace A133109

/-- `Δ[floor(A131507(n)²/6)]` -/
def P3860304753567732488.Spec : Prop :=
  ∀ n, P3860304753567732488.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P3426416623971401397

`Δ[ceil(4*(A057944(n)+1)/3)]`
-/

namespace A133109.P3426416623971401397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * (A057944 n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133109.P3426416623971401397

namespace A133109

/-- `Δ[ceil(4*(A057944(n)+1)/3)]` -/
def P3426416623971401397.Spec : Prop :=
  ∀ n, P3426416623971401397.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P15335115914125624127

`Δ[A004773(A057944(n))]`
-/

namespace A133109.P15335115914125624127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A057944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133109.P15335115914125624127

namespace A133109

/-- `Δ[A004773(A057944(n))]` -/
def P15335115914125624127.Spec : Prop :=
  ∀ n, P15335115914125624127.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P17548287158985768726

`Δ[A042965(A057944(n)+1)]`
-/

namespace A133109.P17548287158985768726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A057944 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133109.P17548287158985768726

namespace A133109

/-- `Δ[A042965(A057944(n)+1)]` -/
def P17548287158985768726.Spec : Prop :=
  ∀ n, P17548287158985768726.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P8370362600784074612

`A042965(2-Δ[A002262(n)])`
-/

namespace A133109.P8370362600784074612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A133109.P8370362600784074612

namespace A133109

/-- `A042965(2-Δ[A002262(n)])` -/
def P8370362600784074612.Spec : Prop :=
  ∀ n, P8370362600784074612.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P10165548201318209977

`A004396(Δ[2*A057944(n)])`
-/

namespace A133109.P10165548201318209977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n).toNat

end

end A133109.P10165548201318209977

namespace A133109

/-- `A004396(Δ[2*A057944(n)])` -/
def P10165548201318209977.Spec : Prop :=
  ∀ n, P10165548201318209977.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P845006229232766329

`char[∑[n-1]]*A191668(n+1)`
-/

namespace A133109.P845006229232766329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A191668 (n + 1)

end

end A133109.P845006229232766329

namespace A133109

/-- `char[∑[n-1]]*A191668(n+1)` -/
def P845006229232766329.Spec : Prop :=
  ∀ n, P845006229232766329.a n = A133109 (n + 1)

end A133109

/-! ## A133109.P15761458497276152142

`and(A131436(n+1), A191668(n+1))`
-/

namespace A133109.P15761458497276152142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131436 (n + 1)) (A191668 (n + 1))

end

end A133109.P15761458497276152142

namespace A133109

/-- `and(A131436(n+1), A191668(n+1))` -/
def P15761458497276152142.Spec : Prop :=
  ∀ n, P15761458497276152142.a n = A133109 (n + 1)

end A133109

/-!
# A133110: Triangle read by rows: A007318 * A133109.

The programs for A133110, there is no canonical definition to state claims against.
-/

/-! ## A133110.P15554246297682583861

`A007318(n)*A072643(A059268(n)²)`
-/

namespace A133110.P15554246297682583861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A072643 (A059268 n ^ 2).toNat

end

end A133110.P15554246297682583861

/-! ## A133110.P17900839139716940415

`A128710(n)-A015283(A324665(n))`
-/

namespace A133110.P17900839139716940415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A015283 (A324665 n).toNat

end

end A133110.P17900839139716940415

/-! ## A133110.P10665716913509493848

`A128710(n)/A000034(A013617(n))`
-/

namespace A133110.P10665716913509493848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128710 n : ℚ) / (A000034 (A013617 n).toNat : ℚ)

end

end A133110.P10665716913509493848

/-! ## A133110.P3035965077573718088

`gcd(A128605(A143453(n)), A128710(n))`
-/

namespace A133110.P3035965077573718088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128605 (A143453 n).toNat) (A128710 n)

end

end A133110.P3035965077573718088

/-! ## A133110.P10689368888964554338

`A000120(13^A002262(n))*A007318(n)`
-/

namespace A133110.P10689368888964554338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A002262 n : ℤ))).toNat * A007318 n

end

end A133110.P10689368888964554338

/-!
# A133111: a(n) = (1/(1!*2!*3!*4!))*Sum_{1 <= x_1, x_2, x_3, x_4 <= n} |det V(x_1,x_2,x_3,x_4)|, where V(x_1,x_2,x_3,x_4) is the Vandermonde matrix of order 4.

The programs for A133111, the canonical program `A133111.P2703588713455913477` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133111 has offset 1).

The definition of A133111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133111.P2703588713455913477

`C(n+2, 5)*C(n+4, 5)/21`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133111

/-- `C(n+2, 5)*C(n+4, 5)/21` -/
def P2703588713455913477.Spec : Prop :=
  ∀ n, P2703588713455913477.a n = (A133111 (n + 1) : ℚ)

end A133111

/-! ## A133111.P10615281622924144025

`∑[∑[A241205(C(n, n²)+n)]]`
-/

namespace A133111.P10615281622924144025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241205 (Nat.choose n (n ^ 2) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133111.P10615281622924144025

namespace A133111

/-- `∑[∑[A241205(C(n, n²)+n)]]` -/
def P10615281622924144025.Spec : Prop :=
  ∀ n, P10615281622924144025.a n = A133111 (n + 1)

end A133111

/-! ## A133111.P3020083954183413877

`∑[∑[A241205(A028310(n))]]`
-/

namespace A133111.P3020083954183413877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241205 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133111.P3020083954183413877

namespace A133111

/-- `∑[∑[A241205(A028310(n))]]` -/
def P3020083954183413877.Spec : Prop :=
  ∀ n, P3020083954183413877.a n = A133111 (n + 1)

end A133111

/-! ## A133111.P6864407483677212802

`∑[∑[A241205(n+1)]-A241205(n+1)]`
-/

namespace A133111.P6864407483677212802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241205 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A241205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133111.P6864407483677212802

namespace A133111

/-- `∑[∑[A241205(n+1)]-A241205(n+1)]` -/
def P6864407483677212802.Spec : Prop :=
  ∀ n, P6864407483677212802.a n = A133111 (n + 1)

end A133111

/-! ## A133111.P5891283183306505721

`∑[∑[A241205(A123108(2*n))]]`
-/

namespace A133111.P5891283183306505721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241205 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133111.P5891283183306505721

namespace A133111

/-- `∑[∑[A241205(A123108(2*n))]]` -/
def P5891283183306505721.Spec : Prop :=
  ∀ n, P5891283183306505721.a n = A133111 (n + 1)

end A133111

/-! ## A133111.P8318193921879236953

`∑[∑[A241205(A233583(n+1))]]`
-/

namespace A133111.P8318193921879236953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241205 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133111.P8318193921879236953

namespace A133111

/-- `∑[∑[A241205(A233583(n+1))]]` -/
def P8318193921879236953.Spec : Prop :=
  ∀ n, P8318193921879236953.a n = A133111 (n + 1)

end A133111

/-!
# A133112: Triangular array, read by rows, associated with sums of certain Vandermonde determinants.

The programs for A133112, there is no canonical definition to state claims against.
-/

/-! ## A133112.P10127259905992501281

`A073165(comp[∑[n]])`
-/

namespace A133112.P10127259905992501281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A133112.P10127259905992501281

/-! ## A133112.P699679061712684602

`or(char[2], A073165(A014132(n+1)))`
-/

namespace A133112.P699679061712684602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A073165 (A014132 (n + 1)).toNat)

end

end A133112.P699679061712684602

/-! ## A133112.P10643124446826269726

`A073165(A014132(1-char[2]+n))-char[2]`
-/

namespace A133112.P10643124446826269726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (A014132 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A133112.P10643124446826269726

/-! ## A133112.P17158367847786050864

`A073165(A014132(n+1))%A268346(n)`
-/

namespace A133112.P17158367847786050864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073165 (A014132 (n + 1)).toNat) (A268346 n)

end

end A133112.P17158367847786050864

/-! ## A133112.P2657349118667461034

`gcd(A000038(n), A073165(A014132(n+1)))`
-/

namespace A133112.P2657349118667461034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A073165 (A014132 (n + 1)).toNat)

end

end A133112.P2657349118667461034

/-! ## A133112.P14920128301431948606

`A007318(∑[n])*A073165(A014132(n+1))`
-/

namespace A133112.P14920128301431948606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A073165 (A014132 (n + 1)).toNat

end

end A133112.P14920128301431948606

/-! ## A133112.P17647148249118913861

`A073165(A014132(n+1))/A007318(C(2, n))`
-/

namespace A133112.P17647148249118913861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073165 (A014132 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A133112.P17647148249118913861

/-! ## A133112.P11753518387893854559

`A000034(and(n, -4))*A073165(A014132(n+1))`
-/

namespace A133112.P11753518387893854559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.land (n : ℤ) (-4)).toNat * A073165 (A014132 (n + 1)).toNat

end

end A133112.P11753518387893854559

/-! ## A133112.P18367900023356607484

`A073165(A014132(n+1))^(A000040(n+1)%2)`
-/

namespace A133112.P18367900023356607484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073165 (A014132 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A133112.P18367900023356607484

/-! ## A133112.P5064617925005447212

`A000045(gcd(n, n+2))*A073165(A014132(n+1))`
-/

namespace A133112.P5064617925005447212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 2)) * A073165 (A014132 (n + 1)).toNat

end

end A133112.P5064617925005447212

/-!
# A133113: A128174 * A007318 * A133080.

The programs for A133113, there is no canonical definition to state claims against.
-/

/-! ## A133113.P1102002552095034383

`ceil(A133115(n+1)/2)`
-/

namespace A133113.P1102002552095034383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133115 (n + 1) : ℚ) / 2⌉

end

end A133113.P1102002552095034383

/-! ## A133113.P4500941734770598591

`floor(A133115(n+1)%A000070(n+2)/2)+1`
-/

namespace A133113.P4500941734770598591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A133115 (n + 1)) (A000070 (n + 2)) : ℚ) / 2⌋ + 1

end

end A133113.P4500941734770598591

/-! ## A133113.P5301424002661417130

`A302042(A133115(n+1)+1)`
-/

namespace A133113.P5301424002661417130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A133115 (n + 1) + 1).toNat

end

end A133113.P5301424002661417130

/-! ## A133113.P11968347235127127780

`A000463(A133115(n+1))`
-/

namespace A133113.P11968347235127127780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A133115 (n + 1)).toNat

end

end A133113.P11968347235127127780

/-! ## A133113.P6967106700975330571

`A025480(A133115(n+1)+1)`
-/

namespace A133113.P6967106700975330571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A133115 (n + 1) + 1).toNat

end

end A133113.P6967106700975330571

/-! ## A133113.P4915205827187658088

`A008619(A133115(n+1)-1)`
-/

namespace A133113.P4915205827187658088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A133115 (n + 1) - 1).toNat

end

end A133113.P4915205827187658088

/-! ## A133113.P14684304082747400852

`A003602(or(1, A133115(n+1)))`
-/

namespace A133113.P14684304082747400852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lor 1 (A133115 (n + 1))).toNat

end

end A133113.P14684304082747400852

/-! ## A133113.P2803039236542815182

`A008619(or(1, A133115(n+1)))`
-/

namespace A133113.P2803039236542815182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A133115 (n + 1))).toNat

end

end A133113.P2803039236542815182

/-! ## A133113.P13775056442909464876

`A003602(2*A133115(n+1))`
-/

namespace A133113.P13775056442909464876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * A133115 (n + 1)).toNat

end

end A133113.P13775056442909464876

/-! ## A133113.P11875710793244753358

`A001057(or(A133115(n+1), A166141(n+1)))`
-/

namespace A133113.P11875710793244753358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor (A133115 (n + 1)) (A166141 (n + 1))).toNat

end

end A133113.P11875710793244753358

/-!
# A133114: A000012 * A007318 * A133080.

The programs for A133114, there is no canonical definition to state claims against.
-/

/-! ## A133114.P12190671676489240348

`ceil(A133116(n+2)/2)`
-/

namespace A133114.P12190671676489240348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133116 (n + 2) : ℚ) / 2⌉

end

end A133114.P12190671676489240348

/-! ## A133114.P6914102558977319821

`(A133116(abs(1-n)+3)+1)/2`
-/

namespace A133114.P6914102558977319821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133116 (|1 - (n : ℤ)| + 3).toNat + 1 : ℚ) / 2

end

end A133114.P6914102558977319821

/-! ## A133114.P5658171556068692975

`round(A133116(2*n-n+2)/2)`
-/

namespace A133114.P5658171556068692975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A133116 ((2 * n : ℤ) - (n : ℤ) + 2).toNat : ℚ) / 2)

end

end A133114.P5658171556068692975

/-! ## A133114.P14831045879831960525

`A000463(A133116(n+2))`
-/

namespace A133114.P14831045879831960525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A133116 (n + 2)).toNat

end

end A133114.P14831045879831960525

/-! ## A133114.P14399807511073892934

`A001281(A133116(n+2)+1)`
-/

namespace A133114.P14399807511073892934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A133116 (n + 2) + 1).toNat

end

end A133114.P14399807511073892934

/-! ## A133114.P18267663410088489626

`A004525(A133116(n+2)+1)`
-/

namespace A133114.P18267663410088489626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A133116 (n + 2) + 1).toNat

end

end A133114.P18267663410088489626

/-! ## A133114.P3159121851002874115

`A004526(A133116(n+2)+1)`
-/

namespace A133114.P3159121851002874115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A133116 (n + 2) + 1).toNat

end

end A133114.P3159121851002874115

/-! ## A133114.P13039394177334082761

`A014682(A133116(n+2)+1)`
-/

namespace A133114.P13039394177334082761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A133116 (n + 2) + 1).toNat

end

end A133114.P13039394177334082761

/-! ## A133114.P2326368799555126873

`A026741(A133116(n+2)+1)`
-/

namespace A133114.P2326368799555126873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A133116 (n + 2) + 1).toNat

end

end A133114.P2326368799555126873

/-! ## A133114.P349163231791663014

`round(A133116(n+2)/2)%A000040(n+1)`
-/

namespace A133114.P349163231791663014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A133116 (n + 2) : ℚ) / 2)) (A000040 (n + 1))

end

end A133114.P349163231791663014

/-!
# A133115: Triangle read by rows: 2*A133113 - A000012 as infinite lower triangular matrices.

The programs for A133115, there is no canonical definition to state claims against.
-/

/-! ## A133115.P15105037267618659383

`2*A133113(n+1)-1`
-/

namespace A133115.P15105037267618659383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133113 (n + 1) - 1

end

end A133115.P15105037267618659383

/-! ## A133115.P10768374194851238928

`A008683(A060254(n+1))+2*A133113(n+1)`
-/

namespace A133115.P10768374194851238928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060254 (n + 1)).toNat + 2 * A133113 (n + 1)

end

end A133115.P10768374194851238928

/-! ## A133115.P7508306728963593871

`A004273(A133113(n+1))`
-/

namespace A133115.P7508306728963593871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A133113 (n + 1)).toNat

end

end A133115.P7508306728963593871

/-! ## A133115.P2895862161791558186

`A133090(2*A133113(n+1))`
-/

namespace A133115.P2895862161791558186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (2 * A133113 (n + 1)).toNat

end

end A133115.P2895862161791558186

/-! ## A133115.P8085454714075234148

`A131110(n+1)+A133114(n+1)-1`
-/

namespace A133115.P8085454714075234148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131110 (n + 1) + (A133114 (n + 1) - 1)

end

end A133115.P8085454714075234148

/-!
# A133116: 2*A133114 - A000012.

The programs for A133116, there is no canonical definition to state claims against.
-/

/-! ## A133116.P3386047294776116361

`2*A133114(n+1)-1`
-/

namespace A133116.P3386047294776116361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133114 (n + 1) - 1

end

end A133116.P3386047294776116361

/-! ## A133116.P11328586031316018361

`A004273(A133114(n+1))`
-/

namespace A133116.P11328586031316018361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A133114 (n + 1)).toNat

end

end A133116.P11328586031316018361

/-! ## A133116.P11211195622611537645

`A005408(A133114(n+1)-1)`
-/

namespace A133116.P11211195622611537645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A133114 (n + 1) - 1).toNat

end

end A133116.P11211195622611537645

/-! ## A133116.P7199690005786312249

`A014681(2*A133114(n+1))`
-/

namespace A133116.P7199690005786312249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A133114 (n + 1)).toNat

end

end A133116.P7199690005786312249

/-! ## A133116.P13732303064298733159

`A023443(2*A133114(n+1))`
-/

namespace A133116.P13732303064298733159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A133114 (n + 1)).toNat

end

end A133116.P13732303064298733159

/-! ## A133116.P10692704016709335524

`A133090(2*A133114(n+1))`
-/

namespace A133116.P10692704016709335524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (2 * A133114 (n + 1)).toNat

end

end A133116.P10692704016709335524

/-! ## A133116.P3883237652120840842

`A267458(2*A133114(n+1))`
-/

namespace A133116.P3883237652120840842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (2 * A133114 (n + 1)).toNat

end

end A133116.P3883237652120840842

/-! ## A133116.P14641395703747393331

`or(-1, A005180(n+1))+2*A133114(n+1)`
-/

namespace A133116.P14641395703747393331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A005180 (n + 1)) + 2 * A133114 (n + 1)

end

end A133116.P14641395703747393331

/-! ## A133116.P9791062527755789882

`A163805(∑[4*n]+1)+2*A133114(n+1)`
-/

namespace A133116.P9791062527755789882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2 * A133114 (n + 1)

end

end A133116.P9791062527755789882

/-! ## A133116.P13942570368372922643

`A267458(A133114(n+1)+A133114(n+1)+1)`
-/

namespace A133116.P13942570368372922643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A133114 (n + 1) + (A133114 (n + 1) + 1)).toNat

end

end A133116.P13942570368372922643

/-!
# A133117: Fractal sequence based on comparison of {n * tau} with {i*tau} for i = 1 to F(2j) where F(2j) equals the first i for which {n*tau} <= {i*tau} as i goes from 1 to F(2j+2)-1 and F(2j) equals the insertion point of n into P(n-1). The fractional parts {i*tau} are all less than or equal to {F(2j-2)*tau} for 0 < i < F(2j), so there is no chance that an insertion point greater than n in the permutation of the first n-1 integers will be specified by this rule. The table, A132827, gives the insertion points for each n into the permutation P(n-1) of the first n integers.

The programs for A133117, there is no canonical definition to state claims against.
-/

/-! ## A133117.P11142952607243661279

`A000120(p?[A057048(A025480(n))])`
-/

namespace A133117.P11142952607243661279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133117.P11142952607243661279

/-! ## A133117.P2233378359882721173

`A000120(p?[A017911(A003602(n+1))])`
-/

namespace A133117.P2233378359882721173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133117.P2233378359882721173

/-! ## A133117.P9074853768802179496

`A194959(A204560(n+1)+A187829(n+1))`
-/

namespace A133117.P9074853768802179496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A204560 (n + 1) + A187829 (n + 1)).toNat

end

end A133117.P9074853768802179496

/-! ## A133117.P407814223439497592

`A194959(lt[A226675(2*n+1), A258001(n)])`
-/

namespace A133117.P407814223439497592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226675 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133117.P407814223439497592

/-! ## A133117.P13625476979693665206

`A194959(lt[A371095(2*n+5), A025052(n+2)])`
-/

namespace A133117.P13625476979693665206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371095 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133117.P13625476979693665206

/-!
# A133118: Number of partitions of n-set with 3 block sizes.

The programs for A133118, there is no canonical definition to state claims against.
-/

/-! ## A133118.P8999484068809980433

`A208437(A006463(n+6)+3)`
-/

namespace A133118.P8999484068809980433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208437 (A006463 (n + 6) + 3).toNat

end

end A133118.P8999484068809980433

/-! ## A133118.P4704602364970293897

`record[A208437(n+11)/A131632(n+9)]`
-/

namespace A133118.P4704602364970293897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208437 (n + 11) : ℚ) / (A131632 (n + 9) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133118.P4704602364970293897

/-!
# A133119: Number of permutations of [n] with 3 cycle lengths.

The programs for A133119, there is no canonical definition to state claims against.
-/

/-! ## A133119.P4119535576234053126

`A218868(A257917(n)+A016789(n+3))`
-/

namespace A133119.P4119535576234053126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218868 (A257917 n + A016789 (n + 3)).toNat

end

end A133119.P4119535576234053126

/-!
# A133121: Triangle T(n,k) read by rows = number of partitions of n such that number of parts minus number of distinct parts is equal to k, k = 0..n-1.

The programs for A133121, there is no canonical definition to state claims against.
-/

/-! ## A133121.P9375754784829916522

`xor(A091602(n+1), A185284(A006015(n)))`
-/

namespace A133121.P9375754784829916522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091602 (n + 1)) (A185284 (A006015 n).toNat)

end

end A133121.P9375754784829916522

/-! ## A133121.P11029617745995078613

`A359901(n+1)+A358758(A092998(3*n+5))`
-/

namespace A133121.P11029617745995078613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359901 (n + 1) + A358758 (A092998 (3 * n + 5)).toNat

end

end A133121.P11029617745995078613

/-! ## A133121.P9742326478107551361

`A091602(A003963(p?[A089868(n)]))`
-/

namespace A133121.P9742326478107551361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A133121.P9742326478107551361

/-! ## A133121.P7258384385571287269

`A091602(A230980(p?[A089868(n)]))`
-/

namespace A133121.P7258384385571287269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A133121.P7258384385571287269

/-! ## A133121.P14079294649566743312

`A266477(n+1)%A227343(3*n+4)`
-/

namespace A133121.P14079294649566743312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266477 (n + 1)) (A227343 (3 * n + 4))

end

end A133121.P14079294649566743312

/-!
# A133122: Odd numbers which cannot be written as the sum of an odd prime and 2^i with i > 0.

The programs for A133122, there is no canonical definition to state claims against.
-/

/-! ## A133122.P4068242156181070590

`∪[A006285(n+1), A154824(n+1)]`
-/

namespace A133122.P4068242156181070590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133122.P4068242156181070590

/-! ## A133122.P5823430630319766797

`∪[A006285(n+1), A181748(n+1)]`
-/

namespace A133122.P5823430630319766797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133122.P5823430630319766797

/-! ## A133122.P14001607058090348010

`∪[A006285(n+1), A229092(n+1)]`
-/

namespace A133122.P14001607058090348010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133122.P14001607058090348010

/-! ## A133122.P8116702639712870005

`∪[A006285(n+1), A244113(n+1)]`
-/

namespace A133122.P8116702639712870005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133122.P8116702639712870005

/-! ## A133122.P14739467635245537501

`record[gcd(2*n+1, A276417(n))]`
-/

namespace A133122.P14739467635245537501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A276417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133122.P14739467635245537501

/-! ## A133122.P10855089812017631216

`A005408(eq[0, A276417(n)])`
-/

namespace A133122.P10855089812017631216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133122.P10855089812017631216

/-! ## A133122.P13822518611038718415

`A005408(lt[A276417(n), 1])`
-/

namespace A133122.P13822518611038718415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A133122.P13822518611038718415

/-!
# A133123: Double Sophie Germain semiprimes: semiprimes s such that s1=2s+1 and s2=2s1+1 are also semiprimes.

The programs for A133123, the canonical program `A133123.P8066222245384892678` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133123 has offset 1).

The definition of A133123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133123.P8066222245384892678

`A004524(∩[A111153(n+1), A176896(n+1)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A133123

/-- `A004524(∩[A111153(n+1), A176896(n+1)])` -/
def P8066222245384892678.Spec : Prop :=
  ∀ n, P8066222245384892678.a n = A133123 (n + 1)

theorem P8066222245384892678.correct : P8066222245384892678.Spec := by
  intro n
  simp only [A133123, Nat.add_sub_cancel]

end A133123

/-! ## A133123.P14409216781393579345

`A004526(∩[A111153(n+1), A176896(n+1)])`
-/

namespace A133123.P14409216781393579345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176896 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A133123.P14409216781393579345

namespace A133123

/-- `A004526(∩[A111153(n+1), A176896(n+1)])` -/
def P14409216781393579345.Spec : Prop :=
  ∀ n, P14409216781393579345.a n = A133123 (n + 1)

end A133123

/-! ## A133123.P11744373327869961230

`A057979(∩[A111153(n+1), A176896(n+1)])`
-/

namespace A133123.P11744373327869961230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176896 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A133123.P11744373327869961230

namespace A133123

/-- `A057979(∩[A111153(n+1), A176896(n+1)])` -/
def P11744373327869961230.Spec : Prop :=
  ∀ n, P11744373327869961230.a n = A133123 (n + 1)

end A133123

/-! ## A133123.P3816370811814463418

`A004524(∩[2*A111153(n+1)+1, A111153(n+1)])`
-/

namespace A133123.P3816370811814463418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111153 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A133123.P3816370811814463418

namespace A133123

/-- `A004524(∩[2*A111153(n+1)+1, A111153(n+1)])` -/
def P3816370811814463418.Spec : Prop :=
  ∀ n, P3816370811814463418.a n = A133123 (n + 1)

end A133123

/-! ## A133123.P17897351306370613457

`A004526(∩[2*A111153(n+1)+1, A111153(n+1)])`
-/

namespace A133123.P17897351306370613457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111153 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A133123.P17897351306370613457

namespace A133123

/-- `A004526(∩[2*A111153(n+1)+1, A111153(n+1)])` -/
def P17897351306370613457.Spec : Prop :=
  ∀ n, P17897351306370613457.a n = A133123 (n + 1)

end A133123

/-!
# A133124: A007318 * [1, 2, 2, 3, 2, 3, 2, 3, 2, ...].

The programs for A133124, the canonical program `A133124.P6039797803657652335` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133124 has offset 0).

The definition of A133124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133124.P8733916111019042909

`∑[ogf((1-x+x^3)/(1-3x+2x^2))]`
-/

namespace A133124.P8733916111019042909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133124.P8733916111019042909

namespace A133124

/-- `∑[ogf((1-x+x^3)/(1-3x+2x^2))]` -/
def P8733916111019042909.Spec : Prop :=
  ∀ n, P8733916111019042909.a n = A133124 n

end A133124

/-! ## A133124.P5601932439144371696

`ogf((1-x+x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A133124.P5601932439144371696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 1] [1, -4, 5, -2] n

end

end A133124.P5601932439144371696

namespace A133124

/-- `ogf((1-x+x^3)/(1-4x+5x^2-2x^3))` -/
def P5601932439144371696.Spec : Prop :=
  ∀ n, P5601932439144371696.a n = A133124 n

end A133124

/-! ## A133124.P6039797803657652335

`∑[round(5*2^(n-2))]-n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133124

/-- `∑[round(5*2^(n-2))]-n` -/
def P6039797803657652335.Spec : Prop :=
  ∀ n, P6039797803657652335.a n = A133124 n

theorem P6039797803657652335.correct : P6039797803657652335.Spec := by
  intro n
  simp only [A133124]

end A133124

/-! ## A133124.P4387659444722000726

`∑[2*a(n-1)+1]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A133124.P4387659444722000726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133124.P4387659444722000726

namespace A133124

/-- `∑[2*a(n-1)+1]` -/
def P4387659444722000726.Spec : Prop :=
  ∀ n, (P4387659444722000726.a n : ℤ) = A133124 n

end A133124

/-! ## A133124.P14892811730453752768

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A133124.P14892811730453752768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 5] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133124.P14892811730453752768

namespace A133124

/-- `∑[∑[2*a(n-1)]]` -/
def P14892811730453752768.Spec : Prop :=
  ∀ n, (P14892811730453752768.a n : ℤ) = A133124 n

end A133124

/-! ## A133124.P16809510546664032187

`2*(a(n-1)-(1-n)/2)` with `a(0)=1, a(1)=3`
-/

namespace A133124.P16809510546664032187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) - (1 - (n : ℤ) : ℚ) / 2)

end

end A133124.P16809510546664032187

namespace A133124

/-- `2*(a(n-1)-(1-n)/2)` -/
def P16809510546664032187.Spec : Prop :=
  ∀ n, P16809510546664032187.a n = (A133124 n : ℚ)

end A133124

/-! ## A133124.P8849700094135950694

`∑[a(n-1)+a(n-1)+1]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A133124.P8849700094135950694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133124.P8849700094135950694

namespace A133124

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P8849700094135950694.Spec : Prop :=
  ∀ n, (P8849700094135950694.a n : ℤ) = A133124 n

end A133124

/-! ## A133124.P17435534713211867931

`∑[A257113(n+1)-1]`
-/

namespace A133124.P17435534713211867931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133124.P17435534713211867931

namespace A133124

/-- `∑[A257113(n+1)-1]` -/
def P17435534713211867931.Spec : Prop :=
  ∀ n, P17435534713211867931.a n = A133124 n

end A133124

/-! ## A133124.P367622396549302981

`∑[A266550(n+1)+A131577(n)]`
-/

namespace A133124.P367622396549302981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 1) + A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133124.P367622396549302981

namespace A133124

/-- `∑[A266550(n+1)+A131577(n)]` -/
def P367622396549302981.Spec : Prop :=
  ∀ n, P367622396549302981.a n = A133124 n

end A133124

/-! ## A133124.P4295902243408349931

`∑[A034008(n)+A130103(n)+n]`
-/

namespace A133124.P4295902243408349931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n + (A130103 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133124.P4295902243408349931

namespace A133124

/-- `∑[A034008(n)+A130103(n)+n]` -/
def P4295902243408349931.Spec : Prop :=
  ∀ n, P4295902243408349931.a n = A133124 n

end A133124

/-! ## A133124.P7147796988291610152

`record[A084215(A328399(n))-A328399(n)]`
-/

namespace A133124.P7147796988291610152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (A328399 n).toNat - A328399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133124.P7147796988291610152

namespace A133124

/-- `record[A084215(A328399(n))-A328399(n)]` -/
def P7147796988291610152.Spec : Prop :=
  ∀ n, P7147796988291610152.a n = A133124 n

end A133124

/-! ## A133124.P11625403387091816761

`round(A134062(n)/2-n)`
-/

namespace A133124.P11625403387091816761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A134062 n : ℚ) / 2 - (n : ℚ))

end

end A133124.P11625403387091816761

namespace A133124

/-- `round(A134062(n)/2-n)` -/
def P11625403387091816761.Spec : Prop :=
  ∀ n, P11625403387091816761.a n = A133124 n

end A133124

/-! ## A133124.P8934724617587344371

`(A132732(n)+A033484(n))/2`
-/

namespace A133124.P8934724617587344371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132732 n + A033484 n : ℚ) / 2

end

end A133124.P8934724617587344371

namespace A133124

/-- `(A132732(n)+A033484(n))/2` -/
def P8934724617587344371.Spec : Prop :=
  ∀ n, P8934724617587344371.a n = (A133124 n : ℚ)

end A133124

/-! ## A133124.P13294318326540636923

`(A186947(n+1)+A155559(n)²)/A000079(n+1)`
-/

namespace A133124.P13294318326540636923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186947 (n + 1) + A155559 n ^ 2 : ℚ) / (A000079 (n + 1) : ℚ)

end

end A133124.P13294318326540636923

namespace A133124

/-- `(A186947(n+1)+A155559(n)²)/A000079(n+1)` -/
def P13294318326540636923.Spec : Prop :=
  ∀ n, P13294318326540636923.a n = (A133124 n : ℚ)

end A133124

/-! ## A133124.P10080903490408671041

`(A186947(n+1)+A155559(n)²)/A155559(n+1)`
-/

namespace A133124.P10080903490408671041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186947 (n + 1) + A155559 n ^ 2 : ℚ) / (A155559 (n + 1) : ℚ)

end

end A133124.P10080903490408671041

namespace A133124

/-- `(A186947(n+1)+A155559(n)²)/A155559(n+1)` -/
def P10080903490408671041.Spec : Prop :=
  ∀ n, P10080903490408671041.a n = (A133124 n : ℚ)

end A133124

/-! ## A133124.P4168426319901486149

`(A186947(n+1)+A155559(2*n))/A000079(n+1)`
-/

namespace A133124.P4168426319901486149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186947 (n + 1) + A155559 (2 * n) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A133124.P4168426319901486149

namespace A133124

/-- `(A186947(n+1)+A155559(2*n))/A000079(n+1)` -/
def P4168426319901486149.Spec : Prop :=
  ∀ n, P4168426319901486149.a n = (A133124 n : ℚ)

end A133124

/-! ## A133124.P11984244871919397418

`(A186947(n+1)+A155559(2*n))/A155559(n+1)`
-/

namespace A133124.P11984244871919397418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186947 (n + 1) + A155559 (2 * n) : ℚ) / (A155559 (n + 1) : ℚ)

end

end A133124.P11984244871919397418

namespace A133124

/-- `(A186947(n+1)+A155559(2*n))/A155559(n+1)` -/
def P11984244871919397418.Spec : Prop :=
  ∀ n, P11984244871919397418.a n = (A133124 n : ℚ)

end A133124

/-! ## A133124.P12147396649640549641

`∑[A054134(∑[n]+1)]`
-/

namespace A133124.P12147396649640549641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133124.P12147396649640549641

namespace A133124

/-- `∑[A054134(∑[n]+1)]` -/
def P12147396649640549641.Spec : Prop :=
  ∀ n, P12147396649640549641.a n = A133124 n

end A133124

/-!
# A133125: a(n) = (7*3^n - (-3)^n)/6.

The programs for A133125, the canonical program `A133125.P14043501890752827711` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133125 has offset 0).

The definition of A133125 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*3^n-(-3)^n)/6` (program `A133125.P6390076357406468104`, by `A133125.P6390076357406468104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133125.P14043501890752827711

`9*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133125

/-- `9*a(n-2)` -/
def P14043501890752827711.Spec : Prop :=
  ∀ n, (P14043501890752827711.a n : ℤ) = A133125 n

theorem P14043501890752827711.correct : P14043501890752827711.Spec := by
  intro n
  simp only [A133125]

end A133125

/-! ## A133125.P129289047474597855

`A038754(n)²`
-/

namespace A133125.P129289047474597855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n ^ 2

end

end A133125.P129289047474597855

namespace A133125

/-- `A038754(n)²` -/
def P129289047474597855.Spec : Prop :=
  ∀ n, P129289047474597855.a n = A133125 n

end A133125

/-! ## A133125.P6390076357406468104

`(7*3^n-(-3)^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133125.P6390076357406468104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 3 ^ n : ℤ) - (-3) ^ n : ℚ) / 6

end

end A133125.P6390076357406468104

namespace A133125

/-- `(7*3^n-(-3)^n)/6` -/
def P6390076357406468104.Spec : Prop :=
  ∀ n, P6390076357406468104.a n = (A133125 n : ℚ)

theorem P6390076357406468104.correct : P6390076357406468104.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A133125, Nat.add_sub_cancel, A133125.P6390076357406468104.a, A133125.P14043501890752827711.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A133125, Nat.add_sub_cancel, A133125.P6390076357406468104.a, A133125.P14043501890752827711.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A133125

/-! ## A133125.P10312504141778659832

`ogf((1+4x)/(1-9x^2))`
-/

namespace A133125.P10312504141778659832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 0, -9] n

end

end A133125.P10312504141778659832

namespace A133125

/-- `ogf((1+4x)/(1-9x^2))` -/
def P10312504141778659832.Spec : Prop :=
  ∀ n, P10312504141778659832.a n = A133125 n

end A133125

/-! ## A133125.P806794181916569578

`∏[9/a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A133125.P806794181916569578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  9 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133125.P806794181916569578

namespace A133125

/-- `∏[9/a(n-1)]` -/
def P806794181916569578.Spec : Prop :=
  ∀ n, P806794181916569578.a n = (A133125 n : ℚ)

end A133125

/-! ## A133125.P11562512253118688413

`(n%2+3)*3^(n-1)`
-/

namespace A133125.P11562512253118688413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 3 : ℕ) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A133125.P11562512253118688413

namespace A133125

/-- `(n%2+3)*3^(n-1)` -/
def P11562512253118688413.Spec : Prop :=
  ∀ n, P11562512253118688413.a n = (A133125 n : ℚ)

end A133125

/-! ## A133125.P17909944991277554566

`∑[∏[C(3, a(n-1))]]²` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A133125.P17909944991277554566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  Nat.choose 3 (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133125.P17909944991277554566

namespace A133125

/-- `∑[∏[C(3, a(n-1))]]²` -/
def P17909944991277554566.Spec : Prop :=
  ∀ n, (P17909944991277554566.a n : ℤ) = A133125 n

end A133125

/-! ## A133125.P6198223242717150610

`∑[∏[floor(a(n-2))]]²` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A133125.P6198223242717150610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133125.P6198223242717150610

namespace A133125

/-- `∑[∏[floor(a(n-2))]]²` -/
def P6198223242717150610.Spec : Prop :=
  ∀ n, (P6198223242717150610.a n : ℤ) = A133125 n

end A133125

/-! ## A133125.P17033837182076309308

`A182522(n+1)²`
-/

namespace A133125.P17033837182076309308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 1) ^ 2

end

end A133125.P17033837182076309308

namespace A133125

/-- `A182522(n+1)²` -/
def P17033837182076309308.Spec : Prop :=
  ∀ n, P17033837182076309308.a n = A133125 n

end A133125

/-! ## A133125.P1854099433090337966

`A074324(or(1, n)+n)`
-/

namespace A133125.P1854099433090337966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (Nat.lor 1 n + n)

end

end A133125.P1854099433090337966

namespace A133125

/-- `A074324(or(1, n)+n)` -/
def P1854099433090337966.Spec : Prop :=
  ∀ n, P1854099433090337966.a n = A133125 n

end A133125

/-! ## A133125.P18063867686706020210

`round(A060647(n)/2)²`
-/

namespace A133125.P18063867686706020210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A060647 n : ℚ) / 2) ^ 2

end

end A133125.P18063867686706020210

namespace A133125

/-- `round(A060647(n)/2)²` -/
def P18063867686706020210.Spec : Prop :=
  ∀ n, P18063867686706020210.a n = A133125 n

end A133125

/-! ## A133125.P7732614465769146092

`Δ[A246360(n+2)]²`
-/

namespace A133125.P7732614465769146092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246360 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133125.P7732614465769146092

namespace A133125

/-- `Δ[A246360(n+2)]²` -/
def P7732614465769146092.Spec : Prop :=
  ∀ n, P7732614465769146092.a n = A133125 n

end A133125

/-! ## A133125.P2028213336330214383

`(A062318(n+1)+1)²`
-/

namespace A133125.P2028213336330214383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062318 (n + 1) + 1) ^ 2

end

end A133125.P2028213336330214383

namespace A133125

/-- `(A062318(n+1)+1)²` -/
def P2028213336330214383.Spec : Prop :=
  ∀ n, P2028213336330214383.a n = A133125 n

end A133125

/-! ## A133125.P3811589457941047627

`(A068911(n+1)/2)²`
-/

namespace A133125.P3811589457941047627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A068911 (n + 1) : ℚ) / 2) ^ 2

end

end A133125.P3811589457941047627

namespace A133125

/-- `(A068911(n+1)/2)²` -/
def P3811589457941047627.Spec : Prop :=
  ∀ n, P3811589457941047627.a n = (A133125 n : ℚ)

end A133125

/-! ## A133125.P7287713677013317160

`(A117862(n)/2+1)²`
-/

namespace A133125.P7287713677013317160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A117862 n : ℚ) / 2 + 1) ^ 2

end

end A133125.P7287713677013317160

namespace A133125

/-- `(A117862(n)/2+1)²` -/
def P7287713677013317160.Spec : Prop :=
  ∀ n, P7287713677013317160.a n = (A133125 n : ℚ)

end A133125

/-! ## A133125.P17712709970548095599

`(A182751(n+2)/3)²`
-/

namespace A133125.P17712709970548095599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A182751 (n + 2) : ℚ) / 3) ^ 2

end

end A133125.P17712709970548095599

namespace A133125

/-- `(A182751(n+2)/3)²` -/
def P17712709970548095599.Spec : Prop :=
  ∀ n, P17712709970548095599.a n = (A133125 n : ℚ)

end A133125

/-! ## A133125.P1172474860520933699

`(A133463(2*n)/2)²`
-/

namespace A133125.P1172474860520933699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A133463 (2 * n) : ℚ) / 2) ^ 2

end

end A133125.P1172474860520933699

namespace A133125

/-- `(A133463(2*n)/2)²` -/
def P1172474860520933699.Spec : Prop :=
  ∀ n, P1172474860520933699.a n = (A133125 n : ℚ)

end A133125

/-! ## A133125.P15658771019461878254

`(A153339(n+2)/4)²`
-/

namespace A133125.P15658771019461878254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153339 (n + 2) : ℚ) / 4) ^ 2

end

end A133125.P15658771019461878254

namespace A133125

/-- `(A153339(n+2)/4)²` -/
def P15658771019461878254.Spec : Prop :=
  ∀ n, P15658771019461878254.a n = (A133125 n : ℚ)

end A133125

/-! ## A133125.P9234718257335438569

`(∑[abs(A287479(n))]+1)²`
-/

namespace A133125.P9234718257335438569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287479 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A133125.P9234718257335438569

namespace A133125

/-- `(∑[abs(A287479(n))]+1)²` -/
def P9234718257335438569.Spec : Prop :=
  ∀ n, P9234718257335438569.a n = A133125 n

end A133125

/-! ## A133125.P4191360671208323902

`Δ[∑[A068911(n)]/2]²`
-/

namespace A133125.P4191360671208323902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133125.P4191360671208323902

namespace A133125

/-- `Δ[∑[A068911(n)]/2]²` -/
def P4191360671208323902.Spec : Prop :=
  ∀ n, P4191360671208323902.a n = (A133125 n : ℚ)

end A133125

/-!
# A133127: Numbers k with the property that k followed by k 7's is prime.

The programs for A133127, there is no canonical definition to state claims against.
-/

/-! ## A133127.P17042326733420308175

`A276062(∑[(n+1)²]+1)`
-/

namespace A133127.P17042326733420308175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276062 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A133127.P17042326733420308175

/-!
# A133128: Triangle of first differences of A120070 with a leftmost column of A002522.

The programs for A133128, the canonical program `A133128.P6744000441068247650` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133128 has offset 0).

The definition of A133128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133128.P6744000441068247650

`A141620(A057428(n)+n)%∑[n+3]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133128

/-- `A141620(A057428(n)+n)%∑[n+3]` -/
def P6744000441068247650.Spec : Prop :=
  ∀ n, P6744000441068247650.a n = A133128 n

theorem P6744000441068247650.correct : P6744000441068247650.Spec := by
  intro n
  simp only [A133128]

end A133128

/-! ## A133128.P15377026315802071524

`A141620(n-A057427(n))%∑[n+3]`
-/

namespace A133128.P15377026315802071524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141620 ((n : ℤ) - A057427 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133128.P15377026315802071524

namespace A133128

/-- `A141620(n-A057427(n))%∑[n+3]` -/
def P15377026315802071524.Spec : Prop :=
  ∀ n, P15377026315802071524.a n = A133128 n

theorem P15377026315802071524.correct : P15377026315802071524.Spec := by
  intro n
  simp only [A133128, Nat.add_sub_cancel, A133128.P15377026315802071524.f1, A133128.P15377026315802071524.a, A133128.P6744000441068247650.f1, A133128.P6744000441068247650.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A141620, A141620.P10826181863323884884.f1, A141620.P10826181863323884884.a, A000007, A000007.P6599383543502402472.a, A120070, A120070.P8418683465396432844.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133128

/-! ## A133128.P15094605122439411342

`floor(A141620(n-A057427(n))/A000038(n)!)`
-/

namespace A133128.P15094605122439411342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141620 ((n : ℤ) - A057427 n).toNat : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)⌋

end

end A133128.P15094605122439411342

namespace A133128

/-- `floor(A141620(n-A057427(n))/A000038(n)!)` -/
def P15094605122439411342.Spec : Prop :=
  ∀ n, P15094605122439411342.a n = A133128 n

end A133128

/-! ## A133128.P7922999756842665738

`A120070(n+2)-A094728(A080036(n))`
-/

namespace A133128.P7922999756842665738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) - A094728 (A080036 n).toNat

end

end A133128.P7922999756842665738

namespace A133128

/-- `A120070(n+2)-A094728(A080036(n))` -/
def P7922999756842665738.Spec : Prop :=
  ∀ n, P7922999756842665738.a n = A133128 n

end A133128

/-! ## A133128.P17265954870470952379

`Δ[A094728(comp[∑[n+1]]+1)]`
-/

namespace A133128.P17265954870470952379
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133128.P17265954870470952379

namespace A133128

/-- `Δ[A094728(comp[∑[n+1]]+1)]` -/
def P17265954870470952379.Spec : Prop :=
  ∀ n, P17265954870470952379.a n = A133128 n

end A133128

/-! ## A133128.P6559455802751148730

`2-A141695(A080036(n)+1)`
-/

namespace A133128.P6559455802751148730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A141695 (A080036 n + 1).toNat

end

end A133128.P6559455802751148730

namespace A133128

/-- `2-A141695(A080036(n)+1)` -/
def P6559455802751148730.Spec : Prop :=
  ∀ n, P6559455802751148730.a n = A133128 n

end A133128

/-!
# A133129: Number of black/white colorings of a 3 X n rectangle which have no monochromatic 2 by 2 subsquares.

The programs for A133129, the canonical program `A133129.P5889865400529130373` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133129 has offset 0).

The definition of A133129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133129.P5889865400529130373

`ogf((1+2x-x^2)/(1-6x-3x^2+2x^3))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133129

/-- `ogf((1+2x-x^2)/(1-6x-3x^2+2x^3))` -/
def P5889865400529130373.Spec : Prop :=
  ∀ n, P5889865400529130373.a n = A133129 n

theorem P5889865400529130373.correct : P5889865400529130373.Spec := by
  intro n
  simp only [A133129]

end A133129

/-! ## A133129.P1289764883455743154

`A181214(2*n+1)/sqrt(A181214(2*(n+1)))`
-/

namespace A133129.P1289764883455743154
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A181214 (2 * n + 1) : ℝ) / Real.sqrt (A181214 (2 * (n + 1)) : ℝ)

end

end A133129.P1289764883455743154

namespace A133129

/-- `A181214(2*n+1)/sqrt(A181214(2*(n+1)))` -/
def P1289764883455743154.Spec : Prop :=
  ∀ n, P1289764883455743154.a n = (A133129 n : ℝ)

end A133129

/-! ## A133129.P3780165536578555964

`A020639(A038232(n))*A208269(A034856(n+1))`
-/

namespace A133129.P3780165536578555964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038232 n).toNat * A208269 (A034856 (n + 1)).toNat

end

end A133129.P3780165536578555964

namespace A133129

/-- `A020639(A038232(n))*A208269(A034856(n+1))` -/
def P3780165536578555964.Spec : Prop :=
  ∀ n, P3780165536578555964.a n = A133129 n

end A133129

/-! ## A133129.P2111152371270226710

`A020639(A315590(n))*A208269(A034856(n+1))`
-/

namespace A133129.P2111152371270226710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A315590 n).toNat * A208269 (A034856 (n + 1)).toNat

end

end A133129.P2111152371270226710

namespace A133129

/-- `A020639(A315590(n))*A208269(A034856(n+1))` -/
def P2111152371270226710.Spec : Prop :=
  ∀ n, P2111152371270226710.a n = A133129 n

end A133129

/-!
# A133131: a(4n) = 3n+1, a(4n+1) = -3n, a(4n+2) = -3n-3, a(4n+3) = 3n+2.

The programs for A133131, the canonical program `A133131.P2286619293522263378` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133131 has offset 0).

The definition of A133131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133131.P2286619293522263378

`Δ[Δ[A131742(n)]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133131

/-- `Δ[Δ[A131742(n)]]` -/
def P2286619293522263378.Spec : Prop :=
  ∀ n, P2286619293522263378.a n = A133131 n

theorem P2286619293522263378.correct : P2286619293522263378.Spec := by
  intro n
  simp only [A133131]

end A133131

/-! ## A133131.P9688818010274652225

`Δ[Δ[A091684(A057353(n))]]`
-/

namespace A133131.P9688818010274652225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A057353 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133131.P9688818010274652225

namespace A133131

/-- `Δ[Δ[A091684(A057353(n))]]` -/
def P9688818010274652225.Spec : Prop :=
  ∀ n, P9688818010274652225.a n = A133131 n

end A133131

/-! ## A133131.P15456140124050641424

`A057077(n)+A057077(n+1)*A057353(n+1)`
-/

namespace A133131.P15456140124050641424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + A057077 (n + 1) * A057353 (n + 1)

end

end A133131.P15456140124050641424

namespace A133131

/-- `A057077(n)+A057077(n+1)*A057353(n+1)` -/
def P15456140124050641424.Spec : Prop :=
  ∀ n, P15456140124050641424.a n = A133131 n

end A133131

/-! ## A133131.P6108142917779120256

`Δ[Δ[A057353(n*A021913(n))]]`
-/

namespace A133131.P6108142917779120256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 ((n : ℤ) * A021913 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133131.P6108142917779120256

namespace A133131

/-- `Δ[Δ[A057353(n*A021913(n))]]` -/
def P6108142917779120256.Spec : Prop :=
  ∀ n, P6108142917779120256.a n = A133131 n

end A133131

/-! ## A133131.P6408045909255845029

`Δ[Δ[A057353(n*A000035(A004526(n)))]]`
-/

namespace A133131.P6408045909255845029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 ((n : ℤ) * A000035 (A004526 n).toNat).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133131.P6408045909255845029

namespace A133131

/-- `Δ[Δ[A057353(n*A000035(A004526(n)))]]` -/
def P6408045909255845029.Spec : Prop :=
  ∀ n, P6408045909255845029.a n = A133131 n

end A133131

/-! ## A133131.P17623980655886996324

`A001057(A130482(A004442(n)))`
-/

namespace A133131.P17623980655886996324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A130482 (A004442 n).toNat).toNat

end

end A133131.P17623980655886996324

namespace A133131

/-- `A001057(A130482(A004442(n)))` -/
def P17623980655886996324.Spec : Prop :=
  ∀ n, P17623980655886996324.a n = A133131 n

end A133131

/-! ## A133131.P6901947445651502075

`A001057(A166517(n)-Δ[A285869(n)])`
-/

namespace A133131.P6901947445651502075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A166517 n - (f1 (n + 1) - f1 n)).toNat

end

end A133131.P6901947445651502075

namespace A133131

/-- `A001057(A166517(n)-Δ[A285869(n)])` -/
def P6901947445651502075.Spec : Prop :=
  ∀ n, P6901947445651502075.a n = A133131 n

end A133131

/-! ## A133131.P5289788401793715330

`A059841(A057979(n))-A001057(A166517(n))`
-/

namespace A133131.P5289788401793715330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A057979 n).toNat - A001057 (A166517 n).toNat

end

end A133131.P5289788401793715330

namespace A133131

/-- `A059841(A057979(n))-A001057(A166517(n))` -/
def P5289788401793715330.Spec : Prop :=
  ∀ n, P5289788401793715330.a n = A133131 n

end A133131

/-! ## A133131.P3135515322730912849

`Δ[Δ[A142150(A140106(n+1)+n)]]`
-/

namespace A133131.P3135515322730912849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A140106 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133131.P3135515322730912849

namespace A133131

/-- `Δ[Δ[A142150(A140106(n+1)+n)]]` -/
def P3135515322730912849.Spec : Prop :=
  ∀ n, P3135515322730912849.a n = A133131 n

end A133131

/-! ## A133131.P1330452014523877676

`A001057(A098181(n))-A001057(A185452(n))`
-/

namespace A133131.P1330452014523877676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A098181 n).toNat - A001057 (A185452 n).toNat

end

end A133131.P1330452014523877676

namespace A133131

/-- `A001057(A098181(n))-A001057(A185452(n))` -/
def P1330452014523877676.Spec : Prop :=
  ∀ n, P1330452014523877676.a n = A133131 n

end A133131

/-!
# A133132: Number of surjections from an n-element set to a ten-element set.

The programs for A133132, there is no canonical definition to state claims against.
-/

/-! ## A133132.P11834798012241608229

`A131689(eq[10, A002262(n)])`
-/

namespace A133132.P11834798012241608229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133132.P11834798012241608229

/-! ## A133132.P17597835963827569134

`A019538(A000124(n+9)+9)`
-/

namespace A133132.P17597835963827569134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A000124 (n + 9) + 9).toNat

end

end A133132.P17597835963827569134

/-! ## A133132.P3158374598510808669

`A131689(eq[10, A144328(n+1)])`
-/

namespace A133132.P3158374598510808669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133132.P3158374598510808669

/-! ## A133132.P16724937628940723724

`A131689(eq[11, A002260(n+1)])`
-/

namespace A133132.P16724937628940723724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133132.P16724937628940723724

/-! ## A133132.P7365094459154463619

`A131689(eq[11, A134868(n+1)])`
-/

namespace A133132.P7365094459154463619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133132.P7365094459154463619

/-! ## A133132.P8175784886251392681

`A131689(eq[21, A158405(n+1)])`
-/

namespace A133132.P8175784886251392681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133132.P8175784886251392681

/-! ## A133132.P12792487271287836419

`A090582(eq[9, A193592(n)])`
-/

namespace A133132.P12792487271287836419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133132.P12792487271287836419

/-!
# A133133: a(n) is the largest prime factor of the sum of the largest prime factors of numbers from 2 to n.

The programs for A133133, the canonical program `A133133.P5258016011516317124` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133133 has offset 2).

The definition of A133133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 847 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133133.P5258016011516317124

`A006530(A088822(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A133133

/-- `A006530(A088822(n+2))` -/
def P5258016011516317124.Spec : Prop :=
  ∀ n, P5258016011516317124.a n = A133133 (n + 2)

theorem P5258016011516317124.correct : P5258016011516317124.Spec := by
  intro n
  simp only [A133133, Nat.add_sub_cancel]

end A133133

/-! ## A133133.P11558109703034736715

`A006530(∑[A006530(n+2)])`
-/

namespace A133133.P11558109703034736715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133133.P11558109703034736715

namespace A133133

/-- `A006530(∑[A006530(n+2)])` -/
def P11558109703034736715.Spec : Prop :=
  ∀ n, P11558109703034736715.a n = A133133 (n + 2)

end A133133

/-! ## A133133.P17513935277832309408

`A006530(A046670(n+2)-1)`
-/

namespace A133133.P17513935277832309408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046670 (n + 2) - 1).toNat

end

end A133133.P17513935277832309408

namespace A133133

/-- `A006530(A046670(n+2)-1)` -/
def P17513935277832309408.Spec : Prop :=
  ∀ n, P17513935277832309408.a n = A133133 (n + 2)

end A133133

/-! ## A133133.P1232094156026340340

`A006530(record[A006530(n)+a(n-1)])` with `a(0)=2, a(1)=0`
-/

namespace A133133.P1232094156026340340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  A006530 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133133.P1232094156026340340

namespace A133133

/-- `A006530(record[A006530(n)+a(n-1)])` -/
def P1232094156026340340.Spec : Prop :=
  ∀ n, P1232094156026340340.a n = A133133 (n + 2)

end A133133

/-! ## A133133.P16213620278310983410

`A111089(∑[A111089(n+2)])`
-/

namespace A133133.P16213620278310983410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133133.P16213620278310983410

namespace A133133

/-- `A111089(∑[A111089(n+2)])` -/
def P16213620278310983410.Spec : Prop :=
  ∀ n, P16213620278310983410.a n = A133133 (n + 2)

end A133133

/-! ## A133133.P1284450108608595859

`A085392(2*A088822(n+2))`
-/

namespace A133133.P1284450108608595859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A088822 (n + 2)).toNat

end

end A133133.P1284450108608595859

namespace A133133

/-- `A085392(2*A088822(n+2))` -/
def P1284450108608595859.Spec : Prop :=
  ∀ n, P1284450108608595859.a n = A133133 (n + 2)

end A133133

/-! ## A133133.P8454232629806215936

`A004525(A066048(∑[A066048(2*(n+2))]))`
-/

namespace A133133.P8454232629806215936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A066048 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A133133.P8454232629806215936

namespace A133133

/-- `A004525(A066048(∑[A066048(2*(n+2))]))` -/
def P8454232629806215936.Spec : Prop :=
  ∀ n, P8454232629806215936.a n = A133133 (n + 2)

end A133133

/-! ## A133133.P5624179440113026359

`A085392(∑[2*A085392((n+2)²)])`
-/

namespace A133133.P5624179440113026359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085392 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133133.P5624179440113026359

namespace A133133

/-- `A085392(∑[2*A085392((n+2)²)])` -/
def P5624179440113026359.Spec : Prop :=
  ∀ n, P5624179440113026359.a n = A133133 (n + 2)

end A133133

/-!
# A133134: Where records occur in A133048.

The programs for A133134, there is no canonical definition to state claims against.
-/

/-! ## A133134.P8139017212601822012

`lt[A274846(n+1), A250120(A133500(n))]`
-/

namespace A133134.P8139017212601822012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A133500 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133134.P8139017212601822012

/-! ## A133134.P5501120288209601408

`A133505(n+1)-A037912(A174109(n))`
-/

namespace A133134.P5501120288209601408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133505 (n + 1) - A037912 (A174109 n).toNat

end

end A133134.P5501120288209601408

/-! ## A133134.P13738303167572754411

`eq[A260529(A002100(2*n+1)), A260529(n)]`
-/

namespace A133134.P13738303167572754411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 (A002100 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133134.P13738303167572754411

/-! ## A133134.P2440572679577113878

`lt[A256441(A210947(n+2)), A005897(n+3)]`
-/

namespace A133134.P2440572679577113878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256441 (A210947 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133134.P2440572679577113878

/-! ## A133134.P8942070903214440317

`lt[A065609(2*n+1), A319720(A340604(n+1))]`
-/

namespace A133134.P8942070903214440317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065609 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (A340604 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133134.P8942070903214440317

/-!
# A133135: Third column of the inverse of the triangle of polynomial coefficients P(0,x)=1, 2P(n,x)=(1+x)*[(1+x)^(n-1)+x^(n-1)].

The programs for A133135, there is no canonical definition to state claims against.
-/

/-! ## A133135.P12744918332985731184

`A036968(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A133135.P12744918332985731184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036968 (n + 1) - a (n - 1)

end

end A133135.P12744918332985731184

/-! ## A133135.P11074080022209678030

`A226158(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A133135.P11074080022209678030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226158 (n + 1) - a (n - 1)

end

end A133135.P11074080022209678030

/-! ## A133135.P5711421348062434729

`A060096(∑[n+1]+1)-a(n-1)` with `a(0)=1`
-/

namespace A133135.P5711421348062434729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060096 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - a (n - 1)

end

end A133135.P5711421348062434729

/-! ## A133135.P17311137987141960180

`∑[A226158(n+1)]*A062157(n+2)`
-/

namespace A133135.P17311137987141960180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A062157 (n + 2)

end

end A133135.P17311137987141960180

/-! ## A133135.P3729796209757733994

`∑[A226158(n+1)]/A062157(n+4)`
-/

namespace A133135.P3729796209757733994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A062157 (n + 4) : ℚ)

end

end A133135.P3729796209757733994

/-!
# A133136: Powers of 3 written backwards and sorted.

The programs for A133136, there is no canonical definition to state claims against.
-/

/-! ## A133136.P12994104689619007790

`record[A004167(A225639(n))]`
-/

namespace A133136.P12994104689619007790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004167 (A225639 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133136.P12994104689619007790

/-! ## A133136.P1243953444797760756

`A004086(3^A334672(n))`
-/

namespace A133136.P1243953444797760756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A334672 n : ℤ))).toNat

end

end A133136.P1243953444797760756

/-! ## A133136.P9742842721331634444

`A004086(3^A338500(n))`
-/

namespace A133136.P9742842721331634444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A338500 n : ℤ))).toNat

end

end A133136.P9742842721331634444

/-! ## A133136.P3151170225406040024

`record[A004086(A256689(n+1))]`
-/

namespace A133136.P3151170225406040024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A256689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133136.P3151170225406040024

/-! ## A133136.P10076072869615798511

`A004086(3^A279125(2*n+1))`
-/

namespace A133136.P10076072869615798511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A279125 (2 * n + 1) : ℤ))).toNat

end

end A133136.P10076072869615798511

/-!
# A133137: a(1) = 1, a(2) = 2, a(n) = smallest number not the sum of 4th powers of 2 distinct earlier terms.

The programs for A133137, there is no canonical definition to state claims against.
-/

/-! ## A133137.P2966214562855693461

`comp[18^n-1]`
-/

namespace A133137.P2966214562855693461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133137.P2966214562855693461

/-! ## A133137.P61351671828165524

`comp[C(n, 17)]-1`
-/

namespace A133137.P61351671828165524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A133137.P61351671828165524

/-! ## A133137.P9152107601857885140

`gcd(2, C(15, n))+n`
-/

namespace A133137.P9152107601857885140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose 15 n) + n

end

end A133137.P9152107601857885140

/-! ## A133137.P1332813770682851904

`comp[n!-8]+1`
-/

namespace A133137.P1332813770682851904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A133137.P1332813770682851904

/-! ## A133137.P17573056396214931291

`round(∑[root(2, or(17, n))])`
-/

namespace A133137.P17573056396214931291
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 / (Nat.lor 17 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133137.P17573056396214931291

/-! ## A133137.P8209004315995310485

`floor(sqrt(sqrt(n)))!+n`
-/

namespace A133137.P8209004315995310485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊Real.sqrt (Real.sqrt (n : ℝ))⌋.toNat + n

end

end A133137.P8209004315995310485

/-! ## A133137.P12976036658804892398

`comp[or(2, n)²²]+1`
-/

namespace A133137.P12976036658804892398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A133137.P12976036658804892398

/-! ## A133137.P86649007349821272

`floor(∑[root(atan(10), n+2)])`
-/

namespace A133137.P86649007349821272
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (10 : ℝ) ^ (1 / (n + 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A133137.P86649007349821272

/-!
# A133138: Triangle T(n,k) of the coefficients of the polynomials Q(n,x)=(1+x)[(1+x)^(n-1)+x^(n-1)], Q(0,x)=2.

The programs for A133138, the canonical program `A133138.P17820506567274985276` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133138 has offset 0).

The definition of A133138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133138.P15607703523149378913

`A007318(n)+char[C(ceil(n/2), 2)+n]`
-/

namespace A133138.P15607703523149378913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A133138.P15607703523149378913

namespace A133138

/-- `A007318(n)+char[C(ceil(n/2), 2)+n]` -/
def P15607703523149378913.Spec : Prop :=
  ∀ n, P15607703523149378913.a n = A133138 n

end A133138

/-! ## A133138.P1523009843483547567

`char[C(ceil(n/2), 2)+n]+A014473(n)+1`
-/

namespace A133138.P1523009843483547567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A014473 n + 1)

end

end A133138.P1523009843483547567

namespace A133138

/-- `char[C(ceil(n/2), 2)+n]+A014473(n)+1` -/
def P1523009843483547567.Spec : Prop :=
  ∀ n, P1523009843483547567.a n = A133138 n

end A133138

/-! ## A133138.P3293626851116373942

`char[C(ceil(n/2), 2)+n]+A028326(n)/2`
-/

namespace A133138.P3293626851116373942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A028326 n : ℚ) / 2

end

end A133138.P3293626851116373942

namespace A133138

/-- `char[C(ceil(n/2), 2)+n]+A028326(n)/2` -/
def P3293626851116373942.Spec : Prop :=
  ∀ n, P3293626851116373942.a n = (A133138 n : ℚ)

end A133138

/-! ## A133138.P14714463988794370164

`char[C(ceil(n/2), 2)+n]+(A131060(n)+2)/3`
-/

namespace A133138.P14714463988794370164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A131060 n + 2 : ℚ) / 3

end

end A133138.P14714463988794370164

namespace A133138

/-- `char[C(ceil(n/2), 2)+n]+(A131060(n)+2)/3` -/
def P14714463988794370164.Spec : Prop :=
  ∀ n, P14714463988794370164.a n = (A133138 n : ℚ)

end A133138

/-! ## A133138.P1302053699555042014

`char[C(ceil(n/2), 2)+n]+(A131061(n)+3)/4`
-/

namespace A133138.P1302053699555042014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A131061 n + 3 : ℚ) / 4

end

end A133138.P1302053699555042014

namespace A133138

/-- `char[C(ceil(n/2), 2)+n]+(A131061(n)+3)/4` -/
def P1302053699555042014.Spec : Prop :=
  ∀ n, P1302053699555042014.a n = (A133138 n : ℚ)

end A133138

/-! ## A133138.P14886373085312130396

`char[C(ceil(n/2), 2)+n]+(A131063(n)+4)/5`
-/

namespace A133138.P14886373085312130396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A131063 n + 4 : ℚ) / 5

end

end A133138.P14886373085312130396

namespace A133138

/-- `char[C(ceil(n/2), 2)+n]+(A131063(n)+4)/5` -/
def P14886373085312130396.Spec : Prop :=
  ∀ n, P14886373085312130396.a n = (A133138 n : ℚ)

end A133138

/-! ## A133138.P9184174025641235510

`abs(A108086(n))+2-Δ[∪[2*n+1, n²+n]]`
-/

namespace A133138.P9184174025641235510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| + (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A133138.P9184174025641235510

namespace A133138

/-- `abs(A108086(n))+2-Δ[∪[2*n+1, n²+n]]` -/
def P9184174025641235510.Spec : Prop :=
  ∀ n, P9184174025641235510.a n = A133138 n

end A133138

/-! ## A133138.P9301298959741322279

`abs(A130595(n))+2-Δ[∪[2*n+1, n²+n]]`
-/

namespace A133138.P9301298959741322279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| + (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A133138.P9301298959741322279

namespace A133138

/-- `abs(A130595(n))+2-Δ[∪[2*n+1, n²+n]]` -/
def P9301298959741322279.Spec : Prop :=
  ∀ n, P9301298959741322279.a n = A133138 n

end A133138

/-! ## A133138.P7637188628201724922

`sqrt(A008459(n))+2-Δ[∪[2*n+1, n²+n]]`
-/

namespace A133138.P7637188628201724922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) + (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℝ)

end

end A133138.P7637188628201724922

namespace A133138

/-- `sqrt(A008459(n))+2-Δ[∪[2*n+1, n²+n]]` -/
def P7637188628201724922.Spec : Prop :=
  ∀ n, P7637188628201724922.a n = (A133138 n : ℝ)

end A133138

/-! ## A133138.P4233181431163181649

`Δ[A102363(n)]+2-Δ[∪[2*n+1, n²+n]]`
-/

namespace A133138.P4233181431163181649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

end

end A133138.P4233181431163181649

namespace A133138

/-- `Δ[A102363(n)]+2-Δ[∪[2*n+1, n²+n]]` -/
def P4233181431163181649.Spec : Prop :=
  ∀ n, P4233181431163181649.a n = A133138 n

end A133138

/-! ## A133138.P17820506567274985276

`A097806(n)+A007318(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133138

/-- `A097806(n)+A007318(n)` -/
def P17820506567274985276.Spec : Prop :=
  ∀ n, P17820506567274985276.a n = A133138 n

theorem P17820506567274985276.correct : P17820506567274985276.Spec := by
  intro n
  simp only [A133138]

end A133138

/-! ## A133138.P2132506279578830932

`A007318(n)+A167374(n)²`
-/

namespace A133138.P2132506279578830932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A167374 n ^ 2

end

end A133138.P2132506279578830932

namespace A133138

/-- `A007318(n)+A167374(n)²` -/
def P2132506279578830932.Spec : Prop :=
  ∀ n, P2132506279578830932.a n = A133138 n

end A133138

/-! ## A133138.P9398224608729478147

`A103451(n+1)+A007318(n)`
-/

namespace A133138.P9398224608729478147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (n + 1) + A007318 n

end

end A133138.P9398224608729478147

namespace A133138

/-- `A103451(n+1)+A007318(n)` -/
def P9398224608729478147.Spec : Prop :=
  ∀ n, P9398224608729478147.a n = A133138 n

end A133138

/-! ## A133138.P1391171695999220447

`A014473(n)+A097806(n)+1`
-/

namespace A133138.P1391171695999220447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A097806 n + 1)

end

end A133138.P1391171695999220447

namespace A133138

/-- `A014473(n)+A097806(n)+1` -/
def P1391171695999220447.Spec : Prop :=
  ∀ n, P1391171695999220447.a n = A133138 n

theorem P1391171695999220447.correct : P1391171695999220447.Spec := by
  intro n
  simp only [A133138, Nat.add_sub_cancel, A133138.P1391171695999220447.a, A133138.P17820506567274985276.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A097806, A097806.P6713740258379660295.a, A002260, A002260.P9170571874073898642.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A133138

/-! ## A133138.P13622452619997204611

`A154926(n+1)+A131127(n)`
-/

namespace A133138.P13622452619997204611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154926 (n + 1) + A131127 n

end

end A133138.P13622452619997204611

namespace A133138

/-- `A154926(n+1)+A131127(n)` -/
def P13622452619997204611.Spec : Prop :=
  ∀ n, P13622452619997204611.a n = A133138 n

end A133138

/-! ## A133138.P7850498868772150213

`A136157(n)-A154926(n+1)`
-/

namespace A133138.P7850498868772150213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136157 n - A154926 (n + 1)

end

end A133138.P7850498868772150213

namespace A133138

/-- `A136157(n)-A154926(n+1)` -/
def P7850498868772150213.Spec : Prop :=
  ∀ n, P7850498868772150213.a n = A133138 n

end A133138

/-! ## A133138.P2365477587596227668

`A097806(n)+A028326(n)/2`
-/

namespace A133138.P2365477587596227668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097806 n : ℚ) + (A028326 n : ℚ) / 2

end

end A133138.P2365477587596227668

namespace A133138

/-- `A097806(n)+A028326(n)/2` -/
def P2365477587596227668.Spec : Prop :=
  ∀ n, P2365477587596227668.a n = (A133138 n : ℚ)

theorem P2365477587596227668.correct : P2365477587596227668.Spec := by
  intro n
  simp only [A133138, Nat.add_sub_cancel, A133138.P2365477587596227668.a, A133138.P17820506567274985276.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A097806, A097806.P6713740258379660295.a, A002260, A002260.P9170571874073898642.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A133138

/-! ## A133138.P1672545673889908593

`A023531(n+1)+A023531(n)+A007318(n)`
-/

namespace A133138.P1672545673889908593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1) + (A023531 n + A007318 n)

end

end A133138.P1672545673889908593

namespace A133138

/-- `A023531(n+1)+A023531(n)+A007318(n)` -/
def P1672545673889908593.Spec : Prop :=
  ∀ n, P1672545673889908593.a n = A133138 n

end A133138

/-! ## A133138.P4973396162253680943

`A097805(n+1)+A097806(n)+A097805(n)`
-/

namespace A133138.P4973396162253680943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + (A097806 n + A097805 n)

end

end A133138.P4973396162253680943

namespace A133138

/-- `A097805(n+1)+A097806(n)+A097805(n)` -/
def P4973396162253680943.Spec : Prop :=
  ∀ n, P4973396162253680943.a n = A133138 n

end A133138

/-! ## A133138.P7008395229989746900

`A007318(n)+A128229(n+1)/A007318(n)`
-/

namespace A133138.P7008395229989746900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) + (A128229 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A133138.P7008395229989746900

namespace A133138

/-- `A007318(n)+A128229(n+1)/A007318(n)` -/
def P7008395229989746900.Spec : Prop :=
  ∀ n, P7008395229989746900.a n = (A133138 n : ℚ)

end A133138

/-!
# A133140: a(0) = 2, a(n) = 2^n + 2 for n>=1.

The programs for A133140, the canonical program `A133140.P6737886990711371856` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133140 has offset 0).

The definition of A133140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133140.P6737886990711371856

`2*a(n-1)-2` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133140

/-- `2*a(n-1)-2` -/
def P6737886990711371856.Spec : Prop :=
  ∀ n, P6737886990711371856.a n = A133140 n

theorem P6737886990711371856.correct : P6737886990711371856.Spec := by
  intro n
  simp only [A133140]

end A133140

/-! ## A133140.P11234869143281452536

`2*A094373(n)`
-/

namespace A133140.P11234869143281452536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094373 n

end

end A133140.P11234869143281452536

namespace A133140

/-- `2*A094373(n)` -/
def P11234869143281452536.Spec : Prop :=
  ∀ n, P11234869143281452536.a n = A133140 n

end A133140

/-! ## A133140.P12936173162871647998

`or(1, 2^n)+1`
-/

namespace A133140.P12936173162871647998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n) + 1

end

end A133140.P12936173162871647998

namespace A133140

/-- `or(1, 2^n)+1` -/
def P12936173162871647998.Spec : Prop :=
  ∀ n, (P12936173162871647998.a n : ℤ) = A133140 n

end A133140

/-! ## A133140.P10841706669091891259

`and(2^n+2, -2)`
-/

namespace A133140.P10841706669091891259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 ^ n + 2 : ℤ) (-2)

end

end A133140.P10841706669091891259

namespace A133140

/-- `and(2^n+2, -2)` -/
def P10841706669091891259.Spec : Prop :=
  ∀ n, P10841706669091891259.a n = A133140 n

end A133140

/-! ## A133140.P2884109950918990888

`lcm(2, xor(-2, 2^n))`
-/

namespace A133140.P2884109950918990888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.xor (-2) (2 ^ n : ℤ))

end

end A133140.P2884109950918990888

namespace A133140

/-- `lcm(2, xor(-2, 2^n))` -/
def P2884109950918990888.Spec : Prop :=
  ∀ n, (P2884109950918990888.a n : ℤ) = A133140 n

end A133140

/-! ## A133140.P255532833702822965

`∑[lcm(4, 2^n)/2]`
-/

namespace A133140.P255532833702822965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (2 ^ n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133140.P255532833702822965

namespace A133140

/-- `∑[lcm(4, 2^n)/2]` -/
def P255532833702822965.Spec : Prop :=
  ∀ n, P255532833702822965.a n = (A133140 n : ℚ)

end A133140

/-! ## A133140.P17722444814984549022

`∑[ogf((-2+2x+2x^2)/(-1+2x))]`
-/

namespace A133140.P17722444814984549022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -2] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133140.P17722444814984549022

namespace A133140

/-- `∑[ogf((-2+2x+2x^2)/(-1+2x))]` -/
def P17722444814984549022.Spec : Prop :=
  ∀ n, P17722444814984549022.a n = A133140 n

end A133140

/-! ## A133140.P5679640669028500172

`ogf((2-2x-2x^2)/(1-3x+2x^2))`
-/

namespace A133140.P5679640669028500172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -2] [1, -3, 2] n

end

end A133140.P5679640669028500172

namespace A133140

/-- `ogf((2-2x-2x^2)/(1-3x+2x^2))` -/
def P5679640669028500172.Spec : Prop :=
  ∀ n, P5679640669028500172.a n = A133140 n

end A133140

/-! ## A133140.P17507810923190703170

`∑[2*ceil(2^(n-2))]`
-/

namespace A133140.P17507810923190703170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133140.P17507810923190703170

namespace A133140

/-- `∑[2*ceil(2^(n-2))]` -/
def P17507810923190703170.Spec : Prop :=
  ∀ n, P17507810923190703170.a n = A133140 n

end A133140

/-! ## A133140.P2971157958367542894

`ceil(atan(n+1)+2^n)`
-/

namespace A133140.P2971157958367542894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (2 ^ n : ℝ)⌉

end

end A133140.P2971157958367542894

namespace A133140

/-- `ceil(atan(n+1)+2^n)` -/
def P2971157958367542894.Spec : Prop :=
  ∀ n, P2971157958367542894.a n = A133140 n

end A133140

/-! ## A133140.P11910992561592168725

`ceil(acot(acot(n+1))+2^n)`
-/

namespace A133140.P11910992561592168725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n + 1 : ℝ)) + (2 ^ n : ℝ)⌉

end

end A133140.P11910992561592168725

namespace A133140

/-- `ceil(acot(acot(n+1))+2^n)` -/
def P11910992561592168725.Spec : Prop :=
  ∀ n, P11910992561592168725.a n = A133140 n

end A133140

/-! ## A133140.P7165007810946026588

`2^(n%a(n-1))+2` with `a(0)=2`
-/

namespace A133140.P7165007810946026588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 ^ (n % a (n - 1)) + 2

end

end A133140.P7165007810946026588

namespace A133140

/-- `2^(n%a(n-1))+2` -/
def P7165007810946026588.Spec : Prop :=
  ∀ n, (P7165007810946026588.a n : ℤ) = A133140 n

end A133140

/-! ## A133140.P6985229861393906229

`gcd(2, a(n-1))+2^n` with `a(0)=2`
-/

namespace A133140.P6985229861393906229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (a (n - 1)) + 2 ^ n

end

end A133140.P6985229861393906229

namespace A133140

/-- `gcd(2, a(n-1))+2^n` -/
def P6985229861393906229.Spec : Prop :=
  ∀ n, (P6985229861393906229.a n : ℤ) = A133140 n

end A133140

/-! ## A133140.P9534540439639826670

`a(n-1)+2^(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A133140.P9534540439639826670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A133140.P9534540439639826670

namespace A133140

/-- `a(n-1)+2^(n-1)` -/
def P9534540439639826670.Spec : Prop :=
  ∀ n, P9534540439639826670.a n = (A133140 n : ℚ)

end A133140

/-! ## A133140.P13266584217916176385

`a(floor(1/(n+1)))^n+2` with `a(0)=2`
-/

namespace A133140.P13266584217916176385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ⌊1 / (n + 1 : ℚ)⌋.toNat ^ n + 2

end

end A133140.P13266584217916176385

namespace A133140

/-- `a(floor(1/(n+1)))^n+2` -/
def P13266584217916176385.Spec : Prop :=
  ∀ n, (P13266584217916176385.a n : ℤ) = A133140 n

end A133140

/-! ## A133140.P9984414392647851575

`abs(n-3-or(n-1, 2^n))`
-/

namespace A133140.P9984414392647851575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 3 - Int.lor ((n : ℤ) - 1) (2 ^ n : ℤ)|

end

end A133140.P9984414392647851575

namespace A133140

/-- `abs(n-3-or(n-1, 2^n))` -/
def P9984414392647851575.Spec : Prop :=
  ∀ n, P9984414392647851575.a n = A133140 n

end A133140

/-! ## A133140.P16155157188497889198

`(1-a(n-1))/(1/2-1)` with `a(0)=2, a(1)=4`
-/

namespace A133140.P16155157188497889198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  (1 - a (n - 1)) / ((1 : ℚ) / 2 - 1)

end

end A133140.P16155157188497889198

namespace A133140

/-- `(1-a(n-1))/(1/2-1)` -/
def P16155157188497889198.Spec : Prop :=
  ∀ n, P16155157188497889198.a n = (A133140 n : ℚ)

end A133140

/-! ## A133140.P12495851655650281262

`abs(a(n-1)+a(n-1)-2)` with `a(0)=2, a(1)=4`
-/

namespace A133140.P12495851655650281262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  |a (n - 1) + (a (n - 1) - 2)|

end

end A133140.P12495851655650281262

namespace A133140

/-- `abs(a(n-1)+a(n-1)-2)` -/
def P12495851655650281262.Spec : Prop :=
  ∀ n, P12495851655650281262.a n = A133140 n

end A133140

/-! ## A133140.P17020951134159532250

`abs(2-a(n-1)-a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A133140.P17020951134159532250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  |2 - a (n - 1) - a (n - 1)|

end

end A133140.P17020951134159532250

namespace A133140

/-- `abs(2-a(n-1)-a(n-1))` -/
def P17020951134159532250.Spec : Prop :=
  ∀ n, P17020951134159532250.a n = A133140 n

end A133140

/-! ## A133140.P9816729847582407413

`floor(a(n-1)+a(n-1)-2)` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A133140.P9816729847582407413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (a (n - 1) - 2)

end

end A133140.P9816729847582407413

namespace A133140

/-- `floor(a(n-1)+a(n-1)-2)` -/
def P9816729847582407413.Spec : Prop :=
  ∀ n, P9816729847582407413.a n = A133140 n

theorem P9816729847582407413.correct : P9816729847582407413.Spec := by
  intro n
  simp only [A133140, Nat.add_sub_cancel, A133140.P9816729847582407413.a, A133140.P6737886990711371856.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A133140

/-!
# A133141: Numbers which are both centered pentagonal (A005891) and centered hexagonal numbers (A003215).

The programs for A133141, there is no canonical definition to state claims against.
-/

/-! ## A133141.P4675471639788369831

`6*A201008(n)+1`
-/

namespace A133141.P4675471639788369831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A201008 n + 1

end

end A133141.P4675471639788369831

/-! ## A133141.P16965991655997170294

`xor(6*A201008(n), A000041(((-1)^n)²))`
-/

namespace A133141.P16965991655997170294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 * A201008 n) (A000041 (((-1) ^ n) ^ 2).toNat)

end

end A133141.P16965991655997170294

/-!
# A133145: Period 4: repeat [1, 2, 4, 8].

The programs for A133145, the canonical program `A133145.P3731618436186570124` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133145 has offset 0).

The definition of A133145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133145.P3731618436186570124

`2^(n%4)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133145

/-- `2^(n%4)` -/
def P3731618436186570124.Spec : Prop :=
  ∀ n, (P3731618436186570124.a n : ℤ) = A133145 n

theorem P3731618436186570124.correct : P3731618436186570124.Spec := by
  intro n
  simp only [A133145]

end A133145

/-!
# A133146: Antidiagonal sums of the triangle A133128.

The programs for A133146, the canonical program `A133146.P12004985529220724653` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133146 has offset 0).

The definition of A133146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133146.P12004985529220724653

`(6*n²+10*n+19-(2*n+3)*(-1)^n)/8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133146

/-- `(6*n²+10*n+19-(2*n+3)*(-1)^n)/8` -/
def P12004985529220724653.Spec : Prop :=
  ∀ n, P12004985529220724653.a n = (A133146 n : ℚ)

end A133146

/-! ## A133146.P18401348404503751784

`∑[lcm(2, n)+n%2]+2`
-/

namespace A133146.P18401348404503751784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A133146.P18401348404503751784

namespace A133146

/-- `∑[lcm(2, n)+n%2]+2` -/
def P18401348404503751784.Spec : Prop :=
  ∀ n, (P18401348404503751784.a n : ℤ) = A133146 n

end A133146

/-! ## A133146.P3900474287575204942

`∑[gcd(2, n)]*∑[and(1, n)]+2`
-/

namespace A133146.P3900474287575204942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j) + 2

end

end A133146.P3900474287575204942

namespace A133146

/-- `∑[gcd(2, n)]*∑[and(1, n)]+2` -/
def P3900474287575204942.Spec : Prop :=
  ∀ n, (P3900474287575204942.a n : ℤ) = A133146 n

end A133146

/-! ## A133146.P8278091082597138363

`∑[(n+1)*and(1, n)+n]+2`
-/

namespace A133146.P8278091082597138363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land 1 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A133146.P8278091082597138363

namespace A133146

/-- `∑[(n+1)*and(1, n)+n]+2` -/
def P8278091082597138363.Spec : Prop :=
  ∀ n, (P8278091082597138363.a n : ℤ) = A133146 n

end A133146

/-! ## A133146.P12698261816165407920

`∑[gcd(2*(n+1), (n+1)²)]-(n-1)`
-/

namespace A133146.P12698261816165407920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n + 1)) ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)

end

end A133146.P12698261816165407920

namespace A133146

/-- `∑[gcd(2*(n+1), (n+1)²)]-(n-1)` -/
def P12698261816165407920.Spec : Prop :=
  ∀ n, P12698261816165407920.a n = A133146 n

end A133146

/-! ## A133146.P11254793273026090087

`∑[floor((n+1)^(-1)^a(n-1)+n)]` with `a(0)=2`
-/

namespace A133146.P11254793273026090087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(n + 1 : ℝ) ^ ((-1 : ℚ) ^ (f1 (n - 1) : ℤ) : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133146.P11254793273026090087

namespace A133146

/-- `∑[floor((n+1)^(-1)^a(n-1)+n)]` -/
def P11254793273026090087.Spec : Prop :=
  ∀ n, P11254793273026090087.a n = A133146 n

end A133146

/-! ## A133146.P16533431105141904113

`∑[(n+1)*gcd(2*n, a(n-1))-1]` with `a(0)=2`
-/

namespace A133146.P16533431105141904113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ((n + 1) * Int.gcd (2 * n : ℤ) (f1 (n - 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133146.P16533431105141904113

namespace A133146

/-- `∑[(n+1)*gcd(2*n, a(n-1))-1]` -/
def P16533431105141904113.Spec : Prop :=
  ∀ n, P16533431105141904113.a n = A133146 n

end A133146

/-! ## A133146.P13705900480990978520

`∑[(n+1)*gcd(n+1, n-1)]-(n-1)`
-/

namespace A133146.P13705900480990978520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)

end

end A133146.P13705900480990978520

namespace A133146

/-- `∑[(n+1)*gcd(n+1, n-1)]-(n-1)` -/
def P13705900480990978520.Spec : Prop :=
  ∀ n, P13705900480990978520.a n = A133146 n

end A133146

/-! ## A133146.P15034478409581060980

`∑[2*n*(n+1)/a(n-1)]-(n-1)` with `a(0)=1`
-/

namespace A133146.P15034478409581060980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n : ℚ) * ((n + 1 : ℚ) / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1 : ℚ)

end

end A133146.P15034478409581060980

namespace A133146

/-- `∑[2*n*(n+1)/a(n-1)]-(n-1)` -/
def P15034478409581060980.Spec : Prop :=
  ∀ n, P15034478409581060980.a n = (A133146 n : ℚ)

end A133146

/-! ## A133146.P11418273459569424732

`∑[C(n+1, a(n-1))+n+1]-(n-1)` with `a(0)=1`
-/

namespace A133146.P11418273459569424732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (n + 1) (f1 (n - 1)) + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)

end

end A133146.P11418273459569424732

namespace A133146

/-- `∑[C(n+1, a(n-1))+n+1]-(n-1)` -/
def P11418273459569424732.Spec : Prop :=
  ∀ n, P11418273459569424732.a n = A133146 n

end A133146

/-! ## A133146.P1918260398044654252

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=14, a(4)=18`
-/

namespace A133146.P1918260398044654252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 7, 14, 18] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A133146.P1918260398044654252

namespace A133146

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1918260398044654252.Spec : Prop :=
  ∀ n, P1918260398044654252.a n = A133146 n

end A133146

/-! ## A133146.P8294843710121290314

`∑[A059029(n)]+2`
-/

namespace A133146.P8294843710121290314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A133146.P8294843710121290314

namespace A133146

/-- `∑[A059029(n)]+2` -/
def P8294843710121290314.Spec : Prop :=
  ∀ n, P8294843710121290314.a n = A133146 n

end A133146

/-! ## A133146.P3598669689886718438

`Δ[A246695(n)]-n`
-/

namespace A133146.P3598669689886718438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A133146.P3598669689886718438

namespace A133146

/-- `Δ[A246695(n)]-n` -/
def P3598669689886718438.Spec : Prop :=
  ∀ n, P3598669689886718438.a n = A133146 n

end A133146

/-! ## A133146.P17398884523225038368

`A032438(n+1)+2`
-/

namespace A133146.P17398884523225038368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 (n + 1) + 2

end

end A133146.P17398884523225038368

namespace A133146

/-- `A032438(n+1)+2` -/
def P17398884523225038368.Spec : Prop :=
  ∀ n, P17398884523225038368.a n = A133146 n

end A133146

/-! ## A133146.P4448008278197964866

`A257083(n+1)-n`
-/

namespace A133146.P4448008278197964866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 (n + 1) - (n : ℤ)

end

end A133146.P4448008278197964866

namespace A133146

/-- `A257083(n+1)-n` -/
def P4448008278197964866.Spec : Prop :=
  ∀ n, P4448008278197964866.a n = A133146 n

end A133146

/-! ## A133146.P5922876727725447391

`A397107(n)+2+n`
-/

namespace A133146.P5922876727725447391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397107 n + 2 + (n : ℤ)

end

end A133146.P5922876727725447391

namespace A133146

/-- `A397107(n)+2+n` -/
def P5922876727725447391.Spec : Prop :=
  ∀ n, P5922876727725447391.a n = A133146 n

end A133146

/-! ## A133146.P1876370512651814854

`A271675(n+1)+2-n`
-/

namespace A133146.P1876370512651814854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271675 (n + 1) + (2 - (n : ℤ))

end

end A133146.P1876370512651814854

namespace A133146

/-- `A271675(n+1)+2-n` -/
def P1876370512651814854.Spec : Prop :=
  ∀ n, P1876370512651814854.a n = A133146 n

end A133146

/-! ## A133146.P10704956078475778804

`A014206(n)-A131805(n)`
-/

namespace A133146.P10704956078475778804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n - A131805 n

end

end A133146.P10704956078475778804

namespace A133146

/-- `A014206(n)-A131805(n)` -/
def P10704956078475778804.Spec : Prop :=
  ∀ n, P10704956078475778804.a n = A133146 n

end A133146

/-! ## A133146.P3044517509998159245

`A084684(n)+A080512(n+1)`
-/

namespace A133146.P3044517509998159245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 n + A080512 (n + 1)

end

end A133146.P3044517509998159245

namespace A133146

/-- `A084684(n)+A080512(n+1)` -/
def P3044517509998159245.Spec : Prop :=
  ∀ n, P3044517509998159245.a n = A133146 n

end A133146

/-! ## A133146.P14819035406472358248

`A236453(n)+A130404(n+1)`
-/

namespace A133146.P14819035406472358248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n + A130404 (n + 1)

end

end A133146.P14819035406472358248

namespace A133146

/-- `A236453(n)+A130404(n+1)` -/
def P14819035406472358248.Spec : Prop :=
  ∀ n, P14819035406472358248.a n = A133146 n

end A133146

/-!
# A133147: a(n) = a(n-1) + Sum_{k=0..floor(log_2(n-1))} a(2^k), a(1) = 1.

The programs for A133147, there is no canonical definition to state claims against.
-/

/-! ## A133147.P6307246577324722302

`a(n-1)*A000040(A014963(2*n))-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A133147.P6307246577324722302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A000040 (A014963 (2 * n)).toNat - a (n - 2)

end

end A133147.P6307246577324722302

/-! ## A133147.P8856191243827425704

`∑[A114003(A003418(A053644(n)))]`
-/

namespace A133147.P8856191243827425704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (A003418 (A053644 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133147.P8856191243827425704

/-! ## A133147.P7272799176651724856

`∑[A137735(A256209(A003817(n)))]`
-/

namespace A133147.P7272799176651724856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A256209 (A003817 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133147.P7272799176651724856

/-! ## A133147.P13787132308786410841

`∑[A226080(A033302(n+4)!)]`
-/

namespace A133147.P13787132308786410841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226080 (Nat.factorial (A033302 (n + 4)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133147.P13787132308786410841

/-!
# A133148: E.g.f.: Sum_{k>=1} (x^k/k! / Product_{i=1..k} (1-x^i)).

The programs for A133148, there is no canonical definition to state claims against.
-/

/-! ## A133148.P4472903441367468910

`∑[A109417(n!)]-1`
-/

namespace A133148.P4472903441367468910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109417 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133148.P4472903441367468910

/-!
# A133150: a(n) = smallest k such that A000290(n+1) = A000290(n) + (A000290(n) mod k), or 0 if no such k exists.

The programs for A133150, there is no canonical definition to state claims against.
-/

/-! ## A133150.P14927264136820656563

`A184220(n+1)/A028310(A184221(n+1))`
-/

namespace A133150.P14927264136820656563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184220 (n + 1) : ℚ) / (A028310 (A184221 (n + 1)).toNat : ℚ)

end

end A133150.P14927264136820656563

/-! ## A133150.P3725579764121754707

`(n²-2)*A130543(n)/A028310(A184221(n+1))`
-/

namespace A133150.P3725579764121754707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - 2) * A130543 n : ℚ) / (A028310 (A184221 (n + 1)).toNat : ℚ)

end

end A133150.P3725579764121754707

/-! ## A133150.P3251686799590162345

`(n²-2)%(A000124(n)-A000330(n))/A028310(A184221(n+1))`
-/

namespace A133150.P3251686799590162345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n ^ 2 : ℤ) - 2) (A000124 n - A000330 n) : ℚ) / (A028310 (A184221 (n + 1)).toNat : ℚ)

end

end A133150.P3251686799590162345

/-! ## A133150.P18070011143227983847

`(n²-2)*A165471(A295643(n))/A028310(A184221(n+1))`
-/

namespace A133150.P18070011143227983847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - 2) * A165471 (A295643 n).toNat : ℚ) / (A028310 (A184221 (n + 1)).toNat : ℚ)

end

end A133150.P18070011143227983847

/-! ## A133150.P17022326487242151322

`(n²-2)%A249725(A002061(n))/A028310(A184221(n+1))`
-/

namespace A133150.P17022326487242151322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n ^ 2 : ℤ) - 2) (A249725 (A002061 n).toNat) : ℚ) / (A028310 (A184221 (n + 1)).toNat : ℚ)

end

end A133150.P17022326487242151322

/-! ## A133150.P2885964360176663385

`(n²-2)*A323022(A110622(n+1))/A028310(A184221(n+1))`
-/

namespace A133150.P2885964360176663385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - 2) * A323022 (A110622 (n + 1)).toNat : ℚ) / (A028310 (A184221 (n + 1)).toNat : ℚ)

end

end A133150.P2885964360176663385

/-!
# A133151: a(n) = smallest k such that A000326(n+1) = A000326(n) + (A000326(n) mod k), or 0 if no such k exists.

The programs for A133151, there is no canonical definition to state claims against.
-/

/-! ## A133151.P4335626447788023318

`A184750(n+1)/A028310(A184751(n+1))`
-/

namespace A133151.P4335626447788023318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184750 (n + 1) : ℚ) / (A028310 (A184751 (n + 1)).toNat : ℚ)

end

end A133151.P4335626447788023318

/-! ## A133151.P13222221538133130420

`(2*A184220(n+1)-A184218(n+1))/A028310(A184751(n+1))`
-/

namespace A133151.P13222221538133130420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A184220 (n + 1) - A184218 (n + 1) : ℚ) / (A028310 (A184751 (n + 1)).toNat : ℚ)

end

end A133151.P13222221538133130420

/-! ## A133151.P3322429528013512635

`A184750(n+1)/A046951(A184763(n+1))`
-/

namespace A133151.P3322429528013512635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184750 (n + 1) : ℚ) / (A046951 (A184763 (n + 1)).toNat : ℚ)

end

end A133151.P3322429528013512635

/-! ## A133151.P434869320651682264

`(A000326(n)-3)*A130543(n)/A046951(A184763(n+1))`
-/

namespace A133151.P434869320651682264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000326 n - 3) * A130543 n : ℚ) / (A046951 (A184763 (n + 1)).toNat : ℚ)

end

end A133151.P434869320651682264

/-! ## A133151.P1875473292975830113

`(A000326(n)-3)%A141583(n)/A046951(A184763(n+1))`
-/

namespace A133151.P1875473292975830113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000326 n - 3) (A141583 n) : ℚ) / (A046951 (A184763 (n + 1)).toNat : ℚ)

end

end A133151.P1875473292975830113

/-!
# A133153: Number of partitions of n into parts that are odd or == +- 2 (mod 10).

The programs for A133153, there is no canonical definition to state claims against.
-/

/-! ## A133153.P10104592038238973856

`A003056(∑[A274174(n)]-A002133(n+1))`
-/

namespace A133153.P10104592038238973856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j - A002133 (n + 1)).toNat

end

end A133153.P10104592038238973856

/-! ## A133153.P12541466906961713666

`A208856(n)-A002828(A034557(2*n+5))`
-/

namespace A133153.P12541466906961713666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208856 n - A002828 (A034557 (2 * n + 5)).toNat

end

end A133153.P12541466906961713666

/-! ## A133153.P6418127753519949899

`A225687(A302831(n)-A154255(n+2))`
-/

namespace A133153.P6418127753519949899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A302831 n - A154255 (n + 2)).toNat

end

end A133153.P6418127753519949899

/-! ## A133153.P14705579132502684478

`A266781(n)+A266779(A000005(2^n))`
-/

namespace A133153.P14705579132502684478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266781 n + A266779 (A000005 (2 ^ n)).toNat

end

end A133153.P14705579132502684478

/-! ## A133153.P8440060240659093798

`A004396(A335754(n)%A335752(n+1))`
-/

namespace A133153.P8440060240659093798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.tmod (A335754 n) (A335752 (n + 1))).toNat

end

end A133153.P8440060240659093798

/-!
# A133155: Numbers formed by setting bits representing odd primes, where bit_no = (prime - 1)/2. Setting bit number b is the same as OR-ing with 2^b (i.e., bit numbers start at zero).

The programs for A133155, the canonical program `A133155.P9703523718405720926` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133155 has offset 1).

The definition of A133155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133155.P13040683101096103880

`∑[2^floor(p?[2*n+1]/2)]`
-/

namespace A133155.P13040683101096103880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P13040683101096103880

namespace A133155

/-- `∑[2^floor(p?[2*n+1]/2)]` -/
def P13040683101096103880.Spec : Prop :=
  ∀ n, P13040683101096103880.a n = (A133155 (n + 1) : ℚ)

end A133155

/-! ## A133155.P9703523718405720926

`∑[A061285(n+2)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133155

/-- `∑[A061285(n+2)]` -/
def P9703523718405720926.Spec : Prop :=
  ∀ n, P9703523718405720926.a n = A133155 (n + 1)

theorem P9703523718405720926.correct : P9703523718405720926.Spec := by
  intro n
  simp only [A133155, Nat.add_sub_cancel]

end A133155

/-! ## A133155.P12180811739691251438

`A080567(n+2)-1`
-/

namespace A133155.P12180811739691251438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080567 (n + 2) - 1

end

end A133155.P12180811739691251438

namespace A133155

/-- `A080567(n+2)-1` -/
def P12180811739691251438.Spec : Prop :=
  ∀ n, P12180811739691251438.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P14650985450335831998

`∑[record[A016017(n+2)]]`
-/

namespace A133155.P14650985450335831998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016017 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P14650985450335831998

namespace A133155

/-- `∑[record[A016017(n+2)]]` -/
def P14650985450335831998.Spec : Prop :=
  ∀ n, P14650985450335831998.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P15074575328636579396

`∑[2^A005097(n+1)]`
-/

namespace A133155.P15074575328636579396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005097 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P15074575328636579396

namespace A133155

/-- `∑[2^A005097(n+1)]` -/
def P15074575328636579396.Spec : Prop :=
  ∀ n, P15074575328636579396.a n = (A133155 (n + 1) : ℚ)

end A133155

/-! ## A133155.P6845650846312685880

`∑[2^A130290(n+2)]`
-/

namespace A133155.P6845650846312685880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A130290 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P6845650846312685880

namespace A133155

/-- `∑[2^A130290(n+2)]` -/
def P6845650846312685880.Spec : Prop :=
  ∀ n, P6845650846312685880.a n = (A133155 (n + 1) : ℚ)

end A133155

/-! ## A133155.P4429629127105514763

`∑[A016116(p?[2*n+1])]`
-/

namespace A133155.P4429629127105514763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P4429629127105514763

namespace A133155

/-- `∑[A016116(p?[2*n+1])]` -/
def P4429629127105514763.Spec : Prop :=
  ∀ n, P4429629127105514763.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P9960478565014918254

`∑[A045674(p?[2*n+1])]`
-/

namespace A133155.P9960478565014918254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P9960478565014918254

namespace A133155

/-- `∑[A045674(p?[2*n+1])]` -/
def P9960478565014918254.Spec : Prop :=
  ∀ n, P9960478565014918254.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P12882336591142196170

`∑[A056503(p?[2*n+1])]`
-/

namespace A133155.P12882336591142196170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056503 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P12882336591142196170

namespace A133155

/-- `∑[A056503(p?[2*n+1])]` -/
def P12882336591142196170.Spec : Prop :=
  ∀ n, P12882336591142196170.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P2901077698145259803

`∑[A060723(p?[2*n+1])]`
-/

namespace A133155.P2901077698145259803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060723 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P2901077698145259803

namespace A133155

/-- `∑[A060723(p?[2*n+1])]` -/
def P2901077698145259803.Spec : Prop :=
  ∀ n, P2901077698145259803.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P4235511438796099081

`∑[A074323(p?[2*n+1])]`
-/

namespace A133155.P4235511438796099081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P4235511438796099081

namespace A133155

/-- `∑[A074323(p?[2*n+1])]` -/
def P4235511438796099081.Spec : Prop :=
  ∀ n, P4235511438796099081.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P15000180102038728650

`∑[A101651(p?[2*n+1])]`
-/

namespace A133155.P15000180102038728650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101651 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P15000180102038728650

namespace A133155

/-- `∑[A101651(p?[2*n+1])]` -/
def P15000180102038728650.Spec : Prop :=
  ∀ n, P15000180102038728650.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P9679902013380526083

`∑[A112032(p?[2*n+1])]`
-/

namespace A133155.P9679902013380526083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P9679902013380526083

namespace A133155

/-- `∑[A112032(p?[2*n+1])]` -/
def P9679902013380526083.Spec : Prop :=
  ∀ n, P9679902013380526083.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P9146516767448456539

`∑[A117303(p?[2*n+1])]`
-/

namespace A133155.P9146516767448456539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P9146516767448456539

namespace A133155

/-- `∑[A117303(p?[2*n+1])]` -/
def P9146516767448456539.Spec : Prop :=
  ∀ n, P9146516767448456539.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P5198197709601727582

`∑[A131572(p?[2*n+1])]`
-/

namespace A133155.P5198197709601727582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P5198197709601727582

namespace A133155

/-- `∑[A131572(p?[2*n+1])]` -/
def P5198197709601727582.Spec : Prop :=
  ∀ n, P5198197709601727582.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P7944158976725909564

`∑[A133806(p?[2*n+1])]`
-/

namespace A133155.P7944158976725909564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133806 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P7944158976725909564

namespace A133155

/-- `∑[A133806(p?[2*n+1])]` -/
def P7944158976725909564.Spec : Prop :=
  ∀ n, P7944158976725909564.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P11019845793248376821

`∑[A135318(p?[2*n+1])]`
-/

namespace A133155.P11019845793248376821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P11019845793248376821

namespace A133155

/-- `∑[A135318(p?[2*n+1])]` -/
def P11019845793248376821.Spec : Prop :=
  ∀ n, P11019845793248376821.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P8991207573533500078

`∑[A135530(p?[2*n+1])]`
-/

namespace A133155.P8991207573533500078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P8991207573533500078

namespace A133155

/-- `∑[A135530(p?[2*n+1])]` -/
def P8991207573533500078.Spec : Prop :=
  ∀ n, P8991207573533500078.a n = A133155 (n + 1)

end A133155

/-! ## A133155.P5563764975984312963

`∑[A163864(p?[2*n+1])]`
-/

namespace A133155.P5563764975984312963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163864 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P5563764975984312963

namespace A133155

/-- `∑[A163864(p?[2*n+1])]` -/
def P5563764975984312963.Spec : Prop :=
  ∀ n, P5563764975984312963.a n = A133155 (n + 1)

end A133155

/-!
# A133156: Irregular triangle read by rows: coefficients of U(n,x), Chebyshev polynomials of the second kind with exponents in decreasing order.

The programs for A133156, the canonical program `A133156.P15073346869318780918` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133156 has offset 0).

The definition of A133156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133156.P15073346869318780918

`A065109(A091018(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133156

/-- `A065109(A091018(n))` -/
def P15073346869318780918.Spec : Prop :=
  ∀ n, P15073346869318780918.a n = A133156 n

theorem P15073346869318780918.correct : P15073346869318780918.Spec := by
  intro n
  simp only [A133156]

end A133156

/-! ## A133156.P11909762796674011634

`A053118(2*n-floor(sqrt(n)))`
-/

namespace A133156.P11909762796674011634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053118 (2 * n - Nat.sqrt n)

end

end A133156.P11909762796674011634

namespace A133156

/-- `A053118(2*n-floor(sqrt(n)))` -/
def P11909762796674011634.Spec : Prop :=
  ∀ n, P11909762796674011634.a n = A133156 n

end A133156

/-! ## A133156.P3512743168012823337

`A228565(lt[0, A065109(n)])`
-/

namespace A133156.P3512743168012823337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A133156.P3512743168012823337

namespace A133156

/-- `A228565(lt[0, A065109(n)])` -/
def P3512743168012823337.Spec : Prop :=
  ∀ n, P3512743168012823337.a n = A133156 n

end A133156

/-! ## A133156.P11204801184951644332

`A228565(lt[0, A118800(n)])`
-/

namespace A133156.P11204801184951644332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A133156.P11204801184951644332

namespace A133156

/-- `A228565(lt[0, A118800(n)])` -/
def P11204801184951644332.Spec : Prop :=
  ∀ n, P11204801184951644332.a n = A133156 n

end A133156

/-! ## A133156.P5030703685759823508

`A228565(lt[0, A185342(n)])`
-/

namespace A133156.P5030703685759823508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A133156.P5030703685759823508

namespace A133156

/-- `A228565(lt[0, A185342(n)])` -/
def P5030703685759823508.Spec : Prop :=
  ∀ n, P5030703685759823508.a n = A133156 n

end A133156

/-!
# A133157: Numbers k such that k^2 + k - 41 is prime.

The programs for A133157, there is no canonical definition to state claims against.
-/

/-! ## A133157.P13009061299403625790

`eq[2, A001222(abs(∑[4*n]-83)+1)]`
-/

namespace A133157.P13009061299403625790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 83| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133157.P13009061299403625790

/-!
# A133158: Binomial transform of A126568, second binomial transform of A026641.

The programs for A133158, there is no canonical definition to state claims against.
-/

/-! ## A133158.P10071523649178546142

`A004525(3*A291088(n))`
-/

namespace A133158.P10071523649178546142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * A291088 n).toNat

end

end A133158.P10071523649178546142

/-! ## A133158.P10378174583788948522

`A004526(3*A291088(n))`
-/

namespace A133158.P10378174583788948522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A291088 n).toNat

end

end A133158.P10378174583788948522

/-!
# A133160: Numbers k such that k^3 + k + 91 is prime.

The programs for A133160, there is no canonical definition to state claims against.
-/

/-! ## A133160.P12481617200811444840

`eq[1, A001222(n^3+n+91)]`
-/

namespace A133160.P12481617200811444840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 3 + n + 91)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133160.P12481617200811444840

/-! ## A133160.P739186761593985009

`eq[2, A000005(n^3+n+91)]`
-/

namespace A133160.P739186761593985009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 3 + n + 91)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133160.P739186761593985009

/-! ## A133160.P7598041728487609284

`eq[n^3+n+91, A006530(n^3+n+91)]`
-/

namespace A133160.P7598041728487609284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + n + 91

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 3 + n + 91)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133160.P7598041728487609284

/-! ## A133160.P5817455341169158099

`eq[n^3+n+91, A020639(n^3+n+91)]`
-/

namespace A133160.P5817455341169158099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + (n + 91)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n ^ 3 + (n + 91))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133160.P5817455341169158099

/-!
# A133161: Indices of the triangular numbers which are also centered triangular number.

The programs for A133161, the canonical program `A133161.P7199810584150876935` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133161 has offset 1).

The definition of A133161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133161.P2678004162843211082

`∑[ogf((1-x+x^2)/(1-4x+x^2))]`
-/

namespace A133161.P2678004162843211082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133161.P2678004162843211082

namespace A133161

/-- `∑[ogf((1-x+x^2)/(1-4x+x^2))]` -/
def P2678004162843211082.Spec : Prop :=
  ∀ n, P2678004162843211082.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P9852779448912526366

`ogf((1-x+x^2)/(1-5x+5x^2-x^3))`
-/

namespace A133161.P9852779448912526366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -5, 5, -1] n

end

end A133161.P9852779448912526366

namespace A133161

/-- `ogf((1-x+x^2)/(1-5x+5x^2-x^3))` -/
def P9852779448912526366.Spec : Prop :=
  ∀ n, P9852779448912526366.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P8026763841224015248

`∑[ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A133161.P8026763841224015248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133161.P8026763841224015248

namespace A133161

/-- `∑[ceil((sqrt(3)+2)*a(n-1))]` -/
def P8026763841224015248.Spec : Prop :=
  ∀ n, P8026763841224015248.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P983207834254112357

`floor((sqrt(3)+2)*a(n-1))+2` with `a(0)=1, a(1)=4`
-/

namespace A133161.P983207834254112357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + 2

end

end A133161.P983207834254112357

namespace A133161

/-- `floor((sqrt(3)+2)*a(n-1))+2` -/
def P983207834254112357.Spec : Prop :=
  ∀ n, P983207834254112357.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P8608655669967779108

`ceil((sqrt(3)+2)*a(n-1))+1` with `a(0)=1, a(1)=4`
-/

namespace A133161.P8608655669967779108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ + 1

end

end A133161.P8608655669967779108

namespace A133161

/-- `ceil((sqrt(3)+2)*a(n-1))+1` -/
def P8608655669967779108.Spec : Prop :=
  ∀ n, P8608655669967779108.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P15756683774139368241

`round((sqrt(3)+2)*a(n-1))+1` with `a(0)=1, a(1)=4`
-/

namespace A133161.P15756683774139368241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)) + 1

end

end A133161.P15756683774139368241

namespace A133161

/-- `round((sqrt(3)+2)*a(n-1))+1` -/
def P15756683774139368241.Spec : Prop :=
  ∀ n, P15756683774139368241.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P8038251916081772667

`1-round(a(n-1)/(sqrt(3)-2))` with `a(0)=1, a(1)=4`
-/

namespace A133161.P8038251916081772667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  1 - SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A133161.P8038251916081772667

namespace A133161

/-- `1-round(a(n-1)/(sqrt(3)-2))` -/
def P8038251916081772667.Spec : Prop :=
  ∀ n, P8038251916081772667.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P7199810584150876935

`4*a(n-1)+1-a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133161

/-- `4*a(n-1)+1-a(n-2)` -/
def P7199810584150876935.Spec : Prop :=
  ∀ n, P7199810584150876935.a n = A133161 (n + 1)

theorem P7199810584150876935.correct : P7199810584150876935.Spec := by
  intro n
  simp only [A133161, Nat.add_sub_cancel]

end A133161

/-! ## A133161.P9654461449547395607

`1-(a(n-2)-4*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A133161.P9654461449547395607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  1 - (a (n - 2) - 4 * a (n - 1))

end

end A133161.P9654461449547395607

namespace A133161

/-- `1-(a(n-2)-4*a(n-1))` -/
def P9654461449547395607.Spec : Prop :=
  ∀ n, P9654461449547395607.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P2823125311297447632

`floor(A082841(n)/2)`
-/

namespace A133161.P2823125311297447632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082841 n : ℚ) / 2⌋

end

end A133161.P2823125311297447632

namespace A133161

/-- `floor(A082841(n)/2)` -/
def P2823125311297447632.Spec : Prop :=
  ∀ n, P2823125311297447632.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P6891075617525293763

`∑[A005320(n)]+1`
-/

namespace A133161.P6891075617525293763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A133161.P6891075617525293763

namespace A133161

/-- `∑[A005320(n)]+1` -/
def P6891075617525293763.Spec : Prop :=
  ∀ n, P6891075617525293763.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P13273593041180162462

`3*A061278(n)+1`
-/

namespace A133161.P13273593041180162462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061278 n + 1

end

end A133161.P13273593041180162462

namespace A133161

/-- `3*A061278(n)+1` -/
def P13273593041180162462.Spec : Prop :=
  ∀ n, P13273593041180162462.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P18087456229650406628

`∑[3*A001353(n)]+1`
-/

namespace A133161.P18087456229650406628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A133161.P18087456229650406628

namespace A133161

/-- `∑[3*A001353(n)]+1` -/
def P18087456229650406628.Spec : Prop :=
  ∀ n, P18087456229650406628.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P17052731746692345736

`(∑[A001352(n)]+1)/2`
-/

namespace A133161.P17052731746692345736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001352 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A133161.P17052731746692345736

namespace A133161

/-- `(∑[A001352(n)]+1)/2` -/
def P17052731746692345736.Spec : Prop :=
  ∀ n, P17052731746692345736.a n = (A133161 (n + 1) : ℚ)

end A133161

/-! ## A133161.P9131026808558399795

`3*A101265(n+1)-2`
-/

namespace A133161.P9131026808558399795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A101265 (n + 1) - 2

end

end A133161.P9131026808558399795

namespace A133161

/-- `3*A101265(n+1)-2` -/
def P9131026808558399795.Spec : Prop :=
  ∀ n, P9131026808558399795.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P12230552846122590496

`3*A101879(n+1)-2`
-/

namespace A133161.P12230552846122590496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A101879 (n + 1) - 2

end

end A133161.P12230552846122590496

namespace A133161

/-- `3*A101879(n+1)-2` -/
def P12230552846122590496.Spec : Prop :=
  ∀ n, P12230552846122590496.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P12776139399236162798

`(A350920(n+1)-3)/2`
-/

namespace A133161.P12776139399236162798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350920 (n + 1) - 3 : ℚ) / 2

end

end A133161.P12776139399236162798

namespace A133161

/-- `(A350920(n+1)-3)/2` -/
def P12776139399236162798.Spec : Prop :=
  ∀ n, P12776139399236162798.a n = (A133161 (n + 1) : ℚ)

end A133161

/-! ## A133161.P5232394460281890609

`(A083336(2*n)-1)/2`
-/

namespace A133161.P5232394460281890609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083336 (2 * n) - 1 : ℚ) / 2

end

end A133161.P5232394460281890609

namespace A133161

/-- `(A083336(2*n)-1)/2` -/
def P5232394460281890609.Spec : Prop :=
  ∀ n, P5232394460281890609.a n = (A133161 (n + 1) : ℚ)

end A133161

/-! ## A133161.P203274982843528987

`A143643(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A133161.P203274982843528987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143643 (2 * n) + a (n - 1)

end

end A133161.P203274982843528987

namespace A133161

/-- `A143643(2*n)+a(n-1)` -/
def P203274982843528987.Spec : Prop :=
  ∀ n, P203274982843528987.a n = A133161 (n + 1)

end A133161

/-! ## A133161.P13193099305113807748

`A143642(3*n)+a(n-1)` with `a(0)=1`
-/

namespace A133161.P13193099305113807748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143642 (3 * n) + a (n - 1)

end

end A133161.P13193099305113807748

namespace A133161

/-- `A143642(3*n)+a(n-1)` -/
def P13193099305113807748.Spec : Prop :=
  ∀ n, P13193099305113807748.a n = A133161 (n + 1)

end A133161

/-!
# A133162: Trajectory of 1 under the morphism 1 -> {1,1,2,1}, 2 -> {2}.

The programs for A133162, the canonical program `A133162.P1830166414594627014` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133162 has offset 1).

The definition of A133162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133162.P8659408116249579481

`C(2, A049321(n))`
-/

namespace A133162.P8659408116249579481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A049321 n).toNat

end

end A133162.P8659408116249579481

namespace A133162

/-- `C(2, A049321(n))` -/
def P8659408116249579481.Spec : Prop :=
  ∀ n, (P8659408116249579481.a n : ℤ) = A133162 (n + 1)

end A133162

/-! ## A133162.P9447286042067305751

`A049321(n+1)!`
-/

namespace A133162.P9447286042067305751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A049321 (n + 1)).toNat

end

end A133162.P9447286042067305751

namespace A133162

/-- `A049321(n+1)!` -/
def P9447286042067305751.Spec : Prop :=
  ∀ n, (P9447286042067305751.a n : ℤ) = A133162 (n + 1)

end A133162

/-! ## A133162.P1830166414594627014

`A049320(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133162

/-- `A049320(n+1)+1` -/
def P1830166414594627014.Spec : Prop :=
  ∀ n, P1830166414594627014.a n = A133162 (n + 1)

theorem P1830166414594627014.correct : P1830166414594627014.Spec := by
  intro n
  simp only [A133162, Nat.add_sub_cancel]

end A133162

/-! ## A133162.P3276780485543487240

`gcd(2, A026181(n+3))`
-/

namespace A133162.P3276780485543487240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A026181 (n + 3))

end

end A133162.P3276780485543487240

namespace A133162

/-- `gcd(2, A026181(n+3))` -/
def P3276780485543487240.Spec : Prop :=
  ∀ n, (P3276780485543487240.a n : ℤ) = A133162 (n + 1)

end A133162

/-! ## A133162.P14046004353104752834

`C(2, dr(A026231(n+1)))+1`
-/

namespace A133162.P14046004353104752834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.digitalRoot (A026231 (n + 1))) + 1

end

end A133162.P14046004353104752834

namespace A133162

/-- `C(2, dr(A026231(n+1)))+1` -/
def P14046004353104752834.Spec : Prop :=
  ∀ n, (P14046004353104752834.a n : ℤ) = A133162 (n + 1)

end A133162

/-! ## A133162.P839339215833777299

`and(A000328(n), A049321(n))+1`
-/

namespace A133162.P839339215833777299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A049321 n) + 1

end

end A133162.P839339215833777299

namespace A133162

/-- `and(A000328(n), A049321(n))+1` -/
def P839339215833777299.Spec : Prop :=
  ∀ n, P839339215833777299.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P18350825542144684928

`and(A016760(n), A049321(n))+1`
-/

namespace A133162.P18350825542144684928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A049321 n) + 1

end

end A133162.P18350825542144684928

namespace A133162

/-- `and(A016760(n), A049321(n))+1` -/
def P18350825542144684928.Spec : Prop :=
  ∀ n, P18350825542144684928.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P16753208650280192676

`and(A017286(n), A049321(n))+1`
-/

namespace A133162.P16753208650280192676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A049321 n) + 1

end

end A133162.P16753208650280192676

namespace A133162

/-- `and(A017286(n), A049321(n))+1` -/
def P16753208650280192676.Spec : Prop :=
  ∀ n, P16753208650280192676.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P8288903452263509377

`and(A017310(n), A049321(n))+1`
-/

namespace A133162.P8288903452263509377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017310 n) (A049321 n) + 1

end

end A133162.P8288903452263509377

namespace A133162

/-- `and(A017310(n), A049321(n))+1` -/
def P8288903452263509377.Spec : Prop :=
  ∀ n, P8288903452263509377.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P10878667579780848376

`and(A017334(n), A049321(n))+1`
-/

namespace A133162.P10878667579780848376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017334 n) (A049321 n) + 1

end

end A133162.P10878667579780848376

namespace A133162

/-- `and(A017334(n), A049321(n))+1` -/
def P10878667579780848376.Spec : Prop :=
  ∀ n, P10878667579780848376.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P1579030268888887950

`and(A017358(n), A049321(n))+1`
-/

namespace A133162.P1579030268888887950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017358 n) (A049321 n) + 1

end

end A133162.P1579030268888887950

namespace A133162

/-- `and(A017358(n), A049321(n))+1` -/
def P1579030268888887950.Spec : Prop :=
  ∀ n, P1579030268888887950.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P17382492004476914864

`and(A017382(n), A049321(n))+1`
-/

namespace A133162.P17382492004476914864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017382 n) (A049321 n) + 1

end

end A133162.P17382492004476914864

namespace A133162

/-- `and(A017382(n), A049321(n))+1` -/
def P17382492004476914864.Spec : Prop :=
  ∀ n, P17382492004476914864.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P5747016620438472770

`and(A036088(n), A049321(n))+1`
-/

namespace A133162.P5747016620438472770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036088 n) (A049321 n) + 1

end

end A133162.P5747016620438472770

namespace A133162

/-- `and(A036088(n), A049321(n))+1` -/
def P5747016620438472770.Spec : Prop :=
  ∀ n, P5747016620438472770.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P17830319030680759927

`and(A049321(n), A305724(n))+1`
-/

namespace A133162.P17830319030680759927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049321 n) (A305724 n) + 1

end

end A133162.P17830319030680759927

namespace A133162

/-- `and(A049321(n), A305724(n))+1` -/
def P17830319030680759927.Spec : Prop :=
  ∀ n, P17830319030680759927.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P12955707188180240397

`and(A001848(n)², A049321(n))+1`
-/

namespace A133162.P12955707188180240397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n ^ 2) (A049321 n) + 1

end

end A133162.P12955707188180240397

namespace A133162

/-- `and(A001848(n)², A049321(n))+1` -/
def P12955707188180240397.Spec : Prop :=
  ∀ n, P12955707188180240397.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P408718053145824457

`and(A000448(n+1)², A049321(n))+1`
-/

namespace A133162.P408718053145824457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000448 (n + 1) ^ 2) (A049321 n) + 1

end

end A133162.P408718053145824457

namespace A133162

/-- `and(A000448(n+1)², A049321(n))+1` -/
def P408718053145824457.Spec : Prop :=
  ∀ n, P408718053145824457.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P2192856836168469217

`A105083(a(A049321(n))*A049321(n))` with `a(0)=1`
-/

namespace A133162.P2192856836168469217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105083 (a (A049321 n).toNat * A049321 n).toNat

end

end A133162.P2192856836168469217

namespace A133162

/-- `A105083(a(A049321(n))*A049321(n))` -/
def P2192856836168469217.Spec : Prop :=
  ∀ n, P2192856836168469217.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P12887700255948461289

`A001221(Δ[A026231(n+1)])`
-/

namespace A133162.P12887700255948461289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A133162.P12887700255948461289

namespace A133162

/-- `A001221(Δ[A026231(n+1)])` -/
def P12887700255948461289.Spec : Prop :=
  ∀ n, P12887700255948461289.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P13861555992436971064

`A001222(Δ[A026232(n+1)]+2)`
-/

namespace A133162.P13861555992436971064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 2).toNat

end

end A133162.P13861555992436971064

namespace A133162

/-- `A001222(Δ[A026232(n+1)]+2)` -/
def P13861555992436971064.Spec : Prop :=
  ∀ n, P13861555992436971064.a n = A133162 (n + 1)

end A133162

/-! ## A133162.P6416395239343627903

`A001221(Δ[A026232(n+1)]+4)`
-/

namespace A133162.P6416395239343627903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + 4).toNat

end

end A133162.P6416395239343627903

namespace A133162

/-- `A001221(Δ[A026232(n+1)]+4)` -/
def P6416395239343627903.Spec : Prop :=
  ∀ n, P6416395239343627903.a n = A133162 (n + 1)

end A133162

/-!
# A133164: Number of species of separated Latin bi-trades of size n.

The programs for A133164, there is no canonical definition to state claims against.
-/

/-! ## A133164.P17625240398284538955

`A133178(n+1)+A133165(n+1)`
-/

namespace A133164.P17625240398284538955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133178 (n + 1) + A133165 (n + 1)

end

end A133164.P17625240398284538955

/-!
# A133165: Number of species of connected separated Latin bi-trades of size n.

The programs for A133165, there is no canonical definition to state claims against.
-/

/-! ## A133165.P12666864387919792426

`A133164(n+1)-A133178(n+1)`
-/

namespace A133165.P12666864387919792426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133164 (n + 1) - A133178 (n + 1)

end

end A133165.P12666864387919792426

/-!
# A133167: Species of Latin trades of size n.

The programs for A133167, there is no canonical definition to state claims against.
-/

/-! ## A133167.P8164250710881755336

`A133173(n+1)-A046665(A133181(n+1))`
-/

namespace A133167.P8164250710881755336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133173 (n + 1) - A046665 (A133181 (n + 1)).toNat

end

end A133167.P8164250710881755336

/-! ## A133167.P4250339983671155929

`A133173(A077168(n))`
-/

namespace A133167.P4250339983671155929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133173 (A077168 n).toNat

end

end A133167.P4250339983671155929

/-! ## A133167.P15866331401633712921

`A133173(A060695(n+1))`
-/

namespace A133167.P15866331401633712921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133173 (A060695 (n + 1)).toNat

end

end A133167.P15866331401633712921

/-! ## A133167.P7927285987617994492

`A133173(A065672(n+1))`
-/

namespace A133167.P7927285987617994492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133173 (A065672 (n + 1)).toNat

end

end A133167.P7927285987617994492

/-! ## A133167.P4712849269228712290

`A091684(A133173(n+1))`
-/

namespace A133167.P4712849269228712290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A133173 (n + 1)).toNat

end

end A133167.P4712849269228712290

/-!
# A133169: Transposition classes of Latin trades of size n.

The programs for A133169, there is no canonical definition to state claims against.
-/

/-! ## A133169.P7470887696209195033

`A133175(A077168(n))`
-/

namespace A133169.P7470887696209195033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133175 (A077168 n).toNat

end

end A133169.P7470887696209195033

/-! ## A133169.P18042145571761690198

`A133175(A060695(n+1))`
-/

namespace A133169.P18042145571761690198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133175 (A060695 (n + 1)).toNat

end

end A133169.P18042145571761690198

/-! ## A133169.P8853633295306705180

`A133175(A065672(n+1))`
-/

namespace A133169.P8853633295306705180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133175 (A065672 (n + 1)).toNat

end

end A133169.P8853633295306705180

/-! ## A133169.P16460687136613135956

`A133175(A094275(n+1))`
-/

namespace A133169.P16460687136613135956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133175 (A094275 (n + 1)).toNat

end

end A133169.P16460687136613135956

/-! ## A133169.P11681104247149126569

`A106612(A133175(n+1))`
-/

namespace A133169.P11681104247149126569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A133175 (n + 1)).toNat

end

end A133169.P11681104247149126569

/-!
# A133171: Isotopy classes of Latin trades of size n.

The programs for A133171, there is no canonical definition to state claims against.
-/

/-! ## A133171.P4350412704825186153

`A133177(A077168(n))`
-/

namespace A133171.P4350412704825186153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133177 (A077168 n).toNat

end

end A133171.P4350412704825186153

/-! ## A133171.P9736362613343079106

`A133177(A060695(n+1))`
-/

namespace A133171.P9736362613343079106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133177 (A060695 (n + 1)).toNat

end

end A133171.P9736362613343079106

/-! ## A133171.P15968166634429818836

`A133177(A065672(n+1))`
-/

namespace A133171.P15968166634429818836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133177 (A065672 (n + 1)).toNat

end

end A133171.P15968166634429818836

/-! ## A133171.P11852777339041002349

`A133177(A094275(n+1))`
-/

namespace A133171.P11852777339041002349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133177 (A094275 (n + 1)).toNat

end

end A133171.P11852777339041002349

/-! ## A133171.P3852448289615087897

`A133177(A003558(2^n))`
-/

namespace A133171.P3852448289615087897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133177 (A003558 (2 ^ n)).toNat

end

end A133171.P3852448289615087897

/-!
# A133173: Species of ordered Latin bi-trades of size n.

The programs for A133173, there is no canonical definition to state claims against.
-/

/-! ## A133173.P2461414093090659749

`A133167(n+1)+A046665(A133181(n+1))`
-/

namespace A133173.P2461414093090659749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133167 (n + 1) + A046665 (A133181 (n + 1)).toNat

end

end A133173.P2461414093090659749

/-!
# A133174: Transposition classes of unordered Latin bi-trades of size n.

The programs for A133174, there is no canonical definition to state claims against.
-/

/-! ## A133174.P4403466931780432956

`val(A006882(A135401(n)), A057034(n+4))`
-/

namespace A133174.P4403466931780432956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006882 (A135401 n).toNat).toNat (A057034 (n + 4)).toNat

end

end A133174.P4403466931780432956

/-! ## A133174.P827427326433946043

`∑[A062461(n+1)]%A127522(A192804(n))`
-/

namespace A133174.P827427326433946043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A127522 (A192804 n).toNat)

end

end A133174.P827427326433946043

/-! ## A133174.P17832333154091603119

`A133169(n+1)-A133144(A133165(n+4))`
-/

namespace A133174.P17832333154091603119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133169 (n + 1) - A133144 (A133165 (n + 4)).toNat

end

end A133174.P17832333154091603119

/-! ## A133174.P8411422448120395617

`A133175(n+1)-A133144(A133165(n+4))`
-/

namespace A133174.P8411422448120395617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133175 (n + 1) - A133144 (A133165 (n + 4)).toNat

end

end A133174.P8411422448120395617

/-! ## A133174.P1422345633730843470

`A046800(A364450(n)-A030187(3*n+4))`
-/

namespace A133174.P1422345633730843470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A364450 n - A030187 (3 * n + 4)).toNat

end

end A133174.P1422345633730843470

/-!
# A133176: Isotopy classes of unordered Latin bi-trades of size n.

The programs for A133176, there is no canonical definition to state claims against.
-/

/-! ## A133176.P16322738554085938850

`∑[A163101(n+1)]%A163101(A107479(n+1))`
-/

namespace A133176.P16322738554085938850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A163101 (A107479 (n + 1)).toNat)

end

end A133176.P16322738554085938850

/-!
# A133177: Isotopy classes of ordered Latin bi-trades of size n.

The programs for A133177, there is no canonical definition to state claims against.
-/

/-! ## A133177.P3957156434595315676

`or(A133171(n+1), A185284(A079310(n+1)))`
-/

namespace A133177.P3957156434595315676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133171 (n + 1)) (A185284 (A079310 (n + 1)).toNat)

end

end A133177.P3957156434595315676

/-! ## A133177.P84727620928732584

`or(A133171(n+1), A324803(A324793(n+1)))`
-/

namespace A133177.P84727620928732584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133171 (n + 1)) (A324803 (A324793 (n + 1)).toNat)

end

end A133177.P84727620928732584

/-!
# A133178: Number of species of disconnected separated Latin bi-trades of size n.

The programs for A133178, there is no canonical definition to state claims against.
-/

/-! ## A133178.P5348208583153235071

`A133164(n+1)-A133165(n+1)`
-/

namespace A133178.P5348208583153235071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133164 (n + 1) - A133165 (n + 1)

end

end A133178.P5348208583153235071

/-!
# A133179: A modular binomial sum transform of 2^n .

The programs for A133179, the canonical program `A133179.P3707293303286959824` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133179 has offset 0).

The definition of A133179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133179.P3707293303286959824

`A087745(A006257(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133179

/-- `A087745(A006257(n))` -/
def P3707293303286959824.Spec : Prop :=
  ∀ n, P3707293303286959824.a n = A133179 n

theorem P3707293303286959824.correct : P3707293303286959824.Spec := by
  intro n
  simp only [A133179]

end A133179

/-! ## A133179.P6178637934194443552

`A001317(n-A053644(n))`
-/

namespace A133179.P6178637934194443552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 ((n : ℤ) - A053644 n).toNat

end

end A133179.P6178637934194443552

namespace A133179

/-- `A001317(n-A053644(n))` -/
def P6178637934194443552.Spec : Prop :=
  ∀ n, P6178637934194443552.a n = A133179 n

end A133179

/-! ## A133179.P9540097695967003181

`A001317(A164089(2*n+1))`
-/

namespace A133179.P9540097695967003181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A164089 (2 * n + 1)).toNat

end

end A133179.P9540097695967003181

namespace A133179

/-- `A001317(A164089(2*n+1))` -/
def P9540097695967003181.Spec : Prop :=
  ∀ n, P9540097695967003181.a n = A133179 n

end A133179

/-! ## A133179.P6759505633468783832

`A288808(n)/A060546(n)`
-/

namespace A133179.P6759505633468783832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288808 n : ℚ) / (A060546 n : ℚ)

end

end A133179.P6759505633468783832

namespace A133179

/-- `A288808(n)/A060546(n)` -/
def P6759505633468783832.Spec : Prop :=
  ∀ n, P6759505633468783832.a n = (A133179 n : ℚ)

end A133179

/-! ## A133179.P18356425975758270650

`A288808(n)/A000079(A110654(n))`
-/

namespace A133179.P18356425975758270650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288808 n : ℚ) / (A000079 (A110654 n).toNat : ℚ)

end

end A133179.P18356425975758270650

namespace A133179

/-- `A288808(n)/A000079(A110654(n))` -/
def P18356425975758270650.Spec : Prop :=
  ∀ n, P18356425975758270650.a n = (A133179 n : ℚ)

end A133179

/-! ## A133179.P7552358118230579450

`A288808(n)/and(A288807(n+1), A288808(n))`
-/

namespace A133179.P7552358118230579450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288808 n : ℚ) / (Int.land (A288807 (n + 1)) (A288808 n) : ℚ)

end

end A133179.P7552358118230579450

namespace A133179

/-- `A288808(n)/and(A288807(n+1), A288808(n))` -/
def P7552358118230579450.Spec : Prop :=
  ∀ n, P7552358118230579450.a n = (A133179 n : ℚ)

end A133179

/-! ## A133179.P6112606144857981024

`gcd(A001317(n), A100735(n))`
-/

namespace A133179.P6112606144857981024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001317 n) (A100735 n)

end

end A133179.P6112606144857981024

namespace A133179

/-- `gcd(A001317(n), A100735(n))` -/
def P6112606144857981024.Spec : Prop :=
  ∀ n, (P6112606144857981024.a n : ℤ) = A133179 n

end A133179

/-! ## A133179.P11734275631414839241

`and(A001317(n), A052551(n))`
-/

namespace A133179.P11734275631414839241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001317 n) (A052551 n)

end

end A133179.P11734275631414839241

namespace A133179

/-- `and(A001317(n), A052551(n))` -/
def P11734275631414839241.Spec : Prop :=
  ∀ n, P11734275631414839241.a n = A133179 n

end A133179

/-! ## A133179.P2935376029487772973

`A001317(n)/A001317(A053644(n))`
-/

namespace A133179.P2935376029487772973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001317 n : ℚ) / (A001317 (A053644 n).toNat : ℚ)

end

end A133179.P2935376029487772973

namespace A133179

/-- `A001317(n)/A001317(A053644(n))` -/
def P2935376029487772973.Spec : Prop :=
  ∀ n, P2935376029487772973.a n = (A133179 n : ℚ)

end A133179

/-! ## A133179.P8856915828593647376

`and(A000225(A008619(n)), A001317(n))`
-/

namespace A133179.P8856915828593647376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A008619 n).toNat) (A001317 n)

end

end A133179.P8856915828593647376

namespace A133179

/-- `and(A000225(A008619(n)), A001317(n))` -/
def P8856915828593647376.Spec : Prop :=
  ∀ n, P8856915828593647376.a n = A133179 n

end A133179

/-! ## A133179.P2744383601962777590

`and(A001317(n), A255047(A065033(n)))`
-/

namespace A133179.P2744383601962777590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001317 n) (A255047 (A065033 n).toNat)

end

end A133179.P2744383601962777590

namespace A133179

/-- `and(A001317(n), A255047(A065033(n)))` -/
def P2744383601962777590.Spec : Prop :=
  ∀ n, P2744383601962777590.a n = A133179 n

end A133179

/-! ## A133179.P17200986967337601803

`gcd(A100744(n), A288807(n))`
-/

namespace A133179.P17200986967337601803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100744 n) (A288807 n)

end

end A133179.P17200986967337601803

namespace A133179

/-- `gcd(A100744(n), A288807(n))` -/
def P17200986967337601803.Spec : Prop :=
  ∀ n, (P17200986967337601803.a n : ℤ) = A133179 n

end A133179

/-! ## A133179.P15126958397867845291

`lcm(A000079(n), A288807(n))/A000079(n)`
-/

namespace A133179.P15126958397867845291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A288807 n) : ℚ) / (A000079 n : ℚ)

end

end A133179.P15126958397867845291

namespace A133179

/-- `lcm(A000079(n), A288807(n))/A000079(n)` -/
def P15126958397867845291.Spec : Prop :=
  ∀ n, P15126958397867845291.a n = (A133179 n : ℚ)

end A133179

/-!
# A133180: a(n) = (Sum_{k=1..A047380(n)} k^6) / (Sum_{k=1..A047380(n)} k^2).

The programs for A133180, the canonical program `A133180.P1160309223263378042` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133180 has offset 1).

The definition of A133180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133180.P1160309223263378042

`A000540(A047380(n+1))/A000330(A047380(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133180

/-- `A000540(A047380(n+1))/A000330(A047380(n+1))` -/
def P1160309223263378042.Spec : Prop :=
  ∀ n, P1160309223263378042.a n = (A133180 (n + 1) : ℚ)

end A133180

/-! ## A133180.P7905230690834774050

`A181475(A047380(n+1))/7`
-/

namespace A133180.P7905230690834774050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181475 (A047380 (n + 1)).toNat : ℚ) / 7

end

end A133180.P7905230690834774050

namespace A133180

/-- `A181475(A047380(n+1))/7` -/
def P7905230690834774050.Spec : Prop :=
  ∀ n, P7905230690834774050.a n = (A133180 (n + 1) : ℚ)

end A133180

/-!
# A133181: Number of distinct connected simple symmetric (edge- and vertex-transitive) graphs with n nodes.

The programs for A133181, there is no canonical definition to state claims against.
-/

/-! ## A133181.P14247300671385243961

`A286280(ceil(acot(n)+n))`
-/

namespace A133181.P14247300671385243961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286280 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A133181.P14247300671385243961

/-! ## A133181.P17519390447714004257

`A286280(abs(1-n)+2)`
-/

namespace A133181.P17519390447714004257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286280 (|1 - (n : ℤ)| + 2).toNat

end

end A133181.P17519390447714004257

/-! ## A133181.P10451849790585051063

`∏{e}[A151821(n+1), A286280(#)]`
-/

namespace A133181.P10451849790585051063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A286280 (Nat.factorization (f1 n).natAbs p)

end

end A133181.P10451849790585051063

/-! ## A133181.P4262059484250666287

`A286931(n+1)-A087145(n+1)`
-/

namespace A133181.P4262059484250666287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286931 (n + 1) - A087145 (n + 1)

end

end A133181.P4262059484250666287

/-! ## A133181.P12378762399335871752

`a(A051659(n))*A286280(n+1)` with `a(0)=1`
-/

namespace A133181.P12378762399335871752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A051659 n).toNat * A286280 (n + 1)

end

end A133181.P12378762399335871752

/-!
# A133185: Conjectured list of numbers that are 7-smooth (A002473) but are not in A133184.

The programs for A133185, there is no canonical definition to state claims against.
-/

/-! ## A133185.P4035941523312697996

`∩[A002473(n+1), comp[A133184(n+1)]]`
-/

namespace A133185.P4035941523312697996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133184 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A133185.P4035941523312697996

/-!
# A133186: Period 4: repeat [1, 2, 1, -4].

The programs for A133186, the canonical program `A133186.P16626045180948105930` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133186 has offset 0).

The definition of A133186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133186.P16626045180948105930

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=-4, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133186

/-- `a(n-4)` -/
def P16626045180948105930.Spec : Prop :=
  ∀ n, P16626045180948105930.a n = A133186 n

theorem P16626045180948105930.correct : P16626045180948105930.Spec := by
  intro n
  simp only [A133186]

end A133186

/-!
# A133187: Prime numbers formed by the concatenation of q and p, where q > p are also primes.

The programs for A133187, there is no canonical definition to state claims against.
-/

/-! ## A133187.P10215723735369204221

`A007967(A214755(n+2))`
-/

namespace A133187.P10215723735369204221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A214755 (n + 2)).toNat

end

end A133187.P10215723735369204221

/-! ## A133187.P17150975012586766435

`A214755(A032555(n+2))`
-/

namespace A133187.P17150975012586766435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214755 (A032555 (n + 2)).toNat

end

end A133187.P17150975012586766435

/-! ## A133187.P9409911065553833065

`A214755(A032559(n+2))`
-/

namespace A133187.P9409911065553833065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214755 (A032559 (n + 2)).toNat

end

end A133187.P9409911065553833065

/-! ## A133187.P17795122542257517317

`A214755(A077739(n+2))`
-/

namespace A133187.P17795122542257517317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214755 (A077739 (n + 2)).toNat

end

end A133187.P17795122542257517317

/-!
# A133188: Natural numbers listed in three columns: if A004526(n-1) = 0 then row n lists A004526(n-1), A004526(n), 1, otherwise row n lists 1, A004526(n), A004526(n-1).

The programs for A133188, there is no canonical definition to state claims against.
-/

/-! ## A133188.P4528567275423764218

`A008612(A091684(A060000(n+1)))`
-/

namespace A133188.P4528567275423764218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A091684 (A060000 (n + 1)).toNat).toNat

end

end A133188.P4528567275423764218

/-! ## A133188.P8998507447447348026

`A001221(A148163(A028242(n)))`
-/

namespace A133188.P8998507447447348026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A148163 (A028242 n).toNat).toNat

end

end A133188.P8998507447447348026

/-! ## A133188.P4664404775383263682

`A333382(A061579(A008795(n)))`
-/

namespace A133188.P4664404775383263682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A061579 (A008795 n).toNat).toNat

end

end A133188.P4664404775383263682

/-! ## A133188.P5215336599173008380

`A333382(A028242(n)+A008795(n))`
-/

namespace A133188.P5215336599173008380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A028242 n + A008795 n).toNat

end

end A133188.P5215336599173008380

/-! ## A133188.P5506351357385719147

`A037831(lcm(A000040(2*n+1), A050368(n+1)))`
-/

namespace A133188.P5506351357385719147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (Int.lcm (A000040 (2 * n + 1)) (A050368 (n + 1)))

end

end A133188.P5506351357385719147

/-!
# A133189: Number of simple directed graphs on n labeled nodes consisting only of some cycle graphs C_2 and nodes not part of a cycle having directed edges to both nodes in exactly one cycle.

The programs for A133189, there is no canonical definition to state claims against.
-/

/-! ## A133189.P14529306585404126226

`abs(A292909(n))`
-/

namespace A133189.P14529306585404126226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292909 n|

end

end A133189.P14529306585404126226

/-! ## A133189.P5143361378849559046

`A143398(∑[n]+2)`
-/

namespace A133189.P5143361378849559046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A133189.P5143361378849559046

/-! ## A133189.P13878963938107709864

`A145460(∑[n+3])`
-/

namespace A133189.P13878963938107709864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133189.P13878963938107709864

/-! ## A133189.P1205767601044960743

`abs(A292948(∑[n+3]))`
-/

namespace A133189.P1205767601044960743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292948 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A133189.P1205767601044960743

/-! ## A133189.P5555657801754082410

`A033999(n)*A292909(n)`
-/

namespace A133189.P5555657801754082410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A292909 n

end

end A133189.P5555657801754082410

/-! ## A133189.P17364805357139037358

`lcm(A093178(n), A292909(n))`
-/

namespace A133189.P17364805357139037358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093178 n) (A292909 n)

end

end A133189.P17364805357139037358

/-! ## A133189.P6964918477423946309

`gcd(A002262(∑[n]), A292909(n))`
-/

namespace A133189.P6964918477423946309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (∑ j ∈ Finset.range (n + 1), f1 j)) (A292909 n)

end

end A133189.P6964918477423946309

/-!
# A133190: a(n) = 2*a(n-1) - a(n-2) + 2*a(n-3).

The programs for A133190, the canonical program `A133190.P10699000636840641886` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133190 has offset 0).

The definition of A133190 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+2*a(n-3)` (program `A133190.P10699000636840641886`, by `A133190.P10699000636840641886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133190.P10699000636840641886

`2*a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133190

/-- `2*a(n-1)-a(n-2)+2*a(n-3)` -/
def P10699000636840641886.Spec : Prop :=
  ∀ n, P10699000636840641886.a n = A133190 n

theorem P10699000636840641886.correct : P10699000636840641886.Spec := by
  intro n
  simp only [A133190]

end A133190

/-! ## A133190.P3553302009701929403

`(4*2^n+(-1)^floor(n/2)*A010688(n))/5`
-/

namespace A133190.P3553302009701929403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 2 ^ n : ℚ) + (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A010688 n : ℚ)) / 5

end

end A133190.P3553302009701929403

namespace A133190

/-- `(4*2^n+(-1)^floor(n/2)*A010688(n))/5` -/
def P3553302009701929403.Spec : Prop :=
  ∀ n, P3553302009701929403.a n = (A133190 n : ℚ)

end A133190

/-! ## A133190.P537641204356891633

`ogf((1+x-2x^2)/(1-2x+x^2-2x^3))`
-/

namespace A133190.P537641204356891633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -2, 1, -2] n

end

end A133190.P537641204356891633

namespace A133190

/-- `ogf((1+x-2x^2)/(1-2x+x^2-2x^3))` -/
def P537641204356891633.Spec : Prop :=
  ∀ n, P537641204356891633.a n = A133190 n

end A133190

/-! ## A133190.P11292105980448510407

`2^n-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A133190.P11292105980448510407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 ^ n : ℤ) - a (n - 2)

end

end A133190.P11292105980448510407

namespace A133190

/-- `2^n-a(n-2)` -/
def P11292105980448510407.Spec : Prop :=
  ∀ n, P11292105980448510407.a n = A133190 n

end A133190

/-! ## A133190.P5771309321870106322

`and(2, n-1)+a(n-1)+xor(3, a(n-1))` with `a(0)=1`
-/

namespace A133190.P5771309321870106322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 2 ((n : ℤ) - 1) + (a (n - 1) + Int.xor 3 (a (n - 1)))

end

end A133190.P5771309321870106322

namespace A133190

/-- `and(2, n-1)+a(n-1)+xor(3, a(n-1))` -/
def P5771309321870106322.Spec : Prop :=
  ∀ n, P5771309321870106322.a n = A133190 n

end A133190

/-! ## A133190.P4297167410213492647

`2*or(2, a(n-1))+and(2, a(n-2))-3` with `a(0)=1, a(1)=3`
-/

namespace A133190.P4297167410213492647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * Int.lor 2 (a (n - 1)) + (Int.land 2 (a (n - 2)) - 3)

end

end A133190.P4297167410213492647

namespace A133190

/-- `2*or(2, a(n-1))+and(2, a(n-2))-3` -/
def P4297167410213492647.Spec : Prop :=
  ∀ n, P4297167410213492647.a n = A133190 n

end A133190

/-! ## A133190.P13036710799955642614

`2*or(2, a(n-1))-(3-and(2, a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A133190.P13036710799955642614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * Int.lor 2 (a (n - 1)) - (3 - Int.land 2 (a (n - 2)))

end

end A133190.P13036710799955642614

namespace A133190

/-- `2*or(2, a(n-1))-(3-and(2, a(n-2)))` -/
def P13036710799955642614.Spec : Prop :=
  ∀ n, P13036710799955642614.a n = A133190 n

end A133190

/-! ## A133190.P2409951020723308130

`xor(a(n-2), A000225(n))+1` with `a(0)=1, a(1)=3`
-/

namespace A133190.P2409951020723308130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (a (n - 2)) (A000225 n) + 1

end

end A133190.P2409951020723308130

namespace A133190

/-- `xor(a(n-2), A000225(n))+1` -/
def P2409951020723308130.Spec : Prop :=
  ∀ n, P2409951020723308130.a n = A133190 n

end A133190

/-! ## A133190.P5610271406724641469

`a(n-1)+A112030(n)+a(n-1)` with `a(0)=1`
-/

namespace A133190.P5610271406724641469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A112030 n + a (n - 1))

end

end A133190.P5610271406724641469

namespace A133190

/-- `a(n-1)+A112030(n)+a(n-1)` -/
def P5610271406724641469.Spec : Prop :=
  ∀ n, P5610271406724641469.a n = A133190 n

end A133190

/-! ## A133190.P18404027681084055734

`A101455(n)+A007910(n)`
-/

namespace A133190.P18404027681084055734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n + A007910 n

end

end A133190.P18404027681084055734

namespace A133190

/-- `A101455(n)+A007910(n)` -/
def P18404027681084055734.Spec : Prop :=
  ∀ n, P18404027681084055734.a n = A133190 n

end A133190

/-! ## A133190.P10624965525907819164

`xor(A007909(n), A014113(n))`
-/

namespace A133190.P10624965525907819164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007909 n) (A014113 n)

end

end A133190.P10624965525907819164

namespace A133190

/-- `xor(A007909(n), A014113(n))` -/
def P10624965525907819164.Spec : Prop :=
  ∀ n, P10624965525907819164.a n = A133190 n

end A133190

/-! ## A133190.P1486974796467035672

`xor(A007910(n), A109718(n))`
-/

namespace A133190.P1486974796467035672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007910 n) (A109718 n)

end

end A133190.P1486974796467035672

namespace A133190

/-- `xor(A007910(n), A109718(n))` -/
def P1486974796467035672.Spec : Prop :=
  ∀ n, P1486974796467035672.a n = A133190 n

end A133190

/-! ## A133190.P17487081634617314368

`xor(A010673(n), A190569(n))`
-/

namespace A133190.P17487081634617314368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A190569 n)

end

end A133190.P17487081634617314368

namespace A133190

/-- `xor(A010673(n), A190569(n))` -/
def P17487081634617314368.Spec : Prop :=
  ∀ n, P17487081634617314368.a n = A133190 n

end A133190

/-! ## A133190.P3118513509545838326

`A181586(n+1)+A139763(n)`
-/

namespace A133190.P3118513509545838326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (n + 1) + A139763 n

end

end A133190.P3118513509545838326

namespace A133190

/-- `A181586(n+1)+A139763(n)` -/
def P3118513509545838326.Spec : Prop :=
  ∀ n, P3118513509545838326.a n = A133190 n

end A133190

/-! ## A133190.P2661677839156284923

`A007910(n)-A056594(n+1)`
-/

namespace A133190.P2661677839156284923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n - A056594 (n + 1)

end

end A133190.P2661677839156284923

namespace A133190

/-- `A007910(n)-A056594(n+1)` -/
def P2661677839156284923.Spec : Prop :=
  ∀ n, P2661677839156284923.a n = A133190 n

end A133190

/-! ## A133190.P17891903098073212847

`A056594(n+3)+A007910(n)`
-/

namespace A133190.P17891903098073212847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 3) + A007910 n

end

end A133190.P17891903098073212847

namespace A133190

/-- `A056594(n+3)+A007910(n)` -/
def P17891903098073212847.Spec : Prop :=
  ∀ n, P17891903098073212847.a n = A133190 n

end A133190

/-! ## A133190.P15189095791195880314

`A190569(n)+2*A101455(n)`
-/

namespace A133190.P15189095791195880314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 n + 2 * A101455 n

end

end A133190.P15189095791195880314

namespace A133190

/-- `A190569(n)+2*A101455(n)` -/
def P15189095791195880314.Spec : Prop :=
  ∀ n, P15189095791195880314.a n = A133190 n

end A133190

/-! ## A133190.P200111933201315414

`xor(A010674(n), A199403(n+1))`
-/

namespace A133190.P200111933201315414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A199403 (n + 1))

end

end A133190.P200111933201315414

namespace A133190

/-- `xor(A010674(n), A199403(n+1))` -/
def P200111933201315414.Spec : Prop :=
  ∀ n, P200111933201315414.a n = A133190 n

end A133190

/-! ## A133190.P1864389513324060059

`A007909(n+1)-A176742(n+1)`
-/

namespace A133190.P1864389513324060059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (n + 1) - A176742 (n + 1)

end

end A133190.P1864389513324060059

namespace A133190

/-- `A007909(n+1)-A176742(n+1)` -/
def P1864389513324060059.Spec : Prop :=
  ∀ n, P1864389513324060059.a n = A133190 n

end A133190

/-! ## A133190.P15183023562269300752

`A007909(n+1)-A084099(n+2)`
-/

namespace A133190.P15183023562269300752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (n + 1) - A084099 (n + 2)

end

end A133190.P15183023562269300752

namespace A133190

/-- `A007909(n+1)-A084099(n+2)` -/
def P15183023562269300752.Spec : Prop :=
  ∀ n, P15183023562269300752.a n = A133190 n

end A133190

/-!
# A133192: Numbers that require exactly five chisel strokes when written in Roman numerals.

The programs for A133192, there is no canonical definition to state claims against.
-/

/-! ## A133192.P12813374886240992736

`eq[5, A002963(n+1)]+1`
-/

namespace A133192.P12813374886240992736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133192.P12813374886240992736

/-! ## A133192.P11714933887208736037

`eq[5, A002963(A060000(n+1))]`
-/

namespace A133192.P11714933887208736037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002963 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133192.P11714933887208736037

/-! ## A133192.P3049540219769936142

`eq[5, A002963(A065033(2*n))]`
-/

namespace A133192.P3049540219769936142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002963 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133192.P3049540219769936142

/-! ## A133192.P6946187377402309829

`eq[5, A002963(A000007(n)+n)]`
-/

namespace A133192.P6946187377402309829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002963 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133192.P6946187377402309829

/-! ## A133192.P15119354947759773043

`eq[5, A002963(A233583(n+1))]`
-/

namespace A133192.P15119354947759773043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002963 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133192.P15119354947759773043

/-!
# A133194: Numbers requiring a prime number of chisel strokes for their representation in Roman numerals.

The programs for A133194, there is no canonical definition to state claims against.
-/

/-! ## A133194.P5638314786981671355

`eq[1, A051953(A002963(n+1))]+1`
-/

namespace A133194.P5638314786981671355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A002963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133194.P5638314786981671355

/-! ## A133194.P17464038240426079469

`lt[A339086(2*(n+2)), A056239(A000041(n))]`
-/

namespace A133194.P17464038240426079469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339086 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A000041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133194.P17464038240426079469

/-! ## A133194.P13671776173608977621

`lt[A035441(n+1)*A035629(n+1), A035652(2*n+5)]`
-/

namespace A133194.P13671776173608977621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (n + 1) * A035629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035652 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133194.P13671776173608977621

/-! ## A133194.P7102206833310198605

`lt[A344180(A227928(n+1)), A323243(n+1)]`
-/

namespace A133194.P7102206833310198605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (A227928 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133194.P7102206833310198605

/-!
# A133195: Smallest number whose sum of digits is 3n.

The programs for A133195, the canonical program `A133195.P11573044922536821365` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133195 has offset 0).

The definition of A133195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133195.P6681798058180673082

`3*A133201(n)`
-/

namespace A133195.P6681798058180673082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A133201 n

end

end A133195.P6681798058180673082

namespace A133195

/-- `3*A133201(n)` -/
def P6681798058180673082.Spec : Prop :=
  ∀ n, P6681798058180673082.a n = A133195 n

end A133195

/-! ## A133195.P11573044922536821365

`a(n-1)+10*a(n-3)-10*a(n-4)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A133195

/-- `a(n-1)+10*a(n-3)-10*a(n-4)` -/
def P11573044922536821365.Spec : Prop :=
  ∀ n, P11573044922536821365.a n = A133195 n

theorem P11573044922536821365.correct : P11573044922536821365.Spec := by
  intro n
  simp only [A133195]

end A133195

/-! ## A133195.P14456008459726872084

`10*a(n-3)+9` with `a(0)=0, a(1)=3, a(2)=6`
-/

namespace A133195.P14456008459726872084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n a =>
  10 * a (n - 3) + 9

end

end A133195.P14456008459726872084

namespace A133195

/-- `10*a(n-3)+9` -/
def P14456008459726872084.Spec : Prop :=
  ∀ n, (P14456008459726872084.a n : ℤ) = A133195 n

end A133195

/-! ## A133195.P11750868982157081333

`∑[10*a(n-3)]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=3`
-/

namespace A133195.P11750868982157081333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 3] fun n f1 =>
  10 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133195.P11750868982157081333

namespace A133195

/-- `∑[10*a(n-3)]` -/
def P11750868982157081333.Spec : Prop :=
  ∀ n, (P11750868982157081333.a n : ℤ) = A133195 n

end A133195

/-! ## A133195.P10165113422914776644

`A135262(n)-1`
-/

namespace A133195.P10165113422914776644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135262 n - 1

end

end A133195.P10165113422914776644

namespace A133195

/-- `A135262(n)-1` -/
def P10165113422914776644.Spec : Prop :=
  ∀ n, P10165113422914776644.a n = A133195 n

end A133195

/-! ## A133195.P5168076296743644465

`A051885(3*n)`
-/

namespace A133195.P5168076296743644465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (3 * n)

end

end A133195.P5168076296743644465

namespace A133195

/-- `A051885(3*n)` -/
def P5168076296743644465.Spec : Prop :=
  ∀ n, P5168076296743644465.a n = A133195 n

end A133195

/-! ## A133195.P16136949974517191249

`A331786(3*n+1)/2`
-/

namespace A133195.P16136949974517191249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331786 (3 * n + 1) : ℚ) / 2

end

end A133195.P16136949974517191249

namespace A133195

/-- `A331786(3*n+1)/2` -/
def P16136949974517191249.Spec : Prop :=
  ∀ n, P16136949974517191249.a n = (A133195 n : ℚ)

end A133195

/-! ## A133195.P6669999125282924431

`floor(A331788(3*n+1)/2)`
-/

namespace A133195.P6669999125282924431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331788 (3 * n + 1) : ℚ) / 2⌋

end

end A133195.P6669999125282924431

namespace A133195

/-- `floor(A331788(3*n+1)/2)` -/
def P6669999125282924431.Spec : Prop :=
  ∀ n, P6669999125282924431.a n = A133195 n

end A133195

/-! ## A133195.P6006467061525917846

`A325112(A163979(n))-1`
-/

namespace A133195.P6006467061525917846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (A163979 n).toNat - 1

end

end A133195.P6006467061525917846

namespace A133195

/-- `A325112(A163979(n))-1` -/
def P6006467061525917846.Spec : Prop :=
  ∀ n, P6006467061525917846.a n = A133195 n

end A133195

/-! ## A133195.P7534400926539487357

`∩[A088405(n+1), A325112(n+1)]-1`
-/

namespace A133195.P7534400926539487357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A133195.P7534400926539487357

namespace A133195

/-- `∩[A088405(n+1), A325112(n+1)]-1` -/
def P7534400926539487357.Spec : Prop :=
  ∀ n, P7534400926539487357.a n = A133195 n

end A133195

/-!
# A133196: n+2 repeated n times.

The programs for A133196, the canonical program `A133196.P16440954679324344778` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133196 has offset 1).

The definition of A133196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133196.P16440954679324344778

`A003056(n)+3`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133196

/-- `A003056(n)+3` -/
def P16440954679324344778.Spec : Prop :=
  ∀ n, P16440954679324344778.a n = A133196 (n + 1)

theorem P16440954679324344778.correct : P16440954679324344778.Spec := by
  intro n
  simp only [A133196, Nat.add_sub_cancel]

end A133196

/-! ## A133196.P9051832285963476948

`A003057(n+2)+1`
-/

namespace A133196.P9051832285963476948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) + 1

end

end A133196.P9051832285963476948

namespace A133196

/-- `A003057(n+2)+1` -/
def P9051832285963476948.Spec : Prop :=
  ∀ n, P9051832285963476948.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P6128927298184006275

`3+row(n)`
-/

namespace A133196.P6128927298184006275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + SequenceMachineLib.triRow n

end

end A133196.P6128927298184006275

namespace A133196

/-- `3+row(n)` -/
def P6128927298184006275.Spec : Prop :=
  ∀ n, (P6128927298184006275.a n : ℤ) = A133196 (n + 1)

end A133196

/-! ## A133196.P418675366999005363

`∑[char[∑[n]]]+2`
-/

namespace A133196.P418675366999005363
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A133196.P418675366999005363

namespace A133196

/-- `∑[char[∑[n]]]+2` -/
def P418675366999005363.Spec : Prop :=
  ∀ n, (P418675366999005363.a n : ℤ) = A133196 (n + 1)

end A133196

/-! ## A133196.P3167084480127978548

`round(record[sqrt(xor(1, n))+2])`
-/

namespace A133196.P3167084480127978548
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 n : ℝ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A133196.P3167084480127978548

namespace A133196

/-- `round(record[sqrt(xor(1, n))+2])` -/
def P3167084480127978548.Spec : Prop :=
  ∀ n, P3167084480127978548.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P746304157875334769

`round(record[sqrt(or(2, n))+2])`
-/

namespace A133196.P746304157875334769
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lor 2 n : ℝ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A133196.P746304157875334769

namespace A133196

/-- `round(record[sqrt(or(2, n))+2])` -/
def P746304157875334769.Spec : Prop :=
  ∀ n, P746304157875334769.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P1007077570061064222

`abs(xor(comp[∑[n]]-n, -1))`
-/

namespace A133196.P1007077570061064222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (-1)|

end

end A133196.P1007077570061064222

namespace A133196

/-- `abs(xor(comp[∑[n]]-n, -1))` -/
def P1007077570061064222.Spec : Prop :=
  ∀ n, P1007077570061064222.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P10839612304012893526

`-xor(comp[∑[n]]-n, -1)`
-/

namespace A133196.P10839612304012893526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (-1)

end

end A133196.P10839612304012893526

namespace A133196

/-- `-xor(comp[∑[n]]-n, -1)` -/
def P10839612304012893526.Spec : Prop :=
  ∀ n, P10839612304012893526.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P10392276311731850324

`abs(comp[C(n, 2)]+1-n)`
-/

namespace A133196.P10392276311731850324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - (n : ℤ)|

end

end A133196.P10392276311731850324

namespace A133196

/-- `abs(comp[C(n, 2)]+1-n)` -/
def P10392276311731850324.Spec : Prop :=
  ∀ n, P10392276311731850324.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P17648453017977492463

`abs(n-1-comp[C(n, 2)])`
-/

namespace A133196.P17648453017977492463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)|

end

end A133196.P17648453017977492463

namespace A133196

/-- `abs(n-1-comp[C(n, 2)])` -/
def P17648453017977492463.Spec : Prop :=
  ∀ n, P17648453017977492463.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P10166563793204935442

`ceil(sqrt(A393451(n)))`
-/

namespace A133196.P10166563793204935442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A393451 n : ℝ)⌉

end

end A133196.P10166563793204935442

namespace A133196

/-- `ceil(sqrt(A393451(n)))` -/
def P10166563793204935442.Spec : Prop :=
  ∀ n, P10166563793204935442.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P12215193622040476241

`(A131507(n)+5)/2`
-/

namespace A133196.P12215193622040476241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131507 n + 5 : ℚ) / 2

end

end A133196.P12215193622040476241

namespace A133196

/-- `(A131507(n)+5)/2` -/
def P12215193622040476241.Spec : Prop :=
  ∀ n, P12215193622040476241.a n = (A133196 (n + 1) : ℚ)

end A133196

/-! ## A133196.P5381746818148279357

`floor(sqrt(A217570(n+1)))`
-/

namespace A133196.P5381746818148279357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A217570 (n + 1))

end

end A133196.P5381746818148279357

namespace A133196

/-- `floor(sqrt(A217570(n+1)))` -/
def P5381746818148279357.Spec : Prop :=
  ∀ n, P5381746818148279357.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P298938127974795895

`ceil(sqrt(A189151(n+1)))`
-/

namespace A133196.P298938127974795895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A189151 (n + 1) : ℝ)⌉

end

end A133196.P298938127974795895

namespace A133196

/-- `ceil(sqrt(A189151(n+1)))` -/
def P298938127974795895.Spec : Prop :=
  ∀ n, P298938127974795895.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P12268333525534484550

`floor(log2(A224380(n+1)))`
-/

namespace A133196.P12268333525534484550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A224380 (n + 1)).toNat

end

end A133196.P12268333525534484550

namespace A133196

/-- `floor(log2(A224380(n+1)))` -/
def P12268333525534484550.Spec : Prop :=
  ∀ n, (P12268333525534484550.a n : ℤ) = A133196 (n + 1)

end A133196

/-! ## A133196.P7776922012914793925

`ceil(log2(A084468(n+1)))`
-/

namespace A133196.P7776922012914793925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A084468 (n + 1) : ℝ)⌉

end

end A133196.P7776922012914793925

namespace A133196

/-- `ceil(log2(A084468(n+1)))` -/
def P7776922012914793925.Spec : Prop :=
  ∀ n, P7776922012914793925.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P18256334761184331786

`abs(3-A083920(n)+n)`
-/

namespace A133196.P18256334761184331786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A083920 n + (n : ℤ)|

end

end A133196.P18256334761184331786

namespace A133196

/-- `abs(3-A083920(n)+n)` -/
def P18256334761184331786.Spec : Prop :=
  ∀ n, P18256334761184331786.a n = A133196 (n + 1)

end A133196

/-! ## A133196.P3089692183755904741

`floor(log2(∑[8*A007318(n)]))`
-/

namespace A133196.P3089692183755904741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133196.P3089692183755904741

namespace A133196

/-- `floor(log2(∑[8*A007318(n)]))` -/
def P3089692183755904741.Spec : Prop :=
  ∀ n, (P3089692183755904741.a n : ℤ) = A133196 (n + 1)

end A133196

/-! ## A133196.P3242919159305728904

`A009056(round(sqrt(2*n+1)))`
-/

namespace A133196.P3242919159305728904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A133196.P3242919159305728904

namespace A133196

/-- `A009056(round(sqrt(2*n+1)))` -/
def P3242919159305728904.Spec : Prop :=
  ∀ n, P3242919159305728904.a n = A133196 (n + 1)

end A133196

