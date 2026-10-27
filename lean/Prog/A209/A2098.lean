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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C039
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
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
# A209800: Numbers n such that the concatenation of the distinct prime divisors of n is composite.

The programs for A209800, there is no canonical definition to state claims against.
-/

/-! ## A209800.P17522436073110185820

`lt[1, A054024(A037276(∏{p}[n, #]))]`
-/

namespace A209800.P17522436073110185820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A037276 (∏ p ∈ Nat.primeFactors (f3 n), p)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A209800.P17522436073110185820

/-! ## A209800.P15571627554547818101

`lt[1, A343156(n+2)]+2`
-/

namespace A209800.P15571627554547818101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343156 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A209800.P15571627554547818101

/-! ## A209800.P950364791153851614

`lt[1, A343156(A233583(n+1))]`
-/

namespace A209800.P950364791153851614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343156 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A209800.P950364791153851614

/-!
# A209801: The number of partitions of the set [n] where each element can be colored 1 or 2 avoiding the patterns 1^11^2 in the equality sense.

The programs for A209801, there is no canonical definition to state claims against.
-/

/-! ## A209801.P9354404599123640765

`A261231(A340993(n)+1)`
-/

namespace A209801.P9354404599123640765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (A340993 n + 1).toNat

end

end A209801.P9354404599123640765

/-! ## A209801.P1086766748100733731

`A057356(A005809(n))+A017992(n)`
-/

namespace A209801.P1086766748100733731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A005809 n).toNat + A017992 n

end

end A209801.P1086766748100733731

/-!
# A209802: Partial sums of exponential Möbius function, A166234.

The programs for A209802, the canonical program `A209802.P15698415580135976079` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209802 has offset 1).

The definition of A209802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209802.P15698415580135976079

`∑[A166234(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A209802

/-- `∑[A166234(n+1)]` -/
def P15698415580135976079.Spec : Prop :=
  ∀ n, P15698415580135976079.a n = A209802 (n + 1)

theorem P15698415580135976079.correct : P15698415580135976079.Spec := by
  intro n
  simp only [A209802, Nat.add_sub_cancel]

end A209802

/-! ## A209802.P8128277222629036625

`∑[∏{e}[n+1, A008683(#)]]`
-/

namespace A209802.P8128277222629036625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A008683 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209802.P8128277222629036625

namespace A209802

/-- `∑[∏{e}[n+1, A008683(#)]]` -/
def P8128277222629036625.Spec : Prop :=
  ∀ n, P8128277222629036625.a n = A209802 (n + 1)

end A209802

/-! ## A209802.P16828805453382270348

`∑[∏{e}[n+1, A069158(#)]]`
-/

namespace A209802.P16828805453382270348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A069158 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209802.P16828805453382270348

namespace A209802

/-- `∑[∏{e}[n+1, A069158(#)]]` -/
def P16828805453382270348.Spec : Prop :=
  ∀ n, P16828805453382270348.a n = A209802 (n + 1)

end A209802

/-! ## A209802.P15164749563344914295

`∑[∏{e}[n+1, A197774(#)]]`
-/

namespace A209802.P15164749563344914295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A197774 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209802.P15164749563344914295

namespace A209802

/-- `∑[∏{e}[n+1, A197774(#)]]` -/
def P15164749563344914295.Spec : Prop :=
  ∀ n, P15164749563344914295.a n = A209802 (n + 1)

end A209802

/-! ## A209802.P5649523789486956520

`∑[∏{e}[n+1, A162512(#)%2]]`
-/

namespace A209802.P5649523789486956520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Int.tmod (A162512 (Nat.factorization (f2 n) p)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209802.P5649523789486956520

namespace A209802

/-- `∑[∏{e}[n+1, A162512(#)%2]]` -/
def P5649523789486956520.Spec : Prop :=
  ∀ n, P5649523789486956520.a n = A209802 (n + 1)

end A209802

/-! ## A209802.P2594998036348242465

`∏{e}[n+1, A008683(A055645(#))]+a(n-1)` with `a(0)=1`
-/

namespace A209802.P2594998036348242465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (A055645 (Nat.factorization (f1 n) p)).toNat + a (n - 1)

end

end A209802.P2594998036348242465

namespace A209802

/-- `∏{e}[n+1, A008683(A055645(#))]+a(n-1)` -/
def P2594998036348242465.Spec : Prop :=
  ∀ n, P2594998036348242465.a n = A209802 (n + 1)

end A209802

/-!
# A209803: a(n) = Sum_{d|n} d*2^(n*d).

The programs for A209803, the canonical program `A209803.P4047328958609745975` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209803 has offset 1).

The definition of A209803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209803.P4047328958609745975

`∑{d}[n+1, #*2^((n+1)*#)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209803

/-- `∑{d}[n+1, #*2^((n+1)*#)]` -/
def P4047328958609745975.Spec : Prop :=
  ∀ n, (P4047328958609745975.a n : ℤ) = A209803 (n + 1)

theorem P4047328958609745975.correct : P4047328958609745975.Spec := by
  intro n
  simp only [A209803, Nat.add_sub_cancel]

end A209803

/-!
# A209804: a(n) = Sum_{d|n} d*3^(n*d).

The programs for A209804, the canonical program `A209804.P8079290801651050452` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209804 has offset 1).

The definition of A209804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209804.P8079290801651050452

`∑{d}[n+1, #*3^((n+1)*#)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209804

/-- `∑{d}[n+1, #*3^((n+1)*#)]` -/
def P8079290801651050452.Spec : Prop :=
  ∀ n, (P8079290801651050452.a n : ℤ) = A209804 (n + 1)

theorem P8079290801651050452.correct : P8079290801651050452.Spec := by
  intro n
  simp only [A209804, Nat.add_sub_cancel]

end A209804

/-!
# A209805: Triangle read by rows: T(n,k) is the number of k-block noncrossing partitions of n-set up to rotations.

The programs for A209805, there is no canonical definition to state claims against.
-/

/-! ## A209805.P13209368643006669970

`2*A209612(n+1)-A088855(n+1)`
-/

namespace A209805.P13209368643006669970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209612 (n + 1) - A088855 (n + 1)

end

end A209805.P13209368643006669970

/-! ## A209805.P9015699747486852969

`A005843(A209612(n+1))-A088855(n+1)`
-/

namespace A209805.P9015699747486852969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A209612 (n + 1)).toNat - A088855 (n + 1)

end

end A209805.P9015699747486852969

/-! ## A209805.P4009620945701526507

`A052126(A001263(n+1))%A123586(2*(n+2))`
-/

namespace A209805.P4009620945701526507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052126 (A001263 (n + 1)).toNat) (A123586 (2 * (n + 2)))

end

end A209805.P4009620945701526507

/-! ## A209805.P15470750112621112884

`A052126(A001263(n+1))*A052126(A103886(n+1))`
-/

namespace A209805.P15470750112621112884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A001263 (n + 1)).toNat * A052126 (A103886 (n + 1)).toNat

end

end A209805.P15470750112621112884

/-! ## A209805.P14571017111140105701

`A052126(A001263(n+1)%A092097(n))`
-/

namespace A209805.P14571017111140105701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.tmod (A001263 (n + 1)) (A092097 n)).toNat

end

end A209805.P14571017111140105701

/-!
# A209806: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having two distinct values, and new values 0..3 introduced in row major order.

The programs for A209806, there is no canonical definition to state claims against.
-/

/-! ## A209806.P9289633870787762076

`A209814((n+1)²+n²)`
-/

namespace A209806.P9289633870787762076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 ((n + 1) ^ 2 + n ^ 2)

end

end A209806.P9289633870787762076

/-! ## A209806.P7729587876326780504

`A209814(A001844(n))*A229887(n)`
-/

namespace A209806.P7729587876326780504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A001844 n).toNat * A229887 n

end

end A209806.P7729587876326780504

/-! ## A209806.P8806031339133015915

`A209814(A001844(n))*A229888(n)`
-/

namespace A209806.P8806031339133015915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A001844 n).toNat * A229888 n

end

end A209806.P8806031339133015915

/-! ## A209806.P18211993579022046829

`A209814(A001844(n))*A229889(n)`
-/

namespace A209806.P18211993579022046829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A001844 n).toNat * A229889 n

end

end A209806.P18211993579022046829

/-!
# A209807: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having two distinct values, and new values 0..3 introduced in row major order.

The programs for A209807, the canonical program `A209807.P4556539075732485989` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209807 has offset 1).

The definition of A209807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209807.P4556539075732485989

`8*a(n-1)-7*a(n-2)-28*a(n-3)-12*a(n-4)` with `a(0)=7, a(1)=34, a(2)=173, a(3)=930`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209807

/-- `8*a(n-1)-7*a(n-2)-28*a(n-3)-12*a(n-4)` -/
def P4556539075732485989.Spec : Prop :=
  ∀ n, P4556539075732485989.a n = A209807 (n + 1)

theorem P4556539075732485989.correct : P4556539075732485989.Spec := by
  intro n
  simp only [A209807, Nat.add_sub_cancel]

end A209807

/-! ## A209807.P7910949303176313393

`A209814(∑[n]+1)`
-/

namespace A209807.P7910949303176313393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209807.P7910949303176313393

namespace A209807

/-- `A209814(∑[n]+1)` -/
def P7910949303176313393.Spec : Prop :=
  ∀ n, P7910949303176313393.a n = A209807 (n + 1)

end A209807

/-! ## A209807.P17651277338374874657

`record[A209814(n+1)/A117401(n)]`
-/

namespace A209807.P17651277338374874657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209814 (n + 1) : ℚ) / (A117401 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209807.P17651277338374874657

namespace A209807

/-- `record[A209814(n+1)/A117401(n)]` -/
def P17651277338374874657.Spec : Prop :=
  ∀ n, P17651277338374874657.a n = (A209807 (n + 1) : ℚ)

end A209807

/-! ## A209807.P8693032561851787853

`record[A209814(n+1)/A145901(n)]`
-/

namespace A209807.P8693032561851787853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209814 (n + 1) : ℚ) / (A145901 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209807.P8693032561851787853

namespace A209807

/-- `record[A209814(n+1)/A145901(n)]` -/
def P8693032561851787853.Spec : Prop :=
  ∀ n, P8693032561851787853.a n = (A209807 (n + 1) : ℚ)

end A209807

/-! ## A209807.P14995496939088828935

`record[gcd(A002262(n), A209814(n+1))]`
-/

namespace A209807.P14995496939088828935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A209814 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209807.P14995496939088828935

namespace A209807

/-- `record[gcd(A002262(n), A209814(n+1))]` -/
def P14995496939088828935.Spec : Prop :=
  ∀ n, (P14995496939088828935.a n : ℤ) = A209807 (n + 1)

end A209807

/-!
# A209808: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having two distinct values, and new values 0..3 introduced in row major order.

The programs for A209808, there is no canonical definition to state claims against.
-/

/-! ## A209808.P7504206623360483327

`A209814(∑[n+1]+2)`
-/

namespace A209808.P7504206623360483327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209808.P7504206623360483327

/-! ## A209808.P16929887887229392082

`record[gcd(A002262(n), A209814(n+2))]`
-/

namespace A209808.P16929887887229392082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A209814 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209808.P16929887887229392082

/-! ## A209808.P17568478853642647511

`record[root(A209814(n+2), A209819(n+1))]`
-/

namespace A209808.P17568478853642647511
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209814 (n + 2) : ℝ) ^ (1 / (A209819 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209808.P17568478853642647511

/-! ## A209808.P10763371367387500106

`record[root(A209814(n+2), A209830(n+1))]`
-/

namespace A209808.P10763371367387500106
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209814 (n + 2) : ℝ) ^ (1 / (A209830 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209808.P10763371367387500106

/-! ## A209808.P3047376819958248500

`record[A209814(A198455(n+1))]`
-/

namespace A209808.P3047376819958248500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209808.P3047376819958248500

/-!
# A209809: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having two distinct values, and new values 0..3 introduced in row major order.

The programs for A209809, there is no canonical definition to state claims against.
-/

/-! ## A209809.P5116694095658145671

`A209814(∑[n+2]+4)`
-/

namespace A209809.P5116694095658145671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209809.P5116694095658145671

/-! ## A209809.P11261101923876842915

`or(1, A209814(A167614(n+1)))`
-/

namespace A209809.P11261101923876842915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A209814 (A167614 (n + 1)).toNat)

end

end A209809.P11261101923876842915

/-! ## A209809.P14355864667851589480

`A209814(A167614(n+1))+A025466(n)`
-/

namespace A209809.P14355864667851589480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A167614 (n + 1)).toNat + A025466 n

end

end A209809.P14355864667851589480

/-! ## A209809.P8810512071901507952

`lcm(A033999(n), A209814(A167614(n+1)))`
-/

namespace A209809.P8810512071901507952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A209814 (A167614 (n + 1)).toNat)

end

end A209809.P8810512071901507952

/-! ## A209809.P12360118490205062368

`A209814(A034856(n+2))%A233899(2*n+1)`
-/

namespace A209809.P12360118490205062368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209814 (A034856 (n + 2)).toNat) (A233899 (2 * n + 1))

end

end A209809.P12360118490205062368

/-!
# A209810: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having two distinct values, and new values 0..3 introduced in row major order.

The programs for A209810, there is no canonical definition to state claims against.
-/

/-! ## A209810.P15692958041711786010

`A209814(∑[n+3]+7)`
-/

namespace A209810.P15692958041711786010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A209810.P15692958041711786010

/-! ## A209810.P185855382372669624

`A209814(A374004(n+1))+A185237(n)`
-/

namespace A209810.P185855382372669624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A374004 (n + 1)).toNat + A185237 n

end

end A209810.P185855382372669624

/-! ## A209810.P9986843155432082437

`A264668(n)+A209814(A374004(n+1))`
-/

namespace A209810.P9986843155432082437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A209814 (A374004 (n + 1)).toNat

end

end A209810.P9986843155432082437

/-! ## A209810.P9824504629399800655

`A043568(n)*A209814(A374004(n+1))`
-/

namespace A209810.P9824504629399800655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A209814 (A374004 (n + 1)).toNat

end

end A209810.P9824504629399800655

/-! ## A209810.P18276865029590907035

`A285007(n+1)+A209814(A374004(n+1))`
-/

namespace A209810.P18276865029590907035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A209814 (A374004 (n + 1)).toNat

end

end A209810.P18276865029590907035

/-!
# A209811: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having two distinct values, and new values 0..3 introduced in row major order.

The programs for A209811, there is no canonical definition to state claims against.
-/

/-! ## A209811.P2640648762569395760

`A209814(A374005(n+1))`
-/

namespace A209811.P2640648762569395760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A374005 (n + 1)).toNat

end

end A209811.P2640648762569395760

/-! ## A209811.P1210710373563790572

`A209814(A155212(n)+13)`
-/

namespace A209811.P1210710373563790572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A155212 n + 13).toNat

end

end A209811.P1210710373563790572

/-! ## A209811.P7717871629876122129

`A209814(A056000(n)+15)`
-/

namespace A209811.P7717871629876122129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A056000 n + 15).toNat

end

end A209811.P7717871629876122129

/-! ## A209811.P7247464072585615683

`A209814(eq[6, A131818(n+1)])`
-/

namespace A209811.P7247464072585615683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209811.P7247464072585615683

/-! ## A209811.P6241945054673430902

`A209814(eq[4, A193592(n)])`
-/

namespace A209811.P6241945054673430902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209811.P6241945054673430902

/-!
# A209812: Number of (n+1)X7 0..3 arrays with every 2X2 subblock having two distinct values, and new values 0..3 introduced in row major order.

The programs for A209812, there is no canonical definition to state claims against.
-/

/-! ## A209812.P16934734732440980189

`A209814(A374007(n+1))`
-/

namespace A209812.P16934734732440980189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A374007 (n + 1)).toNat

end

end A209812.P16934734732440980189

/-! ## A209812.P11529124082433497276

`A209814(eq[5, A193592(n)])`
-/

namespace A209812.P11529124082433497276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209812.P11529124082433497276

/-! ## A209812.P3688125437298390459

`A209814(Δ[Δ[A006504(n+1)]])`
-/

namespace A209812.P3688125437298390459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (f1 (n + 1) - f1 n).toNat

end

end A209812.P3688125437298390459

/-! ## A209812.P10350700014808121997

`A209814(A167614(n+3)+2*n+3)`
-/

namespace A209812.P10350700014808121997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A167614 (n + 3) + (2 * n + 3 : ℤ)).toNat

end

end A209812.P10350700014808121997

/-!
# A209813: Number of (n+1)X8 0..3 arrays with every 2X2 subblock having two distinct values, and new values 0..3 introduced in row major order.

The programs for A209813, there is no canonical definition to state claims against.
-/

/-! ## A209813.P9488039998149384027

`A209814(A374008(n+1))`
-/

namespace A209813.P9488039998149384027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (A374008 (n + 1)).toNat

end

end A209813.P9488039998149384027

/-! ## A209813.P137946634100632578

`A209814(eq[6, A193592(n)])`
-/

namespace A209813.P137946634100632578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209813.P137946634100632578

/-!
# A209815: Number of partitions of 2n in which every part is <n; also, the number of partitions of 2 into rational numbers a/b such that 0<a<b<=n and b divides n.

The programs for A209815, there is no canonical definition to state claims against.
-/

/-! ## A209815.P18014436190263377427

`A210249(2*(n+1))`
-/

namespace A209815.P18014436190263377427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210249 (2 * (n + 1))

end

end A209815.P18014436190263377427

/-! ## A209815.P7730316015332175630

`A182616(n+1)-A000070(n)`
-/

namespace A209815.P7730316015332175630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 (n + 1) - A000070 n

end

end A209815.P7730316015332175630

/-! ## A209815.P11272841769876485063

`A058696(n+1)-A000070(n+1)`
-/

namespace A209815.P11272841769876485063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - A000070 (n + 1)

end

end A209815.P11272841769876485063

/-! ## A209815.P15390414153363779671

`A209816(n+1)-A000041(n+1)`
-/

namespace A209815.P15390414153363779671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209816 (n + 1) - A000041 (n + 1)

end

end A209815.P15390414153363779671

/-! ## A209815.P17253860299574237512

`A238546(2*(n+1))-A000070(n)`
-/

namespace A209815.P17253860299574237512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238546 (2 * (n + 1)) - A000070 n

end

end A209815.P17253860299574237512

/-! ## A209815.P7431515929143461911

`A000041(2*(n+1))-A000070(n+1)`
-/

namespace A209815.P7431515929143461911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * (n + 1)) - A000070 (n + 1)

end

end A209815.P7431515929143461911

/-! ## A209815.P16181638535211745934

`A000065(2*(n+1))-A026905(n+1)`
-/

namespace A209815.P16181638535211745934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * (n + 1)) - A026905 (n + 1)

end

end A209815.P16181638535211745934

/-! ## A209815.P7725271377390324934

`A058696(n+1)-A025065(2*(n+1))`
-/

namespace A209815.P7725271377390324934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - A025065 (2 * (n + 1))

end

end A209815.P7725271377390324934

/-! ## A209815.P14359253194711543742

`∑[Δ[A000041(2*n)]-A000041(n+1)]`
-/

namespace A209815.P14359253194711543742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209815.P14359253194711543742

/-! ## A209815.P13534395206737063762

`A000065(2*(n+1))+1-A000070(n+1)`
-/

namespace A209815.P13534395206737063762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * (n + 1)) + 1 - A000070 (n + 1)

end

end A209815.P13534395206737063762

/-! ## A209815.P15574707854032295884

`A209816(n+1)+A000070(n)-A000070(n+1)`
-/

namespace A209815.P15574707854032295884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209816 (n + 1) + (A000070 n - A000070 (n + 1))

end

end A209815.P15574707854032295884

/-! ## A209815.P15501240325969724672

`A069905(n+1)+A209816(n+1)-A328863(n+1)`
-/

namespace A209815.P15501240325969724672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) + (A209816 (n + 1) - A328863 (n + 1))

end

end A209815.P15501240325969724672

/-! ## A209815.P21201038912434664

`A026905(2*(n+1))-(A026905(2*n+1)+A000070(n+1))`
-/

namespace A209815.P21201038912434664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (2 * (n + 1)) - (A026905 (2 * n + 1) + A000070 (n + 1))

end

end A209815.P21201038912434664

/-! ## A209815.P4295699003264299035

`∑[A263847(n+1)]`
-/

namespace A209815.P4295699003264299035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209815.P4295699003264299035

/-! ## A209815.P4808710117589332730

`∑[A182845(n+1)-A000041(n+1)]`
-/

namespace A209815.P4808710117589332730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182845 (n + 1) - A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209815.P4808710117589332730

/-! ## A209815.P8449017589611227713

`A209818(n+1)-(A209817(n+1)+A000041(n+1))`
-/

namespace A209815.P8449017589611227713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209818 (n + 1) - (A209817 (n + 1) + A000041 (n + 1))

end

end A209815.P8449017589611227713

/-! ## A209815.P11969084277691272210

`A182616(n+1)-A100824(2*n+1)`
-/

namespace A209815.P11969084277691272210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 (n + 1) - A100824 (2 * n + 1)

end

end A209815.P11969084277691272210

/-! ## A209815.P14671416535929463823

`A182616(n+1)-A100835(2*n+1)`
-/

namespace A209815.P14671416535929463823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 (n + 1) - A100835 (2 * n + 1)

end

end A209815.P14671416535929463823

/-!
# A209816: Number of partitions of 2n in which every part is <n+1; also, the number of partitions of 2 into rational numbers a/b such that 0<a<=b<=n and b divides n.

The programs for A209816, there is no canonical definition to state claims against.
-/

/-! ## A209816.P13323599596636427031

`A000041(2*(n+1))-A000070(n)`
-/

namespace A209816.P13323599596636427031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * (n + 1)) - A000070 n

end

end A209816.P13323599596636427031

/-! ## A209816.P10688403384487074193

`A058696(n+1)-A000070(n)`
-/

namespace A209816.P10688403384487074193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - A000070 n

end

end A209816.P10688403384487074193

/-! ## A209816.P9923316130264483400

`A058696(n+1)-A025065(2*n)`
-/

namespace A209816.P9923316130264483400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - A025065 (2 * n)

end

end A209816.P9923316130264483400

/-! ## A209816.P11274075679626227273

`A000041(2*(n+1))-∑[A000041(n)]`
-/

namespace A209816.P11274075679626227273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209816.P11274075679626227273

/-! ## A209816.P8471232907973876171

`A000065(2*(n+1))+1-A000070(n)`
-/

namespace A209816.P8471232907973876171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * (n + 1)) + 1 - A000070 n

end

end A209816.P8471232907973876171

/-! ## A209816.P14746732282398036438

`A210249(2*(n+1))+A035363(2*(n+1))`
-/

namespace A209816.P14746732282398036438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210249 (2 * (n + 1)) + A035363 (2 * (n + 1))

end

end A209816.P14746732282398036438

/-! ## A209816.P8957795702367695386

`A225751(2*(n+1))-A000070(2*n+1)`
-/

namespace A209816.P8957795702367695386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225751 (2 * (n + 1)) - A000070 (2 * n + 1)

end

end A209816.P8957795702367695386

/-! ## A209816.P15745012981240146155

`Δ[A000041(2*n)]+a(n-1)-A000041(n)` with `a(0)=1`
-/

namespace A209816.P15745012981240146155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + (a (n - 1) - A000041 n)

end

end A209816.P15745012981240146155

/-! ## A209816.P2065026771804836651

`A147878(n+1)+A000070(n)-A000041(n)`
-/

namespace A209816.P2065026771804836651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147878 (n + 1) + (A000070 n - A000041 n)

end

end A209816.P2065026771804836651

/-! ## A209816.P14697411184696298686

`A209815(n+1)+A000041(n+1)`
-/

namespace A209816.P14697411184696298686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209815 (n + 1) + A000041 (n + 1)

end

end A209816.P14697411184696298686

/-! ## A209816.P9340826494163394035

`A000070(n+1)+A209815(n+1)-A000070(n)`
-/

namespace A209816.P9340826494163394035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + (A209815 (n + 1) - A000070 n)

end

end A209816.P9340826494163394035

/-! ## A209816.P6021787722250874456

`A209818(n+1)-A209817(n+1)`
-/

namespace A209816.P6021787722250874456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209818 (n + 1) - A209817 (n + 1)

end

end A209816.P6021787722250874456

/-! ## A209816.P17780752917605824948

`∑[A182845(n+1)-A000041(n)]+1`
-/

namespace A209816.P17780752917605824948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182845 (n + 1) - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A209816.P17780752917605824948

/-! ## A209816.P14058842686417478124

`A058696(n+1)-A100824(2*n+1)`
-/

namespace A209816.P14058842686417478124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - A100824 (2 * n + 1)

end

end A209816.P14058842686417478124

/-! ## A209816.P4696047043574921416

`A100824(4*(n+1))-A100824(2*n+1)`
-/

namespace A209816.P4696047043574921416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (4 * (n + 1)) - A100824 (2 * n + 1)

end

end A209816.P4696047043574921416

/-!
# A209817: Number of partitions of 3n in which every part is <n.

The programs for A209817, there is no canonical definition to state claims against.
-/

/-! ## A209817.P811797746146838140

`A209818(n+1)-A209816(n+1)`
-/

namespace A209817.P811797746146838140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209818 (n + 1) - A209816 (n + 1)

end

end A209817.P811797746146838140

/-! ## A209817.P12740835739101954316

`A209818(n+1)-(A058696(n+1)-A000070(n))`
-/

namespace A209817.P12740835739101954316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209818 (n + 1) - (A058696 (n + 1) - A000070 n)

end

end A209817.P12740835739101954316

/-! ## A209817.P16257623083732941131

`A209818(n+1)-(A147878(n+1)+A000070(n)-A000041(n))`
-/

namespace A209817.P16257623083732941131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209818 (n + 1) - (A147878 (n + 1) + (A000070 n - A000041 n))

end

end A209817.P16257623083732941131

/-! ## A209817.P4185472964200044170

`A209818(n+1)-(A000070(n+1)+A209815(n+1)-A000070(n))`
-/

namespace A209817.P4185472964200044170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209818 (n + 1) - (A000070 (n + 1) + (A209815 (n + 1) - A000070 n))

end

end A209817.P4185472964200044170

/-! ## A209817.P10676914991719560921

`A209818(n+1)-(A058696(n+1)-A100824(2*n+1))`
-/

namespace A209817.P10676914991719560921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209818 (n + 1) - (A058696 (n + 1) - A100824 (2 * n + 1))

end

end A209817.P10676914991719560921

/-! ## A209817.P4527118110437097781

`A008284(A139274(n+1))-A209816(n+1)`
-/

namespace A209817.P4527118110437097781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A139274 (n + 1)).toNat - A209816 (n + 1)

end

end A209817.P4527118110437097781

/-!
# A209818: Number of partitions of 3n in which every part is <=n.

The programs for A209818, there is no canonical definition to state claims against.
-/

/-! ## A209818.P4834196489646357504

`A209817(n+1)+A209816(n+1)`
-/

namespace A209818.P4834196489646357504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209817 (n + 1) + A209816 (n + 1)

end

end A209818.P4834196489646357504

/-! ## A209818.P3999446050708705788

`A209817(n+1)+A058696(n+1)-A000070(n)`
-/

namespace A209818.P3999446050708705788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209817 (n + 1) + (A058696 (n + 1) - A000070 n)

end

end A209818.P3999446050708705788

/-! ## A209818.P5776273714610790100

`A209817(n+1)+A209815(n+1)+A000041(n+1)`
-/

namespace A209818.P5776273714610790100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209817 (n + 1) + (A209815 (n + 1) + A000041 (n + 1))

end

end A209818.P5776273714610790100

/-! ## A209818.P15232640755942461956

`A209817(n+1)+A058696(n+1)-A025065(2*n)`
-/

namespace A209818.P15232640755942461956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209817 (n + 1) + (A058696 (n + 1) - A025065 (2 * n))

end

end A209818.P15232640755942461956

/-! ## A209818.P6116124561245870947

`A209817(n+1)+A000041(2*(n+1))-∑[A000041(n)]`
-/

namespace A209818.P6116124561245870947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209817 (n + 1) + (A000041 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209818.P6116124561245870947

/-! ## A209818.P14266693659415926092

`A209817(n+1)+A210249(2*(n+1))+A035363(2*(n+1))`
-/

namespace A209818.P14266693659415926092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209817 (n + 1) + (A210249 (2 * (n + 1)) + A035363 (2 * (n + 1)))

end

end A209818.P14266693659415926092

/-! ## A209818.P1231731812290713286

`A209817(n+1)+A147878(n+1)+A000070(n)-A000041(n)`
-/

namespace A209818.P1231731812290713286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209817 (n + 1) + (A147878 (n + 1) + (A000070 n - A000041 n))

end

end A209818.P1231731812290713286

/-! ## A209818.P4364512514047178407

`A209817(n+1)+A000070(n+1)+A209815(n+1)-A000070(n)`
-/

namespace A209818.P4364512514047178407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209817 (n + 1) + (A000070 (n + 1) + (A209815 (n + 1) - A000070 n))

end

end A209818.P4364512514047178407

/-! ## A209818.P2973171765050621218

`A209817(n+1)+A058696(n+1)-A100824(2*n+1)`
-/

namespace A209818.P2973171765050621218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209817 (n + 1) + (A058696 (n + 1) - A100824 (2 * n + 1))

end

end A209818.P2973171765050621218

/-! ## A209818.P16606449379887666553

`A008284((n+1)*record[xor(7, n)])`
-/

namespace A209818.P16606449379887666553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 ((n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A209818.P16606449379887666553

/-!
# A209819: Triangle of coefficients of polynomials u(n,x) jointly generated with A209820; see the Formula section.

The programs for A209819, there is no canonical definition to state claims against.
-/

/-! ## A209819.P16468515116839691582

`A101435(3*A210561(n+1))`
-/

namespace A209819.P16468515116839691582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (3 * A210561 (n + 1)).toNat

end

end A209819.P16468515116839691582

/-! ## A209819.P5000452562737128640

`A268496(A210561(n+1)^A119326(n))`
-/

namespace A209819.P5000452562737128640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268496 (SequenceMachineLib.roundAway ((A210561 (n + 1) : ℚ) ^ (A119326 n : ℤ))).toNat

end

end A209819.P5000452562737128640

/-! ## A209819.P14376052042314423254

`A268496(A210561(n+1)^A184257(n+1))`
-/

namespace A209819.P14376052042314423254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268496 (SequenceMachineLib.roundAway ((A210561 (n + 1) : ℚ) ^ (A184257 (n + 1) : ℤ))).toNat

end

end A209819.P14376052042314423254

/-! ## A209819.P12205208964033831127

`A118360(A210561(n+1)%A093077(n+1))`
-/

namespace A209819.P12205208964033831127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118360 (Int.tmod (A210561 (n + 1)) (A093077 (n + 1))).toNat

end

end A209819.P12205208964033831127

/-! ## A209819.P15191321525704013066

`A118360(A210561(n+1))%A339591(n+1)`
-/

namespace A209819.P15191321525704013066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118360 (A210561 (n + 1)).toNat) (A339591 (n + 1))

end

end A209819.P15191321525704013066

/-!
# A209820: Triangle of coefficients of polynomials v(n,x) jointly generated with A209819; see the Formula section.

The programs for A209820, there is no canonical definition to state claims against.
-/

/-! ## A209820.P13564956823011011298

`A137512(A208910(n+1))*A194983(n+1)`
-/

namespace A209820.P13564956823011011298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A208910 (n + 1)).toNat * A194983 (n + 1)

end

end A209820.P13564956823011011298

/-! ## A209820.P232987315695002437

`A137512(A208910(n+1))*A194987(n+1)`
-/

namespace A209820.P232987315695002437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A208910 (n + 1)).toNat * A194987 (n + 1)

end

end A209820.P232987315695002437

/-!
# A209821: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A209821, there is no canonical definition to state claims against.
-/

/-! ## A209821.P3847403627577266762

`A209829((n+1)²+n²)`
-/

namespace A209821.P3847403627577266762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 ((n + 1) ^ 2 + n ^ 2)

end

end A209821.P3847403627577266762

/-!
# A209822: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A209822, the canonical program `A209822.P12151806400110108771` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209822 has offset 1).

The definition of A209822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209822.P3478321744805983739

`∑[ogf((-8+7x+4x^2)/(-1+5x+2x^2))]`
-/

namespace A209822.P3478321744805983739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -7, -4] [1, -5, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209822.P3478321744805983739

namespace A209822

/-- `∑[ogf((-8+7x+4x^2)/(-1+5x+2x^2))]` -/
def P3478321744805983739.Spec : Prop :=
  ∀ n, P3478321744805983739.a n = A209822 (n + 1)

end A209822

/-! ## A209822.P17982484137876468042

`ogf((8-7x-4x^2)/(1-6x+3x^2+2x^3))`
-/

namespace A209822.P17982484137876468042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -7, -4] [1, -6, 3, 2] n

end

end A209822.P17982484137876468042

namespace A209822

/-- `ogf((8-7x-4x^2)/(1-6x+3x^2+2x^3))` -/
def P17982484137876468042.Spec : Prop :=
  ∀ n, P17982484137876468042.a n = A209822 (n + 1)

end A209822

/-! ## A209822.P12151806400110108771

`6*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=8, a(1)=41, a(2)=218`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209822

/-- `6*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P12151806400110108771.Spec : Prop :=
  ∀ n, P12151806400110108771.a n = A209822 (n + 1)

theorem P12151806400110108771.correct : P12151806400110108771.Spec := by
  intro n
  simp only [A209822, Nat.add_sub_cancel]

end A209822

/-! ## A209822.P15371654554362960915

`ceil(A233020(n+2)/2)`
-/

namespace A209822.P15371654554362960915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233020 (n + 2) : ℚ) / 2⌉

end

end A209822.P15371654554362960915

namespace A209822

/-- `ceil(A233020(n+2)/2)` -/
def P15371654554362960915.Spec : Prop :=
  ∀ n, P15371654554362960915.a n = A209822 (n + 1)

end A209822

/-! ## A209822.P6309469684461834738

`Δ[∑[Δ[A124610(n+1)/2]+1]/2]`
-/

namespace A209822.P6309469684461834738
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124610 (n + 1) : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209822.P6309469684461834738

namespace A209822

/-- `Δ[∑[Δ[A124610(n+1)/2]+1]/2]` -/
def P6309469684461834738.Spec : Prop :=
  ∀ n, P6309469684461834738.a n = (A209822 (n + 1) : ℚ)

end A209822

/-! ## A209822.P17141476070448256361

`A209841(n+1)-A209962(n+1)`
-/

namespace A209822.P17141476070448256361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209841 (n + 1) - A209962 (n + 1)

end

end A209822.P17141476070448256361

namespace A209822

/-- `A209841(n+1)-A209962(n+1)` -/
def P17141476070448256361.Spec : Prop :=
  ∀ n, P17141476070448256361.a n = A209822 (n + 1)

end A209822

/-!
# A209823: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A209823, there is no canonical definition to state claims against.
-/

/-! ## A209823.P15391427472254043342

`ceil(A233021(n+2)/2)`
-/

namespace A209823.P15391427472254043342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233021 (n + 2) : ℚ) / 2⌉

end

end A209823.P15391427472254043342

/-! ## A209823.P4731202446062058306

`Δ[(∑[A233021(n+1)+1]+2)/2]`
-/

namespace A209823.P4731202446062058306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233021 (n + 1) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 2 : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209823.P4731202446062058306

/-! ## A209823.P12385989291382589337

`A209842(n+1)-A209963(n+1)`
-/

namespace A209823.P12385989291382589337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209842 (n + 1) - A209963 (n + 1)

end

end A209823.P12385989291382589337

/-! ## A209823.P13470948695881380672

`A209829(∑[n+1]+2)`
-/

namespace A209823.P13470948695881380672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209823.P13470948695881380672

/-! ## A209823.P4346251915410993643

`record[A209829(Δ[A003453(n+5)])]`
-/

namespace A209823.P4346251915410993643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209823.P4346251915410993643

/-!
# A209824: Number of (n+1)X4 0..2 arrays with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A209824, there is no canonical definition to state claims against.
-/

/-! ## A209824.P11188864052969238256

`A209843(n+1)-A209964(n+1)`
-/

namespace A209824.P11188864052969238256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209843 (n + 1) - A209964 (n + 1)

end

end A209824.P11188864052969238256

/-! ## A209824.P504790917876322397

`A209829(∑[n+2]+4)`
-/

namespace A209824.P504790917876322397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209824.P504790917876322397

/-! ## A209824.P3965639719836821719

`lcm(A033999(n), A209829(A167614(n+1)))`
-/

namespace A209824.P3965639719836821719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A209829 (A167614 (n + 1)).toNat)

end

end A209824.P3965639719836821719

/-! ## A209824.P4403402875345923130

`or(A000038(n), A209829(A167614(n+1)))`
-/

namespace A209824.P4403402875345923130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A209829 (A167614 (n + 1)).toNat)

end

end A209824.P4403402875345923130

/-! ## A209824.P3376464262725026501

`A209848(A167614(n+1))-A209964(n+1)`
-/

namespace A209824.P3376464262725026501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A167614 (n + 1)).toNat - A209964 (n + 1)

end

end A209824.P3376464262725026501

/-!
# A209825: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A209825, there is no canonical definition to state claims against.
-/

/-! ## A209825.P161485239729628083

`(A233023(n+2)+1)/2`
-/

namespace A209825.P161485239729628083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233023 (n + 2) + 1 : ℚ) / 2

end

end A209825.P161485239729628083

/-! ## A209825.P3934161011778444762

`A209829(A374004(n+1))`
-/

namespace A209825.P3934161011778444762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (A374004 (n + 1)).toNat

end

end A209825.P3934161011778444762

/-! ## A209825.P152166402894767467

`A209829(A141214(n)+7)`
-/

namespace A209825.P152166402894767467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (A141214 n + 7).toNat

end

end A209825.P152166402894767467

/-! ## A209825.P4805950739228478904

`A209829(A052905(n)+9)`
-/

namespace A209825.P4805950739228478904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (A052905 n + 9).toNat

end

end A209825.P4805950739228478904

/-! ## A209825.P3354263429158132580

`A209829(A055999(n)+10)`
-/

namespace A209825.P3354263429158132580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (A055999 n + 10).toNat

end

end A209825.P3354263429158132580

/-!
# A209826: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A209826, there is no canonical definition to state claims against.
-/

/-! ## A209826.P5534770190941480617

`(A233024(n+2)+1)/2`
-/

namespace A209826.P5534770190941480617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233024 (n + 2) + 1 : ℚ) / 2

end

end A209826.P5534770190941480617

/-! ## A209826.P15376746733811800250

`A209829(A374005(n+1))`
-/

namespace A209826.P15376746733811800250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (A374005 (n + 1)).toNat

end

end A209826.P15376746733811800250

/-! ## A209826.P1717807820465566913

`A209829(A155212(n)+13)`
-/

namespace A209826.P1717807820465566913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (A155212 n + 13).toNat

end

end A209826.P1717807820465566913

/-! ## A209826.P4267118711663045844

`A209829(A051936(n+4)+14)`
-/

namespace A209826.P4267118711663045844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (A051936 (n + 4) + 14).toNat

end

end A209826.P4267118711663045844

/-! ## A209826.P8600080756367743250

`A209829(eq[4, A193592(n)])`
-/

namespace A209826.P8600080756367743250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209826.P8600080756367743250

/-!
# A209827: Number of (n+1)X7 0..2 arrays with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A209827, there is no canonical definition to state claims against.
-/

/-! ## A209827.P8673102675420515337

`(A233025(n+2)+1)/2`
-/

namespace A209827.P8673102675420515337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233025 (n + 2) + 1 : ℚ) / 2

end

end A209827.P8673102675420515337

/-! ## A209827.P15054910153096005163

`A209829(A374007(n+1))`
-/

namespace A209827.P15054910153096005163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (A374007 (n + 1)).toNat

end

end A209827.P15054910153096005163

/-! ## A209827.P2826733982448853602

`A209829(eq[3, A219347(n)])`
-/

namespace A209827.P2826733982448853602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209827.P2826733982448853602

/-! ## A209827.P3116551237211145246

`A209829(eq[5, A193592(n)])`
-/

namespace A209827.P3116551237211145246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209827.P3116551237211145246

/-! ## A209827.P14402010348127642807

`A209829(A155212(n+2)+3)`
-/

namespace A209827.P14402010348127642807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (A155212 (n + 2) + 3).toNat

end

end A209827.P14402010348127642807

/-!
# A209828: Number of (n+1)X8 0..2 arrays with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A209828, there is no canonical definition to state claims against.
-/

/-! ## A209828.P9329432230851116433

`A209829(A374008(n+1))`
-/

namespace A209828.P9329432230851116433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (A374008 (n + 1)).toNat

end

end A209828.P9329432230851116433

/-! ## A209828.P9933525466290961395

`A209829(eq[8, A131818(n+1)])`
-/

namespace A209828.P9933525466290961395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209828.P9933525466290961395

/-! ## A209828.P8847356469790820867

`A209829(eq[4, A219347(n)])`
-/

namespace A209828.P8847356469790820867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209828.P8847356469790820867

/-! ## A209828.P7091959227622654422

`A209829(eq[6, A193592(n)])`
-/

namespace A209828.P7091959227622654422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209828.P7091959227622654422

/-! ## A209828.P17545278216321294364

`A209829(eq[6, A243060(n+1)])`
-/

namespace A209828.P17545278216321294364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209828.P17545278216321294364

/-!
# A209829: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A209829, there is no canonical definition to state claims against.
-/

/-! ## A209829.P2124414831807263114

`A209848(n+1)-A209969(n+1)`
-/

namespace A209829.P2124414831807263114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (n + 1) - A209969 (n + 1)

end

end A209829.P2124414831807263114

/-! ## A209829.P13321155669354955436

`A210061(n+1)-A210143(n+1)`
-/

namespace A209829.P13321155669354955436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (n + 1) - A210143 (n + 1)

end

end A209829.P13321155669354955436

/-! ## A209829.P9562808839794346379

`A001057(A234036(n+1)-A234161(n+1))`
-/

namespace A209829.P9562808839794346379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A234036 (n + 1) - A234161 (n + 1)).toNat

end

end A209829.P9562808839794346379

/-! ## A209829.P14027266355293768130

`A001057(A234184(n+1)-A234036(n+1))`
-/

namespace A209829.P14027266355293768130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A234184 (n + 1) - A234036 (n + 1)).toNat

end

end A209829.P14027266355293768130

/-! ## A209829.P15012650860652792631

`A001057(A234131(n+1)-A234184(n+1))`
-/

namespace A209829.P15012650860652792631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A234131 (n + 1) - A234184 (n + 1)).toNat

end

end A209829.P15012650860652792631

/-!
# A209830: Triangle of coefficients of polynomials u(n,x) jointly generated with A209831; see the Formula section.

The programs for A209830, there is no canonical definition to state claims against.
-/

/-! ## A209830.P6237007343491751089

`A193404(A019538(n+1)-A328949(n+1))`
-/

namespace A209830.P6237007343491751089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193404 (A019538 (n + 1) - A328949 (n + 1)).toNat

end

end A209830.P6237007343491751089

/-!
# A209831: Triangle of coefficients of polynomials v(n,x) jointly generated with A209830; see the Formula section.

The programs for A209831, there is no canonical definition to state claims against.
-/

/-! ## A209831.P298780537186335897

`A210741(n+1)+A014025(A110138(n))`
-/

namespace A209831.P298780537186335897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210741 (n + 1) + A014025 (A110138 n).toNat

end

end A209831.P298780537186335897

/-! ## A209831.P1758504184452543023

`A230135(A157268(n))+A210741(n+1)`
-/

namespace A209831.P1758504184452543023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230135 (A157268 n).toNat + A210741 (n + 1)

end

end A209831.P1758504184452543023

/-! ## A209831.P3015120704116302598

`A201552(n+1)+A081212(A003040(n+1))`
-/

namespace A209831.P3015120704116302598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (n + 1) + A081212 (A003040 (n + 1)).toNat

end

end A209831.P3015120704116302598

/-!
# A209832: Expansion of the q-series Sum_{n>=0} (-1)^n*q^(n+1)*Product_{k = 1..n} (1 - q^(2*k-1)), q = exp(t), as a formal Taylor series in t.

The programs for A209832, there is no canonical definition to state claims against.
-/

/-! ## A209832.P15490796171072560416

`A379108(A335457(∑[n]))`
-/

namespace A209832.P15490796171072560416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379108 (A335457 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A209832.P15490796171072560416

/-!
# A209835: Smallest k >= 0 such that 2k + (n-th average of twin prime pairs) is oblong number.

The programs for A209835, there is no canonical definition to state claims against.
-/

/-! ## A209835.P7740973784674337830

`A057554(A014574(n+1))`
-/

namespace A209835.P7740973784674337830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A014574 (n + 1)).toNat

end

end A209835.P7740973784674337830

/-! ## A209835.P14232344411108053782

`A335435(A040040(n+1))`
-/

namespace A209835.P14232344411108053782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335435 (A040040 (n + 1)).toNat

end

end A209835.P14232344411108053782

/-! ## A209835.P3186656765123434918

`A335435(A168497(n+2))`
-/

namespace A209835.P3186656765123434918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335435 (A168497 (n + 2)).toNat

end

end A209835.P3186656765123434918

/-! ## A209835.P15678526213455893276

`-A337835(A006512(n+1))`
-/

namespace A209835.P15678526213455893276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A337835 (A006512 (n + 1)).toNat

end

end A209835.P15678526213455893276

/-! ## A209835.P7780527789628787417

`A057554(sqrt(A075369(n+1)))`
-/

namespace A209835.P7780527789628787417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A209835.P7780527789628787417

/-! ## A209835.P8596427726975338513

`A025581(record[A102551(n+2)])`
-/

namespace A209835.P8596427726975338513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209835.P8596427726975338513

/-! ## A209835.P10360546522168551922

`A025581(A243811(n+1)+1)`
-/

namespace A209835.P10360546522168551922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A243811 (n + 1) + 1).toNat

end

end A209835.P10360546522168551922

/-! ## A209835.P18303441367635356209

`A025581(A040040(n+1)-1)`
-/

namespace A209835.P18303441367635356209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A040040 (n + 1) - 1).toNat

end

end A209835.P18303441367635356209

/-! ## A209835.P2265312233745366798

`A057554(p?[abs(2-A000040(n+1))]+1)`
-/

namespace A209835.P2265312233745366798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000040 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A209835.P2265312233745366798

/-! ## A209835.P1546546673180976175

`A025581(floor(p?[A000040(n+1)-2]/2))`
-/

namespace A209835.P1546546673180976175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋.toNat

end

end A209835.P1546546673180976175

/-!
# A209836: The number of 5 x 5 matrices of nonnegative integers such that the sum of the entries in the i-th row equals the sum of the i-th column for each i and the total sum equals n.

The programs for A209836, there is no canonical definition to state claims against.
-/

/-! ## A209836.P3110040821131820451

`A260731(A356133(n+1)+A003472(n+4))`
-/

namespace A209836.P3110040821131820451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A356133 (n + 1) + A003472 (n + 4)).toNat

end

end A209836.P3110040821131820451

/-!
# A209837: Integers n such that for all i > n the largest prime factor of product(i+k, {k,0,13}) exceeds the largest prime factor of product(n+k, {k,0,13}).

The programs for A209837, there is no canonical definition to state claims against.
-/

/-! ## A209837.P13590829456967470170

`A209838(n+1)+A151811(n)!`
-/

namespace A209837.P13590829456967470170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209838 (n + 1) + (Nat.factorial (A151811 n).toNat : ℤ)

end

end A209837.P13590829456967470170

/-! ## A209837.P10157855519415917817

`A209838(n+1)+A054977(A029611(n))`
-/

namespace A209837.P10157855519415917817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209838 (n + 1) + A054977 (A029611 n).toNat

end

end A209837.P10157855519415917817

/-! ## A209837.P8830369667329844647

`A209838(n+1)+A055231(A076467(n+1))`
-/

namespace A209837.P8830369667329844647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209838 (n + 1) + A055231 (A076467 (n + 1)).toNat

end

end A209837.P8830369667329844647

/-! ## A209837.P2026228114843731354

`A209838(n+1)+A001222(A185006(n+1))`
-/

namespace A209837.P2026228114843731354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209838 (n + 1) + A001222 (A185006 (n + 1)).toNat

end

end A209837.P2026228114843731354

/-! ## A209837.P1393357132396676588

`A020725(A209838(n+1))`
-/

namespace A209837.P1393357132396676588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A209838 (n + 1)).toNat

end

end A209837.P1393357132396676588

/-!
# A209838: Integers n such that for all i > n the largest prime factor of product(i+k, {k,0,14}) exceeds the largest prime factor of product(n+k, {k,0,14}).

The programs for A209838, there is no canonical definition to state claims against.
-/

/-! ## A209838.P3013869102801281140

`A209837(n+1)-A151811(n)!`
-/

namespace A209838.P3013869102801281140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209837 (n + 1) - (Nat.factorial (A151811 n).toNat : ℤ)

end

end A209838.P3013869102801281140

/-! ## A209838.P3448504069960242856

`A209837(n+1)-A054977(A029611(n))`
-/

namespace A209838.P3448504069960242856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209837 (n + 1) - A054977 (A029611 n).toNat

end

end A209838.P3448504069960242856

/-! ## A209838.P14208292966595467571

`A209837(n+1)-A001222(A032758(n+1))`
-/

namespace A209838.P14208292966595467571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209837 (n + 1) - A001222 (A032758 (n + 1)).toNat

end

end A209838.P14208292966595467571

/-! ## A209838.P5497618433622814210

`A209837(n+1)-A001222(A185006(n+1))`
-/

namespace A209838.P5497618433622814210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209837 (n + 1) - A001222 (A185006 (n + 1)).toNat

end

end A209838.P5497618433622814210

/-! ## A209838.P16254727727288910924

`A209837(n+1)-A353681(A356603(n+1))`
-/

namespace A209838.P16254727727288910924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209837 (n + 1) - A353681 (A356603 (n + 1)).toNat

end

end A209838.P16254727727288910924

/-!
# A209839: Integers n such that for all i > n the largest prime factor of product(i+k, {k,0,15}) exceeds the largest prime factor of product(n+k, {k,0,15}).

The programs for A209839, there is no canonical definition to state claims against.
-/

/-! ## A209839.P11407049305564409633

`A331417(n+7)-16`
-/

namespace A209839.P11407049305564409633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331417 (n + 7) - 16

end

end A209839.P11407049305564409633

/-! ## A209839.P5094521626499616470

`p?[A322394(n+7)]-16`
-/

namespace A209839.P5094521626499616470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 16

end

end A209839.P5094521626499616470

/-! ## A209839.P11450889849065150366

`A087743(A020722(n))-17`
-/

namespace A209839.P11450889849065150366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087743 (A020722 n).toNat - 17

end

end A209839.P11450889849065150366

/-! ## A209839.P9197233050244802258

`eq[1, A053297(A051953(n+16))]`
-/

namespace A209839.P9197233050244802258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053297 (A051953 (n + 16)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209839.P9197233050244802258

/-! ## A209839.P8004611446624448803

`A086303(n+1)-A033999(A127665(n+1))`
-/

namespace A209839.P8004611446624448803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1) - A033999 (A127665 (n + 1)).toNat

end

end A209839.P8004611446624448803

/-! ## A209839.P554009166542590957

`A086303(n+1)-A001222(A228991(n+1))`
-/

namespace A209839.P554009166542590957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1) - A001222 (A228991 (n + 1)).toNat

end

end A209839.P554009166542590957

/-! ## A209839.P10547629433579331372

`A086303(n+1)-A001511(A166095(n+2))`
-/

namespace A209839.P10547629433579331372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1) - A001511 (A166095 (n + 2)).toNat

end

end A209839.P10547629433579331372

/-! ## A209839.P9476473132487964511

`A086303(n+1)+A033999(A000290(2*n+1))`
-/

namespace A209839.P9476473132487964511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1) + A033999 (A000290 (2 * n + 1)).toNat

end

end A209839.P9476473132487964511

/-!
# A209840: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209840, there is no canonical definition to state claims against.
-/

/-! ## A209840.P14133039944289715920

`A209848((n+1)²+n²)`
-/

namespace A209840.P14133039944289715920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 ((n + 1) ^ 2 + n ^ 2)

end

end A209840.P14133039944289715920

/-!
# A209841: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209841, there is no canonical definition to state claims against.
-/

/-! ## A209841.P5908828091027178310

`A209962(n+1)+A209822(n+1)`
-/

namespace A209841.P5908828091027178310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209962 (n + 1) + A209822 (n + 1)

end

end A209841.P5908828091027178310

/-! ## A209841.P12856636498927108739

`A209962(n+1)+ceil(A233020(n+2)/2)`
-/

namespace A209841.P12856636498927108739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209962 (n + 1) + ⌈(A233020 (n + 2) : ℚ) / 2⌉

end

end A209841.P12856636498927108739

/-! ## A209841.P15733806473154086525

`A209848(∑[n]+1)`
-/

namespace A209841.P15733806473154086525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209841.P15733806473154086525

/-! ## A209841.P12847220012734098364

`record[A010054(n)*A209848(n+1)]`
-/

namespace A209841.P12847220012734098364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209841.P12847220012734098364

/-! ## A209841.P11974313358134240008

`record[root(A209848(n+1), A007318(n))]`
-/

namespace A209841.P11974313358134240008
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209848 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209841.P11974313358134240008

/-!
# A209842: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209842, there is no canonical definition to state claims against.
-/

/-! ## A209842.P826508369422852414

`A209963(n+1)+A209823(n+1)`
-/

namespace A209842.P826508369422852414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209963 (n + 1) + A209823 (n + 1)

end

end A209842.P826508369422852414

/-! ## A209842.P13821089681695056396

`A209963(n+1)+A209829(∑[n+1]+2)`
-/

namespace A209842.P13821089681695056396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209963 (n + 1) + A209829 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209842.P13821089681695056396

/-! ## A209842.P15592491130664555683

`A209848(∑[n+1]+2)`
-/

namespace A209842.P15592491130664555683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209842.P15592491130664555683

/-! ## A209842.P5891673902187248471

`record[A010054(n)*A209848(n+2)]`
-/

namespace A209842.P5891673902187248471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209848 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209842.P5891673902187248471

/-! ## A209842.P7908607666850781326

`A209969(∑[n+1]+2)+A209823(n+1)`
-/

namespace A209842.P7908607666850781326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A209823 (n + 1)

end

end A209842.P7908607666850781326

/-!
# A209843: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209843, there is no canonical definition to state claims against.
-/

/-! ## A209843.P3652584712614421595

`A209964(n+1)+A209824(n+1)`
-/

namespace A209843.P3652584712614421595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209964 (n + 1) + A209824 (n + 1)

end

end A209843.P3652584712614421595

/-! ## A209843.P11217962267021349325

`A209964(n+1)+A209829(A167614(n+1))`
-/

namespace A209843.P11217962267021349325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209964 (n + 1) + A209829 (A167614 (n + 1)).toNat

end

end A209843.P11217962267021349325

/-! ## A209843.P15370607779813851563

`A209848(∑[n+2]+4)`
-/

namespace A209843.P15370607779813851563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209843.P15370607779813851563

/-! ## A209843.P10823305313160345142

`or(1, A209848(A167614(n+1)))`
-/

namespace A209843.P10823305313160345142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A209848 (A167614 (n + 1)).toNat)

end

end A209843.P10823305313160345142

/-! ## A209843.P4285556331517355318

`A209969(∑[n+2]+4)+A209824(n+1)`
-/

namespace A209843.P4285556331517355318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + A209824 (n + 1)

end

end A209843.P4285556331517355318

/-!
# A209844: Number of (n+1) X 5 0..3 arrays with every 2 X 2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209844, there is no canonical definition to state claims against.
-/

/-! ## A209844.P7290954731303760369

`A209848(A374004(n+1))`
-/

namespace A209844.P7290954731303760369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A374004 (n + 1)).toNat

end

end A209844.P7290954731303760369

/-! ## A209844.P13805263659871390379

`A209848(A052905(n)+9)`
-/

namespace A209844.P13805263659871390379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A052905 n + 9).toNat

end

end A209844.P13805263659871390379

/-! ## A209844.P3059120797742957787

`A209848(A055999(n)+10)`
-/

namespace A209844.P3059120797742957787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A055999 n + 10).toNat

end

end A209844.P3059120797742957787

/-! ## A209844.P5904707296824112304

`A209848(A167614(n+2)+1)`
-/

namespace A209844.P5904707296824112304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A167614 (n + 2) + 1).toNat

end

end A209844.P5904707296824112304

/-! ## A209844.P15981454457697068571

`A209848(eq[5, A131818(n+1)])`
-/

namespace A209844.P15981454457697068571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209844.P15981454457697068571

/-!
# A209845: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209845, there is no canonical definition to state claims against.
-/

/-! ## A209845.P13301665226610994218

`A209966(n+1)+A209829(Δ[A023545(n+1)])`
-/

namespace A209845.P13301665226610994218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209966 (n + 1) + A209829 (f1 (n + 1) - f1 n).toNat

end

end A209845.P13301665226610994218

/-! ## A209845.P7646730806077921920

`A209848(A374005(n+1))`
-/

namespace A209845.P7646730806077921920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A374005 (n + 1)).toNat

end

end A209845.P7646730806077921920

/-! ## A209845.P17334699666464200645

`A209848(A155212(n)+13)`
-/

namespace A209845.P17334699666464200645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A155212 n + 13).toNat

end

end A209845.P17334699666464200645

/-! ## A209845.P10315058577249852545

`A209848(A056000(n)+15)`
-/

namespace A209845.P10315058577249852545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A056000 n + 15).toNat

end

end A209845.P10315058577249852545

/-! ## A209845.P4347286557060989196

`A209848(A051936(n+4)+14)`
-/

namespace A209845.P4347286557060989196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A051936 (n + 4) + 14).toNat

end

end A209845.P4347286557060989196

/-!
# A209846: Number of (n+1)X7 0..3 arrays with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209846, there is no canonical definition to state claims against.
-/

/-! ## A209846.P18065044806137205434

`A209848(A374007(n+1))`
-/

namespace A209846.P18065044806137205434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A374007 (n + 1)).toNat

end

end A209846.P18065044806137205434

/-! ## A209846.P11944968920058534813

`A209848(eq[3, A219347(n)])`
-/

namespace A209846.P11944968920058534813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209846.P11944968920058534813

/-! ## A209846.P10185260203910182995

`A209848(eq[5, A193592(n)])`
-/

namespace A209846.P10185260203910182995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209846.P10185260203910182995

/-! ## A209846.P3009720075240137258

`A209848(eq[8, A185782(n+1)])`
-/

namespace A209846.P3009720075240137258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209846.P3009720075240137258

/-! ## A209846.P15759326662942270340

`A209848(Δ[A026054(n+3)]+1)`
-/

namespace A209846.P15759326662942270340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (f1 (n + 1) - f1 n + 1).toNat

end

end A209846.P15759326662942270340

/-!
# A209847: Number of (n+1)X8 0..3 arrays with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209847, there is no canonical definition to state claims against.
-/

/-! ## A209847.P18380224877287461104

`A209848(A000124(n+6)+6)`
-/

namespace A209847.P18380224877287461104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A000124 (n + 6) + 6).toNat

end

end A209847.P18380224877287461104

/-! ## A209847.P3299457212538062746

`A209848(eq[4, A219347(n)])`
-/

namespace A209847.P3299457212538062746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209847.P3299457212538062746

/-! ## A209847.P16144095923921978765

`A209848(eq[6, A193592(n)])`
-/

namespace A209847.P16144095923921978765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209847.P16144095923921978765

/-! ## A209847.P3929437669082358161

`A209848(A155212(n+3)+2)`
-/

namespace A209847.P3929437669082358161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (A155212 (n + 3) + 2).toNat

end

end A209847.P3929437669082358161

/-! ## A209847.P15449988554991976722

`A209848(eq[6, A243060(n+1)])`
-/

namespace A209847.P15449988554991976722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209847.P15449988554991976722

/-!
# A209848: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in row major order.

The programs for A209848, there is no canonical definition to state claims against.
-/

/-! ## A209848.P9846993744208998197

`A209969(n+1)+A209829(n+1)`
-/

namespace A209848.P9846993744208998197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (n + 1) + A209829 (n + 1)

end

end A209848.P9846993744208998197

/-! ## A209848.P9519589548757556237

`A209969(n+1)+A210061(n+1)-A210143(n+1)`
-/

namespace A209848.P9519589548757556237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (n + 1) + (A210061 (n + 1) - A210143 (n + 1))

end

end A209848.P9519589548757556237

/-! ## A209848.P10217193878101792494

`A209969(n+1)+A001057(A234036(n+1)-A234161(n+1))`
-/

namespace A209848.P10217193878101792494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (n + 1) + A001057 (A234036 (n + 1) - A234161 (n + 1)).toNat

end

end A209848.P10217193878101792494

/-! ## A209848.P1284172831612239082

`A209969(n+1)+A001057(A234184(n+1)-A234036(n+1))`
-/

namespace A209848.P1284172831612239082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (n + 1) + A001057 (A234184 (n + 1) - A234036 (n + 1)).toNat

end

end A209848.P1284172831612239082

/-! ## A209848.P14815835301626284509

`A209969(n+1)+A001057(A234131(n+1)-A234184(n+1))`
-/

namespace A209848.P14815835301626284509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (n + 1) + A001057 (A234131 (n + 1) - A234184 (n + 1)).toNat

end

end A209848.P14815835301626284509

/-!
# A209850: 1/4 the number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having one or four distinct clockwise edge differences.

The programs for A209850, there is no canonical definition to state claims against.
-/

/-! ## A209850.P9273431356509984958

`A209858((n+1)²+n²)`
-/

namespace A209850.P9273431356509984958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 ((n + 1) ^ 2 + n ^ 2)

end

end A209850.P9273431356509984958

/-!
# A209851: 1/4 the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having one or four distinct clockwise edge differences.

The programs for A209851, there is no canonical definition to state claims against.
-/

/-! ## A209851.P10221565703630848359

`A209858(∑[n]+1)`
-/

namespace A209851.P10221565703630848359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209851.P10221565703630848359

/-! ## A209851.P13663771007968023585

`record[A209858(n+1)/A034801(n)]`
-/

namespace A209851.P13663771007968023585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209858 (n + 1) : ℚ) / (A034801 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209851.P13663771007968023585

/-! ## A209851.P9019732531925028773

`record[root(A209858(n+1), A085478(n))]`
-/

namespace A209851.P9019732531925028773
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209858 (n + 1) : ℝ) ^ (1 / (A085478 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209851.P9019732531925028773

/-! ## A209851.P11381342187462751434

`record[root(A209858(n+1), A099927(n))]`
-/

namespace A209851.P11381342187462751434
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209858 (n + 1) : ℝ) ^ (1 / (A099927 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209851.P11381342187462751434

/-! ## A209851.P15732801904749054544

`record[root(A209858(n+1), A002260(n+1))]`
-/

namespace A209851.P15732801904749054544
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209858 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209851.P15732801904749054544

/-!
# A209852: 1/4 the number of (n+1)X3 0..3 arrays with every 2X2 subblock having one or four distinct clockwise edge differences.

The programs for A209852, there is no canonical definition to state claims against.
-/

/-! ## A209852.P15967808343506121386

`A209858(∑[n+1]+2)`
-/

namespace A209852.P15967808343506121386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209852.P15967808343506121386

/-! ## A209852.P6720138362243666360

`record[gcd(A068914(n+1), A209858(n+3))]`
-/

namespace A209852.P6720138362243666360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068914 (n + 1)) (A209858 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209852.P6720138362243666360

/-! ## A209852.P10446179011999442123

`record[gcd(A053615(2*n), A209858(n+2))]`
-/

namespace A209852.P10446179011999442123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053615 (2 * n)) (A209858 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209852.P10446179011999442123

/-! ## A209852.P17111705114564010620

`A209858(A000217(n+1)+2)+A180989(n+1)`
-/

namespace A209852.P17111705114564010620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A000217 (n + 1) + 2).toNat + A180989 (n + 1)

end

end A209852.P17111705114564010620

/-! ## A209852.P4346600831837275155

`A209858(A000217(n+1)+2)+A180995(n+1)`
-/

namespace A209852.P4346600831837275155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A000217 (n + 1) + 2).toNat + A180995 (n + 1)

end

end A209852.P4346600831837275155

/-!
# A209853: 1/4 the number of (n+1)X4 0..3 arrays with every 2X2 subblock having one or four distinct clockwise edge differences.

The programs for A209853, there is no canonical definition to state claims against.
-/

/-! ## A209853.P2460340966991463501

`A209858(∑[n+2]+4)`
-/

namespace A209853.P2460340966991463501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209853.P2460340966991463501

/-! ## A209853.P6678570429499721306

`A209858(A167614(n+1))+A083344(n+1)`
-/

namespace A209853.P6678570429499721306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A167614 (n + 1)).toNat + A083344 (n + 1)

end

end A209853.P6678570429499721306

/-! ## A209853.P8880431749482547108

`A209858(A167614(n+1))+A180989(n+1)`
-/

namespace A209853.P8880431749482547108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A167614 (n + 1)).toNat + A180989 (n + 1)

end

end A209853.P8880431749482547108

/-! ## A209853.P5215932225237352457

`A209858(A167614(n+1))+A180995(n+1)`
-/

namespace A209853.P5215932225237352457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A167614 (n + 1)).toNat + A180995 (n + 1)

end

end A209853.P5215932225237352457

/-! ## A209853.P923914765684125027

`A209858(A167614(n+1))/A209869(n+1)`
-/

namespace A209853.P923914765684125027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209858 (A167614 (n + 1)).toNat : ℚ) / (A209869 (n + 1) : ℚ)

end

end A209853.P923914765684125027

/-!
# A209854: 1/4 the number of (n+1)X5 0..3 arrays with every 2X2 subblock having one or four distinct clockwise edge differences.

The programs for A209854, there is no canonical definition to state claims against.
-/

/-! ## A209854.P4263327749242165435

`A209858(A374004(n+1))`
-/

namespace A209854.P4263327749242165435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A374004 (n + 1)).toNat

end

end A209854.P4263327749242165435

/-! ## A209854.P14600391669370376493

`A209858(A052905(n)+9)`
-/

namespace A209854.P14600391669370376493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A052905 n + 9).toNat

end

end A209854.P14600391669370376493

/-! ## A209854.P11011959324124942348

`A209858(A167614(n+2)+1)`
-/

namespace A209854.P11011959324124942348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A167614 (n + 2) + 1).toNat

end

end A209854.P11011959324124942348

/-! ## A209854.P4998394827680671826

`A209858(A141214(n+1))`
-/

namespace A209854.P4998394827680671826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A141214 (n + 1)).toNat

end

end A209854.P4998394827680671826

/-! ## A209854.P5125852950455000930

`A209858(A056000(n)+7)`
-/

namespace A209854.P5125852950455000930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A056000 n + 7).toNat

end

end A209854.P5125852950455000930

/-!
# A209855: 1/4 the number of (n+1)X6 0..3 arrays with every 2X2 subblock having one or four distinct clockwise edge differences.

The programs for A209855, there is no canonical definition to state claims against.
-/

/-! ## A209855.P5305479515907300897

`A209858(A374005(n+1))`
-/

namespace A209855.P5305479515907300897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A374005 (n + 1)).toNat

end

end A209855.P5305479515907300897

/-! ## A209855.P8741758548340348245

`A209858(A056000(n)+15)`
-/

namespace A209855.P8741758548340348245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A056000 n + 15).toNat

end

end A209855.P8741758548340348245

/-!
# A209856: 1/4 the number of (n+1)X7 0..3 arrays with every 2X2 subblock having one or four distinct clockwise edge differences.

The programs for A209856, there is no canonical definition to state claims against.
-/

/-! ## A209856.P12929752209361683122

`A209858(A374007(n+1))`
-/

namespace A209856.P12929752209361683122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (A374007 (n + 1)).toNat

end

end A209856.P12929752209361683122

/-! ## A209856.P9367979134180575189

`A209858(eq[8, A185782(n+1)])`
-/

namespace A209856.P9367979134180575189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209856.P9367979134180575189

/-!
# A209859: Rewrite the binary expansion of n from the most significant end, 1 -> 1, 0+1 (one or more zeros followed by one) -> 0, drop the trailing zeros of the original n.

The programs for A209859, the canonical program `A209859.P17593637001217111861` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209859 has offset 0).

The definition of A209859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209859.P17593637001217111861

`floor(A209639(n)/2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A209859

/-- `floor(A209639(n)/2)` -/
def P17593637001217111861.Spec : Prop :=
  ∀ n, P17593637001217111861.a n = A209859 n

theorem P17593637001217111861.correct : P17593637001217111861.Spec := by
  intro n
  simp only [A209859]

end A209859

/-! ## A209859.P17741652054758808921

`(or(1, A209639(2*n))-1)/2`
-/

namespace A209859.P17741652054758808921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A209639 (2 * n)) - 1 : ℚ) / 2

end

end A209859.P17741652054758808921

namespace A209859

/-- `(or(1, A209639(2*n))-1)/2` -/
def P17741652054758808921.Spec : Prop :=
  ∀ n, P17741652054758808921.a n = (A209859 n : ℚ)

end A209859

/-! ## A209859.P7384954956067811013

`A004526(A209639(n))`
-/

namespace A209859.P7384954956067811013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A209639 n).toNat

end

end A209859.P7384954956067811013

namespace A209859

/-- `A004526(A209639(n))` -/
def P7384954956067811013.Spec : Prop :=
  ∀ n, P7384954956067811013.a n = A209859 n

end A209859

/-! ## A209859.P10842167858710113512

`A385816(A030101(n))`
-/

namespace A209859.P10842167858710113512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A030101 n).toNat

end

end A209859.P10842167858710113512

namespace A209859

/-- `A385816(A030101(n))` -/
def P10842167858710113512.Spec : Prop :=
  ∀ n, P10842167858710113512.a n = A209859 n

end A209859

/-! ## A209859.P2594224341509015533

`A385816(A057889(n))`
-/

namespace A209859.P2594224341509015533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A057889 n).toNat

end

end A209859.P2594224341509015533

namespace A209859

/-- `A385816(A057889(n))` -/
def P2594224341509015533.Spec : Prop :=
  ∀ n, P2594224341509015533.a n = A209859 n

end A209859

/-! ## A209859.P15875694316993560333

`A385816(A160638(n))`
-/

namespace A209859.P15875694316993560333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A160638 n).toNat

end

end A209859.P15875694316993560333

namespace A209859

/-- `A385816(A160638(n))` -/
def P15875694316993560333.Spec : Prop :=
  ∀ n, P15875694316993560333.a n = A209859 n

end A209859

/-! ## A209859.P18362812100283904119

`A385816(A322464(n))`
-/

namespace A209859.P18362812100283904119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A322464 n).toNat

end

end A209859.P18362812100283904119

namespace A209859

/-- `A385816(A322464(n))` -/
def P18362812100283904119.Spec : Prop :=
  ∀ n, P18362812100283904119.a n = A209859 n

end A209859

/-! ## A209859.P13300871552212295689

`A385816(A366389(n))`
-/

namespace A209859.P13300871552212295689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A366389 n).toNat

end

end A209859.P13300871552212295689

namespace A209859

/-- `A385816(A366389(n))` -/
def P13300871552212295689.Spec : Prop :=
  ∀ n, P13300871552212295689.a n = A209859 n

end A209859

/-! ## A209859.P3293081619370675503

`A064727(A209639(n)²)`
-/

namespace A209859.P3293081619370675503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A209639 n ^ 2).toNat

end

end A209859.P3293081619370675503

namespace A209859

/-- `A064727(A209639(n)²)` -/
def P3293081619370675503.Spec : Prop :=
  ∀ n, P3293081619370675503.a n = A209859 n

end A209859

/-! ## A209859.P13616489713505416091

`A337101(A209639(n)²)`
-/

namespace A209859.P13616489713505416091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A209639 n ^ 2).toNat

end

end A209859.P13616489713505416091

namespace A209859

/-- `A337101(A209639(n)²)` -/
def P13616489713505416091.Spec : Prop :=
  ∀ n, P13616489713505416091.a n = A209859 n

end A209859

/-! ## A209859.P2510935563213126091

`A110654(A209639(n)-1)`
-/

namespace A209859.P2510935563213126091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A209639 n - 1).toNat

end

end A209859.P2510935563213126091

namespace A209859

/-- `A110654(A209639(n)-1)` -/
def P2510935563213126091.Spec : Prop :=
  ∀ n, P2510935563213126091.a n = A209859 n

end A209859

/-! ## A209859.P1765761276920263278

`A002265(2*A209639(n))`
-/

namespace A209859.P1765761276920263278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A209639 n).toNat

end

end A209859.P1765761276920263278

namespace A209859

/-- `A002265(2*A209639(n))` -/
def P1765761276920263278.Spec : Prop :=
  ∀ n, P1765761276920263278.a n = A209859 n

end A209859

/-! ## A209859.P634543491703099712

`A123108(A209639(2*n))`
-/

namespace A209859.P634543491703099712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A209639 (2 * n)).toNat

end

end A209859.P634543491703099712

namespace A209859

/-- `A123108(A209639(2*n))` -/
def P634543491703099712.Spec : Prop :=
  ∀ n, P634543491703099712.a n = A209859 n

end A209859

/-! ## A209859.P15921853736074933396

`A008615(3*A209639(n))`
-/

namespace A209859.P15921853736074933396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A209639 n).toNat

end

end A209859.P15921853736074933396

namespace A209859

/-- `A008615(3*A209639(n))` -/
def P15921853736074933396.Spec : Prop :=
  ∀ n, P15921853736074933396.a n = A209859 n

end A209859

/-! ## A209859.P6741542702200088218

`A004524(or(1, A209639(n)))`
-/

namespace A209859.P6741542702200088218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A209639 n)).toNat

end

end A209859.P6741542702200088218

namespace A209859

/-- `A004524(or(1, A209639(n)))` -/
def P6741542702200088218.Spec : Prop :=
  ∀ n, P6741542702200088218.a n = A209859 n

end A209859

/-! ## A209859.P13191140206472353047

`A028242(or(1, A209639(n)))`
-/

namespace A209859.P13191140206472353047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A209639 n)).toNat

end

end A209859.P13191140206472353047

namespace A209859

/-- `A028242(or(1, A209639(n)))` -/
def P13191140206472353047.Spec : Prop :=
  ∀ n, P13191140206472353047.a n = A209859 n

end A209859

/-! ## A209859.P13033714578810727309

`A002265(A209639(Δ[n²]))`
-/

namespace A209859.P13033714578810727309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A209639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A209859.P13033714578810727309

namespace A209859

/-- `A002265(A209639(Δ[n²]))` -/
def P13033714578810727309.Spec : Prop :=
  ∀ n, P13033714578810727309.a n = A209859 n

end A209859

/-! ## A209859.P5717255344376573576

`A123108(A209639(n)-char[1])`
-/

namespace A209859.P5717255344376573576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A209639 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A209859.P5717255344376573576

namespace A209859

/-- `A123108(A209639(n)-char[1])` -/
def P5717255344376573576.Spec : Prop :=
  ∀ n, P5717255344376573576.a n = A209859 n

end A209859

/-! ## A209859.P5565320891439086446

`A123108(A209639(n)+2)-1`
-/

namespace A209859.P5565320891439086446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A209639 n + 2).toNat - 1

end

end A209859.P5565320891439086446

namespace A209859

/-- `A123108(A209639(n)+2)-1` -/
def P5565320891439086446.Spec : Prop :=
  ∀ n, P5565320891439086446.a n = A209859 n

end A209859

/-! ## A209859.P17705394140477528422

`A004524(A209639(2*n)+1)`
-/

namespace A209859.P17705394140477528422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A209639 (2 * n) + 1).toNat

end

end A209859.P17705394140477528422

namespace A209859

/-- `A004524(A209639(2*n)+1)` -/
def P17705394140477528422.Spec : Prop :=
  ∀ n, P17705394140477528422.a n = A209859 n

end A209859

/-!
# A209860: Fixed points of permutation A209861/A209862.

The programs for A209860, there is no canonical definition to state claims against.
-/

/-! ## A209860.P15017980982870641177

`eq[n, A209861(n)]`
-/

namespace A209860.P15017980982870641177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209860.P15017980982870641177

/-! ## A209860.P10733443797247237706

`eq[n, A209862(n)]`
-/

namespace A209860.P10733443797247237706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209860.P10733443797247237706

/-! ## A209860.P9756957925068009994

`eq[A209641(n), A209642(n)]`
-/

namespace A209860.P9756957925068009994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209860.P9756957925068009994

/-! ## A209860.P9370110042068922505

`A209861(lt[(n-A209861(n))², 1])`
-/

namespace A209860.P9370110042068922505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A209861 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A209860.P9370110042068922505

/-! ## A209860.P9053986822871582570

`eq[n, A357491(A118759(n))]`
-/

namespace A209860.P9053986822871582570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357491 (A118759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209860.P9053986822871582570

/-!
# A209861: Permutation of nonnegative integers which maps A209641 to A209642.

The programs for A209861, there is no canonical definition to state claims against.
-/

/-! ## A209861.P5346184068021056935

`A357491(n)+A070109(A000930(n+1))`
-/

namespace A209861.P5346184068021056935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357491 n + A070109 (A000930 (n + 1)).toNat

end

end A209861.P5346184068021056935

/-! ## A209861.P8892231436394673962

`or(A186114(A126170(n+4)), A357491(n))`
-/

namespace A209861.P8892231436394673962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186114 (A126170 (n + 4)).toNat) (A357491 n)

end

end A209861.P8892231436394673962

/-!
# A209862: Permutation of nonnegative integers which maps A209642 into ascending order (A209641).

The programs for A209862, there is no canonical definition to state claims against.
-/

/-! ## A209862.P6642645055850807770

`A048675(A344085(n+1))`
-/

namespace A209862.P6642645055850807770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A344085 (n + 1)).toNat

end

end A209862.P6642645055850807770

/-! ## A209862.P16391556884825329853

`A357492(n)%record[A190172(n)]`
-/

namespace A209862.P16391556884825329853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357492 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A209862.P16391556884825329853

/-! ## A209862.P6737535407785221958

`and(A152388(n+1), A357492(n))`
-/

namespace A209862.P6737535407785221958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A357492 n)

end

end A209862.P6737535407785221958

/-! ## A209862.P385506882962669191

`and(A357492(n), A383046(n+3))`
-/

namespace A209862.P385506882962669191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A357492 n) (A383046 (n + 3))

end

end A209862.P385506882962669191

/-! ## A209862.P6513859408204098663

`A357492(n)+A000007(A000930(n))`
-/

namespace A209862.P6513859408204098663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357492 n + A000007 (A000930 n).toNat

end

end A209862.P6513859408204098663

/-!
# A209865: a(n) = maximal cycle size in range [2^(n-1),(2^n)-1] of permutation A209861/A209862.

The programs for A209865, there is no canonical definition to state claims against.
-/

/-! ## A209865.P13889270346755997155

`A209866(n)/A000688(A209866(n))`
-/

namespace A209865.P13889270346755997155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209866 n : ℚ) / (A000688 (A209866 n).toNat : ℚ)

end

end A209865.P13889270346755997155

/-! ## A209865.P142371120462089386

`A064915(A316795(n+1))`
-/

namespace A209865.P142371120462089386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064915 (A316795 (n + 1)).toNat

end

end A209865.P142371120462089386

/-! ## A209865.P12068592621688072831

`A308302(A302613(n+2)+4)`
-/

namespace A209865.P12068592621688072831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308302 (A302613 (n + 2) + 4).toNat

end

end A209865.P12068592621688072831

/-! ## A209865.P14740425658687817394

`A321440(A150037(floor(C(n, 2)/4)))`
-/

namespace A209865.P14740425658687817394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321440 (A150037 ⌊(Nat.choose n 2 : ℚ) / 4⌋.toNat).toNat

end

end A209865.P14740425658687817394

/-! ## A209865.P12916831561623528668

`A209037(C(A214083(n), A061217(3*n+4)))`
-/

namespace A209865.P12916831561623528668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209037 (Nat.choose (A214083 n).toNat (A061217 (3 * n + 4)).toNat)

end

end A209865.P12916831561623528668

/-!
# A209866: a(n) = least common multiple of all cycle sizes in range [2^(n-1),(2^n)-1] of permutation A209861/A209862.

The programs for A209866, there is no canonical definition to state claims against.
-/

/-! ## A209866.P4070625599471987190

`A000688(A209865(n))*A064915(A316795(n+1))`
-/

namespace A209866.P4070625599471987190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A209865 n).toNat * A064915 (A316795 (n + 1)).toNat

end

end A209866.P4070625599471987190

/-! ## A209866.P3982533521717672348

`A000688(A209865(n))*A308302(A302613(n+2)+4)`
-/

namespace A209866.P3982533521717672348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A209865 n).toNat * A308302 (A302613 (n + 2) + 4).toNat

end

end A209866.P3982533521717672348

/-! ## A209866.P17384549296906810147

`A000688(A302613(n+2)+A209865(n))*A209865(n)`
-/

namespace A209866.P17384549296906810147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A302613 (n + 2) + A209865 n).toNat * A209865 n

end

end A209866.P17384549296906810147

/-!
# A209867: a(n) = number of integers in range [2^(n-1),(2^n)-1] which permutation A209861/A209862 sends to odd-sized orbits.

The programs for A209867, there is no canonical definition to state claims against.
-/

/-! ## A209867.P15507229421316595342

`ceil(2^(n-1))-A209868(n)`
-/

namespace A209867.P15507229421316595342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A209868 n

end

end A209867.P15507229421316595342

/-! ## A209867.P8695495885171779581

`abs(A011782(n)-A209868(n))`
-/

namespace A209867.P8695495885171779581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A209868 n|

end

end A209867.P8695495885171779581

/-! ## A209867.P18131637104844310477

`A000027(A011782(n)-A209868(n))`
-/

namespace A209867.P18131637104844310477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A011782 n - A209868 n).toNat

end

end A209867.P18131637104844310477

/-! ## A209867.P5969973007446454583

`A080079(A209868(n)+A011782(n))`
-/

namespace A209867.P5969973007446454583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A209868 n + A011782 n).toNat

end

end A209867.P5969973007446454583

/-! ## A209867.P8927807850766812406

`A080079(or(A011782(n), A209868(n)))`
-/

namespace A209867.P8927807850766812406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (Int.lor (A011782 n) (A209868 n)).toNat

end

end A209867.P8927807850766812406

/-!
# A209868: a(n) = number of integers in range [2^(n-1),(2^n)-1] which permutation A209861/A209862 sends to even-sized orbits.

The programs for A209868, there is no canonical definition to state claims against.
-/

/-! ## A209868.P11196155382577411857

`ceil(2^(n-1))-A209867(n)`
-/

namespace A209868.P11196155382577411857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A209867 n

end

end A209868.P11196155382577411857

/-! ## A209868.P11761907154464386225

`abs(A011782(n)-A209867(n))`
-/

namespace A209868.P11761907154464386225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A209867 n|

end

end A209868.P11761907154464386225

/-! ## A209868.P8357706847756423057

`abs(A000010(A000079(n))-A209867(n))`
-/

namespace A209868.P8357706847756423057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (A000079 n).toNat - A209867 n|

end

end A209868.P8357706847756423057

/-! ## A209868.P15338526781082246891

`A001489(A209867(n))+A000032(C(2, n+2))^(n-1)`
-/

namespace A209868.P15338526781082246891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (A209867 n).toNat : ℚ) + (A000032 (Nat.choose 2 (n + 2)) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A209868.P15338526781082246891

/-! ## A209868.P6793336268249382772

`A001489(A209867(n))+A020639(A000010(n+1))^(n-1)`
-/

namespace A209868.P6793336268249382772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (A209867 n).toNat : ℚ) + (A020639 (A000010 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A209868.P6793336268249382772

/-!
# A209871: Quasi-Niven (or Quasi-Harshad) numbers: numbers that divided by the sum of their digits leave 1 as remainder.

The programs for A209871, there is no canonical definition to state claims against.
-/

/-! ## A209871.P11118380272199209699

`∩[A048596(n+1), A253205(n+1)]`
-/

namespace A209871.P11118380272199209699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209871.P11118380272199209699

/-! ## A209871.P15896444725466817106

`∩[A038187(n+1), A253205(n+1)]`
-/

namespace A209871.P15896444725466817106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209871.P15896444725466817106

/-! ## A209871.P9097196240999513249

`∩[A065877(n+1), A253205(n+1)]`
-/

namespace A209871.P9097196240999513249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209871.P9097196240999513249

/-! ## A209871.P508577902830320739

`∩[A038687(n+1), A253205(n+1)]`
-/

namespace A209871.P508577902830320739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209871.P508577902830320739

/-! ## A209871.P6603774871914100268

`∩[A253205(n+1), A057717(n)]`
-/

namespace A209871.P6603774871914100268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209871.P6603774871914100268

/-! ## A209871.P2289226929867720978

`eq[1, A070635(n+1)]+1`
-/

namespace A209871.P2289226929867720978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209871.P2289226929867720978

/-! ## A209871.P1733982924505128427

`eq[1, A070635(A028310(n))]`
-/

namespace A209871.P1733982924505128427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209871.P1733982924505128427

/-! ## A209871.P1176548438379371424

`A020725(eq[1, A070635(n+1)])`
-/

namespace A209871.P1176548438379371424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209871.P1176548438379371424

/-! ## A209871.P15886830798746279581

`A063660(eq[1, A070635(n+1)])`
-/

namespace A209871.P15886830798746279581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209871.P15886830798746279581

/-! ## A209871.P6701586599816002045

`A065475(eq[1, A070635(n+1)])`
-/

namespace A209871.P6701586599816002045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209871.P6701586599816002045

/-! ## A209871.P15665033488822921872

`A153152(eq[1, A070635(n+1)])`
-/

namespace A209871.P15665033488822921872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209871.P15665033488822921872

/-! ## A209871.P16227468765478595907

`eq[1, A070635(A004277(n)-n)]`
-/

namespace A209871.P16227468765478595907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209871.P16227468765478595907

/-! ## A209871.P4478954000789838181

`eq[1, A070635(gcd(n, A004277(n)))]`
-/

namespace A209871.P4478954000789838181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (Int.gcd (n : ℤ) (A004277 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209871.P4478954000789838181

/-! ## A209871.P13628295712312582290

`eq[1, A070635(or(n, A178225(n)))]`
-/

namespace A209871.P13628295712312582290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (Int.lor (n : ℤ) (A178225 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209871.P13628295712312582290

/-! ## A209871.P4924941159958450445

`eq[1, A070635(A060000(n+1))]`
-/

namespace A209871.P4924941159958450445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209871.P4924941159958450445

/-! ## A209871.P4878238137673594328

`eq[1, A070635(A065033(2*n))]`
-/

namespace A209871.P4878238137673594328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209871.P4878238137673594328

/-! ## A209871.P2080899417673594400

`eq[1, A070635(A123108(2*n))]`
-/

namespace A209871.P2080899417673594400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209871.P2080899417673594400

/-!
# A209874: Least m > 0 such that the prime p=A002313(n+1) divides m^2+1.

The programs for A209874, there is no canonical definition to state claims against.
-/

/-! ## A209874.P13754619891052911782

`A000122(n²)*A209877(A028310(n))`
-/

namespace A209874.P13754619891052911782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A209877 (A028310 n).toNat

end

end A209874.P13754619891052911782

/-! ## A209874.P7307156858242229266

`(A211666(n+1)+1)*A209877(A028310(n))`
-/

namespace A209874.P7307156858242229266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211666 (n + 1) + 1) * A209877 (A028310 n).toNat

end

end A209874.P7307156858242229266

/-! ## A209874.P3082569925915191490

`A000032(C(2, n+2))*A209877(A028310(n))`
-/

namespace A209874.P3082569925915191490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A209877 (A028310 n).toNat

end

end A209874.P3082569925915191490

/-! ## A209874.P360376758629121809

`A020639(∏{p}[2*n, #])*A209877(A028310(n))`
-/

namespace A209874.P360376758629121809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) * A209877 (A028310 n).toNat

end

end A209874.P360376758629121809

/-! ## A209874.P9622878514393950615

`A020639(a(n-1))*A209877(A028310(n))` with `a(0)=1, a(1)=2`
-/

namespace A209874.P9622878514393950615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A209877 (A028310 n).toNat

end

end A209874.P9622878514393950615

/-! ## A209874.P5171516244034302843

`A020639(A000132(n))*A209877(A028310(n))`
-/

namespace A209874.P5171516244034302843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000132 n).toNat * A209877 (A028310 n).toNat

end

end A209874.P5171516244034302843

/-! ## A209874.P8380434431992338011

`A020639(A004277(n))*A209877(A028310(n))`
-/

namespace A209874.P8380434431992338011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A209877 (A028310 n).toNat

end

end A209874.P8380434431992338011

/-! ## A209874.P4173324086887149250

`A020639(A000010(n+2))*A209877(A028310(n))`
-/

namespace A209874.P4173324086887149250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A209877 (A028310 n).toNat

end

end A209874.P4173324086887149250

/-! ## A209874.P11567303080963143511

`A020639(A000040(n+1)-1)*A209877(A028310(n))`
-/

namespace A209874.P11567303080963143511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A209877 (A028310 n).toNat

end

end A209874.P11567303080963143511

/-!
# A209875: Primes p such that p and p+18 are consecutive primes with equal digital sum.

The programs for A209875, there is no canonical definition to state claims against.
-/

/-! ## A209875.P10680494118610843490

`∩[A031936(n+1), A066540(n+1)]`
-/

namespace A209875.P10680494118610843490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209875.P10680494118610843490

/-! ## A209875.P11971744707809941839

`∩[A031936(n+1), A209663(n+1)]`
-/

namespace A209875.P11971744707809941839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209875.P11971744707809941839

/-! ## A209875.P6143502149841226470

`∩[A117838(n+1), A209663(n+1)]`
-/

namespace A209875.P6143502149841226470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209875.P6143502149841226470

/-!
# A209876: a(n) = 36*n - 6.

The programs for A209876, the canonical program `A209876.P240243196379828847` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209876 has offset 1).

The definition of A209876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)-6` (program `A209876.P240243196379828847`, by `A209876.P240243196379828847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209876.P240243196379828847

`36*(n+1)-6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209876

/-- `36*(n+1)-6` -/
def P240243196379828847.Spec : Prop :=
  ∀ n, P240243196379828847.a n = A209876 (n + 1)

theorem P240243196379828847.correct : P240243196379828847.Spec := by
  intro n
  simp only [A209876, Nat.add_sub_cancel]

end A209876

/-!
# A209877: a(n) = A209874(n)/2: Least m > 0 such that 4*m^2 = -1 modulo the Pythagorean prime A002144(n).

The programs for A209877, there is no canonical definition to state claims against.
-/

/-! ## A209877.P4868441239108173039

`A209874(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209877.P4868441239108173039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209874 (n + 1) : ℚ) / 2

end

end A209877.P4868441239108173039

/-! ## A209877.P6528461493024526837

`floor(A070669(2*p?[4*n+1])/2)²%p?[4*n+1]`
-/

namespace A209877.P6528461493024526837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(A070669 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌋ ^ 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A209877.P6528461493024526837

/-! ## A209877.P14889766062553392731

`A104636(n+1)-floor(A070669(2*p?[4*n+1])/2)`
-/

namespace A209877.P14889766062553392731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104636 (n + 1) - ⌊(A070669 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌋

end

end A209877.P14889766062553392731

/-! ## A209877.P12106180295393237061

`A104636(n+1)-floor(A070669(2*A002144(n+1))/2)`
-/

namespace A209877.P12106180295393237061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104636 (n + 1) - ⌊(A070669 (2 * A002144 (n + 1)).toNat : ℚ) / 2⌋

end

end A209877.P12106180295393237061

/-! ## A209877.P6482452757224165717

`ceil(A209874(-xor(n, -1))/2)`
-/

namespace A209877.P6482452757224165717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209874 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌉

end

end A209877.P6482452757224165717

/-! ## A209877.P6563756141142773207

`a(n-1)*ratio[A209874(n)]` with `a(0)=1`
-/

namespace A209877.P6563756141142773207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209874 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A209877.P6563756141142773207

/-! ## A209877.P5342402359269556133

`floor(A209874(n-log2(1/2))/2)`
-/

namespace A209877.P5342402359269556133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209874 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 2⌋

end

end A209877.P5342402359269556133

/-! ## A209877.P12538804708253168381

`A001281(A209874(n+1))`
-/

namespace A209877.P12538804708253168381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A209874 (n + 1)).toNat

end

end A209877.P12538804708253168381

/-! ## A209877.P15989783435968041785

`A004526(A209874(n+1)+1)`
-/

namespace A209877.P15989783435968041785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A209874 (n + 1) + 1).toNat

end

end A209877.P15989783435968041785

/-! ## A209877.P11192635007450196496

`A249122(A209874(n+1)+1)`
-/

namespace A209877.P11192635007450196496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A209874 (n + 1) + 1).toNat

end

end A209877.P11192635007450196496

/-!
# A209880: RATS: Reverse Add Then Sort the digits applied to previous term, starting with 29.

The programs for A209880, there is no canonical definition to state claims against.
-/

/-! ## A209880.P3144573337619493643

`A036839(a(n-1))` with `a(0)=29`
-/

namespace A209880.P3144573337619493643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A036839 (a (n - 1)).toNat

end

end A209880.P3144573337619493643

/-!
# A209881: G.f. satisfies: A(x) = 1 + x*[d/dx 1/(1 - x*A(x))].

The programs for A209881, there is no canonical definition to state claims against.
-/

/-! ## A209881.P4423816270425256354

`round(sqrt(n²+1))*A075834(n+1)`
-/

namespace A209881.P4423816270425256354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A075834 (n + 1)

end

end A209881.P4423816270425256354

/-! ## A209881.P9639172714349902309

`A000007(n)+n*A075834(n+1)`
-/

namespace A209881.P9639172714349902309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A075834 (n + 1)

end

end A209881.P9639172714349902309

/-! ## A209881.P7989553609857937136

`A084938(∑[n])+n*A075834(n+1)`
-/

namespace A209881.P7989553609857937136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * A075834 (n + 1)

end

end A209881.P7989553609857937136

/-! ## A209881.P1327579271146236285

`(n*A075834(n+1))^A084360(A103517(n))`
-/

namespace A209881.P1327579271146236285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A075834 (n + 1) : ℚ) ^ (A084360 (A103517 n).toNat : ℤ)

end

end A209881.P1327579271146236285

/-! ## A209881.P15639213342498497256

`(n*A075834(n+1))^A084360(A002378(n+1))`
-/

namespace A209881.P15639213342498497256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A075834 (n + 1) : ℚ) ^ (A084360 (A002378 (n + 1)).toNat : ℤ)

end

end A209881.P15639213342498497256

/-!
# A209882: Smallest k>=0 such that n*(n+1)-(2*k+1) and n*(n+1)+(2*k+1) are both noncomposite numbers, or -1 if no such k exists.

The programs for A209882, there is no canonical definition to state claims against.
-/

/-! ## A209882.P10100419776176821808

`floor(A047160(∑[2*(n+1)])/2)`
-/

namespace A209882.P10100419776176821808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047160 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋

end

end A209882.P10100419776176821808

/-! ## A209882.P17149138157133737001

`floor(A242165(∑[2*(n+1)])/2)`
-/

namespace A209882.P17149138157133737001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242165 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋

end

end A209882.P17149138157133737001

/-! ## A209882.P14562119352517581505

`floor(A325142(∑[2*(n+1)])/2)`
-/

namespace A209882.P14562119352517581505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325142 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋

end

end A209882.P14562119352517581505

/-! ## A209882.P15108298613984042551

`floor(A066285((n+1)*(n+2))/4)`
-/

namespace A209882.P15108298613984042551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066285 ((n + 1) * (n + 2)) : ℚ) / 4⌋

end

end A209882.P15108298613984042551

/-! ## A209882.P5054320983786180821

`A004524(A047160(∑[2*(n+1)]))`
-/

namespace A209882.P5054320983786180821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047160 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A209882.P5054320983786180821

/-! ## A209882.P16369079677973074486

`A004526(A047160(2*∑[n+1]))`
-/

namespace A209882.P16369079677973074486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047160 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A209882.P16369079677973074486

/-! ## A209882.P17943424956231916625

`A002265(A066285(∑[2*(n+1)]))`
-/

namespace A209882.P17943424956231916625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A066285 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A209882.P17943424956231916625

/-! ## A209882.P8380780848037401370

`A004524(A242165(∑[2*(n+1)]))`
-/

namespace A209882.P8380780848037401370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A242165 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A209882.P8380780848037401370

/-! ## A209882.P7062364884286955485

`A004526(A325142(∑[2*(n+1)]))`
-/

namespace A209882.P7062364884286955485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A325142 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A209882.P7062364884286955485

/-! ## A209882.P3945665876225425779

`A004526(A242165((n+1)²+n+1))`
-/

namespace A209882.P3945665876225425779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A242165 ((n + 1) ^ 2 + (n + 1))).toNat

end

end A209882.P3945665876225425779

/-!
# A209884: E.g.f. A(x) satisfies: A(x/(1-x))/(1-x) = (1/x) * d/dx x^2*A(x)/2.

The programs for A209884, there is no canonical definition to state claims against.
-/

/-! ## A209884.P1498897297115769888

`A301670(∑{digits}[n, lcm(#, (-#)^#)])-(n+1)*∑{digits}[n, #]`
-/

namespace A209884.P1498897297115769888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.lcm (x : ℤ) ((-(x : ℤ)) ^ x)).sum - (((n + 1) * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A209884.P1498897297115769888

/-!
# A209885: Numbers such that A172470(n) = 9.

The programs for A209885, there is no canonical definition to state claims against.
-/

/-! ## A209885.P6626692725576005609

`record[n+10-A172470(n+1)]`
-/

namespace A209885.P6626692725576005609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℤ) - A172470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209885.P6626692725576005609

/-! ## A209885.P1113249396203580195

`eq[2, ∑{e}[Δ[A172468(n+1)], #]]+1`
-/

namespace A209885.P1113249396203580195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172468 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A209885.P1113249396203580195

/-! ## A209885.P14320649980729331057

`A112318(A311593(n))`
-/

namespace A209885.P14320649980729331057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A311593 n).toNat

end

end A209885.P14320649980729331057

/-! ## A209885.P6107905783240015110

`A158387(A199882(n+1))+A020904(n+1)`
-/

namespace A209885.P6107905783240015110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (A199882 (n + 1)).toNat + A020904 (n + 1)

end

end A209885.P6107905783240015110

/-! ## A209885.P8481899032656624209

`∑[A164358(∑[A171354(n+1)])]`
-/

namespace A209885.P8481899032656624209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164358 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209885.P8481899032656624209

/-!
# A209886: Numbers such that A172470(n) = 52.

The programs for A209886, there is no canonical definition to state claims against.
-/

/-! ## A209886.P4864415975927417926

`eq[52, A172470(A028310(n))]`
-/

namespace A209886.P4864415975927417926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172470 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209886.P4864415975927417926

/-! ## A209886.P1325384398335117974

`A230995(2*n+2)-A033715(A007283(n))`
-/

namespace A209886.P1325384398335117974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230995 (2 * n + 2) - A033715 (A007283 n).toNat

end

end A209886.P1325384398335117974

/-! ## A209886.P12900927072099766214

`A230995(2*n+2)-A255176(A001006(n))`
-/

namespace A209886.P12900927072099766214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230995 (2 * n + 2) - A255176 (A001006 n).toNat

end

end A209886.P12900927072099766214

/-! ## A209886.P8505683664986862958

`A230995(2*n+2)-A123932(A266232(n))`
-/

namespace A209886.P8505683664986862958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230995 (2 * n + 2) - A123932 (A266232 n).toNat

end

end A209886.P8505683664986862958

/-!
# A209887: Numbers such that A172470(n) = 61.

The programs for A209887, there is no canonical definition to state claims against.
-/

/-! ## A209887.P4578338405948021476

`lt[53, A172470(round(acot(n)+n))]`
-/

namespace A209887.P4578338405948021476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172470 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A209887.P4578338405948021476

/-! ## A209887.P5718704360698177559

`lt[53, Δ[A172468(n+1)]]+1`
-/

namespace A209887.P5718704360698177559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A209887.P5718704360698177559

/-!
# A209888: Number of binary words of length n containing no subword 01101.

The programs for A209888, the canonical program `A209888.P2041482626234493389` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209888 has offset 0).

The definition of A209888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209888.P2041482626234493389

`2*(a(n-1)+a(n-4))-a(n-3)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209888

/-- `2*(a(n-1)+a(n-4))-a(n-3)-a(n-5)` -/
def P2041482626234493389.Spec : Prop :=
  ∀ n, P2041482626234493389.a n = A209888 n

theorem P2041482626234493389.correct : P2041482626234493389.Spec := by
  intro n
  simp only [A209888]

end A209888

/-! ## A209888.P16290814703879894350

`A277751(A008750(n)%(n+1)²)`
-/

namespace A209888.P16290814703879894350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 (Int.tmod (A008750 n) ((n + 1) ^ 2 : ℤ)).toNat

end

end A209888.P16290814703879894350

namespace A209888

/-- `A277751(A008750(n)%(n+1)²)` -/
def P16290814703879894350.Spec : Prop :=
  ∀ n, P16290814703879894350.a n = A209888 n

end A209888

/-! ## A209888.P2450189846800286220

`A277751(A008750(n)-A000007(n))`
-/

namespace A209888.P2450189846800286220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 (A008750 n - A000007 n).toNat

end

end A209888.P2450189846800286220

namespace A209888

/-- `A277751(A008750(n)-A000007(n))` -/
def P2450189846800286220.Spec : Prop :=
  ∀ n, P2450189846800286220.a n = A209888 n

end A209888

/-! ## A209888.P15511670778228101091

`A277751(A008750(n)*A057427(n))`
-/

namespace A209888.P15511670778228101091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 (A008750 n * A057427 n).toNat

end

end A209888.P15511670778228101091

namespace A209888

/-- `A277751(A008750(n)*A057427(n))` -/
def P15511670778228101091.Spec : Prop :=
  ∀ n, P15511670778228101091.a n = A209888 n

end A209888

/-! ## A209888.P16771830464496548778

`A277751(xor(A000007(n), A008750(n)))`
-/

namespace A209888.P16771830464496548778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 (Int.xor (A000007 n) (A008750 n)).toNat

end

end A209888.P16771830464496548778

namespace A209888

/-- `A277751(xor(A000007(n), A008750(n)))` -/
def P16771830464496548778.Spec : Prop :=
  ∀ n, P16771830464496548778.a n = A209888 n

end A209888

/-! ## A209888.P18218583534567107991

`A277751(A008750(n)+A057427(n)-1)`
-/

namespace A209888.P18218583534567107991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 (A008750 n + (A057427 n - 1)).toNat

end

end A209888.P18218583534567107991

namespace A209888

/-- `A277751(A008750(n)+A057427(n)-1)` -/
def P18218583534567107991.Spec : Prop :=
  ∀ n, P18218583534567107991.a n = A209888 n

end A209888

/-! ## A209888.P1387307557489211876

`A277751(A008750(n)-(1-A057427(n)))`
-/

namespace A209888.P1387307557489211876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 (A008750 n - (1 - A057427 n)).toNat

end

end A209888.P1387307557489211876

namespace A209888

/-- `A277751(A008750(n)-(1-A057427(n)))` -/
def P1387307557489211876.Spec : Prop :=
  ∀ n, P1387307557489211876.a n = A209888 n

end A209888

/-! ## A209888.P13219328613798369095

`A277751(and(A000225(n), A008750(n)))`
-/

namespace A209888.P13219328613798369095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 (Int.land (A000225 n) (A008750 n)).toNat

end

end A209888.P13219328613798369095

namespace A209888

/-- `A277751(and(A000225(n), A008750(n)))` -/
def P13219328613798369095.Spec : Prop :=
  ∀ n, P13219328613798369095.a n = A209888 n

end A209888

/-!
# A209889: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A209889, there is no canonical definition to state claims against.
-/

/-! ## A209889.P5423603424767095253

`A209897(∑[4*n]+1)`
-/

namespace A209889.P5423603424767095253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209889.P5423603424767095253

/-!
# A209890: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A209890, the canonical program `A209890.P16480085255296489386` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209890 has offset 1).

The definition of A209890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209890.P913580772470225910

`ogf((7+6x)/(1-4x-4x^2))`
-/

namespace A209890.P913580772470225910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 6] [1, -4, -4] n

end

end A209890.P913580772470225910

namespace A209890

/-- `ogf((7+6x)/(1-4x-4x^2))` -/
def P913580772470225910.Spec : Prop :=
  ∀ n, P913580772470225910.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P9338608834352216371

`round((sqrt(8)+2)*a(n-1))` with `a(0)=7`
-/

namespace A209890.P9338608834352216371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (8 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A209890.P9338608834352216371

namespace A209890

/-- `round((sqrt(8)+2)*a(n-1))` -/
def P9338608834352216371.Spec : Prop :=
  ∀ n, P9338608834352216371.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P16480085255296489386

`4*(a(n-1)+a(n-2))` with `a(0)=7, a(1)=34`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209890

/-- `4*(a(n-1)+a(n-2))` -/
def P16480085255296489386.Spec : Prop :=
  ∀ n, (P16480085255296489386.a n : ℤ) = A209890 (n + 1)

theorem P16480085255296489386.correct : P16480085255296489386.Spec := by
  intro n
  simp only [A209890, Nat.add_sub_cancel]

end A209890

/-! ## A209890.P8786260063789431900

`A006668(n+3)+2^n`
-/

namespace A209890.P8786260063789431900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006668 (n + 3) + (2 ^ n : ℤ)

end

end A209890.P8786260063789431900

namespace A209890

/-- `A006668(n+3)+2^n` -/
def P8786260063789431900.Spec : Prop :=
  ∀ n, P8786260063789431900.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P17214507879699750385

`2^n*A078057(n+2)`
-/

namespace A209890.P17214507879699750385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A078057 (n + 2)

end

end A209890.P17214507879699750385

namespace A209890

/-- `2^n*A078057(n+2)` -/
def P17214507879699750385.Spec : Prop :=
  ∀ n, P17214507879699750385.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P453085752347341465

`2^n*A001333(n+3)`
-/

namespace A209890.P453085752347341465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001333 (n + 3)

end

end A209890.P453085752347341465

namespace A209890

/-- `2^n*A001333(n+3)` -/
def P453085752347341465.Spec : Prop :=
  ∀ n, P453085752347341465.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P5342542254799237144

`2^(n-2)*A245990(n+1)`
-/

namespace A209890.P5342542254799237144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A245990 (n + 1) : ℚ)

end

end A209890.P5342542254799237144

namespace A209890

/-- `2^(n-2)*A245990(n+1)` -/
def P5342542254799237144.Spec : Prop :=
  ∀ n, P5342542254799237144.a n = (A209890 (n + 1) : ℚ)

end A209890

/-! ## A209890.P2335966513415328508

`2^(n-1)*A002203(n+3)`
-/

namespace A209890.P2335966513415328508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002203 (n + 3) : ℚ)

end

end A209890.P2335966513415328508

namespace A209890

/-- `2^(n-1)*A002203(n+3)` -/
def P2335966513415328508.Spec : Prop :=
  ∀ n, P2335966513415328508.a n = (A209890 (n + 1) : ℚ)

end A209890

/-! ## A209890.P17477286642304602313

`2^(n-1)*A099425(n+3)`
-/

namespace A209890.P17477286642304602313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A099425 (n + 3) : ℚ)

end

end A209890.P17477286642304602313

namespace A209890

/-- `2^(n-1)*A099425(n+3)` -/
def P17477286642304602313.Spec : Prop :=
  ∀ n, P17477286642304602313.a n = (A209890 (n + 1) : ℚ)

end A209890

/-! ## A209890.P12265349124653867226

`A057087(n)+6*A086347(n)`
-/

namespace A209890.P12265349124653867226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n + 6 * A086347 n

end

end A209890.P12265349124653867226

namespace A209890

/-- `A057087(n)+6*A086347(n)` -/
def P12265349124653867226.Spec : Prop :=
  ∀ n, P12265349124653867226.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P11316378154979286514

`Δ[A069306(n+2)]*A000079(n)`
-/

namespace A209890.P11316378154979286514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069306 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A209890.P11316378154979286514

namespace A209890

/-- `Δ[A069306(n+2)]*A000079(n)` -/
def P11316378154979286514.Spec : Prop :=
  ∀ n, P11316378154979286514.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P8143328810474511703

`Δ[A000129(n+3)]*A000079(n)`
-/

namespace A209890.P8143328810474511703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A209890.P8143328810474511703

namespace A209890

/-- `Δ[A000129(n+3)]*A000079(n)` -/
def P8143328810474511703.Spec : Prop :=
  ∀ n, P8143328810474511703.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P4335846385023157286

`Δ[A005409(n+3)]*A000079(n)`
-/

namespace A209890.P4335846385023157286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A209890.P4335846385023157286

namespace A209890

/-- `Δ[A005409(n+3)]*A000079(n)` -/
def P4335846385023157286.Spec : Prop :=
  ∀ n, P4335846385023157286.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P2378108026612887940

`A108051(n+1)+A108051(n+2)`
-/

namespace A209890.P2378108026612887940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108051 (n + 1) + A108051 (n + 2)

end

end A209890.P2378108026612887940

namespace A209890

/-- `A108051(n+1)+A108051(n+2)` -/
def P2378108026612887940.Spec : Prop :=
  ∀ n, P2378108026612887940.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P13957788871805962460

`A086347(n+1)+2*A086347(n)`
-/

namespace A209890.P13957788871805962460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 (n + 1) + 2 * A086347 n

end

end A209890.P13957788871805962460

namespace A209890

/-- `A086347(n+1)+2*A086347(n)` -/
def P13957788871805962460.Spec : Prop :=
  ∀ n, P13957788871805962460.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P16603240844432783923

`A001333(n+3)*A011782(n+1)`
-/

namespace A209890.P16603240844432783923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 3) * A011782 (n + 1)

end

end A209890.P16603240844432783923

namespace A209890

/-- `A001333(n+3)*A011782(n+1)` -/
def P16603240844432783923.Spec : Prop :=
  ∀ n, P16603240844432783923.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P17089924633903322863

`A001333(n+3)*A016116(2*n)`
-/

namespace A209890.P17089924633903322863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 3) * A016116 (2 * n)

end

end A209890.P17089924633903322863

namespace A209890

/-- `A001333(n+3)*A016116(2*n)` -/
def P17089924633903322863.Spec : Prop :=
  ∀ n, P17089924633903322863.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P17525047943830810941

`A001333(n+3)*A077957(2*n)`
-/

namespace A209890.P17525047943830810941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 3) * A077957 (2 * n)

end

end A209890.P17525047943830810941

namespace A209890

/-- `A001333(n+3)*A077957(2*n)` -/
def P17525047943830810941.Spec : Prop :=
  ∀ n, P17525047943830810941.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P15385041521242517034

`A001333(n+3)*A143095(2*n)`
-/

namespace A209890.P15385041521242517034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 3) * A143095 (2 * n)

end

end A209890.P15385041521242517034

namespace A209890

/-- `A001333(n+3)*A143095(2*n)` -/
def P15385041521242517034.Spec : Prop :=
  ∀ n, P15385041521242517034.a n = A209890 (n + 1)

end A209890

/-! ## A209890.P242797039003355352

`A086347(n+1)+A057087(n+1)/2`
-/

namespace A209890.P242797039003355352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086347 (n + 1) : ℚ) + (A057087 (n + 1) : ℚ) / 2

end

end A209890.P242797039003355352

namespace A209890

/-- `A086347(n+1)+A057087(n+1)/2` -/
def P242797039003355352.Spec : Prop :=
  ∀ n, P242797039003355352.a n = (A209890 (n + 1) : ℚ)

end A209890

/-!
# A209891: Number of (n+1) X 3 0..2 arrays with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A209891, there is no canonical definition to state claims against.
-/

/-! ## A209891.P15522928698524952622

`A210119(n+1)-A210168(n+1)`
-/

namespace A209891.P15522928698524952622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210119 (n + 1) - A210168 (n + 1)

end

end A209891.P15522928698524952622

/-! ## A209891.P10708219023707162410

`A209897(∑[n+1]+2)`
-/

namespace A209891.P10708219023707162410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209891.P10708219023707162410

/-! ## A209891.P133390523428195783

`record[root(A209897(n+2), A200370(n+1))]`
-/

namespace A209891.P133390523428195783
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209897 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209891.P133390523428195783

/-! ## A209891.P2895027782531176246

`lcm(2, A209897(A000096(n+1)))`
-/

namespace A209891.P2895027782531176246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209897 (A000096 (n + 1)).toNat)

end

end A209891.P2895027782531176246

/-! ## A209891.P13771824525794946721

`record[A209897(Δ[A003453(n+5)])]`
-/

namespace A209891.P13771824525794946721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209891.P13771824525794946721

/-!
# A209892: Number of (n+1)X4 0..2 arrays with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A209892, there is no canonical definition to state claims against.
-/

/-! ## A209892.P17612362005253381658

`A209897(∑[n+2]+4)`
-/

namespace A209892.P17612362005253381658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209892.P17612362005253381658

/-! ## A209892.P8099582537188644190

`lcm(2, A209897(A167614(n+1)))`
-/

namespace A209892.P8099582537188644190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209897 (A167614 (n + 1)).toNat)

end

end A209892.P8099582537188644190

/-! ## A209892.P3706782118139887474

`A235145(n)+A209897(A167614(n+1))`
-/

namespace A209892.P3706782118139887474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n + A209897 (A167614 (n + 1)).toNat

end

end A209892.P3706782118139887474

/-! ## A209892.P18387530435584769131

`A209897(A167614(n+1))*A304042(n)`
-/

namespace A209892.P18387530435584769131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A167614 (n + 1)).toNat * A304042 n

end

end A209892.P18387530435584769131

/-!
# A209893: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A209893, there is no canonical definition to state claims against.
-/

/-! ## A209893.P3082114316007687384

`A209897(A374004(n+1))`
-/

namespace A209893.P3082114316007687384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A374004 (n + 1)).toNat

end

end A209893.P3082114316007687384

/-! ## A209893.P1522075719806377677

`A209897(A141214(n)+7)`
-/

namespace A209893.P1522075719806377677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A141214 n + 7).toNat

end

end A209893.P1522075719806377677

/-! ## A209893.P6918369505459961046

`A209897(A055999(n)+10)`
-/

namespace A209893.P6918369505459961046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A055999 n + 10).toNat

end

end A209893.P6918369505459961046

/-! ## A209893.P10862772438483987816

`A209897(A167614(n+2)+1)`
-/

namespace A209893.P10862772438483987816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A167614 (n + 2) + 1).toNat

end

end A209893.P10862772438483987816

/-! ## A209893.P16804455673893876724

`A209897(A112355(n+1)+4)`
-/

namespace A209893.P16804455673893876724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A112355 (n + 1) + 4).toNat

end

end A209893.P16804455673893876724

/-!
# A209894: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A209894, there is no canonical definition to state claims against.
-/

/-! ## A209894.P777886660006900225

`A209897(A374005(n+1))`
-/

namespace A209894.P777886660006900225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A374005 (n + 1)).toNat

end

end A209894.P777886660006900225

/-! ## A209894.P2806078731511764951

`A209897(A056000(n)+15)`
-/

namespace A209894.P2806078731511764951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A056000 n + 15).toNat

end

end A209894.P2806078731511764951

/-! ## A209894.P6577961025197887596

`A209897(A046691(n+3))`
-/

namespace A209894.P6577961025197887596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A046691 (n + 3)).toNat

end

end A209894.P6577961025197887596

/-! ## A209894.P3586623963896128257

`A209897(A056115(n)+11)`
-/

namespace A209894.P3586623963896128257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A056115 n + 11).toNat

end

end A209894.P3586623963896128257

/-! ## A209894.P7753028265926424281

`A209897(eq[4, A193592(n)])`
-/

namespace A209894.P7753028265926424281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209894.P7753028265926424281

/-!
# A209895: Number of (n+1)X7 0..2 arrays with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A209895, there is no canonical definition to state claims against.
-/

/-! ## A209895.P14219057794186940369

`A209897(A374007(n+1))`
-/

namespace A209895.P14219057794186940369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A374007 (n + 1)).toNat

end

end A209895.P14219057794186940369

/-! ## A209895.P6375167392355316812

`A209897(A056115(n)+21)`
-/

namespace A209895.P6375167392355316812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A056115 n + 21).toNat

end

end A209895.P6375167392355316812

/-! ## A209895.P18279458445862605238

`A209897(Δ[A023545(n+1)]+10)`
-/

namespace A209895.P18279458445862605238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (f1 (n + 1) - f1 n + 10).toNat

end

end A209895.P18279458445862605238

/-! ## A209895.P12401287782715812244

`A209897(A052905(n+3))`
-/

namespace A209895.P12401287782715812244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A052905 (n + 3)).toNat

end

end A209895.P12401287782715812244

/-! ## A209895.P792134149375435641

`A209897(A056119(n)+16)`
-/

namespace A209895.P792134149375435641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A056119 n + 16).toNat

end

end A209895.P792134149375435641

/-!
# A209896: Number of (n+1)X8 0..2 arrays with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A209896, there is no canonical definition to state claims against.
-/

/-! ## A209896.P1190915903604157349

`A209897(A374008(n+1))`
-/

namespace A209896.P1190915903604157349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A374008 (n + 1)).toNat

end

end A209896.P1190915903604157349

/-! ## A209896.P18318390823321635072

`A209897(A056119(n)+28)`
-/

namespace A209896.P18318390823321635072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (A056119 n + 28).toNat

end

end A209896.P18318390823321635072

/-!
# A209897: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A209897, there is no canonical definition to state claims against.
-/

/-! ## A209897.P16079145713735783008

`A210125(n+1)-A210174(n+1)`
-/

namespace A209897.P16079145713735783008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (n + 1) - A210174 (n + 1)

end

end A209897.P16079145713735783008

/-! ## A209897.P13867153908326158193

`A210125(n+1)-(A038312(n)+A001065(A327020(n)))`
-/

namespace A209897.P13867153908326158193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (n + 1) - (A038312 n + A001065 (A327020 n).toNat)

end

end A209897.P13867153908326158193

/-!
# A209898: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having one or four distinct clockwise edge differences.

The programs for A209898, the canonical program `A209898.P13299415237245453239` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209898 has offset 1).

The definition of A209898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209898.P13299415237245453239

`4*A209727(n+1)+3`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A209898

/-- `4*A209727(n+1)+3` -/
def P13299415237245453239.Spec : Prop :=
  ∀ n, P13299415237245453239.a n = A209898 (n + 1)

theorem P13299415237245453239.correct : P13299415237245453239.Spec := by
  intro n
  simp only [A209898, Nat.add_sub_cancel]

end A209898

/-! ## A209898.P1256610219336139425

`4*(A183986(n+1)-A271709(n))+3`
-/

namespace A209898.P1256610219336139425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A183986 (n + 1) - A271709 n) + 3

end

end A209898.P1256610219336139425

namespace A209898

/-- `4*(A183986(n+1)-A271709(n))+3` -/
def P1256610219336139425.Spec : Prop :=
  ∀ n, P1256610219336139425.a n = A209898 (n + 1)

theorem P1256610219336139425.correct : P1256610219336139425.Spec := by
  intro n
  simp only [A209898, Nat.add_sub_cancel, A209898.P1256610219336139425.a, A209898.P13299415237245453239.a, A183986, A183986.P9474763813998468520.a, A209727, A209727.P8910992822076776989.a, A271709, A271709.P6928326374473711590.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, A052955, A052955.P5313474801376957548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A209898

/-! ## A209898.P7004723901764419024

`A016825(A209727(n+1))+1`
-/

namespace A209898.P7004723901764419024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A209727 (n + 1)).toNat + 1

end

end A209898.P7004723901764419024

namespace A209898

/-- `A016825(A209727(n+1))+1` -/
def P7004723901764419024.Spec : Prop :=
  ∀ n, P7004723901764419024.a n = A209898 (n + 1)

end A209898

/-! ## A209898.P9053856498470956289

`A004767(A209727(n+1))`
-/

namespace A209898.P9053856498470956289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A209727 (n + 1)).toNat

end

end A209898.P9053856498470956289

namespace A209898

/-- `A004767(A209727(n+1))` -/
def P9053856498470956289.Spec : Prop :=
  ∀ n, P9053856498470956289.a n = A209898 (n + 1)

end A209898

/-! ## A209898.P759882138480541206

`A130824(A209727(n+1)+1)+1`
-/

namespace A209898.P759882138480541206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A209727 (n + 1) + 1).toNat + 1

end

end A209898.P759882138480541206

namespace A209898

/-- `A130824(A209727(n+1)+1)+1` -/
def P759882138480541206.Spec : Prop :=
  ∀ n, P759882138480541206.a n = A209898 (n + 1)

end A209898

/-! ## A209898.P12098457169876585633

`A062545(2*A209727(n+1))`
-/

namespace A209898.P12098457169876585633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (2 * A209727 (n + 1)).toNat

end

end A209898.P12098457169876585633

namespace A209898

/-- `A062545(2*A209727(n+1))` -/
def P12098457169876585633.Spec : Prop :=
  ∀ n, P12098457169876585633.a n = A209898 (n + 1)

end A209898

/-! ## A209898.P3198480770325389070

`A092486(4*A209727(n+1))`
-/

namespace A209898.P3198480770325389070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (4 * A209727 (n + 1)).toNat

end

end A209898.P3198480770325389070

namespace A209898

/-- `A092486(4*A209727(n+1))` -/
def P3198480770325389070.Spec : Prop :=
  ∀ n, P3198480770325389070.a n = A209898 (n + 1)

end A209898

/-! ## A209898.P4806334118489881427

`A004273(2*(A183986(n+1)-A131816(n)))`
-/

namespace A209898.P4806334118489881427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * (A183986 (n + 1) - A131816 n)).toNat

end

end A209898.P4806334118489881427

namespace A209898

/-- `A004273(2*(A183986(n+1)-A131816(n)))` -/
def P4806334118489881427.Spec : Prop :=
  ∀ n, P4806334118489881427.a n = A209898 (n + 1)

end A209898

/-! ## A209898.P11968991248567782851

`A005408(A209727(n+1)+A209727(n+1)+1)`
-/

namespace A209898.P11968991248567782851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A209727 (n + 1) + (A209727 (n + 1) + 1)).toNat

end

end A209898.P11968991248567782851

namespace A209898

/-- `A005408(A209727(n+1)+A209727(n+1)+1)` -/
def P11968991248567782851.Spec : Prop :=
  ∀ n, P11968991248567782851.a n = A209898 (n + 1)

end A209898

/-! ## A209898.P8872624061819429536

`A004273(A209727(n+1)+A209727(n+1)+2)`
-/

namespace A209898.P8872624061819429536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A209727 (n + 1) + (A209727 (n + 1) + 2)).toNat

end

end A209898.P8872624061819429536

namespace A209898

/-- `A004273(A209727(n+1)+A209727(n+1)+2)` -/
def P8872624061819429536.Spec : Prop :=
  ∀ n, P8872624061819429536.a n = A209898 (n + 1)

end A209898

/-! ## A209898.P5461476494322970277

`A130823(A209727(n+1)+A016897(A209727(n+1)))`
-/

namespace A209898.P5461476494322970277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A209727 (n + 1) + A016897 (A209727 (n + 1)).toNat).toNat

end

end A209898.P5461476494322970277

namespace A209898

/-- `A130823(A209727(n+1)+A016897(A209727(n+1)))` -/
def P5461476494322970277.Spec : Prop :=
  ∀ n, P5461476494322970277.a n = A209898 (n + 1)

end A209898

/-! ## A209898.P780101323869259600

`A060762(8*A209727(n+1))`
-/

namespace A209898.P780101323869259600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060762 (8 * A209727 (n + 1)).toNat

end

end A209898.P780101323869259600

namespace A209898

/-- `A060762(8*A209727(n+1))` -/
def P780101323869259600.Spec : Prop :=
  ∀ n, P780101323869259600.a n = A209898 (n + 1)

end A209898

/-!
# A209899: Floor of the expected number of empty cells in a random placement of 2n balls into n cells.

The programs for A209899, the canonical program `A209899.P4398673381805796318` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209899 has offset 1).

The definition of A209899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209899.P4398673381805796318

`floor((n+1)*(1-1/(n+1))^(2*(n+1)))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209899

/-- `floor((n+1)*(1-1/(n+1))^(2*(n+1)))` -/
def P4398673381805796318.Spec : Prop :=
  ∀ n, P4398673381805796318.a n = A209899 (n + 1)

theorem P4398673381805796318.correct : P4398673381805796318.Spec := by
  intro n
  simp only [A209899, Nat.add_sub_cancel]

end A209899

/-! ## A209899.P11178102173666412773

`floor(n/e²)%12`
-/

namespace A209899.P11178102173666412773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) / Real.exp 1 ^ 2⌋ 12

end

end A209899.P11178102173666412773

namespace A209899

/-- `floor(n/e²)%12` -/
def P11178102173666412773.Spec : Prop :=
  ∀ n, P11178102173666412773.a n = A209899 (n + 1)

end A209899

/-! ## A209899.P3346222426748189327

`and(15, floor(n/e²))`
-/

namespace A209899.P3346222426748189327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 ⌊(n : ℝ) / Real.exp 1 ^ 2⌋

end

end A209899.P3346222426748189327

namespace A209899

/-- `and(15, floor(n/e²))` -/
def P3346222426748189327.Spec : Prop :=
  ∀ n, P3346222426748189327.a n = A209899 (n + 1)

end A209899

/-! ## A209899.P11256342166359317169

`ceil(sin(11)+n/exp(2))`
-/

namespace A209899.P11256342166359317169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (11 : ℝ) + (n : ℝ) / Real.exp (2 : ℝ)⌉

end

end A209899.P11256342166359317169

namespace A209899

/-- `ceil(sin(11)+n/exp(2))` -/
def P11256342166359317169.Spec : Prop :=
  ∀ n, P11256342166359317169.a n = A209899 (n + 1)

end A209899

/-! ## A209899.P16032926693429872658

`or(floor(n/e²), char[8])`
-/

namespace A209899.P16032926693429872658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℝ) / Real.exp 1 ^ 2⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209899.P16032926693429872658

namespace A209899

/-- `or(floor(n/e²), char[8])` -/
def P16032926693429872658.Spec : Prop :=
  ∀ n, P16032926693429872658.a n = A209899 (n + 1)

end A209899

/-! ## A209899.P10604015148029014229

`xor(1, xor(1, floor(n/e²)))`
-/

namespace A209899.P10604015148029014229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 ⌊(n : ℝ) / Real.exp 1 ^ 2⌋)

end

end A209899.P10604015148029014229

namespace A209899

/-- `xor(1, xor(1, floor(n/e²)))` -/
def P10604015148029014229.Spec : Prop :=
  ∀ n, P10604015148029014229.a n = A209899 (n + 1)

end A209899

/-! ## A209899.P12063613110558837862

`floor(n/e²)*ceil(acot(n))`
-/

namespace A209899.P12063613110558837862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.exp 1 ^ 2⌋ * ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A209899.P12063613110558837862

namespace A209899

/-- `floor(n/e²)*ceil(acot(n))` -/
def P12063613110558837862.Spec : Prop :=
  ∀ n, P12063613110558837862.a n = A209899 (n + 1)

end A209899

/-! ## A209899.P16150785399996183151

`lcm((-1)^n, floor(n/e²))`
-/

namespace A209899.P16150785399996183151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) ⌊(n : ℝ) / Real.exp 1 ^ 2⌋

end

end A209899.P16150785399996183151

namespace A209899

/-- `lcm((-1)^n, floor(n/e²))` -/
def P16150785399996183151.Spec : Prop :=
  ∀ n, (P16150785399996183151.a n : ℤ) = A209899 (n + 1)

end A209899

/-! ## A209899.P4350542050497664788

`comp[A182767(n+1)]-n`
-/

namespace A209899.P4350542050497664788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182767 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A209899.P4350542050497664788

namespace A209899

/-- `comp[A182767(n+1)]-n` -/
def P4350542050497664788.Spec : Prop :=
  ∀ n, P4350542050497664788.a n = A209899 (n + 1)

end A209899

/-! ## A209899.P11671328621039414264

`A001222(2^floor(n/e²))`
-/

namespace A209899.P11671328621039414264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℝ) / Real.exp 1 ^ 2⌋ : ℤ))).toNat

end

end A209899.P11671328621039414264

namespace A209899

/-- `A001222(2^floor(n/e²))` -/
def P11671328621039414264.Spec : Prop :=
  ∀ n, P11671328621039414264.a n = A209899 (n + 1)

end A209899

