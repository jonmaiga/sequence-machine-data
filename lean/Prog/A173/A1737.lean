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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A173700: a(n+1) is the smallest integer > a(n) such that the concatenation of a(n), [a(n+1)-a(n)] and a(n+1) is a prime number.

The programs for A173700, there is no canonical definition to state claims against.
-/

/-! ## A173700.P11203211916536268321

`record[A027746(A195846(n+1)+n)]`
-/

namespace A173700.P11203211916536268321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (A195846 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173700.P11203211916536268321

/-! ## A173700.P1708142094035007311

`A192864(n+2)%A192867(2*(n+1))`
-/

namespace A173700.P1708142094035007311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192864 (n + 2)) (A192867 (2 * (n + 1)))

end

end A173700.P1708142094035007311

/-! ## A173700.P7550081536448332561

`A377901(2*n+3)%∏{p}[A366720(n), #]`
-/

namespace A173700.P7550081536448332561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377901 (2 * n + 3)) ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A173700.P7550081536448332561

/-! ## A173700.P14386548073226342001

`A020639(A372629(n+3)^A003056(n))`
-/

namespace A173700.P14386548073226342001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A372629 (n + 3) : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A173700.P14386548073226342001

/-! ## A173700.P18230589954024922423

`A299956(n+3)%A299956(A008458(n))`
-/

namespace A173700.P18230589954024922423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299956 (n + 3)) (A299956 (A008458 n).toNat)

end

end A173700.P18230589954024922423

/-!
# A173702: Partial sums of prime numbers of measurement A002049.

The programs for A173702, there is no canonical definition to state claims against.
-/

/-! ## A173702.P6909945040216250928

`∑[A002049(n+1)]`
-/

namespace A173702.P6909945040216250928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173702.P6909945040216250928

/-! ## A173702.P3397689677546900763

`∑[∑[A002048(n+1)]]`
-/

namespace A173702.P3397689677546900763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173702.P3397689677546900763

/-! ## A173702.P16418397834714080059

`∑[A048204(n+1)+1]-A048204(n+1)`
-/

namespace A173702.P16418397834714080059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048204 (n + 1)

end

end A173702.P16418397834714080059

/-! ## A173702.P14294482979197212325

`∑[A004978(n+2)-1]`
-/

namespace A173702.P14294482979197212325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173702.P14294482979197212325

/-! ## A173702.P17660141923037325800

`∑[∑[abs(Δ[A004978(n+1)])]]`
-/

namespace A173702.P17660141923037325800
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f3 (n + 1) - f3 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173702.P17660141923037325800

/-! ## A173702.P14144329470829233806

`∑[∑[A048203(n+3)-A048202(n+3)]]`
-/

namespace A173702.P14144329470829233806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048203 (n + 3) - A048202 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173702.P14144329470829233806

/-! ## A173702.P4806786057052803428

`∑[∑[A048201(∑[n]+1)]]`
-/

namespace A173702.P4806786057052803428
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173702.P4806786057052803428

/-! ## A173702.P14138875416211987626

`∑[A048201(∑[n+1])]`
-/

namespace A173702.P14138875416211987626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173702.P14138875416211987626

/-!
# A173703: Composite numbers n with the property that phi(n) divides (n-1)^2.

The programs for A173703, there is no canonical definition to state claims against.
-/

/-! ## A173703.P3770059237693899272

`A270698(eq[A000463(n+1), A303362(n+3)]+1)`
-/

namespace A173703.P3770059237693899272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270698 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A173703.P3770059237693899272

/-! ## A173703.P7552126576254499409

`A047713(eq[A124766(n), A296086(n+1)])`
-/

namespace A173703.P7552126576254499409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A173703.P7552126576254499409

/-!
# A173704: Partial sums of floor(n^3/2).

The programs for A173704, the canonical program `A173704.P614540533073828019` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173704 has offset 0).

The definition of A173704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173704.P614540533073828019

`ceil((n-1)*(n+1)*(n²+2*n+2)/8)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173704

/-- `ceil((n-1)*(n+1)*(n²+2*n+2)/8)` -/
def P614540533073828019.Spec : Prop :=
  ∀ n, P614540533073828019.a n = A173704 n

theorem P614540533073828019.correct : P614540533073828019.Spec := by
  intro n
  simp only [A173704]

end A173704

/-! ## A173704.P14801784189915227182

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=17, a(4)=49, a(5)=111`
-/

namespace A173704.P14801784189915227182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4, 17, 49, 111] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 5 * a (n - 4) - 4 * a (n - 5) + a (n - 6)

end

end A173704.P14801784189915227182

namespace A173704

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P14801784189915227182.Spec : Prop :=
  ∀ n, P14801784189915227182.a n = A173704 n

end A173704

/-! ## A173704.P10902636443151553797

`∑[or(1, n^3)-1]/2`
-/

namespace A173704.P10902636443151553797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n ^ 3) : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A173704.P10902636443151553797

namespace A173704

/-- `∑[or(1, n^3)-1]/2` -/
def P10902636443151553797.Spec : Prop :=
  ∀ n, P10902636443151553797.a n = (A173704 n : ℚ)

end A173704

/-! ## A173704.P7358504210618482657

`floor((n/2)²)+C(∑[n], 2)`
-/

namespace A173704.P7358504210618482657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A173704.P7358504210618482657

namespace A173704

/-- `floor((n/2)²)+C(∑[n], 2)` -/
def P7358504210618482657.Spec : Prop :=
  ∀ n, P7358504210618482657.a n = A173704 n

end A173704

/-! ## A173704.P15163448265359674962

`floor(a(n-1)+n^3/2)` with `a(0)=0`
-/

namespace A173704.P15163448265359674962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n ^ 3 : ℚ) / 2⌋

end

end A173704.P15163448265359674962

namespace A173704

/-- `floor(a(n-1)+n^3/2)` -/
def P15163448265359674962.Spec : Prop :=
  ∀ n, P15163448265359674962.a n = A173704 n

end A173704

/-! ## A173704.P16604667311900585320

`a(n-1)+floor(n/2*n²)` with `a(0)=0`
-/

namespace A173704.P16604667311900585320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) / 2 * (n ^ 2 : ℚ)⌋

end

end A173704.P16604667311900585320

namespace A173704

/-- `a(n-1)+floor(n/2*n²)` -/
def P16604667311900585320.Spec : Prop :=
  ∀ n, P16604667311900585320.a n = A173704 n

end A173704

/-! ## A173704.P7516005261846396666

`floor(floor(a(n-1))+n*n*n/2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A173704.P7516005261846396666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) * ((n : ℚ) * ((n : ℚ) / 2))⌋

end

end A173704.P7516005261846396666

namespace A173704

/-- `floor(floor(a(n-1))+n*n*n/2)` -/
def P7516005261846396666.Spec : Prop :=
  ∀ n, P7516005261846396666.a n = A173704 n

end A173704

/-! ## A173704.P3525813301384041989

`∑[A036487(n)]`
-/

namespace A173704.P3525813301384041989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173704.P3525813301384041989

namespace A173704

/-- `∑[A036487(n)]` -/
def P3525813301384041989.Spec : Prop :=
  ∀ n, P3525813301384041989.a n = A173704 n

end A173704

/-! ## A173704.P16175343655453242073

`∑[A274324(n)-1]`
-/

namespace A173704.P16175343655453242073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173704.P16175343655453242073

namespace A173704

/-- `∑[A274324(n)-1]` -/
def P16175343655453242073.Spec : Prop :=
  ∀ n, P16175343655453242073.a n = A173704 n

end A173704

/-! ## A173704.P6716736446943797565

`∑[n]²-∑[A036486(n)]`
-/

namespace A173704.P6716736446943797565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A173704.P6716736446943797565

namespace A173704

/-- `∑[n]²-∑[A036486(n)]` -/
def P6716736446943797565.Spec : Prop :=
  ∀ n, P6716736446943797565.a n = A173704 n

end A173704

/-! ## A173704.P139381239179326827

`(∑[n]²-A110654(n))/2`
-/

namespace A173704.P139381239179326827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A110654 n : ℚ) / 2

end

end A173704.P139381239179326827

namespace A173704

/-- `(∑[n]²-A110654(n))/2` -/
def P139381239179326827.Spec : Prop :=
  ∀ n, P139381239179326827.a n = (A173704 n : ℚ)

end A173704

/-! ## A173704.P10292289222780769852

`∑[abs(or(1, A000578(n))-1)]/2`
-/

namespace A173704.P10292289222780769852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (A000578 n) - 1|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A173704.P10292289222780769852

namespace A173704

/-- `∑[abs(or(1, A000578(n))-1)]/2` -/
def P10292289222780769852.Spec : Prop :=
  ∀ n, P10292289222780769852.a n = (A173704 n : ℚ)

end A173704

/-! ## A173704.P5309250093635688384

`A006528(n)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A173704.P5309250093635688384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006528 n - (a (n - 1) + (n : ℤ))

end

end A173704.P5309250093635688384

namespace A173704

/-- `A006528(n)-(a(n-1)+n)` -/
def P5309250093635688384.Spec : Prop :=
  ∀ n, P5309250093635688384.a n = A173704 n

end A173704

/-! ## A173704.P12916262394995420619

`∑[A032766(n)+(n-1)*∑[n]]-∑[n]`
-/

namespace A173704.P12916262394995420619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A173704.P12916262394995420619

namespace A173704

/-- `∑[A032766(n)+(n-1)*∑[n]]-∑[n]` -/
def P12916262394995420619.Spec : Prop :=
  ∀ n, P12916262394995420619.a n = A173704 n

end A173704

/-! ## A173704.P10116442297061725942

`(A000217(n)+1)*C(n, 2)-a(n-1)` with `a(0)=0`
-/

namespace A173704.P10116442297061725942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (A000217 n + 1) * (Nat.choose n 2 : ℤ) - a (n - 1)

end

end A173704.P10116442297061725942

namespace A173704

/-- `(A000217(n)+1)*C(n, 2)-a(n-1)` -/
def P10116442297061725942.Spec : Prop :=
  ∀ n, P10116442297061725942.a n = A173704 n

end A173704

/-! ## A173704.P6082906729395609981

`A212714(n)+A045947(n)`
-/

namespace A173704.P6082906729395609981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n + A045947 n

end

end A173704.P6082906729395609981

namespace A173704

/-- `A212714(n)+A045947(n)` -/
def P6082906729395609981.Spec : Prop :=
  ∀ n, P6082906729395609981.a n = A173704 n

end A173704

/-! ## A173704.P121747213158298253

`A212685(n)+A090809(n)`
-/

namespace A173704.P121747213158298253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212685 n + A090809 n

end

end A173704.P121747213158298253

namespace A173704

/-- `A212685(n)+A090809(n)` -/
def P121747213158298253.Spec : Prop :=
  ∀ n, P121747213158298253.a n = A173704 n

end A173704

/-! ## A173704.P6347691819300133630

`A105636(n)-A019298(n)`
-/

namespace A173704.P6347691819300133630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 n - A019298 n

end

end A173704.P6347691819300133630

namespace A173704

/-- `A105636(n)-A019298(n)` -/
def P6347691819300133630.Spec : Prop :=
  ∀ n, P6347691819300133630.a n = A173704 n

end A173704

/-! ## A173704.P12538397910736431927

`A001296(n)-A131941(n)`
-/

namespace A173704.P12538397910736431927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n - A131941 n

end

end A173704.P12538397910736431927

namespace A173704

/-- `A001296(n)-A131941(n)` -/
def P12538397910736431927.Spec : Prop :=
  ∀ n, P12538397910736431927.a n = A173704 n

end A173704

/-! ## A173704.P14800146946215338404

`A131479(n)-A050534(n)`
-/

namespace A173704.P14800146946215338404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131479 n - A050534 n

end

end A173704.P14800146946215338404

namespace A173704

/-- `A131479(n)-A050534(n)` -/
def P14800146946215338404.Spec : Prop :=
  ∀ n, P14800146946215338404.a n = A173704 n

end A173704

/-!
# A173706: Triangle read by rows, of p*(q-1) for primes p, q with p>q.

The programs for A173706, the canonical program `A173706.P12511956019214368513` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173706 has offset 1).

The definition of A173706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173706.P12511956019214368513

`(A037126(n+1)-1)*A005145(A014132(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A173706

/-- `(A037126(n+1)-1)*A005145(A014132(n+1))` -/
def P12511956019214368513.Spec : Prop :=
  ∀ n, P12511956019214368513.a n = A173706 (n + 1)

theorem P12511956019214368513.correct : P12511956019214368513.Spec := by
  intro n
  simp only [A173706, Nat.add_sub_cancel]

end A173706

/-! ## A173706.P12101817297918970984

`(A037126(n+1)-1)*A000040(A003057(n+2))`
-/

namespace A173706.P12101817297918970984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037126 (n + 1) - 1) * A000040 (A003057 (n + 2)).toNat

end

end A173706.P12101817297918970984

namespace A173706

/-- `(A037126(n+1)-1)*A000040(A003057(n+2))` -/
def P12101817297918970984.Spec : Prop :=
  ∀ n, P12101817297918970984.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P16446678042881481825

`A037126(n+1)*A389809(n+1)-A389809(n+1)`
-/

namespace A173706.P16446678042881481825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A389809 (n + 1) - A389809 (n + 1)

end

end A173706.P16446678042881481825

namespace A173706

/-- `A037126(n+1)*A389809(n+1)-A389809(n+1)` -/
def P16446678042881481825.Spec : Prop :=
  ∀ n, P16446678042881481825.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P9049651496830416830

`A087112(A014132(n+1))-A005145(A014132(n+1))`
-/

namespace A173706.P9049651496830416830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (A014132 (n + 1)).toNat - A005145 (A014132 (n + 1)).toNat

end

end A173706.P9049651496830416830

namespace A173706

/-- `A087112(A014132(n+1))-A005145(A014132(n+1))` -/
def P9049651496830416830.Spec : Prop :=
  ∀ n, P9049651496830416830.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P5176712235782330161

`A087112(A014132(n+1))-A065091(A002024(n+1))`
-/

namespace A173706.P5176712235782330161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (A014132 (n + 1)).toNat - A065091 (A002024 (n + 1)).toNat

end

end A173706.P5176712235782330161

namespace A173706

/-- `A087112(A014132(n+1))-A065091(A002024(n+1))` -/
def P5176712235782330161.Spec : Prop :=
  ∀ n, P5176712235782330161.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P17107721735832020440

`A005145(A014132(n+1))*A023443(A037126(n+1))`
-/

namespace A173706.P17107721735832020440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A014132 (n + 1)).toNat * A023443 (A037126 (n + 1)).toNat

end

end A173706.P17107721735832020440

namespace A173706

/-- `A005145(A014132(n+1))*A023443(A037126(n+1))` -/
def P17107721735832020440.Spec : Prop :=
  ∀ n, P17107721735832020440.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P5778466042697296754

`A000010(A037126(n+1))*A065091(A002024(n+1))`
-/

namespace A173706.P5778466042697296754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A037126 (n + 1)).toNat * A065091 (A002024 (n + 1)).toNat

end

end A173706.P5778466042697296754

namespace A173706

/-- `A000010(A037126(n+1))*A065091(A002024(n+1))` -/
def P5778466042697296754.Spec : Prop :=
  ∀ n, P5778466042697296754.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P14688584416230795080

`A087112(A014132(n+1))-A000040(A003057(n+2))`
-/

namespace A173706.P14688584416230795080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (A014132 (n + 1)).toNat - A000040 (A003057 (n + 2)).toNat

end

end A173706.P14688584416230795080

namespace A173706

/-- `A087112(A014132(n+1))-A000040(A003057(n+2))` -/
def P14688584416230795080.Spec : Prop :=
  ∀ n, P14688584416230795080.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P17716176182622962426

`A000010(A037126(n+1))*A165712(A005145(n+1))`
-/

namespace A173706.P17716176182622962426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A037126 (n + 1)).toNat * A165712 (A005145 (n + 1)).toNat

end

end A173706.P17716176182622962426

namespace A173706

/-- `A000010(A037126(n+1))*A165712(A005145(n+1))` -/
def P17716176182622962426.Spec : Prop :=
  ∀ n, P17716176182622962426.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P11749275614792388351

`A000010(A037126(n+1))*A051599(A127739(n+1))`
-/

namespace A173706.P11749275614792388351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A037126 (n + 1)).toNat * A051599 (A127739 (n + 1)).toNat

end

end A173706.P11749275614792388351

namespace A173706

/-- `A000010(A037126(n+1))*A051599(A127739(n+1))` -/
def P11749275614792388351.Spec : Prop :=
  ∀ n, P11749275614792388351.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P8873562757199309703

`A000040(A003057(n+2))*A006093(A002260(n+1))`
-/

namespace A173706.P8873562757199309703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2)).toNat * A006093 (A002260 (n + 1)).toNat

end

end A173706.P8873562757199309703

namespace A173706

/-- `A000040(A003057(n+2))*A006093(A002260(n+1))` -/
def P8873562757199309703.Spec : Prop :=
  ∀ n, P8873562757199309703.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P9576381630149791303

`A000040(A003057(n+2))*A124625(A037126(n+1))`
-/

namespace A173706.P9576381630149791303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2)).toNat * A124625 (A037126 (n + 1)).toNat

end

end A173706.P9576381630149791303

namespace A173706

/-- `A000040(A003057(n+2))*A124625(A037126(n+1))` -/
def P9576381630149791303.Spec : Prop :=
  ∀ n, P9576381630149791303.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P4607771203784507445

`(A204890(n+1)+A037126(n+1))*A124625(A037126(n+1))`
-/

namespace A173706.P4607771203784507445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A204890 (n + 1) + A037126 (n + 1)) * A124625 (A037126 (n + 1)).toNat

end

end A173706.P4607771203784507445

namespace A173706

/-- `(A204890(n+1)+A037126(n+1))*A124625(A037126(n+1))` -/
def P4607771203784507445.Spec : Prop :=
  ∀ n, P4607771203784507445.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P7101344096882956524

`A339116(n+2)-A389809(n+1)`
-/

namespace A173706.P7101344096882956524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339116 (n + 2) - A389809 (n + 1)

end

end A173706.P7101344096882956524

namespace A173706

/-- `A339116(n+2)-A389809(n+1)` -/
def P7101344096882956524.Spec : Prop :=
  ∀ n, P7101344096882956524.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P16889180618901316391

`A060681(A339116(n+2))`
-/

namespace A173706.P16889180618901316391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A339116 (n + 2)).toNat

end

end A173706.P16889180618901316391

namespace A173706

/-- `A060681(A339116(n+2))` -/
def P16889180618901316391.Spec : Prop :=
  ∀ n, P16889180618901316391.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P4462826713792784574

`A087112(A014132(n+1))-A117366(A087112(n+1))`
-/

namespace A173706.P4462826713792784574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (A014132 (n + 1)).toNat - A117366 (A087112 (n + 1)).toNat

end

end A173706.P4462826713792784574

namespace A173706

/-- `A087112(A014132(n+1))-A117366(A087112(n+1))` -/
def P4462826713792784574.Spec : Prop :=
  ∀ n, P4462826713792784574.a n = A173706 (n + 1)

end A173706

/-! ## A173706.P11990440201829486809

`A087112(A014132(n+1))-A094290(A140513(n))`
-/

namespace A173706.P11990440201829486809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (A014132 (n + 1)).toNat - A094290 (A140513 n).toNat

end

end A173706.P11990440201829486809

namespace A173706

/-- `A087112(A014132(n+1))-A094290(A140513(n))` -/
def P11990440201829486809.Spec : Prop :=
  ∀ n, P11990440201829486809.a n = A173706 (n + 1)

end A173706

/-!
# A173707: Partial sums of floor(n^3/3).

The programs for A173707, the canonical program `A173707.P2628677450938599136` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173707 has offset 0).

The definition of A173707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173707.P2628677450938599136

`floor((n^4+2*n^3+n²-4*n)/12)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173707

/-- `floor((n^4+2*n^3+n²-4*n)/12)` -/
def P2628677450938599136.Spec : Prop :=
  ∀ n, P2628677450938599136.a n = A173707 n

theorem P2628677450938599136.correct : P2628677450938599136.Spec := by
  intro n
  simp only [A173707]

end A173707

/-! ## A173707.P12056874356240330612

`a(n-3)+n^3-3*n²+5*n-4` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A173707.P12056874356240330612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 3) + (n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (5 * n : ℤ) - 4

end

end A173707.P12056874356240330612

namespace A173707

/-- `a(n-3)+n^3-3*n²+5*n-4` -/
def P12056874356240330612.Spec : Prop :=
  ∀ n, P12056874356240330612.a n = A173707 n

end A173707

/-! ## A173707.P17196678204403397299

`round((C(n+1, 2)²-n)/3)`
-/

namespace A173707.P17196678204403397299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (n + 1) 2 ^ 2 : ℤ) - (n : ℤ) : ℚ) / 3)

end

end A173707.P17196678204403397299

namespace A173707

/-- `round((C(n+1, 2)²-n)/3)` -/
def P17196678204403397299.Spec : Prop :=
  ∀ n, P17196678204403397299.a n = A173707 n

end A173707

/-! ## A173707.P8696759613686559645

`ceil((C(n+1, 2)²-2-n)/3)`
-/

namespace A173707.P8696759613686559645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (n + 1) 2 ^ 2 : ℤ) - 2 - (n : ℤ) : ℚ) / 3⌉

end

end A173707.P8696759613686559645

namespace A173707

/-- `ceil((C(n+1, 2)²-2-n)/3)` -/
def P8696759613686559645.Spec : Prop :=
  ∀ n, P8696759613686559645.a n = A173707 n

end A173707

/-! ## A173707.P5652650231533181292

`a(n-1)+floor(n/3*n²)` with `a(0)=0`
-/

namespace A173707.P5652650231533181292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) / 3 * (n ^ 2 : ℚ)⌋

end

end A173707.P5652650231533181292

namespace A173707

/-- `a(n-1)+floor(n/3*n²)` -/
def P5652650231533181292.Spec : Prop :=
  ∀ n, P5652650231533181292.a n = A173707 n

end A173707

/-! ## A173707.P1582980926554323664

`∑[A131476(n)]`
-/

namespace A173707.P1582980926554323664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173707.P1582980926554323664

namespace A173707

/-- `∑[A131476(n)]` -/
def P1582980926554323664.Spec : Prop :=
  ∀ n, P1582980926554323664.a n = A173707 n

end A173707

/-! ## A173707.P11316329796996568839

`∑[A393346(n)-n²]`
-/

namespace A173707.P11316329796996568839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393346 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173707.P11316329796996568839

namespace A173707

/-- `∑[A393346(n)-n²]` -/
def P11316329796996568839.Spec : Prop :=
  ∀ n, P11316329796996568839.a n = A173707 n

end A173707

/-! ## A173707.P14620138499968125979

`ceil(∑[A000578(n)-1]/3)`
-/

namespace A173707.P14620138499968125979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A173707.P14620138499968125979

namespace A173707

/-- `ceil(∑[A000578(n)-1]/3)` -/
def P14620138499968125979.Spec : Prop :=
  ∀ n, P14620138499968125979.a n = A173707 n

end A173707

/-! ## A173707.P1097014067886139570

`(∑[n]²-A130481(n))/3`
-/

namespace A173707.P1097014067886139570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A130481 n : ℚ) / 3

end

end A173707.P1097014067886139570

namespace A173707

/-- `(∑[n]²-A130481(n))/3` -/
def P1097014067886139570.Spec : Prop :=
  ∀ n, P1097014067886139570.a n = (A173707 n : ℚ)

end A173707

/-! ## A173707.P11508497264640378895

`A134393(n+1)-A143975(n+1)`
-/

namespace A173707.P11508497264640378895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134393 (n + 1) - A143975 (n + 1)

end

end A173707.P11508497264640378895

namespace A173707

/-- `A134393(n+1)-A143975(n+1)` -/
def P11508497264640378895.Spec : Prop :=
  ∀ n, P11508497264640378895.a n = A173707 n

end A173707

/-! ## A173707.P15914823221388173168

`A006007(n)-A000212(n+1)`
-/

namespace A173707.P15914823221388173168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n - A000212 (n + 1)

end

end A173707.P15914823221388173168

namespace A173707

/-- `A006007(n)-A000212(n+1)` -/
def P15914823221388173168.Spec : Prop :=
  ∀ n, P15914823221388173168.a n = A173707 n

end A173707

/-! ## A173707.P6690013009666166543

`A087483(∑[n])-A087483(n)`
-/

namespace A173707.P6690013009666166543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (∑ j ∈ Finset.range (n + 1), f1 j) - A087483 n

end

end A173707.P6690013009666166543

namespace A173707

/-- `A087483(∑[n])-A087483(n)` -/
def P6690013009666166543.Spec : Prop :=
  ∀ n, P6690013009666166543.a n = A173707 n

end A173707

/-! ## A173707.P18229457179162679987

`A000212(∑[n])-A002264(n+1)`
-/

namespace A173707.P18229457179162679987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (∑ j ∈ Finset.range (n + 1), f1 j) - A002264 (n + 1)

end

end A173707.P18229457179162679987

namespace A173707

/-- `A000212(∑[n])-A002264(n+1)` -/
def P18229457179162679987.Spec : Prop :=
  ∀ n, P18229457179162679987.a n = A173707 n

end A173707

/-! ## A173707.P3002230375002070025

`A032765(∑[n])-A000212(n+1)`
-/

namespace A173707.P3002230375002070025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (∑ j ∈ Finset.range (n + 1), f1 j) - A000212 (n + 1)

end

end A173707.P3002230375002070025

namespace A173707

/-- `A032765(∑[n])-A000212(n+1)` -/
def P3002230375002070025.Spec : Prop :=
  ∀ n, P3002230375002070025.a n = A173707 n

end A173707

/-! ## A173707.P13215487216357266230

`A000212(A000124(n))-A000212(n+1)`
-/

namespace A173707.P13215487216357266230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A000124 n).toNat - A000212 (n + 1)

end

end A173707.P13215487216357266230

namespace A173707

/-- `A000212(A000124(n))-A000212(n+1)` -/
def P13215487216357266230.Spec : Prop :=
  ∀ n, P13215487216357266230.a n = A173707 n

end A173707

/-! ## A173707.P258610326785210190

`A000212(A179865(n+1)-1)+A000212(n)`
-/

namespace A173707.P258610326785210190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A179865 (n + 1) - 1).toNat + A000212 n

end

end A173707.P258610326785210190

namespace A173707

/-- `A000212(A179865(n+1)-1)+A000212(n)` -/
def P258610326785210190.Spec : Prop :=
  ∀ n, P258610326785210190.a n = A173707 n

end A173707

/-! ## A173707.P17336123491945817800

`A069905(A002378(n))-A002264(n+1)`
-/

namespace A173707.P17336123491945817800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A002378 n).toNat - A002264 (n + 1)

end

end A173707.P17336123491945817800

namespace A173707

/-- `A069905(A002378(n))-A002264(n+1)` -/
def P17336123491945817800.Spec : Prop :=
  ∀ n, P17336123491945817800.a n = A173707 n

end A173707

/-!
# A173708: Numbers of the form p*(q-1) for primes p, q with p>q.

The programs for A173708, there is no canonical definition to state claims against.
-/

/-! ## A173708.P7403778695155458346

`∩[A096157(n+1), A335126(n+1)]`
-/

namespace A173708.P7403778695155458346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173708.P7403778695155458346

/-! ## A173708.P877349025474957186

`∩[A335126(n+1), A367861(n+1)]`
-/

namespace A173708.P877349025474957186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173708.P877349025474957186

/-! ## A173708.P9122559665623914039

`∩[A335126(n+1), A106092(n+2)]`
-/

namespace A173708.P9122559665623914039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173708.P9122559665623914039

/-! ## A173708.P16485668964758730736

`∩[A335126(n+1), A265999(n+2)]`
-/

namespace A173708.P16485668964758730736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265999 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173708.P16485668964758730736

/-! ## A173708.P13919310258803523470

`∩[A075592(n+1), A335126(n+1)]`
-/

namespace A173708.P13919310258803523470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173708.P13919310258803523470

/-!
# A173711: Nonnegative integers, six even followed by two odd.

The programs for A173711, the canonical program `A173711.P17315326403059684783` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173711 has offset 0).

The definition of A173711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173711.P972165717176324121

`∑[char[or(5, n)+1]]`
-/

namespace A173711.P972165717176324121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173711.P972165717176324121

namespace A173711

/-- `∑[char[or(5, n)+1]]` -/
def P972165717176324121.Spec : Prop :=
  ∀ n, (P972165717176324121.a n : ℤ) = A173711 n

end A173711

/-! ## A173711.P11106590099820282366

`∑[char[record[xor(5, n)+1]]]`
-/

namespace A173711.P11106590099820282366
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173711.P11106590099820282366

namespace A173711

/-- `∑[char[record[xor(5, n)+1]]]` -/
def P11106590099820282366.Spec : Prop :=
  ∀ n, (P11106590099820282366.a n : ℤ) = A173711 n

end A173711

/-! ## A173711.P14869171062231093406

`∑[char[∑[(gcd(2, n)+1)!]]]`
-/

namespace A173711.P14869171062231093406
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 2 n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173711.P14869171062231093406

namespace A173711

/-- `∑[char[∑[(gcd(2, n)+1)!]]]` -/
def P14869171062231093406.Spec : Prop :=
  ∀ n, (P14869171062231093406.a n : ℤ) = A173711 n

end A173711

/-! ## A173711.P17315326403059684783

`floor((n+2)/8)+floor(n/8)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173711

/-- `floor((n+2)/8)+floor(n/8)` -/
def P17315326403059684783.Spec : Prop :=
  ∀ n, P17315326403059684783.a n = A173711 n

theorem P17315326403059684783.correct : P17315326403059684783.Spec := by
  intro n
  simp only [A173711]

end A173711

/-! ## A173711.P1518005657059948200

`A004524(floor(n/2))`
-/

namespace A173711.P1518005657059948200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 ⌊(n : ℚ) / 2⌋.toNat

end

end A173711.P1518005657059948200

namespace A173711

/-- `A004524(floor(n/2))` -/
def P1518005657059948200.Spec : Prop :=
  ∀ n, P1518005657059948200.a n = A173711 n

end A173711

/-! ## A173711.P14834746573132138803

`∑[char[Δ[A139596(n)]]]`
-/

namespace A173711.P14834746573132138803
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173711.P14834746573132138803

namespace A173711

/-- `∑[char[Δ[A139596(n)]]]` -/
def P14834746573132138803.Spec : Prop :=
  ∀ n, (P14834746573132138803.a n : ℤ) = A173711 n

end A173711

/-! ## A173711.P18134227132982965093

`∑[char[A047451(n+2)]]`
-/

namespace A173711.P18134227132982965093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173711.P18134227132982965093

namespace A173711

/-- `∑[char[A047451(n+2)]]` -/
def P18134227132982965093.Spec : Prop :=
  ∀ n, (P18134227132982965093.a n : ℤ) = A173711 n

end A173711

/-! ## A173711.P15523594101952314248

`A004523(A057360(n))`
-/

namespace A173711.P15523594101952314248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A057360 n).toNat

end

end A173711.P15523594101952314248

namespace A173711

/-- `A004523(A057360(n))` -/
def P15523594101952314248.Spec : Prop :=
  ∀ n, P15523594101952314248.a n = A173711 n

end A173711

/-! ## A173711.P690613886134117336

`A004526(A140427(n))`
-/

namespace A173711.P690613886134117336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A140427 n).toNat

end

end A173711.P690613886134117336

namespace A173711

/-- `A004526(A140427(n))` -/
def P690613886134117336.Spec : Prop :=
  ∀ n, P690613886134117336.a n = A173711 n

end A173711

/-! ## A173711.P7794245745929368365

`A002264(2*A057360(n))`
-/

namespace A173711.P7794245745929368365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A057360 n).toNat

end

end A173711.P7794245745929368365

namespace A173711

/-- `A002264(2*A057360(n))` -/
def P7794245745929368365.Spec : Prop :=
  ∀ n, P7794245745929368365.a n = A173711 n

end A173711

/-! ## A173711.P5457356135187948489

`A002265(A047624(A004526(n)+1))`
-/

namespace A173711.P5457356135187948489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A047624 (A004526 n + 1).toNat).toNat

end

end A173711.P5457356135187948489

namespace A173711

/-- `A002265(A047624(A004526(n)+1))` -/
def P5457356135187948489.Spec : Prop :=
  ∀ n, P5457356135187948489.a n = A173711 n

end A173711

/-! ## A173711.P7999209080901763712

`A002264(A057360(n)+A057360(n))`
-/

namespace A173711.P7999209080901763712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A057360 n + A057360 n).toNat

end

end A173711.P7999209080901763712

namespace A173711

/-- `A002264(A057360(n)+A057360(n))` -/
def P7999209080901763712.Spec : Prop :=
  ∀ n, P7999209080901763712.a n = A173711 n

end A173711

/-! ## A173711.P11064272308556553248

`A002265(n-A140081(A004526(n+1)))`
-/

namespace A173711.P11064272308556553248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n : ℤ) - A140081 (A004526 (n + 1)).toNat).toNat

end

end A173711.P11064272308556553248

namespace A173711

/-- `A002265(n-A140081(A004526(n+1)))` -/
def P11064272308556553248.Spec : Prop :=
  ∀ n, P11064272308556553248.a n = A173711 n

end A173711

/-! ## A173711.P1676759971131774116

`A004523(A057353(A002264(A032766(n))))`
-/

namespace A173711.P1676759971131774116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A057353 (A002264 (A032766 n).toNat).toNat).toNat

end

end A173711.P1676759971131774116

namespace A173711

/-- `A004523(A057353(A002264(A032766(n))))` -/
def P1676759971131774116.Spec : Prop :=
  ∀ n, P1676759971131774116.a n = A173711 n

end A173711

/-! ## A173711.P12846221599118177814

`A004525(A093391(2*n+1))`
-/

namespace A173711.P12846221599118177814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A093391 (2 * n + 1)).toNat

end

end A173711.P12846221599118177814

namespace A173711

/-- `A004525(A093391(2*n+1))` -/
def P12846221599118177814.Spec : Prop :=
  ∀ n, P12846221599118177814.a n = A173711 n

end A173711

/-! ## A173711.P5170679222005078794

`A057356(A047380(A098180(A002265(2*n+1))))`
-/

namespace A173711.P5170679222005078794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A047380 (A098180 (A002265 (2 * n + 1)).toNat).toNat).toNat

end

end A173711.P5170679222005078794

namespace A173711

/-- `A057356(A047380(A098180(A002265(2*n+1))))` -/
def P5170679222005078794.Spec : Prop :=
  ∀ n, P5170679222005078794.a n = A173711 n

end A173711

/-! ## A173711.P7186246255871319276

`and(A002265(n), A309523(n+1))`
-/

namespace A173711.P7186246255871319276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002265 n) (A309523 (n + 1))

end

end A173711.P7186246255871319276

namespace A173711

/-- `and(A002265(n), A309523(n+1))` -/
def P7186246255871319276.Spec : Prop :=
  ∀ n, P7186246255871319276.a n = A173711 n

end A173711

/-!
# A173712: Numbers n such that (n+n+1) divides the decimal concatenation [n, n+1].

The programs for A173712, the canonical program `A173712.P11373499003827586069` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173712 has offset 1).

The definition of A173712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173712.P11373499003827586069

`11*a(n-2)-10*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=49`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173712

/-- `11*a(n-2)-10*a(n-4)` -/
def P11373499003827586069.Spec : Prop :=
  ∀ n, P11373499003827586069.a n = A173712 (n + 1)

theorem P11373499003827586069.correct : P11373499003827586069.Spec := by
  intro n
  simp only [A173712, Nat.add_sub_cancel]

end A173712

/-! ## A173712.P1338973274821672543

`ogf((1+4x+5x^2+5x^3)/(1-11x^2+10x^4))`
-/

namespace A173712.P1338973274821672543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 5, 5] [1, 0, -11, 0, 10] n

end

end A173712.P1338973274821672543

namespace A173712

/-- `ogf((1+4x+5x^2+5x^3)/(1-11x^2+10x^4))` -/
def P1338973274821672543.Spec : Prop :=
  ∀ n, P1338973274821672543.a n = A173712 (n + 1)

end A173712

/-! ## A173712.P825741885589087608

`floor(A338712(2*(n+1))/2)`
-/

namespace A173712.P825741885589087608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A338712 (2 * (n + 1)) : ℚ) / 2⌋

end

end A173712.P825741885589087608

namespace A173712

/-- `floor(A338712(2*(n+1))/2)` -/
def P825741885589087608.Spec : Prop :=
  ∀ n, P825741885589087608.a n = A173712 (n + 1)

end A173712

/-! ## A173712.P13988146730877081759

`(A338712(2*n+2)-1)/2`
-/

namespace A173712.P13988146730877081759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338712 (2 * n + 2) - 1 : ℚ) / 2

end

end A173712.P13988146730877081759

namespace A173712

/-- `(A338712(2*n+2)-1)/2` -/
def P13988146730877081759.Spec : Prop :=
  ∀ n, P13988146730877081759.a n = (A173712 (n + 1) : ℚ)

end A173712

/-! ## A173712.P6968672851156117372

`floor(A268099(n)/(char[2*n]+2))`
-/

namespace A173712.P6968672851156117372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268099 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 2 : ℕ) : ℚ)⌋

end

end A173712.P6968672851156117372

namespace A173712

/-- `floor(A268099(n)/(char[2*n]+2))` -/
def P6968672851156117372.Spec : Prop :=
  ∀ n, P6968672851156117372.a n = A173712 (n + 1)

end A173712

/-! ## A173712.P3083377446410594929

`A286507(n)+A002277(n)%A256162(n+1)`
-/

namespace A173712.P3083377446410594929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n + Int.tmod (A002277 n) (A256162 (n + 1))

end

end A173712.P3083377446410594929

namespace A173712

/-- `A286507(n)+A002277(n)%A256162(n+1)` -/
def P3083377446410594929.Spec : Prop :=
  ∀ n, P3083377446410594929.a n = A173712 (n + 1)

end A173712

/-!
# A173714: a(n) = floor(Lucas(n+1)/2), Lucas(n) = A000032(n).

The programs for A173714, the canonical program `A173714.P12512904081902805504` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173714 has offset 0).

The definition of A173714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173714.P12512904081902805504

`A364587(n+1)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173714

/-- `A364587(n+1)-1` -/
def P12512904081902805504.Spec : Prop :=
  ∀ n, P12512904081902805504.a n = A173714 n

theorem P12512904081902805504.correct : P12512904081902805504.Spec := by
  intro n
  simp only [A173714]

end A173714

/-! ## A173714.P13963533186179972498

`A000032(n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A173714.P13963533186179972498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A000032 (n - 1) + a (n - 3)

end

end A173714.P13963533186179972498

namespace A173714

/-- `A000032(n-1)+a(n-3)` -/
def P13963533186179972498.Spec : Prop :=
  ∀ n, P13963533186179972498.a n = A173714 n

end A173714

/-! ## A173714.P1374737506523711300

`A108014(n)-A278718(n)`
-/

namespace A173714.P1374737506523711300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108014 n - A278718 n

end

end A173714.P1374737506523711300

namespace A173714

/-- `A108014(n)-A278718(n)` -/
def P1374737506523711300.Spec : Prop :=
  ∀ n, P1374737506523711300.a n = A173714 n

end A173714

/-! ## A173714.P4750552531727545746

`A004695(n+1)+A000045(n)`
-/

namespace A173714.P4750552531727545746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + A000045 n

end

end A173714.P4750552531727545746

namespace A173714

/-- `A004695(n+1)+A000045(n)` -/
def P4750552531727545746.Spec : Prop :=
  ∀ n, P4750552531727545746.a n = A173714 n

end A173714

/-! ## A173714.P11690650682399651007

`A366043(n+1)-A131561(n)`
-/

namespace A173714.P11690650682399651007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366043 (n + 1) - A131561 n

end

end A173714.P11690650682399651007

namespace A173714

/-- `A366043(n+1)-A131561(n)` -/
def P11690650682399651007.Spec : Prop :=
  ∀ n, P11690650682399651007.a n = A173714 n

end A173714

/-! ## A173714.P11073013867365015753

`A212804(n+1)+A004695(n+1)`
-/

namespace A173714.P11073013867365015753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A004695 (n + 1)

end

end A173714.P11073013867365015753

namespace A173714

/-- `A212804(n+1)+A004695(n+1)` -/
def P11073013867365015753.Spec : Prop :=
  ∀ n, P11073013867365015753.a n = A173714 n

end A173714

/-! ## A173714.P11713848271153106511

`A000045(n+2)-A173173(n+1)`
-/

namespace A173714.P11713848271153106511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A173173 (n + 1)

end

end A173714.P11713848271153106511

namespace A173714

/-- `A000045(n+2)-A173173(n+1)` -/
def P11713848271153106511.Spec : Prop :=
  ∀ n, P11713848271153106511.a n = A173714 n

end A173714

/-! ## A173714.P26874174554454278

`A302126(2*n)+A004695(n+1)`
-/

namespace A173714.P26874174554454278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n) + A004695 (n + 1)

end

end A173714.P26874174554454278

namespace A173714

/-- `A302126(2*n)+A004695(n+1)` -/
def P26874174554454278.Spec : Prop :=
  ∀ n, P26874174554454278.a n = A173714 n

end A173714

/-! ## A173714.P13805709847442622020

`floor(A000045(n)+A000045(n+1)/2)`
-/

namespace A173714.P13805709847442622020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) + (A000045 (n + 1) : ℚ) / 2⌋

end

end A173714.P13805709847442622020

namespace A173714

/-- `floor(A000045(n)+A000045(n+1)/2)` -/
def P13805709847442622020.Spec : Prop :=
  ∀ n, P13805709847442622020.a n = A173714 n

end A173714

/-! ## A173714.P16668558280183314909

`A303427(2*n+1)+A004695(n+1)`
-/

namespace A173714.P16668558280183314909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n + 1) + A004695 (n + 1)

end

end A173714.P16668558280183314909

namespace A173714

/-- `A303427(2*n+1)+A004695(n+1)` -/
def P16668558280183314909.Spec : Prop :=
  ∀ n, P16668558280183314909.a n = A173714 n

end A173714

/-! ## A173714.P15448917131643414245

`A131532(2*n)+A173495(n+1)-1`
-/

namespace A173714.P15448917131643414245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131532 (2 * n) + (A173495 (n + 1) - 1)

end

end A173714.P15448917131643414245

namespace A173714

/-- `A131532(2*n)+A173495(n+1)-1` -/
def P15448917131643414245.Spec : Prop :=
  ∀ n, P15448917131643414245.a n = A173714 n

end A173714

/-! ## A173714.P971477378889699711

`A212804(n+1)+A104221(n+1)/2`
-/

namespace A173714.P971477378889699711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (n + 1) : ℚ) + (A104221 (n + 1) : ℚ) / 2

end

end A173714.P971477378889699711

namespace A173714

/-- `A212804(n+1)+A104221(n+1)/2` -/
def P971477378889699711.Spec : Prop :=
  ∀ n, P971477378889699711.a n = (A173714 n : ℚ)

end A173714

/-! ## A173714.P10111461857131548302

`A131524(2*n+1)-A201864(n+1)`
-/

namespace A173714.P10111461857131548302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (2 * n + 1) - A201864 (n + 1)

end

end A173714.P10111461857131548302

namespace A173714

/-- `A131524(2*n+1)-A201864(n+1)` -/
def P10111461857131548302.Spec : Prop :=
  ∀ n, P10111461857131548302.a n = A173714 n

end A173714

/-! ## A173714.P12963430281925742286

`A173673(A005843(n+1))+A000045(n)`
-/

namespace A173714.P12963430281925742286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A005843 (n + 1)).toNat + A000045 n

end

end A173714.P12963430281925742286

namespace A173714

/-- `A173673(A005843(n+1))+A000045(n)` -/
def P12963430281925742286.Spec : Prop :=
  ∀ n, P12963430281925742286.a n = A173714 n

end A173714

/-! ## A173714.P4245222149788628731

`A004695(n+1)+A104221(n)+A011655(n)`
-/

namespace A173714.P4245222149788628731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (A104221 n + A011655 n)

end

end A173714.P4245222149788628731

namespace A173714

/-- `A004695(n+1)+A104221(n)+A011655(n)` -/
def P4245222149788628731.Spec : Prop :=
  ∀ n, P4245222149788628731.a n = A173714 n

end A173714

/-! ## A173714.P13818104880558801415

`A004695(n+1)+A173173(n)+A004695(n)`
-/

namespace A173714.P13818104880558801415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (A173173 n + A004695 n)

end

end A173714.P13818104880558801415

namespace A173714

/-- `A004695(n+1)+A173173(n)+A004695(n)` -/
def P13818104880558801415.Spec : Prop :=
  ∀ n, P13818104880558801415.a n = A173714 n

end A173714

/-! ## A173714.P3990677474340231758

`A178982(n+1)+A000045(n)-A178982(n)`
-/

namespace A173714.P3990677474340231758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178982 (n + 1) + (A000045 n - A178982 n)

end

end A173714.P3990677474340231758

namespace A173714

/-- `A178982(n+1)+A000045(n)-A178982(n)` -/
def P3990677474340231758.Spec : Prop :=
  ∀ n, P3990677474340231758.a n = A173714 n

end A173714

/-! ## A173714.P7145138456292458313

`A293631(n+1)+A293633(n+1)-A212804(n)`
-/

namespace A173714.P7145138456292458313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293631 (n + 1) + (A293633 (n + 1) - A212804 n)

end

end A173714.P7145138456292458313

namespace A173714

/-- `A293631(n+1)+A293633(n+1)-A212804(n)` -/
def P7145138456292458313.Spec : Prop :=
  ∀ n, P7145138456292458313.a n = A173714 n

end A173714

/-! ## A173714.P15475957057608909533

`A366043(n+1)-A061347(n+1)/A177702(n)`
-/

namespace A173714.P15475957057608909533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366043 (n + 1) : ℚ) - (A061347 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A173714.P15475957057608909533

namespace A173714

/-- `A366043(n+1)-A061347(n+1)/A177702(n)` -/
def P15475957057608909533.Spec : Prop :=
  ∀ n, P15475957057608909533.a n = (A173714 n : ℚ)

end A173714

/-! ## A173714.P11289238177900145701

`A004695(n+1)+A000071(n+2)-A000071(n+1)`
-/

namespace A173714.P11289238177900145701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (A000071 (n + 2) - A000071 (n + 1))

end

end A173714.P11289238177900145701

namespace A173714

/-- `A004695(n+1)+A000071(n+2)-A000071(n+1)` -/
def P11289238177900145701.Spec : Prop :=
  ∀ n, P11289238177900145701.a n = A173714 n

end A173714

/-!
# A173715: Number of minimally rigid n x n adjacency matrices of sphere packings in R^3.

The programs for A173715, there is no canonical definition to state claims against.
-/

/-! ## A173715.P12554016893889268981

`A174424(n+1)+A174423(n+1)`
-/

namespace A173715.P12554016893889268981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174424 (n + 1) + A174423 (n + 1)

end

end A173715.P12554016893889268981

/-! ## A173715.P13684583418034514325

`A376788(A253889(n+1))+A174423(n+1)`
-/

namespace A173715.P13684583418034514325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376788 (A253889 (n + 1)).toNat + A174423 (n + 1)

end

end A173715.P13684583418034514325

/-! ## A173715.P4699301039721915565

`A174423(n+1)+A291252(n)%A124740(n+1)`
-/

namespace A173715.P4699301039721915565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174423 (n + 1) + Int.tmod (A291252 n) (A124740 (n + 1))

end

end A173715.P4699301039721915565

/-! ## A173715.P2991199919362843107

`A174423(n+1)+C(A099560(n), A241283(n+1)%5)`
-/

namespace A173715.P2991199919362843107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174423 (n + 1) + (Nat.choose (A099560 n).toNat (Int.tmod (A241283 (n + 1)) 5).toNat : ℤ)

end

end A173715.P2991199919362843107

/-! ## A173715.P11302024407186974355

`A174423(n+1)+round(A036679(n)/A260687(n+5)²)`
-/

namespace A173715.P11302024407186974355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174423 (n + 1) + SequenceMachineLib.roundAway ((A036679 n : ℚ) / (A260687 (n + 5) ^ 2 : ℚ))

end

end A173715.P11302024407186974355

/-!
# A173718: Numbers n such that (9^n - 2^n)/7 is prime.

The programs for A173718, there is no canonical definition to state claims against.
-/

/-! ## A173718.P2626750157064524976

`p?[A200672(∑[A193823(n)])]`
-/

namespace A173718.P2626750157064524976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200672 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173718.P2626750157064524976

/-! ## A173718.P15089916859355681945

`p?[∑[A304544(A133179(n))]]`
-/

namespace A173718.P15089916859355681945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A133179 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173718.P15089916859355681945

/-! ## A173718.P13168655982206548635

`record[p?[A008472(A288586(n))]]`
-/

namespace A173718.P13168655982206548635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A288586 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173718.P13168655982206548635

/-!
# A173719: Sums of 2 successive primes s = prime(m) + prime(m+1) such that all digits of s are primes.

The programs for A173719, there is no canonical definition to state claims against.
-/

/-! ## A173719.P7845250964975475184

`∩[A001043(n+1), A046034(n+1)]`
-/

namespace A173719.P7845250964975475184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173719.P7845250964975475184

/-! ## A173719.P615056034242023904

`∩[A046034(n+1), A011974(n+2)]`
-/

namespace A173719.P615056034242023904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173719.P615056034242023904

/-! ## A173719.P2968894892989830565

`∩[A046034(n+1), A092949(n+1)-1]`
-/

namespace A173719.P2968894892989830565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173719.P2968894892989830565

/-! ## A173719.P924067016349038765

`∩[A046034(n+1), A096277(n)-a(n-1)]` with `a(0)=5`
-/

namespace A173719.P924067016349038765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A096277 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173719.P924067016349038765

/-! ## A173719.P3868556843560217054

`∩[A046034(n+1), A000040(n+1)+A000040(n+2)]`
-/

namespace A173719.P3868556843560217054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173719.P3868556843560217054

/-!
# A173721: Partial sums of A056833.

The programs for A173721, the canonical program `A173721.P1207331200280327140` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173721 has offset 0).

The definition of A173721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173721.P1207331200280327140

`round((2*n^3+3*n²+n)/42)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173721

/-- `round((2*n^3+3*n²+n)/42)` -/
def P1207331200280327140.Spec : Prop :=
  ∀ n, P1207331200280327140.a n = A173721 n

theorem P1207331200280327140.correct : P1207331200280327140.Spec := by
  intro n
  simp only [A173721]

end A173721

/-! ## A173721.P10842591668622213792

`a(n-7)+(n-3)²+4` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=4, a(5)=8, a(6)=13`
-/

namespace A173721.P10842591668622213792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2, 4, 8, 13] fun n a =>
  a (n - 7) + ((n : ℤ) - 3) ^ 2 + 4

end

end A173721.P10842591668622213792

namespace A173721

/-- `a(n-7)+(n-3)²+4` -/
def P10842591668622213792.Spec : Prop :=
  ∀ n, P10842591668622213792.a n = A173721 n

end A173721

/-! ## A173721.P8585762778354997133

`a(n-1)+round(n²/7)` with `a(0)=0`
-/

namespace A173721.P8585762778354997133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 7)

end

end A173721.P8585762778354997133

namespace A173721

/-- `a(n-1)+round(n²/7)` -/
def P8585762778354997133.Spec : Prop :=
  ∀ n, P8585762778354997133.a n = A173721 n

end A173721

/-! ## A173721.P5766518465337496170

`∑[A056833(n)]`
-/

namespace A173721.P5766518465337496170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173721.P5766518465337496170

namespace A173721

/-- `∑[A056833(n)]` -/
def P5766518465337496170.Spec : Prop :=
  ∀ n, P5766518465337496170.a n = A173721 n

end A173721

/-! ## A173721.P10666066521688574296

`∑[∑[A289120(n)]]`
-/

namespace A173721.P10666066521688574296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173721.P10666066521688574296

namespace A173721

/-- `∑[∑[A289120(n)]]` -/
def P10666066521688574296.Spec : Prop :=
  ∀ n, P10666066521688574296.a n = A173721 n

end A173721

/-! ## A173721.P9713789465305384599

`floor(A153056(n)/7)`
-/

namespace A173721.P9713789465305384599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153056 n : ℚ) / 7⌋

end

end A173721.P9713789465305384599

namespace A173721

/-- `floor(A153056(n)/7)` -/
def P9713789465305384599.Spec : Prop :=
  ∀ n, P9713789465305384599.a n = A173721 n

end A173721

/-! ## A173721.P12854113523303053179

`floor(A179904(n)/7)`
-/

namespace A173721.P12854113523303053179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179904 n : ℚ) / 7⌋

end

end A173721.P12854113523303053179

namespace A173721

/-- `floor(A179904(n)/7)` -/
def P12854113523303053179.Spec : Prop :=
  ∀ n, P12854113523303053179.a n = A173721 n

end A173721

/-! ## A173721.P15062303149351961706

`A172046(n+1)-A056834(n)`
-/

namespace A173721.P15062303149351961706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172046 (n + 1) - A056834 n

end

end A173721.P15062303149351961706

namespace A173721

/-- `A172046(n+1)-A056834(n)` -/
def P15062303149351961706.Spec : Prop :=
  ∀ n, P15062303149351961706.a n = A173721 n

end A173721

/-! ## A173721.P14362754989089588493

`∑[A056834(n+1)]-A056834(n)`
-/

namespace A173721.P14362754989089588493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056834 n

end

end A173721.P14362754989089588493

namespace A173721

/-- `∑[A056834(n+1)]-A056834(n)` -/
def P14362754989089588493.Spec : Prop :=
  ∀ n, P14362754989089588493.a n = A173721 n

end A173721

/-! ## A173721.P559666892968153572

`∑[A332780(n²)/2]`
-/

namespace A173721.P559666892968153572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332780 (n ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173721.P559666892968153572

namespace A173721

/-- `∑[A332780(n²)/2]` -/
def P559666892968153572.Spec : Prop :=
  ∀ n, P559666892968153572.a n = (A173721 n : ℚ)

end A173721

/-!
# A173722: Partial sums of round(n^2/8).

The programs for A173722, the canonical program `A173722.P8189702665890001459` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173722 has offset 0).

The definition of A173722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173722.P8189702665890001459

`round((2*n^3+3*n²+4*n)/48)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173722

/-- `round((2*n^3+3*n²+4*n)/48)` -/
def P8189702665890001459.Spec : Prop :=
  ∀ n, P8189702665890001459.a n = A173722 n

theorem P8189702665890001459.correct : P8189702665890001459.Spec := by
  intro n
  simp only [A173722]

end A173722

/-! ## A173722.P3734311133199076577

`a(n-4)+n*(n-3)/2+2` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A173722.P3734311133199076577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  a (n - 4) + (n : ℚ) * (((n : ℤ) - 3 : ℚ) / 2) + 2

end

end A173722.P3734311133199076577

namespace A173722

/-- `a(n-4)+n*(n-3)/2+2` -/
def P3734311133199076577.Spec : Prop :=
  ∀ n, P3734311133199076577.a n = (A173722 n : ℚ)

end A173722

/-! ## A173722.P13940928845951322636

`a(n-1)+round(n²/8)` with `a(0)=0`
-/

namespace A173722.P13940928845951322636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)

end

end A173722.P13940928845951322636

namespace A173722

/-- `a(n-1)+round(n²/8)` -/
def P13940928845951322636.Spec : Prop :=
  ∀ n, P13940928845951322636.a n = A173722 n

end A173722

/-! ## A173722.P5833786601070417207

`∑[∑[a(n-4)+1]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A173722.P5833786601070417207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f2 =>
  f2 (n - 4) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173722.P5833786601070417207

namespace A173722

/-- `∑[∑[a(n-4)+1]]` -/
def P5833786601070417207.Spec : Prop :=
  ∀ n, (P5833786601070417207.a n : ℤ) = A173722 n

end A173722

/-! ## A173722.P1934902662840226041

`∑[A001971(n)]`
-/

namespace A173722.P1934902662840226041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173722.P1934902662840226041

namespace A173722

/-- `∑[A001971(n)]` -/
def P1934902662840226041.Spec : Prop :=
  ∀ n, P1934902662840226041.a n = A173722 n

end A173722

/-! ## A173722.P15479938644701912834

`∑[∑[A059169(n+1)]]`
-/

namespace A173722.P15479938644701912834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173722.P15479938644701912834

namespace A173722

/-- `∑[∑[A059169(n+1)]]` -/
def P15479938644701912834.Spec : Prop :=
  ∀ n, P15479938644701912834.a n = A173722 n

end A173722

/-! ## A173722.P7109552615536291686

`A054925(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A173722.P7109552615536291686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A054925 n + a (n - 2)

end

end A173722.P7109552615536291686

namespace A173722

/-- `A054925(n)+a(n-2)` -/
def P7109552615536291686.Spec : Prop :=
  ∀ n, P7109552615536291686.a n = A173722 n

end A173722

/-! ## A173722.P14295102839560039850

`A175826(n)-A110654(n)`
-/

namespace A173722.P14295102839560039850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 n - A110654 n

end

end A173722.P14295102839560039850

namespace A173722

/-- `A175826(n)-A110654(n)` -/
def P14295102839560039850.Spec : Prop :=
  ∀ n, P14295102839560039850.a n = A173722 n

end A173722

/-! ## A173722.P10237980845006120180

`A173196(n)-A122046(n)`
-/

namespace A173722.P10237980845006120180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n - A122046 n

end

end A173722.P10237980845006120180

namespace A173722

/-- `A173196(n)-A122046(n)` -/
def P10237980845006120180.Spec : Prop :=
  ∀ n, P10237980845006120180.a n = A173722 n

end A173722

/-! ## A173722.P3459265843414144082

`A057813(n)-A299286(n)`
-/

namespace A173722.P3459265843414144082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n - A299286 n

end

end A173722.P3459265843414144082

namespace A173722

/-- `A057813(n)-A299286(n)` -/
def P3459265843414144082.Spec : Prop :=
  ∀ n, P3459265843414144082.a n = A173722 n

end A173722

/-! ## A173722.P971409663255688114

`A156039(n)-A212986(n)`
-/

namespace A173722.P971409663255688114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156039 n - A212986 n

end

end A173722.P971409663255688114

namespace A173722

/-- `A156039(n)-A212986(n)` -/
def P971409663255688114.Spec : Prop :=
  ∀ n, P971409663255688114.a n = A173722 n

end A173722

/-! ## A173722.P5605332416308258302

`∑[A036406(n)]-A110654(n)`
-/

namespace A173722.P5605332416308258302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 n

end

end A173722.P5605332416308258302

namespace A173722

/-- `∑[A036406(n)]-A110654(n)` -/
def P5605332416308258302.Spec : Prop :=
  ∀ n, P5605332416308258302.a n = A173722 n

end A173722

/-! ## A173722.P9411447076132361929

`∑[A007590(n)]-∑[A033436(n)]`
-/

namespace A173722.P9411447076132361929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A173722.P9411447076132361929

namespace A173722

/-- `∑[A007590(n)]-∑[A033436(n)]` -/
def P9411447076132361929.Spec : Prop :=
  ∀ n, P9411447076132361929.a n = A173722 n

end A173722

/-! ## A173722.P12351842678315743992

`A122046(n+1)-A130519(n+1)`
-/

namespace A173722.P12351842678315743992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 (n + 1) - A130519 (n + 1)

end

end A173722.P12351842678315743992

namespace A173722

/-- `A122046(n+1)-A130519(n+1)` -/
def P12351842678315743992.Spec : Prop :=
  ∀ n, P12351842678315743992.a n = A173722 n

end A173722

/-! ## A173722.P12860502854295010047

`A008619(A008619(n))+A122046(n)-1`
-/

namespace A173722.P12860502854295010047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 n).toNat + (A122046 n - 1)

end

end A173722.P12860502854295010047

namespace A173722

/-- `A008619(A008619(n))+A122046(n)-1` -/
def P12860502854295010047.Spec : Prop :=
  ∀ n, P12860502854295010047.a n = A173722 n

end A173722

/-! ## A173722.P1963552051232064614

`A156039(n)-(A156040(n)+A069905(n))`
-/

namespace A173722.P1963552051232064614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156039 n - (A156040 n + A069905 n)

end

end A173722.P1963552051232064614

namespace A173722

/-- `A156039(n)-(A156040(n)+A069905(n))` -/
def P1963552051232064614.Spec : Prop :=
  ∀ n, P1963552051232064614.a n = A173722 n

end A173722

/-! ## A173722.P11067440249151340627

`A122046(n+2)-A002620(n+1)`
-/

namespace A173722.P11067440249151340627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 (n + 2) - A002620 (n + 1)

end

end A173722.P11067440249151340627

namespace A173722

/-- `A122046(n+2)-A002620(n+1)` -/
def P11067440249151340627.Spec : Prop :=
  ∀ n, P11067440249151340627.a n = A173722 n

end A173722

/-! ## A173722.P17316612431975467351

`A029262(A091361(n+1))`
-/

namespace A173722.P17316612431975467351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 (A091361 (n + 1)).toNat

end

end A173722.P17316612431975467351

namespace A173722

/-- `A029262(A091361(n+1))` -/
def P17316612431975467351.Spec : Prop :=
  ∀ n, P17316612431975467351.a n = A173722 n

end A173722

/-!
# A173723: Number of symmetry classes of 3 X 3 semimagic squares with distinct positive values < n.

The programs for A173723, there is no canonical definition to state claims against.
-/

/-! ## A173723.P18391250848053893388

`A173546(n)/72`
-/

namespace A173723.P18391250848053893388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173546 (n + 10) : ℚ) / 72

end

end A173723.P18391250848053893388

/-! ## A173723.P738325833996387431

`∑[∑[A173724(n+8)]]`
-/

namespace A173723.P738325833996387431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173724 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173723.P738325833996387431

/-! ## A173723.P18122350264906367111

`∑[∑[A173727(n+8)/72]]`
-/

namespace A173723.P18122350264906367111
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173727 (n + 8) : ℚ) / 72

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173723.P18122350264906367111

/-! ## A173723.P14128069798171229994

`record[ratio[A173546(A142150(n))]]`
-/

namespace A173723.P14128069798171229994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173546 ((A142150 n).toNat + 10)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173723.P14128069798171229994

/-! ## A173723.P15859996785682265220

`record[ratio[A173546(A004247(n))]]`
-/

namespace A173723.P15859996785682265220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173546 ((A004247 n).toNat + 10)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173723.P15859996785682265220

/-!
# A173724: Number of reduced, normalized 3 X 3 semimagic squares with distinct nonnegative integer entries and maximum entry n.

The programs for A173724, there is no canonical definition to state claims against.
-/

/-! ## A173724.P1071126414436487146

`A173727(n+8)/72`
-/

namespace A173724.P1071126414436487146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173727 (n + 8) : ℚ) / 72

end

end A173724.P1071126414436487146

/-!
# A173725: Number of symmetry classes of 3 X 3 semimagic squares with distinct positive values and magic sum n.

The programs for A173725, there is no canonical definition to state claims against.
-/

/-! ## A173725.P6411036201973333801

`A173547(n)/72`
-/

namespace A173725.P6411036201973333801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173547 (n + 15) : ℚ) / 72

end

end A173725.P6411036201973333801

/-! ## A173725.P3753447963592033777

`A173726(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A173725.P3753447963592033777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A173726 (n + 12) + a (n - 3)

end

end A173725.P3753447963592033777

/-! ## A173725.P7831663679937637359

`record[ratio[A173547(A142150(n))]]`
-/

namespace A173725.P7831663679937637359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173547 ((A142150 n).toNat + 15)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173725.P7831663679937637359

/-! ## A173725.P14815549655967163077

`A069924(A148577(n+1))`
-/

namespace A173725.P14815549655967163077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069924 (A148577 (n + 1)).toNat

end

end A173725.P14815549655967163077

/-! ## A173725.P4701723060188206953

`A097368(2*A173547(n))`
-/

namespace A173725.P4701723060188206953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (2 * A173547 (n + 15)).toNat

end

end A173725.P4701723060188206953

/-!
# A173726: Number of reduced, normalized 3 X 3 semimagic squares with magic sum n.

The programs for A173726, there is no canonical definition to state claims against.
-/

/-! ## A173726.P1131190924434437481

`A173728(n)/72`
-/

namespace A173726.P1131190924434437481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173728 (n + 12) : ℚ) / 72

end

end A173726.P1131190924434437481

/-! ## A173726.P4797179935749252494

`A097368(2*A173728(n))`
-/

namespace A173726.P4797179935749252494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (2 * A173728 (n + 12)).toNat

end

end A173726.P4797179935749252494

/-! ## A173726.P6863367887367915284

`∑[dr(A131818(A058718(n)))]`
-/

namespace A173726.P6863367887367915284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A131818 (A058718 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173726.P6863367887367915284

/-! ## A173726.P13490479182424030694

`∑[A176055(A284876(n+1))]`
-/

namespace A173726.P13490479182424030694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176055 ((A284876 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173726.P13490479182424030694

/-! ## A173726.P17134980735464783468

`A107063(A014337(n))+∑[n]`
-/

namespace A173726.P17134980735464783468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107063 (A014337 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A173726.P17134980735464783468

/-!
# A173727: Number of reduced 3 X 3 semimagic squares with distinct nonnegative integer entries and maximum entry n.

The programs for A173727, there is no canonical definition to state claims against.
-/

/-! ## A173727.P10976304951662608331

`72*A173724(n+8)`
-/

namespace A173727.P10976304951662608331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A173724 (n + 8)

end

end A173727.P10976304951662608331

/-! ## A173727.P1083665276030444262

`A008590(A173724(n+8)/(1/3)²)`
-/

namespace A173727.P1083665276030444262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (SequenceMachineLib.roundAway ((A173724 (n + 8) : ℚ) / ((1 : ℚ) / 3) ^ 2)).toNat

end

end A173727.P1083665276030444262

/-!
# A173728: Number of reduced 3 X 3 semimagic squares with magic sum n.

The programs for A173728, there is no canonical definition to state claims against.
-/

/-! ## A173728.P14474742400152368592

`72*A173726(n)`
-/

namespace A173728.P14474742400152368592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A173726 (n + 12)

end

end A173728.P14474742400152368592

/-! ## A173728.P7084463017217022965

`A173546(n+5)%(A173723(n+5)-A173726(n))`
-/

namespace A173728.P7084463017217022965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173546 (n + 5 + 10)) (A173723 (n + 5 + 10) - A173726 (n + 12))

end

end A173728.P7084463017217022965

/-! ## A173728.P15038152269987578991

`72*∑[dr(A131818(A058718(n)))]`
-/

namespace A173728.P15038152269987578991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A131818 (A058718 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173728.P15038152269987578991

/-! ## A173728.P5885618455855552841

`72*∑[A176055(A284876(n+1))]`
-/

namespace A173728.P5885618455855552841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176055 ((A284876 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173728.P5885618455855552841

/-! ## A173728.P3687972030729425218

`72*(A107063(A014337(n))+∑[n])`
-/

namespace A173728.P3687972030729425218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * (A107063 (A014337 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A173728.P3687972030729425218

/-!
# A173729: Number of symmetry classes of 3 X 3 magilatin squares with positive values < n.

The programs for A173729, there is no canonical definition to state claims against.
-/

/-! ## A173729.P17744326962869507254

`∑[∑[A174019(n+2)]]`
-/

namespace A173729.P17744326962869507254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174019 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173729.P17744326962869507254

/-! ## A173729.P1180982875571641089

`∑[∑[A000005(A212392(n+1))]]`
-/

namespace A173729.P1180982875571641089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A212392 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173729.P1180982875571641089

/-! ## A173729.P10162233324225018869

`∑[∑[A000005((n+1)*A212391(n+1))]]`
-/

namespace A173729.P10162233324225018869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A212391 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173729.P10162233324225018869

/-!
# A173730: Number of symmetry classes of 3 X 3 magilatin squares with positive values and magic sum n.

The programs for A173730, there is no canonical definition to state claims against.
-/

/-! ## A173730.P4001235713134420354

`A140765(A275732(n!))`
-/

namespace A173730.P4001235713134420354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 (A275732 (Nat.factorial n)).toNat

end

end A173730.P4001235713134420354

/-! ## A173730.P6199771269983159907

`A340205(A188754(n+1)+1)`
-/

namespace A173730.P6199771269983159907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A188754 (n + 1) + 1).toNat

end

end A173730.P6199771269983159907

/-! ## A173730.P6398688219755195977

`A305889(n)+A000005(A001349(n))`
-/

namespace A173730.P6398688219755195977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 n + A000005 (A001349 n).toNat

end

end A173730.P6398688219755195977

/-! ## A173730.P7486180718709912271

`A140765(eq[A040632(n), A327899(n)])`
-/

namespace A173730.P7486180718709912271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A173730.P7486180718709912271

/-! ## A173730.P2259229390109005885

`A089935(n+1)-A141020(A004093(n))`
-/

namespace A173730.P2259229390109005885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089935 (n + 1) - A141020 (A004093 n).toNat

end

end A173730.P2259229390109005885

/-!
# A173731: a(n) = a(n-1) * (11*a(n-1) - a(n-2)) / (a(n-1) + 4*a(n-2)), a(0) = a(1) = 0, a(2) = 1.

The programs for A173731, the canonical program `A173731.P4137933373004767911` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173731 has offset 0).

The definition of A173731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173731.P7144722964417276590

`a(n-1)*(11*a(n-1)-a(n-2))/(a(n-1)+4*a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173731.P7144722964417276590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) * ((11 * a (n - 1) - a (n - 2)) / (a (n - 1) + 4 * a (n - 2)))

end

end A173731.P7144722964417276590

namespace A173731

/-- `a(n-1)*(11*a(n-1)-a(n-2))/(a(n-1)+4*a(n-2))` -/
def P7144722964417276590.Spec : Prop :=
  ∀ n, P7144722964417276590.a n = (A173731 n : ℚ)

end A173731

/-! ## A173731.P4137933373004767911

`11*a(n-1)-33*a(n-2)+33*a(n-3)-11*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=11, a(4)=88`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173731

/-- `11*a(n-1)-33*a(n-2)+33*a(n-3)-11*a(n-4)+a(n-5)` -/
def P4137933373004767911.Spec : Prop :=
  ∀ n, P4137933373004767911.a n = A173731 n

theorem P4137933373004767911.correct : P4137933373004767911.Spec := by
  intro n
  simp only [A173731]

end A173731

/-! ## A173731.P5261756627430028634

`(4+A049685(n)-5*A122367(n))/20`
-/

namespace A173731.P5261756627430028634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 + A049685 n - 5 * A122367 n : ℚ) / 20

end

end A173731.P5261756627430028634

namespace A173731

/-- `(4+A049685(n)-5*A122367(n))/20` -/
def P5261756627430028634.Spec : Prop :=
  ∀ n, P5261756627430028634.a n = (A173731 n : ℚ)

end A173731

/-! ## A173731.P13986834623222920330

`∑[A004187(n)-A215466(n)]`
-/

namespace A173731.P13986834623222920330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n - A215466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173731.P13986834623222920330

namespace A173731

/-- `∑[A004187(n)-A215466(n)]` -/
def P13986834623222920330.Spec : Prop :=
  ∀ n, P13986834623222920330.a n = A173731 n

end A173731

/-! ## A173731.P6148758120620102047

`∑[A004187(n)-A049601(2*n)/2]`
-/

namespace A173731.P6148758120620102047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004187 n : ℚ) - (A049601 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173731.P6148758120620102047

namespace A173731

/-- `∑[A004187(n)-A049601(2*n)/2]` -/
def P6148758120620102047.Spec : Prop :=
  ∀ n, P6148758120620102047.a n = (A173731 n : ℚ)

end A173731

/-! ## A173731.P7220864461767890123

`∑[A004187(n)-(A293553(2*n)+A293553(4*n))]`
-/

namespace A173731.P7220864461767890123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n - (A293553 (2 * n) + A293553 (4 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173731.P7220864461767890123

namespace A173731

/-- `∑[A004187(n)-(A293553(2*n)+A293553(4*n))]` -/
def P7220864461767890123.Spec : Prop :=
  ∀ n, P7220864461767890123.a n = A173731 n

end A173731

/-! ## A173731.P7216649159687957688

`C(∑[A000045(2*n)], 2)/6`
-/

namespace A173731.P7216649159687957688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℚ) / 6

end

end A173731.P7216649159687957688

namespace A173731

/-- `C(∑[A000045(2*n)], 2)/6` -/
def P7216649159687957688.Spec : Prop :=
  ∀ n, P7216649159687957688.a n = (A173731 n : ℚ)

end A173731

/-! ## A173731.P16223143548426588476

`(12+A000045(4*n+1)+A000045(4*n+3)-15*A000045(2*n+1))/60`
-/

namespace A173731.P16223143548426588476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 + A000045 (4 * n + 1) + A000045 (4 * n + 3) - 15 * A000045 (2 * n + 1) : ℚ) / 60

end

end A173731.P16223143548426588476

namespace A173731

/-- `(12+A000045(4*n+1)+A000045(4*n+3)-15*A000045(2*n+1))/60` -/
def P16223143548426588476.Spec : Prop :=
  ∀ n, P16223143548426588476.a n = (A173731 n : ℚ)

end A173731

/-!
# A173732: a(n) = (A016957(n)/2^A007814(A016957(n)) - 1)/2, with A016957(n) = 6*n+4 and A007814(n) the 2-adic valuation of n.

The programs for A173732, the canonical program `A173732.P4570033635680783597` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173732 has offset 0).

The definition of A173732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173732.P15463672766919484476

`(A075677(n+1)-1)/2`
-/

namespace A173732.P15463672766919484476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075677 (n + 1) - 1 : ℚ) / 2

end

end A173732.P15463672766919484476

namespace A173732

/-- `(A075677(n+1)-1)/2` -/
def P15463672766919484476.Spec : Prop :=
  ∀ n, P15463672766919484476.a n = (A173732 n : ℚ)

end A173732

/-! ## A173732.P4570033635680783597

`(A016957(n)/2^A007814(A016957(n))-1)/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A173732

/-- `(A016957(n)/2^A007814(A016957(n))-1)/2` -/
def P4570033635680783597.Spec : Prop :=
  ∀ n, P4570033635680783597.a n = (A173732 n : ℚ)

end A173732

/-! ## A173732.P4287061392454015349

`A246425(n)+n`
-/

namespace A173732.P4287061392454015349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 n + (n : ℤ)

end

end A173732.P4287061392454015349

namespace A173732

/-- `A246425(n)+n` -/
def P4287061392454015349.Spec : Prop :=
  ∀ n, P4287061392454015349.a n = A173732 n

end A173732

/-! ## A173732.P12121921221555463898

`A103391(3*(n+1))-2`
-/

namespace A173732.P12121921221555463898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (3 * (n + 1)) - 2

end

end A173732.P12121921221555463898

namespace A173732

/-- `A103391(3*(n+1))-2` -/
def P12121921221555463898.Spec : Prop :=
  ∀ n, P12121921221555463898.a n = A173732 n

end A173732

/-! ## A173732.P10599122817720977213

`floor(A000265(3*n+2)/2)`
-/

namespace A173732.P10599122817720977213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000265 (3 * n + 2) : ℚ) / 2⌋

end

end A173732.P10599122817720977213

namespace A173732

/-- `floor(A000265(3*n+2)/2)` -/
def P10599122817720977213.Spec : Prop :=
  ∀ n, P10599122817720977213.a n = A173732 n

end A173732

/-! ## A173732.P6448647618436084876

`floor(A093411(3*n+2)/2)`
-/

namespace A173732.P6448647618436084876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093411 (3 * n + 2) : ℚ) / 2⌋

end

end A173732.P6448647618436084876

namespace A173732

/-- `floor(A093411(3*n+2)/2)` -/
def P6448647618436084876.Spec : Prop :=
  ∀ n, P6448647618436084876.a n = A173732 n

end A173732

/-! ## A173732.P312165910800263332

`A110962(A016933(n))`
-/

namespace A173732.P312165910800263332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A016933 n).toNat

end

end A173732.P312165910800263332

namespace A173732

/-- `A110962(A016933(n))` -/
def P312165910800263332.Spec : Prop :=
  ∀ n, P312165910800263332.a n = A173732 n

end A173732

/-! ## A173732.P13392639437542978283

`A324245(A350091(n))`
-/

namespace A173732.P13392639437542978283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (A350091 n).toNat

end

end A173732.P13392639437542978283

namespace A173732

/-- `A324245(A350091(n))` -/
def P13392639437542978283.Spec : Prop :=
  ∀ n, P13392639437542978283.a n = A173732 n

end A173732

/-! ## A173732.P4962822122824260863

`A014682(A075677(n+1)-1)`
-/

namespace A173732.P4962822122824260863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A075677 (n + 1) - 1).toNat

end

end A173732.P4962822122824260863

namespace A173732

/-- `A014682(A075677(n+1)-1)` -/
def P4962822122824260863.Spec : Prop :=
  ∀ n, P4962822122824260863.a n = A173732 n

end A173732

/-! ## A173732.P18029189019556907779

`A014682(A000265(3*n+2)-1)`
-/

namespace A173732.P18029189019556907779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000265 (3 * n + 2) - 1).toNat

end

end A173732.P18029189019556907779

namespace A173732

/-- `A014682(A000265(3*n+2)-1)` -/
def P18029189019556907779.Spec : Prop :=
  ∀ n, P18029189019556907779.a n = A173732 n

end A173732

/-! ## A173732.P13360713125738852911

`A007494(A254048(2*n+1)-1)`
-/

namespace A173732.P13360713125738852911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A254048 (2 * n + 1) - 1).toNat

end

end A173732.P13360713125738852911

namespace A173732

/-- `A007494(A254048(2*n+1)-1)` -/
def P13360713125738852911.Spec : Prop :=
  ∀ n, P13360713125738852911.a n = A173732 n

end A173732

/-! ## A173732.P15225738263330087588

`A110962(A017581(n))`
-/

namespace A173732.P15225738263330087588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A017581 n).toNat

end

end A173732.P15225738263330087588

namespace A173732

/-- `A110962(A017581(n))` -/
def P15225738263330087588.Spec : Prop :=
  ∀ n, P15225738263330087588.a n = A173732 n

end A173732

/-! ## A173732.P6755279352756156433

`A110962(6*(2*n+1))`
-/

namespace A173732.P6755279352756156433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (6 * (2 * n + 1))

end

end A173732.P6755279352756156433

namespace A173732

/-- `A110962(6*(2*n+1))` -/
def P6755279352756156433.Spec : Prop :=
  ∀ n, P6755279352756156433.a n = A173732 n

end A173732

/-! ## A173732.P5423711503094153920

`(A139391(Δ[n²])-1)/2`
-/

namespace A173732.P5423711503094153920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1 : ℚ) / 2

end

end A173732.P5423711503094153920

namespace A173732

/-- `(A139391(Δ[n²])-1)/2` -/
def P5423711503094153920.Spec : Prop :=
  ∀ n, P5423711503094153920.a n = (A173732 n : ℚ)

end A173732

/-! ## A173732.P6365707994650655943

`floor(A139391(2*n+1)/2)`
-/

namespace A173732.P6365707994650655943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139391 (2 * n + 1) : ℚ) / 2⌋

end

end A173732.P6365707994650655943

namespace A173732

/-- `floor(A139391(2*n+1)/2)` -/
def P6365707994650655943.Spec : Prop :=
  ∀ n, P6365707994650655943.a n = A173732 n

end A173732

/-! ## A173732.P17594864115651428114

`(A067745(2*(n+1))-1)/2`
-/

namespace A173732.P17594864115651428114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067745 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A173732.P17594864115651428114

namespace A173732

/-- `(A067745(2*(n+1))-1)/2` -/
def P17594864115651428114.Spec : Prop :=
  ∀ n, P17594864115651428114.a n = (A173732 n : ℚ)

end A173732

/-! ## A173732.P11379282918237574883

`A014682(A139391(2*n+1)-1)`
-/

namespace A173732.P11379282918237574883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A139391 (2 * n + 1) - 1).toNat

end

end A173732.P11379282918237574883

namespace A173732

/-- `A014682(A139391(2*n+1)-1)` -/
def P11379282918237574883.Spec : Prop :=
  ∀ n, P11379282918237574883.a n = A173732 n

end A173732

/-! ## A173732.P15525935998126873670

`A025480(A075677(n+1)-1)`
-/

namespace A173732.P15525935998126873670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A075677 (n + 1) - 1).toNat

end

end A173732.P15525935998126873670

namespace A173732

/-- `A025480(A075677(n+1)-1)` -/
def P15525935998126873670.Spec : Prop :=
  ∀ n, P15525935998126873670.a n = A173732 n

end A173732

/-! ## A173732.P1226359542494290450

`A085062(A075677(n+1)-1)`
-/

namespace A173732.P1226359542494290450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A075677 (n + 1) - 1).toNat

end

end A173732.P1226359542494290450

namespace A173732

/-- `A085062(A075677(n+1)-1)` -/
def P1226359542494290450.Spec : Prop :=
  ∀ n, P1226359542494290450.a n = A173732 n

end A173732

/-! ## A173732.P11225820840450959688

`A110654(A139391(2*n+1)-1)`
-/

namespace A173732.P11225820840450959688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A139391 (2 * n + 1) - 1).toNat

end

end A173732.P11225820840450959688

namespace A173732

/-- `A110654(A139391(2*n+1)-1)` -/
def P11225820840450959688.Spec : Prop :=
  ∀ n, P11225820840450959688.a n = A173732 n

end A173732

/-!
# A173733: Primes p which give primes when 1331 = 11^3 is prefixed (see A173579).

The programs for A173733, there is no canonical definition to state claims against.
-/

/-! ## A173733.P8779126625176551920

`p?[A173579(n+1)]`
-/

namespace A173733.P8779126625176551920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173733.P8779126625176551920

/-! ## A173733.P2007008912213840309

`filter[A173579(n+1), A010051(#)]`
-/

namespace A173733.P2007008912213840309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A173733.P2007008912213840309

/-! ## A173733.P18141690343024993419

`filter[A173579(n+1), A302777(#)]`
-/

namespace A173733.P18141690343024993419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A173733.P18141690343024993419

/-! ## A173733.P15194538227171480722

`filter[A173579(n+1), A323152(#)]`
-/

namespace A173733.P15194538227171480722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A173733.P15194538227171480722

/-! ## A173733.P1625945500961896702

`filter[A173579(n+1), A323153(#)]`
-/

namespace A173733.P1625945500961896702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A173733.P1625945500961896702

/-! ## A173733.P2578079982210291173

`filter[A173579(n+1), A327861(#)]`
-/

namespace A173733.P2578079982210291173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A173733.P2578079982210291173

/-! ## A173733.P2191638356710713413

`filter[A173579(n+1), A340371(#)]`
-/

namespace A173733.P2191638356710713413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A173733.P2191638356710713413

/-! ## A173733.P4127368636177422716

`filter[A173579(n+1), A351957(#)]`
-/

namespace A173733.P4127368636177422716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A173733.P4127368636177422716

/-! ## A173733.P18341904049939482279

`filter[A173579(n+1), A353670(#)]`
-/

namespace A173733.P18341904049939482279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A173733.P18341904049939482279

/-! ## A173733.P6689678017164236366

`filter[A173579(n+1), A355937(#)]`
-/

namespace A173733.P6689678017164236366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A173733.P6689678017164236366

/-! ## A173733.P5619673464530871577

`filter[A173579(n+1), A365716(#)]`
-/

namespace A173733.P5619673464530871577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A173733.P5619673464530871577

/-! ## A173733.P9678375789652424959

`filter[A173579(n+1), A379969(#)]`
-/

namespace A173733.P9678375789652424959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A173733.P9678375789652424959

/-! ## A173733.P8182174893844122233

`filter[A173579(n+1), A380467(#)]`
-/

namespace A173733.P8182174893844122233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A173733.P8182174893844122233

/-! ## A173733.P1329447061758399194

`record[A006530(2*A173579(n+1))]`
-/

namespace A173733.P1329447061758399194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A173579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173733.P1329447061758399194

/-! ## A173733.P12420814835273777594

`record[A006530(or(1, A173579(n+1)))]`
-/

namespace A173733.P12420814835273777594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A173579 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173733.P12420814835273777594

/-! ## A173733.P6450559921132814251

`record[A020639(or(1, A173579(n+1)))]`
-/

namespace A173733.P6450559921132814251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A173579 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173733.P6450559921132814251

/-! ## A173733.P4015482389577130120

`record[A006530(A173579(C(n+1, n)))]`
-/

namespace A173733.P4015482389577130120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A173579 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173733.P4015482389577130120

/-! ## A173733.P7002553546363992010

`∩[A045309(n+1), A173579(n+1)]`
-/

namespace A173733.P7002553546363992010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173733.P7002553546363992010

/-! ## A173733.P1023684671189430393

`∩[A045410(n+1), A173579(n+1)]`
-/

namespace A173733.P1023684671189430393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173733.P1023684671189430393

/-!
# A173734: a(n) = (10^n + 62)/9 for n>0.

The programs for A173734, the canonical program `A173734.P2097484045920141151` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173734 has offset 1).

The definition of A173734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^(n+1)+62)/9` (program `A173734.P733863612476735510`, by `A173734.P733863612476735510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173734.P733863612476735510

`(10^(n+1)+62)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173734.P733863612476735510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) + 62 : ℚ) / 9

end

end A173734.P733863612476735510

namespace A173734

/-- `(10^(n+1)+62)/9` -/
def P733863612476735510.Spec : Prop :=
  ∀ n, P733863612476735510.a n = (A173734 (n + 1) : ℚ)

theorem P733863612476735510.correct : P733863612476735510.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173734, Nat.add_sub_cancel, A173734.P733863612476735510.a, A173734.P2097484045920141151.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173734, Nat.add_sub_cancel, A173734.P733863612476735510.a, A173734.P2097484045920141151.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173734

/-! ## A173734.P2097484045920141151

`10*a(n-1)-62` with `a(0)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173734

/-- `10*a(n-1)-62` -/
def P2097484045920141151.Spec : Prop :=
  ∀ n, P2097484045920141151.a n = A173734 (n + 1)

theorem P2097484045920141151.correct : P2097484045920141151.Spec := by
  intro n
  simp only [A173734, Nat.add_sub_cancel]

end A173734

/-! ## A173734.P6249512736741837527

`a(n-1)+10^n` with `a(0)=8`
-/

namespace A173734.P6249512736741837527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 10 ^ n

end

end A173734.P6249512736741837527

namespace A173734

/-- `a(n-1)+10^n` -/
def P6249512736741837527.Spec : Prop :=
  ∀ n, (P6249512736741837527.a n : ℤ) = A173734 (n + 1)

end A173734

/-! ## A173734.P12313558231511505346

`∑[10^(n%a(n-1))]` with `a(0)=8`
-/

namespace A173734.P12313558231511505346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  10 ^ (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173734.P12313558231511505346

namespace A173734

/-- `∑[10^(n%a(n-1))]` -/
def P12313558231511505346.Spec : Prop :=
  ∀ n, (P12313558231511505346.a n : ℤ) = A173734 (n + 1)

end A173734

/-! ## A173734.P9384193136544165710

`∑[gcd(10, a(n-1))^n]` with `a(0)=8, a(1)=10`
-/

namespace A173734.P9384193136544165710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 10] fun n f1 =>
  Nat.gcd 10 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173734.P9384193136544165710

namespace A173734

/-- `∑[gcd(10, a(n-1))^n]` -/
def P9384193136544165710.Spec : Prop :=
  ∀ n, (P9384193136544165710.a n : ℤ) = A173734 (n + 1)

end A173734

/-! ## A173734.P10501517154116339195

`record[A290420(n)+7]`
-/

namespace A173734.P10501517154116339195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290420 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173734.P10501517154116339195

namespace A173734

/-- `record[A290420(n)+7]` -/
def P10501517154116339195.Spec : Prop :=
  ∀ n, P10501517154116339195.a n = A173734 (n + 1)

end A173734

/-! ## A173734.P1210840559841292481

`2*(A178769(n)+2)`
-/

namespace A173734.P1210840559841292481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A178769 n + 2)

end

end A173734.P1210840559841292481

namespace A173734

/-- `2*(A178769(n)+2)` -/
def P1210840559841292481.Spec : Prop :=
  ∀ n, P1210840559841292481.a n = A173734 (n + 1)

end A173734

/-! ## A173734.P17496444037239628386

`2*(A093142(n)+3)`
-/

namespace A173734.P17496444037239628386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A093142 n + 3)

end

end A173734.P17496444037239628386

namespace A173734

/-- `2*(A093142(n)+3)` -/
def P17496444037239628386.Spec : Prop :=
  ∀ n, P17496444037239628386.a n = A173734 (n + 1)

end A173734

/-! ## A173734.P11419837303485481793

`2*(A002279(n)+4)`
-/

namespace A173734.P11419837303485481793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002279 n + 4)

end

end A173734.P11419837303485481793

namespace A173734

/-- `2*(A002279(n)+4)` -/
def P11419837303485481793.Spec : Prop :=
  ∀ n, P11419837303485481793.a n = A173734 (n + 1)

end A173734

/-! ## A173734.P12980670698631402448

`abs(1-A165247(n+1))`
-/

namespace A173734.P12980670698631402448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A165247 (n + 1)|

end

end A173734.P12980670698631402448

namespace A173734

/-- `abs(1-A165247(n+1))` -/
def P12980670698631402448.Spec : Prop :=
  ∀ n, P12980670698631402448.a n = A173734 (n + 1)

end A173734

/-! ## A173734.P9068449171757417372

`2*((∑[A011557(n)]+5)/2+1)`
-/

namespace A173734.P9068449171757417372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℤ) : ℚ) / 2 + 1)

end

end A173734.P9068449171757417372

namespace A173734

/-- `2*((∑[A011557(n)]+5)/2+1)` -/
def P9068449171757417372.Spec : Prop :=
  ∀ n, P9068449171757417372.a n = (A173734 (n + 1) : ℚ)

end A173734

/-!
# A173735: a(n) = (10^n + 26)/9.

The programs for A173735, the canonical program `A173735.P15068889902444485158` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173735 has offset 0).

The definition of A173735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n+26)/9` (program `A173735.P11663719520617385163`, by `A173735.P11663719520617385163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173735.P11663719520617385163

`(10^n+26)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173735.P11663719520617385163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 26 : ℚ) / 9

end

end A173735.P11663719520617385163

namespace A173735

/-- `(10^n+26)/9` -/
def P11663719520617385163.Spec : Prop :=
  ∀ n, P11663719520617385163.a n = (A173735 n : ℚ)

theorem P11663719520617385163.correct : P11663719520617385163.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173735, Nat.add_sub_cancel, A173735.P11663719520617385163.a, A173735.P15068889902444485158.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173735, Nat.add_sub_cancel, A173735.P11663719520617385163.a, A173735.P15068889902444485158.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173735

/-! ## A173735.P15068889902444485158

`10*a(n-1)-26` with `a(0)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173735

/-- `10*a(n-1)-26` -/
def P15068889902444485158.Spec : Prop :=
  ∀ n, P15068889902444485158.a n = A173735 n

theorem P15068889902444485158.correct : P15068889902444485158.Spec := by
  intro n
  simp only [A173735]

end A173735

/-! ## A173735.P11888208520815654284

`a(n-1)+10^(n-1)` with `a(0)=3`
-/

namespace A173735.P11888208520815654284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A173735.P11888208520815654284

namespace A173735

/-- `a(n-1)+10^(n-1)` -/
def P11888208520815654284.Spec : Prop :=
  ∀ n, P11888208520815654284.a n = (A173735 n : ℚ)

end A173735

/-! ## A173735.P1579341872778422822

`and(∑[floor(10^(n-1))], -1)+3`
-/

namespace A173735.P1579341872778422822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1) + 3

end

end A173735.P1579341872778422822

namespace A173735

/-- `and(∑[floor(10^(n-1))], -1)+3` -/
def P1579341872778422822.Spec : Prop :=
  ∀ n, P1579341872778422822.a n = A173735 n

end A173735

/-! ## A173735.P296570532606214052

`∑[∪[10^n, and(10^n, -2)]]+3`
-/

namespace A173735.P296570532606214052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 ^ n : ℤ) (-2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A173735.P296570532606214052

namespace A173735

/-- `∑[∪[10^n, and(10^n, -2)]]+3` -/
def P296570532606214052.Spec : Prop :=
  ∀ n, (P296570532606214052.a n : ℤ) = A173735 n

end A173735

/-! ## A173735.P4745663707622828997

`round(∑[10^((n-1)%(n+2))])+3`
-/

namespace A173735.P4745663707622828997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A173735.P4745663707622828997

namespace A173735

/-- `round(∑[10^((n-1)%(n+2))])+3` -/
def P4745663707622828997.Spec : Prop :=
  ∀ n, P4745663707622828997.a n = A173735 n

end A173735

/-! ## A173735.P2256573011600905666

`∑[floor(10^(n-1))%(10^n)]+3`
-/

namespace A173735.P2256573011600905666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A173735.P2256573011600905666

namespace A173735

/-- `∑[floor(10^(n-1))%(10^n)]+3` -/
def P2256573011600905666.Spec : Prop :=
  ∀ n, P2256573011600905666.a n = A173735 n

end A173735

/-! ## A173735.P5673068309714646621

`A098406(n)+1`
-/

namespace A173735.P5673068309714646621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n + 1

end

end A173735.P5673068309714646621

namespace A173735

/-- `A098406(n)+1` -/
def P5673068309714646621.Spec : Prop :=
  ∀ n, P5673068309714646621.a n = A173735 n

end A173735

/-! ## A173735.P2550547013087302457

`A047855(n)+2`
-/

namespace A173735.P2550547013087302457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + 2

end

end A173735.P2550547013087302457

namespace A173735

/-- `A047855(n)+2` -/
def P2550547013087302457.Spec : Prop :=
  ∀ n, P2550547013087302457.a n = A173735 n

end A173735

/-! ## A173735.P17566454957058992296

`A002275(n)+3`
-/

namespace A173735.P17566454957058992296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + 3

end

end A173735.P17566454957058992296

namespace A173735

/-- `A002275(n)+3` -/
def P17566454957058992296.Spec : Prop :=
  ∀ n, P17566454957058992296.a n = A173735 n

end A173735

/-! ## A173735.P17210188933656782920

`A071762(∑[n])+3`
-/

namespace A173735.P17210188933656782920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A173735.P17210188933656782920

namespace A173735

/-- `A071762(∑[n])+3` -/
def P17210188933656782920.Spec : Prop :=
  ∀ n, P17210188933656782920.a n = A173735 n

end A173735

/-! ## A173735.P3263981164899801907

`A092900(2*n)+2`
-/

namespace A173735.P3263981164899801907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092900 (2 * n) + 2

end

end A173735.P3263981164899801907

namespace A173735

/-- `A092900(2*n)+2` -/
def P3263981164899801907.Spec : Prop :=
  ∀ n, P3263981164899801907.a n = A173735 n

end A173735

/-! ## A173735.P14984737325819884330

`A081857(2*n)+3`
-/

namespace A173735.P14984737325819884330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (2 * n) + 3

end

end A173735.P14984737325819884330

namespace A173735

/-- `A081857(2*n)+3` -/
def P14984737325819884330.Spec : Prop :=
  ∀ n, P14984737325819884330.a n = A173735 n

end A173735

/-! ## A173735.P14593435030179764059

`A002276(n)/2+3`
-/

namespace A173735.P14593435030179764059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 n : ℚ) / 2 + 3

end

end A173735.P14593435030179764059

namespace A173735

/-- `A002276(n)/2+3` -/
def P14593435030179764059.Spec : Prop :=
  ∀ n, P14593435030179764059.a n = (A173735 n : ℚ)

end A173735

/-! ## A173735.P10441592148156967919

`A002277(n)/3+3`
-/

namespace A173735.P10441592148156967919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002277 n : ℚ) / 3 + 3

end

end A173735.P10441592148156967919

namespace A173735

/-- `A002277(n)/3+3` -/
def P10441592148156967919.Spec : Prop :=
  ∀ n, P10441592148156967919.a n = (A173735 n : ℚ)

end A173735

/-! ## A173735.P8078455397293370046

`A002278(n)/4+3`
-/

namespace A173735.P8078455397293370046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002278 n : ℚ) / 4 + 3

end

end A173735.P8078455397293370046

namespace A173735

/-- `A002278(n)/4+3` -/
def P8078455397293370046.Spec : Prop :=
  ∀ n, P8078455397293370046.a n = (A173735 n : ℚ)

end A173735

/-! ## A173735.P13163525997192154233

`A002279(n)/5+3`
-/

namespace A173735.P13163525997192154233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002279 n : ℚ) / 5 + 3

end

end A173735.P13163525997192154233

namespace A173735

/-- `A002279(n)/5+3` -/
def P13163525997192154233.Spec : Prop :=
  ∀ n, P13163525997192154233.a n = (A173735 n : ℚ)

end A173735

/-! ## A173735.P6804493870531887687

`3*A133462(n)+n`
-/

namespace A173735.P6804493870531887687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A133462 n + (n : ℤ)

end

end A173735.P6804493870531887687

namespace A173735

/-- `3*A133462(n)+n` -/
def P6804493870531887687.Spec : Prop :=
  ∀ n, P6804493870531887687.a n = A173735 n

end A173735

/-! ## A173735.P14258740848599813613

`A305753(Δ[n²])+2`
-/

namespace A173735.P14258740848599813613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305753 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A173735.P14258740848599813613

namespace A173735

/-- `A305753(Δ[n²])+2` -/
def P14258740848599813613.Spec : Prop :=
  ∀ n, P14258740848599813613.a n = A173735 n

end A173735

/-! ## A173735.P14692390055568063084

`ceil(A093135(n)/2)+2`
-/

namespace A173735.P14692390055568063084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093135 n : ℚ) / 2⌉ + 2

end

end A173735.P14692390055568063084

namespace A173735

/-- `ceil(A093135(n)/2)+2` -/
def P14692390055568063084.Spec : Prop :=
  ∀ n, P14692390055568063084.a n = A173735 n

end A173735

/-!
# A173736: a(n) = (10^n + 35)/9 for n>0.

The programs for A173736, the canonical program `A173736.P4879877733648142593` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173736 has offset 1).

The definition of A173736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^(n+1)+35)/9` (program `A173736.P4819230157885054154`, by `A173736.P4819230157885054154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173736.P4819230157885054154

`(10^(n+1)+35)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173736.P4819230157885054154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) + 35 : ℚ) / 9

end

end A173736.P4819230157885054154

namespace A173736

/-- `(10^(n+1)+35)/9` -/
def P4819230157885054154.Spec : Prop :=
  ∀ n, P4819230157885054154.a n = (A173736 (n + 1) : ℚ)

theorem P4819230157885054154.correct : P4819230157885054154.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173736, Nat.add_sub_cancel, A173736.P4819230157885054154.a, A173736.P4879877733648142593.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173736, Nat.add_sub_cancel, A173736.P4819230157885054154.a, A173736.P4879877733648142593.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173736

/-! ## A173736.P4879877733648142593

`10*a(n-1)-35` with `a(0)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173736

/-- `10*a(n-1)-35` -/
def P4879877733648142593.Spec : Prop :=
  ∀ n, P4879877733648142593.a n = A173736 (n + 1)

theorem P4879877733648142593.correct : P4879877733648142593.Spec := by
  intro n
  simp only [A173736, Nat.add_sub_cancel]

end A173736

/-! ## A173736.P14815029542817811456

`a(n-1)+10^n` with `a(0)=5`
-/

namespace A173736.P14815029542817811456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 10 ^ n

end

end A173736.P14815029542817811456

namespace A173736

/-- `a(n-1)+10^n` -/
def P14815029542817811456.Spec : Prop :=
  ∀ n, (P14815029542817811456.a n : ℤ) = A173736 (n + 1)

end A173736

/-! ## A173736.P2766224644105899532

`5*A093135(n)`
-/

namespace A173736.P2766224644105899532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A093135 n

end

end A173736.P2766224644105899532

namespace A173736

/-- `5*A093135(n)` -/
def P2766224644105899532.Spec : Prop :=
  ∀ n, P2766224644105899532.a n = A173736 (n + 1)

end A173736

/-! ## A173736.P5563989183554660142

`∑[lcm(5, 10^n)]`
-/

namespace A173736.P5563989183554660142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (10 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173736.P5563989183554660142

namespace A173736

/-- `∑[lcm(5, 10^n)]` -/
def P5563989183554660142.Spec : Prop :=
  ∀ n, (P5563989183554660142.a n : ℤ) = A173736 (n + 1)

end A173736

/-! ## A173736.P6810802579221516744

`∑[10^(n%a(n-1))]` with `a(0)=5`
-/

namespace A173736.P6810802579221516744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  10 ^ (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173736.P6810802579221516744

namespace A173736

/-- `∑[10^(n%a(n-1))]` -/
def P6810802579221516744.Spec : Prop :=
  ∀ n, (P6810802579221516744.a n : ℤ) = A173736 (n + 1)

end A173736

/-! ## A173736.P14318210431037325823

`∑[gcd(10, a(n-1))^n]` with `a(0)=5, a(1)=10`
-/

namespace A173736.P14318210431037325823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 10] fun n f1 =>
  Nat.gcd 10 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173736.P14318210431037325823

namespace A173736

/-- `∑[gcd(10, a(n-1))^n]` -/
def P14318210431037325823.Spec : Prop :=
  ∀ n, (P14318210431037325823.a n : ℤ) = A173736 (n + 1)

end A173736

/-! ## A173736.P10015712927212203393

`A199985(∑[n]+1)`
-/

namespace A173736.P10015712927212203393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199985 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A173736.P10015712927212203393

namespace A173736

/-- `A199985(∑[n]+1)` -/
def P10015712927212203393.Spec : Prop :=
  ∀ n, P10015712927212203393.a n = A173736 (n + 1)

end A173736

/-! ## A173736.P17767831554293131967

`∑[5*A093136(n)]`
-/

namespace A173736.P17767831554293131967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A093136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173736.P17767831554293131967

namespace A173736

/-- `∑[5*A093136(n)]` -/
def P17767831554293131967.Spec : Prop :=
  ∀ n, P17767831554293131967.a n = A173736 (n + 1)

end A173736

/-! ## A173736.P6382061138430798196

`5*(A002276(n)+1)`
-/

namespace A173736.P6382061138430798196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A002276 n + 1)

end

end A173736.P6382061138430798196

namespace A173736

/-- `5*(A002276(n)+1)` -/
def P6382061138430798196.Spec : Prop :=
  ∀ n, P6382061138430798196.a n = A173736 (n + 1)

end A173736

/-! ## A173736.P9070343604017955230

`5*A081857(2*n+1)`
-/

namespace A173736.P9070343604017955230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081857 (2 * n + 1)

end

end A173736.P9070343604017955230

namespace A173736

/-- `5*A081857(2*n+1)` -/
def P9070343604017955230.Spec : Prop :=
  ∀ n, P9070343604017955230.a n = A173736 (n + 1)

end A173736

/-! ## A173736.P3577891117476267575

`or(1, A047855(n+1)+2)`
-/

namespace A173736.P3577891117476267575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047855 (n + 1) + 2)

end

end A173736.P3577891117476267575

namespace A173736

/-- `or(1, A047855(n+1)+2)` -/
def P3577891117476267575.Spec : Prop :=
  ∀ n, P3577891117476267575.a n = A173736 (n + 1)

end A173736

/-!
# A173737: a(n) = (10^n + 44)/9 for n>0.

The programs for A173737, the canonical program `A173737.P12179253871864277010` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173737 has offset 1).

The definition of A173737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^(n+1)+44)/9` (program `A173737.P9730987039994238191`, by `A173737.P9730987039994238191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173737.P9730987039994238191

`(10^(n+1)+44)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173737.P9730987039994238191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) + 44 : ℚ) / 9

end

end A173737.P9730987039994238191

namespace A173737

/-- `(10^(n+1)+44)/9` -/
def P9730987039994238191.Spec : Prop :=
  ∀ n, P9730987039994238191.a n = (A173737 (n + 1) : ℚ)

theorem P9730987039994238191.correct : P9730987039994238191.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173737, Nat.add_sub_cancel, A173737.P9730987039994238191.a, A173737.P12179253871864277010.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173737, Nat.add_sub_cancel, A173737.P9730987039994238191.a, A173737.P12179253871864277010.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173737

/-! ## A173737.P12179253871864277010

`10*a(n-1)-44` with `a(0)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173737

/-- `10*a(n-1)-44` -/
def P12179253871864277010.Spec : Prop :=
  ∀ n, P12179253871864277010.a n = A173737 (n + 1)

theorem P12179253871864277010.correct : P12179253871864277010.Spec := by
  intro n
  simp only [A173737, Nat.add_sub_cancel]

end A173737

/-! ## A173737.P9546274383540158737

`a(n-1)+10^n` with `a(0)=6`
-/

namespace A173737.P9546274383540158737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 10 ^ n

end

end A173737.P9546274383540158737

namespace A173737

/-- `a(n-1)+10^n` -/
def P9546274383540158737.Spec : Prop :=
  ∀ n, (P9546274383540158737.a n : ℤ) = A173737 (n + 1)

end A173737

/-! ## A173737.P1938062651702271489

`A173735(n+1)+2`
-/

namespace A173737.P1938062651702271489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 (n + 1) + 2

end

end A173737.P1938062651702271489

namespace A173737

/-- `A173735(n+1)+2` -/
def P1938062651702271489.Spec : Prop :=
  ∀ n, P1938062651702271489.a n = A173737 (n + 1)

end A173737

/-! ## A173737.P8225696330066918454

`A173734(n+1)-2`
-/

namespace A173737.P8225696330066918454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173734 (n + 1) - 2

end

end A173737.P8225696330066918454

namespace A173737

/-- `A173734(n+1)-2` -/
def P8225696330066918454.Spec : Prop :=
  ∀ n, P8225696330066918454.a n = A173737 (n + 1)

end A173737

/-! ## A173737.P10740565393470250481

`2*(A002279(n)+3)`
-/

namespace A173737.P10740565393470250481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002279 n + 3)

end

end A173737.P10740565393470250481

namespace A173737

/-- `2*(A002279(n)+3)` -/
def P10740565393470250481.Spec : Prop :=
  ∀ n, P10740565393470250481.a n = A173737 (n + 1)

end A173737

/-! ## A173737.P10823988280326009929

`∑[10^(n%a(n-1))]` with `a(0)=6`
-/

namespace A173737.P10823988280326009929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  10 ^ (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173737.P10823988280326009929

namespace A173737

/-- `∑[10^(n%a(n-1))]` -/
def P10823988280326009929.Spec : Prop :=
  ∀ n, (P10823988280326009929.a n : ℤ) = A173737 (n + 1)

end A173737

/-! ## A173737.P5786469537143538603

`∑[gcd(10, a(n-1))^n]` with `a(0)=6, a(1)=10`
-/

namespace A173737.P5786469537143538603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 10] fun n f1 =>
  Nat.gcd 10 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173737.P5786469537143538603

namespace A173737

/-- `∑[gcd(10, a(n-1))^n]` -/
def P5786469537143538603.Spec : Prop :=
  ∀ n, (P5786469537143538603.a n : ℤ) = A173737 (n + 1)

end A173737

/-! ## A173737.P13497619691047241271

`record[A287468(n)+5]`
-/

namespace A173737.P13497619691047241271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173737.P13497619691047241271

namespace A173737

/-- `record[A287468(n)+5]` -/
def P13497619691047241271.Spec : Prop :=
  ∀ n, P13497619691047241271.a n = A173737 (n + 1)

end A173737

/-! ## A173737.P14305486232662568712

`2*(A178769(n)+1)`
-/

namespace A173737.P14305486232662568712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A178769 n + 1)

end

end A173737.P14305486232662568712

namespace A173737

/-- `2*(A178769(n)+1)` -/
def P14305486232662568712.Spec : Prop :=
  ∀ n, P14305486232662568712.a n = A173737 (n + 1)

end A173737

/-! ## A173737.P293902838067180689

`2*(A093142(n)+2)`
-/

namespace A173737.P293902838067180689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A093142 n + 2)

end

end A173737.P293902838067180689

namespace A173737

/-- `2*(A093142(n)+2)` -/
def P293902838067180689.Spec : Prop :=
  ∀ n, P293902838067180689.a n = A173737 (n + 1)

end A173737

/-! ## A173737.P10269655933965395802

`2*(∑[A093143(n)]+2)`
-/

namespace A173737.P10269655933965395802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A173737.P10269655933965395802

namespace A173737

/-- `2*(∑[A093143(n)]+2)` -/
def P10269655933965395802.Spec : Prop :=
  ∀ n, P10269655933965395802.a n = A173737 (n + 1)

end A173737

/-! ## A173737.P1237602514983158381

`∑[A063945(n)+a(n-1)]` with `a(0)=6, a(1)=10`
-/

namespace A173737.P1237602514983158381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n f1 =>
  A063945 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173737.P1237602514983158381

namespace A173737

/-- `∑[A063945(n)+a(n-1)]` -/
def P1237602514983158381.Spec : Prop :=
  ∀ n, P1237602514983158381.a n = A173737 (n + 1)

end A173737

/-! ## A173737.P7034131456911154310

`2*(A237344(A122709(n))+2)`
-/

namespace A173737.P7034131456911154310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A237344 (A122709 n).toNat + 2)

end

end A173737.P7034131456911154310

namespace A173737

/-- `2*(A237344(A122709(n))+2)` -/
def P7034131456911154310.Spec : Prop :=
  ∀ n, P7034131456911154310.a n = A173737 (n + 1)

end A173737

/-!
# A173740: Triangle T(n,k) = binomial(n,k) + 2 for 1 <= k <= n - 1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

The programs for A173740, the canonical program `A173740.P17450600128773935956` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173740 has offset 0).

The definition of A173740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173740.P13572102687058649990

`abs(2-A173741(n))`
-/

namespace A173740.P13572102687058649990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173741 n|

end

end A173740.P13572102687058649990

namespace A173740

/-- `abs(2-A173741(n))` -/
def P13572102687058649990.Spec : Prop :=
  ∀ n, P13572102687058649990.a n = A173740 n

end A173740

/-! ## A173740.P17450600128773935956

`A132737(n)-A014473(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A173740

/-- `A132737(n)-A014473(n)` -/
def P17450600128773935956.Spec : Prop :=
  ∀ n, P17450600128773935956.a n = A173740 n

theorem P17450600128773935956.correct : P17450600128773935956.Spec := by
  intro n
  simp only [A173740]

end A173740

/-! ## A173740.P15056253367333113954

`A028326(n)-A132823(n)`
-/

namespace A173740.P15056253367333113954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A132823 n

end

end A173740.P15056253367333113954

namespace A173740

/-- `A028326(n)-A132823(n)` -/
def P15056253367333113954.Spec : Prop :=
  ∀ n, P15056253367333113954.a n = A173740 n

end A173740

/-! ## A173740.P968017261755218685

`A132737(n)+1-A007318(n)`
-/

namespace A173740.P968017261755218685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132737 n + (1 - A007318 n)

end

end A173740.P968017261755218685

namespace A173740

/-- `A132737(n)+1-A007318(n)` -/
def P968017261755218685.Spec : Prop :=
  ∀ n, P968017261755218685.a n = A173740 n

end A173740

/-! ## A173740.P10769527622168500335

`A132735(n)+1-A103451(n)`
-/

namespace A173740.P10769527622168500335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n + (1 - A103451 n)

end

end A173740.P10769527622168500335

namespace A173740

/-- `A132735(n)+1-A103451(n)` -/
def P10769527622168500335.Spec : Prop :=
  ∀ n, P10769527622168500335.a n = A173740 n

end A173740

/-! ## A173740.P12793518772805129568

`2*A132735(n)-A007318(n)`
-/

namespace A173740.P12793518772805129568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132735 n - A007318 n

end

end A173740.P12793518772805129568

namespace A173740

/-- `2*A132735(n)-A007318(n)` -/
def P12793518772805129568.Spec : Prop :=
  ∀ n, P12793518772805129568.a n = A173740 n

end A173740

/-! ## A173740.P3788581978598491795

`2*A007318(n)-A132823(n)`
-/

namespace A173740.P3788581978598491795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A132823 n

end

end A173740.P3788581978598491795

namespace A173740

/-- `2*A007318(n)-A132823(n)` -/
def P3788581978598491795.Spec : Prop :=
  ∀ n, P3788581978598491795.a n = A173740 n

end A173740

/-! ## A173740.P469132125587499052

`A132047(n)-2*A014473(n)`
-/

namespace A173740.P469132125587499052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132047 n - 2 * A014473 n

end

end A173740.P469132125587499052

namespace A173740

/-- `A132047(n)-2*A014473(n)` -/
def P469132125587499052.Spec : Prop :=
  ∀ n, P469132125587499052.a n = A173740 n

end A173740

/-! ## A173740.P11144652049490662636

`(A173741(n)+A007318(n))/2`
-/

namespace A173740.P11144652049490662636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173741 n + A007318 n : ℚ) / 2

end

end A173740.P11144652049490662636

namespace A173740

/-- `(A173741(n)+A007318(n))/2` -/
def P11144652049490662636.Spec : Prop :=
  ∀ n, P11144652049490662636.a n = (A173740 n : ℚ)

end A173740

/-! ## A173740.P10375693384676025033

`(A173742(n)+A132823(n))/2`
-/

namespace A173740.P10375693384676025033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173742 n + A132823 n : ℚ) / 2

end

end A173740.P10375693384676025033

namespace A173740

/-- `(A173742(n)+A132823(n))/2` -/
def P10375693384676025033.Spec : Prop :=
  ∀ n, P10375693384676025033.a n = (A173740 n : ℚ)

end A173740

/-! ## A173740.P10184030580182621282

`2*A173741(n)-A173742(n)`
-/

namespace A173740.P10184030580182621282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173741 n - A173742 n

end

end A173740.P10184030580182621282

namespace A173740

/-- `2*A173741(n)-A173742(n)` -/
def P10184030580182621282.Spec : Prop :=
  ∀ n, P10184030580182621282.a n = A173740 n

end A173740

/-! ## A173740.P2598796430918252456

`gcd(A132073(n)+1, A103452(n))`
-/

namespace A173740.P2598796430918252456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132073 n + 1) (A103452 n)

end

end A173740.P2598796430918252456

namespace A173740

/-- `gcd(A132073(n)+1, A103452(n))` -/
def P2598796430918252456.Spec : Prop :=
  ∀ n, (P2598796430918252456.a n : ℤ) = A173740 n

end A173740

/-! ## A173740.P8965230458492109936

`A132044(n)+A154325(n)²-1`
-/

namespace A173740.P8965230458492109936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (A154325 n ^ 2 - 1)

end

end A173740.P8965230458492109936

namespace A173740

/-- `A132044(n)+A154325(n)²-1` -/
def P8965230458492109936.Spec : Prop :=
  ∀ n, P8965230458492109936.a n = A173740 n

end A173740

/-! ## A173740.P13197100256100052612

`(A132046(n)+A154325(n)²)/2`
-/

namespace A173740.P13197100256100052612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132046 n + A154325 n ^ 2 : ℚ) / 2

end

end A173740.P13197100256100052612

namespace A173740

/-- `(A132046(n)+A154325(n)²)/2` -/
def P13197100256100052612.Spec : Prop :=
  ∀ n, P13197100256100052612.a n = (A173740 n : ℚ)

end A173740

/-! ## A173740.P2338704979536083743

`A007318(n)+2*(A154325(n)-1)`
-/

namespace A173740.P2338704979536083743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * (A154325 n - 1)

end

end A173740.P2338704979536083743

namespace A173740

/-- `A007318(n)+2*(A154325(n)-1)` -/
def P2338704979536083743.Spec : Prop :=
  ∀ n, P2338704979536083743.a n = A173740 n

end A173740

/-! ## A173740.P3858277827338974315

`A007318(n)+2*A000007(A103516(n))`
-/

namespace A173740.P3858277827338974315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A000007 (A103516 n).toNat

end

end A173740.P3858277827338974315

namespace A173740

/-- `A007318(n)+2*A000007(A103516(n))` -/
def P3858277827338974315.Spec : Prop :=
  ∀ n, P3858277827338974315.a n = A173740 n

end A173740

/-! ## A173740.P6006316930257080508

`A007318(n)+2*A057427(A103822(n))`
-/

namespace A173740.P6006316930257080508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A057427 (A103822 n).toNat

end

end A173740.P6006316930257080508

namespace A173740

/-- `A007318(n)+2*A057427(A103822(n))` -/
def P6006316930257080508.Spec : Prop :=
  ∀ n, P6006316930257080508.a n = A173740 n

end A173740

/-! ## A173740.P12477200403256794248

`A132735(n)+A023532(n-A023532(n))`
-/

namespace A173740.P12477200403256794248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n + A023532 ((n : ℤ) - A023532 n).toNat

end

end A173740.P12477200403256794248

namespace A173740

/-- `A132735(n)+A023532(n-A023532(n))` -/
def P12477200403256794248.Spec : Prop :=
  ∀ n, P12477200403256794248.a n = A173740 n

end A173740

/-! ## A173740.P5231773004117497320

`A007318(n)+A109128(n)-A132729(n)`
-/

namespace A173740.P5231773004117497320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A109128 n - A132729 n)

end

end A173740.P5231773004117497320

namespace A173740

/-- `A007318(n)+A109128(n)-A132729(n)` -/
def P5231773004117497320.Spec : Prop :=
  ∀ n, P5231773004117497320.a n = A173740 n

end A173740

/-! ## A173740.P12863003179214570560

`A007318(n)+A132735(n)-A132044(n)`
-/

namespace A173740.P12863003179214570560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132735 n - A132044 n)

end

end A173740.P12863003179214570560

namespace A173740

/-- `A007318(n)+A132735(n)-A132044(n)` -/
def P12863003179214570560.Spec : Prop :=
  ∀ n, P12863003179214570560.a n = A173740 n

end A173740

/-!
# A173741: T(n,k) = binomial(n,k) + 4 for 1 <= k <= n - 1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, triangle read by rows.

The programs for A173741, the canonical program `A173741.P3146822036776038077` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173741 has offset 0).

The definition of A173741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173741.P9236522510815884865

`abs(2-A173742(n))`
-/

namespace A173741.P9236522510815884865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173742 n|

end

end A173741.P9236522510815884865

namespace A173741

/-- `abs(2-A173742(n))` -/
def P9236522510815884865.Spec : Prop :=
  ∀ n, P9236522510815884865.a n = A173741 n

end A173741

/-! ## A173741.P3146822036776038077

`A132047(n)+1-A132729(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A173741

/-- `A132047(n)+1-A132729(n)` -/
def P3146822036776038077.Spec : Prop :=
  ∀ n, P3146822036776038077.a n = A173741 n

theorem P3146822036776038077.correct : P3146822036776038077.Spec := by
  intro n
  simp only [A173741]

end A173741

/-! ## A173741.P13582301568721617409

`A132737(n)+1-A132823(n)`
-/

namespace A173741.P13582301568721617409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132737 n + (1 - A132823 n)

end

end A173741.P13582301568721617409

namespace A173741

/-- `A132737(n)+1-A132823(n)` -/
def P13582301568721617409.Spec : Prop :=
  ∀ n, P13582301568721617409.a n = A173741 n

end A173741

/-! ## A173741.P10143031452755436743

`2*A173740(n)-A007318(n)`
-/

namespace A173741.P10143031452755436743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173740 n - A007318 n

end

end A173741.P10143031452755436743

namespace A173741

/-- `2*A173740(n)-A007318(n)` -/
def P10143031452755436743.Spec : Prop :=
  ∀ n, P10143031452755436743.a n = A173741 n

end A173741

/-! ## A173741.P9371673675626806584

`2*A132735(n)-A132823(n)`
-/

namespace A173741.P9371673675626806584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132735 n - A132823 n

end

end A173741.P9371673675626806584

namespace A173741

/-- `2*A132735(n)-A132823(n)` -/
def P9371673675626806584.Spec : Prop :=
  ∀ n, P9371673675626806584.a n = A173741 n

end A173741

/-! ## A173741.P12920788323205527625

`(A173742(n)+A173740(n))/2`
-/

namespace A173741.P12920788323205527625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173742 n + A173740 n : ℚ) / 2

end

end A173741.P12920788323205527625

namespace A173741

/-- `(A173742(n)+A173740(n))/2` -/
def P12920788323205527625.Spec : Prop :=
  ∀ n, P12920788323205527625.a n = (A173741 n : ℚ)

end A173741

/-! ## A173741.P3730193053680438256

`A007318(n)+4*(1-A103451(n))`
-/

namespace A173741.P3730193053680438256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 4 * (1 - A103451 n)

end

end A173741.P3730193053680438256

namespace A173741

/-- `A007318(n)+4*(1-A103451(n))` -/
def P3730193053680438256.Spec : Prop :=
  ∀ n, P3730193053680438256.a n = A173741 n

end A173741

/-! ## A173741.P10820013327166636483

`A007318(n)+A132737(n)-A132729(n)`
-/

namespace A173741.P10820013327166636483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132737 n - A132729 n)

end

end A173741.P10820013327166636483

namespace A173741

/-- `A007318(n)+A132737(n)-A132729(n)` -/
def P10820013327166636483.Spec : Prop :=
  ∀ n, P10820013327166636483.a n = A173741 n

end A173741

/-! ## A173741.P3942016622811658309

`A007318(n)+A173740(n)-A132823(n)`
-/

namespace A173741.P3942016622811658309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A173740 n - A132823 n)

end

end A173741.P3942016622811658309

namespace A173741

/-- `A007318(n)+A173740(n)-A132823(n)` -/
def P3942016622811658309.Spec : Prop :=
  ∀ n, P3942016622811658309.a n = A173741 n

end A173741

/-! ## A173741.P13205474805059165288

`A132823(n)+A173742(n)-A007318(n)`
-/

namespace A173741.P13205474805059165288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132823 n + (A173742 n - A007318 n)

end

end A173741.P13205474805059165288

namespace A173741

/-- `A132823(n)+A173742(n)-A007318(n)` -/
def P13205474805059165288.Spec : Prop :=
  ∀ n, P13205474805059165288.a n = A173741 n

end A173741

/-! ## A173741.P11539444697060782853

`A007318(n)+A173742(n)-A173740(n)`
-/

namespace A173741.P11539444697060782853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A173742 n - A173740 n)

end

end A173741.P11539444697060782853

namespace A173741

/-- `A007318(n)+A173742(n)-A173740(n)` -/
def P11539444697060782853.Spec : Prop :=
  ∀ n, P11539444697060782853.a n = A173741 n

end A173741

/-! ## A173741.P10065724836429211596

`A132046(n)+A132735(n)-A132729(n)`
-/

namespace A173741.P10065724836429211596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + (A132735 n - A132729 n)

end

end A173741.P10065724836429211596

namespace A173741

/-- `A132046(n)+A132735(n)-A132729(n)` -/
def P10065724836429211596.Spec : Prop :=
  ∀ n, P10065724836429211596.a n = A173741 n

end A173741

/-! ## A173741.P9632495182680145811

`A132735(n)+A132737(n)-A132731(n)`
-/

namespace A173741.P9632495182680145811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n + (A132737 n - A132731 n)

end

end A173741.P9632495182680145811

namespace A173741

/-- `A132735(n)+A132737(n)-A132731(n)` -/
def P9632495182680145811.Spec : Prop :=
  ∀ n, P9632495182680145811.a n = A173741 n

end A173741

/-! ## A173741.P10522560056370185128

`A128715(n)+A173742(n)-A132073(n)`
-/

namespace A173741.P10522560056370185128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128715 n + (A173742 n - A132073 n)

end

end A173741.P10522560056370185128

namespace A173741

/-- `A128715(n)+A173742(n)-A132073(n)` -/
def P10522560056370185128.Spec : Prop :=
  ∀ n, P10522560056370185128.a n = A173741 n

end A173741

/-! ## A173741.P1494302362059624270

`A132044(n)+A173742(n)-A132735(n)`
-/

namespace A173741.P1494302362059624270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (A173742 n - A132735 n)

end

end A173741.P1494302362059624270

namespace A173741

/-- `A132044(n)+A173742(n)-A132735(n)` -/
def P1494302362059624270.Spec : Prop :=
  ∀ n, P1494302362059624270.a n = A173741 n

end A173741

/-! ## A173741.P12957333776617600767

`A132735(n)+A173740(n)-A132044(n)`
-/

namespace A173741.P12957333776617600767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n + (A173740 n - A132044 n)

end

end A173741.P12957333776617600767

namespace A173741

/-- `A132735(n)+A173740(n)-A132044(n)` -/
def P12957333776617600767.Spec : Prop :=
  ∀ n, P12957333776617600767.a n = A173741 n

end A173741

/-! ## A173741.P15491085255112946895

`A007318(n)+(A109128(n)-A132729(n))²`
-/

namespace A173741.P15491085255112946895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A109128 n - A132729 n) ^ 2

end

end A173741.P15491085255112946895

namespace A173741

/-- `A007318(n)+(A109128(n)-A132729(n))²` -/
def P15491085255112946895.Spec : Prop :=
  ∀ n, P15491085255112946895.a n = A173741 n

end A173741

/-! ## A173741.P4570201374970618030

`A007318(n)+(A109128(n)-A132737(n))²`
-/

namespace A173741.P4570201374970618030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A109128 n - A132737 n) ^ 2

end

end A173741.P4570201374970618030

namespace A173741

/-- `A007318(n)+(A109128(n)-A132737(n))²` -/
def P4570201374970618030.Spec : Prop :=
  ∀ n, P4570201374970618030.a n = A173741 n

end A173741

/-! ## A173741.P18385179408826955372

`A007318(n)+(A132044(n)-A132735(n))²`
-/

namespace A173741.P18385179408826955372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132044 n - A132735 n) ^ 2

end

end A173741.P18385179408826955372

namespace A173741

/-- `A007318(n)+(A132044(n)-A132735(n))²` -/
def P18385179408826955372.Spec : Prop :=
  ∀ n, P18385179408826955372.a n = A173741 n

end A173741

/-! ## A173741.P2653351139641365379

`A007318(n)+4%A176348(n)`
-/

namespace A173741.P2653351139641365379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod 4 (A176348 n)

end

end A173741.P2653351139641365379

namespace A173741

/-- `A007318(n)+4%A176348(n)` -/
def P2653351139641365379.Spec : Prop :=
  ∀ n, P2653351139641365379.a n = A173741 n

end A173741

/-!
# A173742: Triangle T(n,k) = binomial(n,k) + 6 with T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

The programs for A173742, the canonical program `A173742.P18054629541867481187` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173742 has offset 0).

The definition of A173742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173742.P18054629541867481187

`2*A173740(n)-A132823(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A173742

/-- `2*A173740(n)-A132823(n)` -/
def P18054629541867481187.Spec : Prop :=
  ∀ n, P18054629541867481187.a n = A173742 n

theorem P18054629541867481187.correct : P18054629541867481187.Spec := by
  intro n
  simp only [A173742]

end A173742

/-! ## A173742.P14672759168598640181

`2*A173741(n)-A173740(n)`
-/

namespace A173742.P14672759168598640181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173741 n - A173740 n

end

end A173742.P14672759168598640181

namespace A173742

/-- `2*A173741(n)-A173740(n)` -/
def P14672759168598640181.Spec : Prop :=
  ∀ n, P14672759168598640181.a n = A173742 n

end A173742

/-! ## A173742.P4184736211144894585

`A007318(n)+A173741(n)-A132823(n)`
-/

namespace A173742.P4184736211144894585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A173741 n - A132823 n)

end

end A173742.P4184736211144894585

namespace A173742

/-- `A007318(n)+A173741(n)-A132823(n)` -/
def P4184736211144894585.Spec : Prop :=
  ∀ n, P4184736211144894585.a n = A173742 n

end A173742

/-! ## A173742.P17364662234538770232

`A173740(n)+A173741(n)-A007318(n)`
-/

namespace A173742.P17364662234538770232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + (A173741 n - A007318 n)

end

end A173742.P17364662234538770232

namespace A173742

/-- `A173740(n)+A173741(n)-A007318(n)` -/
def P17364662234538770232.Spec : Prop :=
  ∀ n, P17364662234538770232.a n = A173742 n

end A173742

/-! ## A173742.P15030812868818659826

`A132735(n)+A173741(n)-A132044(n)`
-/

namespace A173742.P15030812868818659826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n + (A173741 n - A132044 n)

end

end A173742.P15030812868818659826

namespace A173742

/-- `A132735(n)+A173741(n)-A132044(n)` -/
def P15030812868818659826.Spec : Prop :=
  ∀ n, P15030812868818659826.a n = A173742 n

end A173742

/-! ## A173742.P5018553385924246801

`A132737(n)+A173740(n)-A132729(n)`
-/

namespace A173742.P5018553385924246801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132737 n + (A173740 n - A132729 n)

end

end A173742.P5018553385924246801

namespace A173742

/-- `A132737(n)+A173740(n)-A132729(n)` -/
def P5018553385924246801.Spec : Prop :=
  ∀ n, P5018553385924246801.a n = A173742 n

end A173742

/-! ## A173742.P330977638581085105

`A173740(n)+(A007318(n)-A132823(n))²`
-/

namespace A173742.P330977638581085105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + (A007318 n - A132823 n) ^ 2

end

end A173742.P330977638581085105

namespace A173742

/-- `A173740(n)+(A007318(n)-A132823(n))²` -/
def P330977638581085105.Spec : Prop :=
  ∀ n, P330977638581085105.a n = A173742 n

end A173742

/-! ## A173742.P16925035854757176745

`A173740(n)+(A132044(n)-A132735(n))²`
-/

namespace A173742.P16925035854757176745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + (A132044 n - A132735 n) ^ 2

end

end A173742.P16925035854757176745

namespace A173742

/-- `A173740(n)+(A132044(n)-A132735(n))²` -/
def P16925035854757176745.Spec : Prop :=
  ∀ n, P16925035854757176745.a n = A173742 n

end A173742

/-! ## A173742.P2047165514304374184

`A007318(n)+6%A300911(A002260(n+2))`
-/

namespace A173742.P2047165514304374184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod 6 (A300911 (A002260 (n + 2)).toNat)

end

end A173742.P2047165514304374184

namespace A173742

/-- `A007318(n)+6%A300911(A002260(n+2))` -/
def P2047165514304374184.Spec : Prop :=
  ∀ n, P2047165514304374184.a n = A173742 n

end A173742

/-! ## A173742.P7688662981122075974

`A057544(A173741(n))`
-/

namespace A173742.P7688662981122075974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (A173741 n).toNat

end

end A173742.P7688662981122075974

namespace A173742

/-- `A057544(A173741(n))` -/
def P7688662981122075974.Spec : Prop :=
  ∀ n, P7688662981122075974.a n = A173742 n

end A173742

/-! ## A173742.P13629954980363508774

`A004277(A173741(n))-A173740(n)`
-/

namespace A173742.P13629954980363508774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A173741 n).toNat - A173740 n

end

end A173742.P13629954980363508774

namespace A173742

/-- `A004277(A173741(n))-A173740(n)` -/
def P13629954980363508774.Spec : Prop :=
  ∀ n, P13629954980363508774.a n = A173742 n

end A173742

/-! ## A173742.P5281228274421606574

`A137235(A132046(n))`
-/

namespace A173742.P5281228274421606574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137235 (A132046 n).toNat

end

end A173742.P5281228274421606574

namespace A173742

/-- `A137235(A132046(n))` -/
def P5281228274421606574.Spec : Prop :=
  ∀ n, P5281228274421606574.a n = A173742 n

end A173742

/-!
# A173743: Numbers k such that phi(tau(k)) = tau(rad(k)).

The programs for A173743, the canonical program `A173743.P4929656854599200138` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173743 has offset 1).

The definition of A173743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173743.P4929656854599200138

`eq[A034444(n+1), A163109(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A173743

/-- `eq[A034444(n+1), A163109(n+1)]+1` -/
def P4929656854599200138.Spec : Prop :=
  ∀ n, (P4929656854599200138.a n : ℤ) = A173743 (n + 1)

theorem P4929656854599200138.correct : P4929656854599200138.Spec := by
  intro n
  simp only [A173743, Nat.add_sub_cancel]

end A173743

/-! ## A173743.P8949144344109288269

`eq[A000010(∏{e}[n+1, #+1]), A034444(n+1)]+1`
-/

namespace A173743.P8949144344109288269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A173743.P8949144344109288269

namespace A173743

/-- `eq[A000010(∏{e}[n+1, #+1]), A034444(n+1)]+1` -/
def P8949144344109288269.Spec : Prop :=
  ∀ n, (P8949144344109288269.a n : ℤ) = A173743 (n + 1)

end A173743

/-! ## A173743.P7850188385288177608

`eq[A000010(A000005(n+1)), A034444(n+1)]+1`
-/

namespace A173743.P7850188385288177608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173743.P7850188385288177608

namespace A173743

/-- `eq[A000010(A000005(n+1)), A034444(n+1)]+1` -/
def P7850188385288177608.Spec : Prop :=
  ∀ n, (P7850188385288177608.a n : ℤ) = A173743 (n + 1)

end A173743

/-! ## A173743.P17979401827530195742

`lt[2*A286654(n+1), A052553(A325248(n+1))²]+1`
-/

namespace A173743.P17979401827530195742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (A325248 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A173743.P17979401827530195742

namespace A173743

/-- `lt[2*A286654(n+1), A052553(A325248(n+1))²]+1` -/
def P17979401827530195742.Spec : Prop :=
  ∀ n, (P17979401827530195742.a n : ℤ) = A173743 (n + 1)

end A173743

/-! ## A173743.P6397525994238298612

`A361204(eq[A225152(3*n+2), A225181(n)])`
-/

namespace A173743.P6397525994238298612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225152 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A173743.P6397525994238298612

namespace A173743

/-- `A361204(eq[A225152(3*n+2), A225181(n)])` -/
def P6397525994238298612.Spec : Prop :=
  ∀ n, P6397525994238298612.a n = A173743 (n + 1)

end A173743

/-!
# A173744: Numbers n such that tau(phi(n))= phi(rad(n)).

The programs for A173744, there is no canonical definition to state claims against.
-/

/-! ## A173744.P13166880807829605524

`eq[A062821(n+1), A173557(n+1)]+1`
-/

namespace A173744.P13166880807829605524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173744.P13166880807829605524

/-! ## A173744.P16860791718493494728

`eq[A000005(A002618(n+1)/(n+1)), A173557(n+1)]+1`
-/

namespace A173744.P16860791718493494728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173744.P16860791718493494728

/-!
# A173745: Numbers n such that tau(phi(n)) = sigma(rad(n)).

The programs for A173745, there is no canonical definition to state claims against.
-/

/-! ## A173745.P3099898332114671736

`eq[A048250(n+1), A062821(n+1)]+1`
-/

namespace A173745.P3099898332114671736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173745.P3099898332114671736

/-! ## A173745.P10361379279956918376

`A001597(∩[A020658(n+1), A103049(n+1)])`
-/

namespace A173745.P10361379279956918376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103049 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A173745.P10361379279956918376

/-!
# A173746: Numbers k such that tau(tau(k)) = rad(k).

The programs for A173746, there is no canonical definition to state claims against.
-/

/-! ## A173746.P14939219859064394197

`eq[A000005(A000005(n+1)), A007947(n+1)]+1`
-/

namespace A173746.P14939219859064394197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173746.P14939219859064394197

/-! ## A173746.P730195632016643029

`eq[A007947(n+1), A010553(n+1)]+1`
-/

namespace A173746.P730195632016643029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173746.P730195632016643029

/-! ## A173746.P3503108796587954850

`eq[A007947(n+1), A184395(A184395(n+1))]+1`
-/

namespace A173746.P3503108796587954850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (A184395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173746.P3503108796587954850

/-! ## A173746.P2410674482980417880

`eq[A076618(n+1)-1, A000005(A000005(n+1))]+1`
-/

namespace A173746.P2410674482980417880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173746.P2410674482980417880

/-! ## A173746.P1355431130190562974

`A103921(A213569(n+1))*A324524(n+1)`
-/

namespace A173746.P1355431130190562974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A213569 (n + 1)).toNat * A324524 (n + 1)

end

end A173746.P1355431130190562974

/-!
# A173747: Square array T(n, k) = v(k, n)((1)), where v(n, q) = M*v(n-1, q), M = {{0, 1, 0}, {0, 0, 1}, {8*q^3, 6*q, 0}}, with v(0, q) = {1, 1, 1}, read by antidiagonals.

The programs for A173747, there is no canonical definition to state claims against.
-/

/-! ## A173747.P16031759764792335822

`A237126(10^A251761(n))`
-/

namespace A173747.P16031759764792335822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237126 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A251761 n : ℤ))).toNat

end

end A173747.P16031759764792335822

/-! ## A173747.P7461238883149448702

`A051866(A026519(n)^A046575(n+1))`
-/

namespace A173747.P7461238883149448702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 (SequenceMachineLib.roundAway ((A026519 n : ℚ) ^ (A046575 (n + 1) : ℤ))).toNat

end

end A173747.P7461238883149448702

/-! ## A173747.P4668845235114344158

`A051866(A188919(n)%A294740(n+1))`
-/

namespace A173747.P4668845235114344158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 (Int.tmod (A188919 n) (A294740 (n + 1))).toNat

end

end A173747.P4668845235114344158

/-! ## A173747.P13848914581559081553

`A123242(lcm(A123243(n+1), A246466(n)))`
-/

namespace A173747.P13848914581559081553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123242 (Int.lcm (A123243 (n + 1)) (A246466 n))

end

end A173747.P13848914581559081553

/-!
# A173748: Numbers k such that phi(phi(k)) = sigma(rad(k)).

The programs for A173748, there is no canonical definition to state claims against.
-/

/-! ## A173748.P10519466150194424185

`eq[A000010(A000010(n+1)), A048250(n+1)]+1`
-/

namespace A173748.P10519466150194424185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173748.P10519466150194424185

/-!
# A173750: a(n) = smallest positive m such that k*m+1 is prime for k=2..n.

The programs for A173750, there is no canonical definition to state claims against.
-/

/-! ## A173750.P11081273166688174945

`∏{p}[C(A288621(n+1), n+1), #]`
-/

namespace A173750.P11081273166688174945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A288621 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A173750.P11081273166688174945

/-!
# A173751: a(n) = gcd(n, lcm_{p is a prime divisor of n} (p-1)) = gcd(n, A173614(n)).

The programs for A173751, there is no canonical definition to state claims against.
-/

/-! ## A173751.P3767901651607929134

`gcd(n+1, A002322(∏{p}[n+1, #]))`
-/

namespace A173751.P3767901651607929134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002322 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A173751.P3767901651607929134

/-! ## A173751.P6922575140917299068

`gcd(n+1, A002322(A007947(n+1)))`
-/

namespace A173751.P6922575140917299068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002322 (A007947 (n + 1)).toNat)

end

end A173751.P6922575140917299068

/-! ## A173751.P4758434864280945221

`gcd(A002322(A007947(n+1)), A131738(n))`
-/

namespace A173751.P4758434864280945221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002322 (A007947 (n + 1)).toNat) (A131738 n)

end

end A173751.P4758434864280945221

/-! ## A173751.P7578319675802806762

`gcd(A011773(A007947(n+1)), A048671(n+1))`
-/

namespace A173751.P7578319675802806762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011773 (A007947 (n + 1)).toNat) (A048671 (n + 1))

end

end A173751.P7578319675802806762

/-! ## A173751.P4647635499939592365

`gcd(A000027(n+1), A277030(A007947(n+1)))`
-/

namespace A173751.P4647635499939592365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A277030 (A007947 (n + 1)).toNat)

end

end A173751.P4647635499939592365

/-! ## A173751.P12063811201999063334

`gcd(A059169(4*n+3), A173614(2*(n+1)))`
-/

namespace A173751.P12063811201999063334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059169 (4 * n + 3)) (A173614 (2 * (n + 1)))

end

end A173751.P12063811201999063334

/-! ## A173751.P335011964468797574

`A346094(A007948(n+1))`
-/

namespace A173751.P335011964468797574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346094 (A007948 (n + 1)).toNat

end

end A173751.P335011964468797574

/-! ## A173751.P1138309255510106244

`A346094(A144907(n+1))`
-/

namespace A173751.P1138309255510106244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346094 (A144907 (n + 1)).toNat

end

end A173751.P1138309255510106244

/-! ## A173751.P14789849550669895066

`gcd(A002944(n+1), A346094(n+1))`
-/

namespace A173751.P14789849550669895066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002944 (n + 1)) (A346094 (n + 1))

end

end A173751.P14789849550669895066

/-! ## A173751.P16948974619523076890

`A346094(A002618(n+1)/A308828(n+1))`
-/

namespace A173751.P16948974619523076890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346094 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (A308828 (n + 1) : ℚ))).toNat

end

end A173751.P16948974619523076890

/-!
# A173754: a(n)=m-k where x^2+x+41=m-th prime and x^2-x+41=k-th prime.

The programs for A173754, there is no canonical definition to state claims against.
-/

/-! ## A173754.P12344023210436999228

`Δ[A329622(A142719(n+1))]%A275148(n+1)`
-/

namespace A173754.P12344023210436999228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A142719 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A275148 (n + 1))

end

end A173754.P12344023210436999228

/-! ## A173754.P9890410326809577664

`Δ[A061395(A020914(n)*A142719(n+1))]`
-/

namespace A173754.P9890410326809577664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020914 n * A142719 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173754.P9890410326809577664

/-! ## A173754.P5173642020901856583

`Δ[A061395(A142719(n+1)*A348506(n+1))]`
-/

namespace A173754.P5173642020901856583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A142719 (n + 1) * A348506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173754.P5173642020901856583

/-! ## A173754.P7110576676861081154

`A151934(2*n)!*Δ[A329622(A142719(n+1))]`
-/

namespace A173754.P7110576676861081154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A142719 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151934 (2 * n)).toNat : ℤ) * (f1 (n + 1) - f1 n)

end

end A173754.P7110576676861081154

/-!
# A173755: Table read by rows, T(n,k) = (-1)^(n-k)*2^(2*k-bw(k)), where bw(k) is the binary weight of k (A000120).

The programs for A173755, the canonical program `A173755.P14170754971601433776` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173755 has offset 0).

The definition of A173755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173755.P14170754971601433776

`A046161(A002262(n))*A097807(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A173755

/-- `A046161(A002262(n))*A097807(n)` -/
def P14170754971601433776.Spec : Prop :=
  ∀ n, P14170754971601433776.a n = A173755 n

theorem P14170754971601433776.correct : P14170754971601433776.Spec := by
  intro n
  simp only [A173755]

end A173755

/-! ## A173755.P10205896846961221131

`A004731(A158405(n+1))*A097807(n)`
-/

namespace A173755.P10205896846961221131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (A158405 (n + 1)).toNat * A097807 n

end

end A173755.P10205896846961221131

namespace A173755

/-- `A004731(A158405(n+1))*A097807(n)` -/
def P10205896846961221131.Spec : Prop :=
  ∀ n, P10205896846961221131.a n = A173755 n

end A173755

/-! ## A173755.P14878518960015840187

`A004731(A158405(C(n+1, n)))/A097807(n)`
-/

namespace A173755.P14878518960015840187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (A158405 (Nat.choose (n + 1) n)).toNat : ℚ) / (A097807 n : ℚ)

end

end A173755.P14878518960015840187

namespace A173755

/-- `A004731(A158405(C(n+1, n)))/A097807(n)` -/
def P14878518960015840187.Spec : Prop :=
  ∀ n, P14878518960015840187.a n = (A173755 n : ℚ)

end A173755

/-! ## A173755.P15839041402418968301

`A033999(A025581(n))*A046161(A002262(n))`
-/

namespace A173755.P15839041402418968301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A046161 (A002262 n).toNat

end

end A173755.P15839041402418968301

namespace A173755

/-- `A033999(A025581(n))*A046161(A002262(n))` -/
def P15839041402418968301.Spec : Prop :=
  ∀ n, P15839041402418968301.a n = A173755 n

end A173755

/-! ## A173755.P16800860322368398839

`A004731(A158405(n+1))*A062157(A004736(n+1))`
-/

namespace A173755.P16800860322368398839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (A158405 (n + 1)).toNat * A062157 (A004736 (n + 1)).toNat

end

end A173755.P16800860322368398839

namespace A173755

/-- `A004731(A158405(n+1))*A062157(A004736(n+1))` -/
def P16800860322368398839.Spec : Prop :=
  ∀ n, P16800860322368398839.a n = A173755 n

end A173755

/-! ## A173755.P11702048684034513667

`A046644(A059268(n))*A097807(n)`
-/

namespace A173755.P11702048684034513667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A059268 n).toNat * A097807 n

end

end A173755.P11702048684034513667

namespace A173755

/-- `A046644(A059268(n))*A097807(n)` -/
def P11702048684034513667.Spec : Prop :=
  ∀ n, P11702048684034513667.a n = A173755 n

end A173755

/-! ## A173755.P12236055017233059502

`A033999(A025581(n))*A046644(A059268(n))`
-/

namespace A173755.P12236055017233059502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A046644 (A059268 n).toNat

end

end A173755.P12236055017233059502

namespace A173755

/-- `A033999(A025581(n))*A046644(A059268(n))` -/
def P12236055017233059502.Spec : Prop :=
  ∀ n, P12236055017233059502.a n = A173755 n

end A173755

/-! ## A173755.P12381409286806764763

`A008836(A130321(n))*A318314(A059268(n))`
-/

namespace A173755.P12381409286806764763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A318314 (A059268 n).toNat

end

end A173755.P12381409286806764763

namespace A173755

/-- `A008836(A130321(n))*A318314(A059268(n))` -/
def P12381409286806764763.Spec : Prop :=
  ∀ n, P12381409286806764763.a n = A173755 n

end A173755

/-!
# A173756: Partial sums of A058313.

The programs for A173756, there is no canonical definition to state claims against.
-/

/-! ## A173756.P8045896149560833708

`∑[A058313(n+1)]`
-/

namespace A173756.P8045896149560833708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173756.P8045896149560833708

/-! ## A173756.P7053102701740858251

`∑[A075830(n+2)]`
-/

namespace A173756.P7053102701740858251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075830 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173756.P7053102701740858251

/-! ## A173756.P4771990551287754583

`A058313(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A173756.P4771990551287754583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058313 (n + 1) + a (A023443 n).toNat

end

end A173756.P4771990551287754583

/-! ## A173756.P4052540440126476784

`A058313(n+1)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A173756.P4052540440126476784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058313 (n + 1) + a (A004273 n - (n : ℤ)).toNat

end

end A173756.P4052540440126476784

/-! ## A173756.P9891603263530360831

`a(n-1)+A058313(n+1)+A000007(n+1)` with `a(0)=1`
-/

namespace A173756.P9891603263530360831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A058313 (n + 1) + A000007 (n + 1))

end

end A173756.P9891603263530360831

/-! ## A173756.P12649264291091206677

`∑[A025530(n+1)/A269626(n+1)]`
-/

namespace A173756.P12649264291091206677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025530 (n + 1) : ℚ) / (A269626 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173756.P12649264291091206677

/-!
# A173758: Partial sums of A006820.

The programs for A173758, there is no canonical definition to state claims against.
-/

/-! ## A173758.P13516881433017949009

`∑[A006820(n)]`
-/

namespace A173758.P13516881433017949009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173758.P13516881433017949009

/-! ## A173758.P11118223595605232015

`∑[A033301(n)-A033483(n)]`
-/

namespace A173758.P11118223595605232015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - A033483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173758.P11118223595605232015

/-! ## A173758.P301117917381630840

`a(n-1)+A185284(n)+A006820(n)` with `a(0)=1`
-/

namespace A173758.P301117917381630840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A185284 n + A006820 n)

end

end A173758.P301117917381630840

/-! ## A173758.P12314707745526946757

`a(n-1)+and(1, A000040(n+1))*A006820(n)` with `a(0)=1`
-/

namespace A173758.P12314707745526946757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land 1 (A000040 (n + 1)) * A006820 n

end

end A173758.P12314707745526946757

/-! ## A173758.P1506431753310545825

`a(n-1)-2+A006820(n)+A000032(C(2, n+2))` with `a(0)=1`
-/

namespace A173758.P1506431753310545825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 2 + (A006820 n + A000032 (Nat.choose 2 (n + 2)))

end

end A173758.P1506431753310545825

/-!
# A173759: Prime numbers p such that 1/p is in the Cantor set.

The programs for A173759, there is no canonical definition to state claims against.
-/

/-! ## A173759.P8227144689920760481

`p?[∪[∑[floor(3^(n-1))], 3^n+9^n+1]]`
-/

namespace A173759.P8227144689920760481
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + (9 ^ n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173759.P8227144689920760481

/-!
# A173760: Partials sums of A000410.

The programs for A173760, there is no canonical definition to state claims against.
-/

/-! ## A173760.P12520641633735790871

`∑[A000410(n+1)]`
-/

namespace A173760.P12520641633735790871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173760.P12520641633735790871

/-!
# A173761: Partial sums of A002861.

The programs for A173761, there is no canonical definition to state claims against.
-/

/-! ## A173761.P14188845661321103663

`∑[A002861(n+1)]`
-/

namespace A173761.P14188845661321103663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173761.P14188845661321103663

/-! ## A173761.P17710595944429184125

`∑[record[A002861(A065648(n))]]`
-/

namespace A173761.P17710595944429184125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173761.P17710595944429184125

/-! ## A173761.P3364994912628040414

`∑[record[A002861(A133310(n))]]`
-/

namespace A173761.P3364994912628040414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173761.P3364994912628040414

/-! ## A173761.P5083796362964392057

`∑[record[A002861(A158416(n))]]`
-/

namespace A173761.P5083796362964392057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173761.P5083796362964392057

/-! ## A173761.P3168747573032503888

`∑[record[A002861(A324347(n))]]`
-/

namespace A173761.P3168747573032503888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173761.P3168747573032503888

/-! ## A173761.P18083546137514364858

`∑[A002862(n+1)+∑[A174145(n)]]`
-/

namespace A173761.P18083546137514364858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002862 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173761.P18083546137514364858

/-! ## A173761.P8179297944070858181

`∑[A124682(n+1)-∑[A174145(n)]]`
-/

namespace A173761.P8179297944070858181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124682 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173761.P8179297944070858181

/-! ## A173761.P16452331403965700883

`∑[A002862(n+1)+A000081(n+1)]`
-/

namespace A173761.P16452331403965700883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002862 (n + 1) + A000081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173761.P16452331403965700883

/-! ## A173761.P4363234224365199062

`A002861(n+1)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A173761.P4363234224365199062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002861 (n + 1) + a ((n : ℤ) - A057427 n).toNat

end

end A173761.P4363234224365199062

/-! ## A173761.P8733237040391387043

`∑[record[A002861(A051340(n))]]`
-/

namespace A173761.P8733237040391387043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173761.P8733237040391387043

/-!
# A173762: Partial sums of A000133.

The programs for A173762, there is no canonical definition to state claims against.
-/

/-! ## A173762.P827928526639802163

`∑[A000133(n+1)]`
-/

namespace A173762.P827928526639802163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173762.P827928526639802163

/-! ## A173762.P2722643878994213960

`a(n-1)+A001320(n+1)+abs(A331691(n))` with `a(0)=2`
-/

namespace A173762.P2722643878994213960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A001320 (n + 1) + |A331691 n|)

end

end A173762.P2722643878994213960

/-! ## A173762.P5853563525689289137

`a(n-1)+A016031(n+2)+A001320(n+1)` with `a(0)=2`
-/

namespace A173762.P5853563525689289137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A016031 (n + 2) + A001320 (n + 1))

end

end A173762.P5853563525689289137

/-!
# A173764: a(n) = (10^n+17)/3.

The programs for A173764, the canonical program `A173764.P2370668127034054115` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173764 has offset 1).

The definition of A173764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^(n+1)+17)/3` (program `A173764.P5922032566139237239`, by `A173764.P5922032566139237239.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173764.P5922032566139237239

`(10^(n+1)+17)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173764.P5922032566139237239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) + 17 : ℚ) / 3

end

end A173764.P5922032566139237239

namespace A173764

/-- `(10^(n+1)+17)/3` -/
def P5922032566139237239.Spec : Prop :=
  ∀ n, P5922032566139237239.a n = (A173764 (n + 1) : ℚ)

theorem P5922032566139237239.correct : P5922032566139237239.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173764, Nat.add_sub_cancel, A173764.P5922032566139237239.a, A173764.P2370668127034054115.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173764, Nat.add_sub_cancel, A173764.P5922032566139237239.a, A173764.P2370668127034054115.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173764

/-! ## A173764.P2370668127034054115

`10*a(n-1)-51` with `a(0)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173764

/-- `10*a(n-1)-51` -/
def P2370668127034054115.Spec : Prop :=
  ∀ n, P2370668127034054115.a n = A173764 (n + 1)

theorem P2370668127034054115.correct : P2370668127034054115.Spec := by
  intro n
  simp only [A173764, Nat.add_sub_cancel]

end A173764

/-! ## A173764.P4225724307972860850

`3*A098406(n+1)`
-/

namespace A173764.P4225724307972860850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098406 (n + 1)

end

end A173764.P4225724307972860850

namespace A173764

/-- `3*A098406(n+1)` -/
def P4225724307972860850.Spec : Prop :=
  ∀ n, P4225724307972860850.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P5338498434867552082

`A033175(n)+8`
-/

namespace A173764.P5338498434867552082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033175 n + 8

end

end A173764.P5338498434867552082

namespace A173764

/-- `A033175(n)+8` -/
def P5338498434867552082.Spec : Prop :=
  ∀ n, P5338498434867552082.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P3786422028374129159

`A173766(n+1)+2`
-/

namespace A173764.P3786422028374129159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173766 (n + 1) + 2

end

end A173764.P3786422028374129159

namespace A173764

/-- `A173766(n+1)+2` -/
def P3786422028374129159.Spec : Prop :=
  ∀ n, P3786422028374129159.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P6256137679756034358

`A133473(n+1)+4`
-/

namespace A173764.P6256137679756034358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133473 (n + 1) + 4

end

end A173764.P6256137679756034358

namespace A173764

/-- `A133473(n+1)+4` -/
def P6256137679756034358.Spec : Prop :=
  ∀ n, P6256137679756034358.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P14718931038920117460

`A093137(n+1)+5`
-/

namespace A173764.P14718931038920117460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 (n + 1) + 5

end

end A173764.P14718931038920117460

namespace A173764

/-- `A093137(n+1)+5` -/
def P14718931038920117460.Spec : Prop :=
  ∀ n, P14718931038920117460.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P4096755838522140982

`A002277(n+1)+6`
-/

namespace A173764.P4096755838522140982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 (n + 1) + 6

end

end A173764.P4096755838522140982

namespace A173764

/-- `A002277(n+1)+6` -/
def P4096755838522140982.Spec : Prop :=
  ∀ n, P4096755838522140982.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P5094143037977778546

`A323639(n+1)+7`
-/

namespace A173764.P5094143037977778546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323639 (n + 1) + 7

end

end A173764.P5094143037977778546

namespace A173764

/-- `A323639(n+1)+7` -/
def P5094143037977778546.Spec : Prop :=
  ∀ n, P5094143037977778546.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P13603020987223469700

`2*A126109(n)+5`
-/

namespace A173764.P13603020987223469700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126109 n + 5

end

end A173764.P13603020987223469700

namespace A173764

/-- `2*A126109(n)+5` -/
def P13603020987223469700.Spec : Prop :=
  ∀ n, P13603020987223469700.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P15517515026939248906

`A133384(n)/3+5`
-/

namespace A173764.P15517515026939248906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133384 n : ℚ) / 3 + 5

end

end A173764.P15517515026939248906

namespace A173764

/-- `A133384(n)/3+5` -/
def P15517515026939248906.Spec : Prop :=
  ∀ n, P15517515026939248906.a n = (A173764 (n + 1) : ℚ)

end A173764

/-! ## A173764.P16684807309093728387

`2*(A246057(n)+3)+1`
-/

namespace A173764.P16684807309093728387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A246057 n + 3) + 1

end

end A173764.P16684807309093728387

namespace A173764

/-- `2*(A246057(n)+3)+1` -/
def P16684807309093728387.Spec : Prop :=
  ∀ n, P16684807309093728387.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P849084664288837982

`3*(A105279(n)+2)+3`
-/

namespace A173764.P849084664288837982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A105279 n + 2) + 3

end

end A173764.P849084664288837982

namespace A173764

/-- `3*(A105279(n)+2)+3` -/
def P849084664288837982.Spec : Prop :=
  ∀ n, P849084664288837982.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P15427028434079813071

`A096483(2*(n+1))+6`
-/

namespace A173764.P15427028434079813071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096483 (2 * (n + 1)) + 6

end

end A173764.P15427028434079813071

namespace A173764

/-- `A096483(2*(n+1))+6` -/
def P15427028434079813071.Spec : Prop :=
  ∀ n, P15427028434079813071.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P6518896371088102467

`A237424(∑[n+1]+1)+5`
-/

namespace A173764.P6518896371088102467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237424 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 5

end

end A173764.P6518896371088102467

namespace A173764

/-- `A237424(∑[n+1]+1)+5` -/
def P6518896371088102467.Spec : Prop :=
  ∀ n, P6518896371088102467.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P15972655143491152241

`A173776(n+1)+1-A002275(n+1)`
-/

namespace A173764.P15972655143491152241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173776 (n + 1) + (1 - A002275 (n + 1))

end

end A173764.P15972655143491152241

namespace A173764

/-- `A173776(n+1)+1-A002275(n+1)` -/
def P15972655143491152241.Spec : Prop :=
  ∀ n, P15972655143491152241.a n = A173764 (n + 1)

end A173764

/-! ## A173764.P10478714019951064273

`A002275(n+1)+2*A173735(n+1)`
-/

namespace A173764.P10478714019951064273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + 2 * A173735 (n + 1)

end

end A173764.P10478714019951064273

namespace A173764

/-- `A002275(n+1)+2*A173735(n+1)` -/
def P10478714019951064273.Spec : Prop :=
  ∀ n, P10478714019951064273.a n = A173764 (n + 1)

end A173764

/-!
# A173765: Partial sums of A005200.

The programs for A173765, there is no canonical definition to state claims against.
-/

/-! ## A173765.P8244182388954274708

`∑[A005200(n+1)]`
-/

namespace A173765.P8244182388954274708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173765.P8244182388954274708

/-! ## A173765.P7121440101262578042

`∑[record[A005200(A065648(n))]]`
-/

namespace A173765.P7121440101262578042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005200 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173765.P7121440101262578042

/-! ## A173765.P3359941040870583379

`∑[record[A005200(A158416(n))]]`
-/

namespace A173765.P3359941040870583379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005200 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173765.P3359941040870583379

/-! ## A173765.P220845678181829591

`a(n-1)+A005200(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A173765.P220845678181829591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A005200 (n + 1) + A000007 n)

end

end A173765.P220845678181829591

/-! ## A173765.P3207235486687922617

`a(n-1)+A005200(n+1)%A029857(n+1)` with `a(0)=1`
-/

namespace A173765.P3207235486687922617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A005200 (n + 1)) (A029857 (n + 1))

end

end A173765.P3207235486687922617

/-!
# A173766: a(n) = (10^n + 11)/3.

The programs for A173766, the canonical program `A173766.P8823736846331815809` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173766 has offset 1).

The definition of A173766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^(n+1)+11)/3` (program `A173766.P15425256230258195441`, by `A173766.P15425256230258195441.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173766.P15425256230258195441

`(10^(n+1)+11)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173766.P15425256230258195441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) + 11 : ℚ) / 3

end

end A173766.P15425256230258195441

namespace A173766

/-- `(10^(n+1)+11)/3` -/
def P15425256230258195441.Spec : Prop :=
  ∀ n, P15425256230258195441.a n = (A173766 (n + 1) : ℚ)

theorem P15425256230258195441.correct : P15425256230258195441.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173766, Nat.add_sub_cancel, A173766.P15425256230258195441.a, A173766.P8823736846331815809.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173766, Nat.add_sub_cancel, A173766.P15425256230258195441.a, A173766.P8823736846331815809.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173766

/-! ## A173766.P8823736846331815809

`10*a(n-1)-33` with `a(0)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173766

/-- `10*a(n-1)-33` -/
def P8823736846331815809.Spec : Prop :=
  ∀ n, P8823736846331815809.a n = A173766 (n + 1)

theorem P8823736846331815809.correct : P8823736846331815809.Spec := by
  intro n
  simp only [A173766, Nat.add_sub_cancel]

end A173766

/-! ## A173766.P3310036296829506603

`abs(2-A173764(n+1))`
-/

namespace A173766.P3310036296829506603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173764 (n + 1)|

end

end A173766.P3310036296829506603

namespace A173766

/-- `abs(2-A173764(n+1))` -/
def P3310036296829506603.Spec : Prop :=
  ∀ n, P3310036296829506603.a n = A173766 (n + 1)

end A173766

/-! ## A173766.P17881990282761339281

`ceil(A253213(n+1)/3)`
-/

namespace A173766.P17881990282761339281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A253213 (n + 1) : ℚ) / 3⌉

end

end A173766.P17881990282761339281

namespace A173766

/-- `ceil(A253213(n+1)/3)` -/
def P17881990282761339281.Spec : Prop :=
  ∀ n, P17881990282761339281.a n = A173766 (n + 1)

end A173766

/-! ## A173766.P9107244675788061846

`A237424(∑[n+1]+2)`
-/

namespace A173766.P9107244675788061846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237424 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A173766.P9107244675788061846

namespace A173766

/-- `A237424(∑[n+1]+2)` -/
def P9107244675788061846.Spec : Prop :=
  ∀ n, P9107244675788061846.a n = A173766 (n + 1)

end A173766

/-! ## A173766.P14713065377525522833

`or(1, A093137(n+1)+2)`
-/

namespace A173766.P14713065377525522833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A093137 (n + 1) + 2)

end

end A173766.P14713065377525522833

namespace A173766

/-- `or(1, A093137(n+1)+2)` -/
def P14713065377525522833.Spec : Prop :=
  ∀ n, P14713065377525522833.a n = A173766 (n + 1)

end A173766

/-! ## A173766.P3614297473616442968

`ceil((A216179(n+1)+7)/3)`
-/

namespace A173766.P3614297473616442968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216179 (n + 1) + 7 : ℚ) / 3⌉

end

end A173766.P3614297473616442968

namespace A173766

/-- `ceil((A216179(n+1)+7)/3)` -/
def P3614297473616442968.Spec : Prop :=
  ∀ n, P3614297473616442968.a n = A173766 (n + 1)

end A173766

/-!
# A173768: a(n) = (4*10^n - 31)/9.

The programs for A173768, the canonical program `A173768.P6210835657355494694` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173768 has offset 1).

The definition of A173768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*10^(n+1)-31)/9` (program `A173768.P471560561994814089`, by `A173768.P471560561994814089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173768.P6210835657355494694

`10*a(n-1)+31` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173768

/-- `10*a(n-1)+31` -/
def P6210835657355494694.Spec : Prop :=
  ∀ n, (P6210835657355494694.a n : ℤ) = A173768 (n + 1)

theorem P6210835657355494694.correct : P6210835657355494694.Spec := by
  intro n
  simp only [A173768, Nat.add_sub_cancel]

end A173768

/-! ## A173768.P471560561994814089

`(4*10^(n+1)-31)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173768.P471560561994814089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 10 ^ (n + 1) : ℤ) - 31 : ℚ) / 9

end

end A173768.P471560561994814089

namespace A173768

/-- `(4*10^(n+1)-31)/9` -/
def P471560561994814089.Spec : Prop :=
  ∀ n, P471560561994814089.a n = (A173768 (n + 1) : ℚ)

theorem P471560561994814089.correct : P471560561994814089.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173768, Nat.add_sub_cancel, A173768.P471560561994814089.a, A173768.P6210835657355494694.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173768, Nat.add_sub_cancel, A173768.P471560561994814089.a, A173768.P6210835657355494694.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173768

/-! ## A173768.P14259117641940695707

`xor(5, ∑[4*10^n])`
-/

namespace A173768.P14259117641940695707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173768.P14259117641940695707

namespace A173768

/-- `xor(5, ∑[4*10^n])` -/
def P14259117641940695707.Spec : Prop :=
  ∀ n, (P14259117641940695707.a n : ℤ) = A173768 (n + 1)

end A173768

/-! ## A173768.P3021661409434541612

`∑[10*a(n-1)]` with `a(0)=1, a(1)=40`
-/

namespace A173768.P3021661409434541612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 40] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173768.P3021661409434541612

namespace A173768

/-- `∑[10*a(n-1)]` -/
def P3021661409434541612.Spec : Prop :=
  ∀ n, (P3021661409434541612.a n : ℤ) = A173768 (n + 1)

end A173768

/-! ## A173768.P2325360005921675368

`∑[gcd(4*10^n, floor(acot(n)))]`
-/

namespace A173768.P2325360005921675368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * 10 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173768.P2325360005921675368

namespace A173768

/-- `∑[gcd(4*10^n, floor(acot(n)))]` -/
def P2325360005921675368.Spec : Prop :=
  ∀ n, (P2325360005921675368.a n : ℤ) = A173768 (n + 1)

end A173768

/-! ## A173768.P10915419361936412427

`∑[4^ceil(sin(n)²)*10^n]`
-/

namespace A173768.P10915419361936412427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ) * (10 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173768.P10915419361936412427

namespace A173768

/-- `∑[4^ceil(sin(n)²)*10^n]` -/
def P10915419361936412427.Spec : Prop :=
  ∀ n, P10915419361936412427.a n = (A173768 (n + 1) : ℚ)

end A173768

/-! ## A173768.P17869334175795110000

`floor(A173811(n+1)/2)`
-/

namespace A173768.P17869334175795110000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173811 (n + 1) : ℚ) / 2⌋

end

end A173768.P17869334175795110000

namespace A173768

/-- `floor(A173811(n+1)/2)` -/
def P17869334175795110000.Spec : Prop :=
  ∀ n, P17869334175795110000.a n = A173768 (n + 1)

end A173768

/-! ## A173768.P15109752499447616250

`ceil(A173810(n+1)/2)`
-/

namespace A173768.P15109752499447616250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173810 (n + 1) : ℚ) / 2⌉

end

end A173768.P15109752499447616250

namespace A173768

/-- `ceil(A173810(n+1)/2)` -/
def P15109752499447616250.Spec : Prop :=
  ∀ n, P15109752499447616250.a n = A173768 (n + 1)

end A173768

/-! ## A173768.P15514790541656453729

`abs(3-ceil((A002282(n+1)-1)/2))`
-/

namespace A173768.P15514790541656453729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ⌈(A002282 (n + 1) - 1 : ℚ) / 2⌉|

end

end A173768.P15514790541656453729

namespace A173768

/-- `abs(3-ceil((A002282(n+1)-1)/2))` -/
def P15514790541656453729.Spec : Prop :=
  ∀ n, P15514790541656453729.a n = A173768 (n + 1)

end A173768

/-! ## A173768.P1169826284412440317

`∑[(A040976(n+1)%2+1)²*10^n]`
-/

namespace A173768.P1169826284412440317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A040976 (n + 1)) 2 + 1) ^ 2 * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173768.P1169826284412440317

namespace A173768

/-- `∑[(A040976(n+1)%2+1)²*10^n]` -/
def P1169826284412440317.Spec : Prop :=
  ∀ n, P1169826284412440317.a n = A173768 (n + 1)

end A173768

/-! ## A173768.P2602938305244104841

`∑[lcm(A011557(n), A346178(n))]`
-/

namespace A173768.P2602938305244104841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011557 n) (A346178 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173768.P2602938305244104841

namespace A173768

/-- `∑[lcm(A011557(n), A346178(n))]` -/
def P2602938305244104841.Spec : Prop :=
  ∀ n, (P2602938305244104841.a n : ℤ) = A173768 (n + 1)

end A173768

/-!
# A173769: Primes in A154117.

The programs for A173769, there is no canonical definition to state claims against.
-/

/-! ## A173769.P2898425303708186182

`5*2^A058588(n+1)-3`
-/

namespace A173769.P2898425303708186182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (2 : ℚ) ^ (A058588 (n + 1) : ℤ) - 3

end

end A173769.P2898425303708186182

/-! ## A173769.P12626284414451454255

`A172156(n%a(n-1))` with `a(0)=2`
-/

namespace A173769.P12626284414451454255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A172156 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A173769.P12626284414451454255

/-! ## A173769.P381488855058395959

`A154117(A058588(n+1)+1)`
-/

namespace A173769.P381488855058395959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154117 (A058588 (n + 1) + 1).toNat

end

end A173769.P381488855058395959

/-! ## A173769.P9595864197139650906

`∪[A172156(n+5), p?[A154117(n)]]`
-/

namespace A173769.P9595864197139650906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172156 (n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173769.P9595864197139650906

/-! ## A173769.P1304941362136858922

`p?[5*2^n-3]`
-/

namespace A173769.P1304941362136858922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173769.P1304941362136858922

/-!
# A173770: a(n) = (4*10^n - 13)/9.

The programs for A173770, the canonical program `A173770.P4367014816041693148` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173770 has offset 1).

The definition of A173770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*10^(n+1)-13)/9` (program `A173770.P11012928933699038891`, by `A173770.P11012928933699038891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173770.P4367014816041693148

`10*a(n-1)+13` with `a(0)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173770

/-- `10*a(n-1)+13` -/
def P4367014816041693148.Spec : Prop :=
  ∀ n, (P4367014816041693148.a n : ℤ) = A173770 (n + 1)

theorem P4367014816041693148.correct : P4367014816041693148.Spec := by
  intro n
  simp only [A173770, Nat.add_sub_cancel]

end A173770

/-! ## A173770.P11012928933699038891

`(4*10^(n+1)-13)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173770.P11012928933699038891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 10 ^ (n + 1) : ℤ) - 13 : ℚ) / 9

end

end A173770.P11012928933699038891

namespace A173770

/-- `(4*10^(n+1)-13)/9` -/
def P11012928933699038891.Spec : Prop :=
  ∀ n, P11012928933699038891.a n = (A173770 (n + 1) : ℚ)

theorem P11012928933699038891.correct : P11012928933699038891.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173770, Nat.add_sub_cancel, A173770.P11012928933699038891.a, A173770.P4367014816041693148.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173770, Nat.add_sub_cancel, A173770.P11012928933699038891.a, A173770.P4367014816041693148.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173770

/-! ## A173770.P17234590342114377389

`ogf((3+10x)/(1-11x+10x^2))`
-/

namespace A173770.P17234590342114377389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 10] [1, -11, 10] n

end

end A173770.P17234590342114377389

namespace A173770

/-- `ogf((3+10x)/(1-11x+10x^2))` -/
def P17234590342114377389.Spec : Prop :=
  ∀ n, P17234590342114377389.a n = A173770 (n + 1)

end A173770

/-! ## A173770.P294468464039384295

`xor(7, ∑[4*10^n])`
-/

namespace A173770.P294468464039384295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173770.P294468464039384295

namespace A173770

/-- `xor(7, ∑[4*10^n])` -/
def P294468464039384295.Spec : Prop :=
  ∀ n, (P294468464039384295.a n : ℤ) = A173770 (n + 1)

end A173770

/-! ## A173770.P12327705789074838222

`∑[10*a(n-1)]` with `a(0)=3, a(1)=40`
-/

namespace A173770.P12327705789074838222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 40] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173770.P12327705789074838222

namespace A173770

/-- `∑[10*a(n-1)]` -/
def P12327705789074838222.Spec : Prop :=
  ∀ n, (P12327705789074838222.a n : ℤ) = A173770 (n + 1)

end A173770

/-! ## A173770.P2391001033171916

`and(∑[4*10^n]+3, -5)`
-/

namespace A173770.P2391001033171916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ) (-5)

end

end A173770.P2391001033171916

namespace A173770

/-- `and(∑[4*10^n]+3, -5)` -/
def P2391001033171916.Spec : Prop :=
  ∀ n, P2391001033171916.a n = A173770 (n + 1)

end A173770

/-! ## A173770.P13222894277700392012

`or(10, lcm(10, a(n-1))+3)` with `a(0)=3`
-/

namespace A173770.P13222894277700392012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 10 (Nat.lcm 10 (a (n - 1)) + 3)

end

end A173770.P13222894277700392012

namespace A173770

/-- `or(10, lcm(10, a(n-1))+3)` -/
def P13222894277700392012.Spec : Prop :=
  ∀ n, (P13222894277700392012.a n : ℤ) = A173770 (n + 1)

end A173770

/-! ## A173770.P10301597714370412481

`∑[(ceil(sin(n)²)+3)*10^n]`
-/

namespace A173770.P10301597714370412481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 3) * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173770.P10301597714370412481

namespace A173770

/-- `∑[(ceil(sin(n)²)+3)*10^n]` -/
def P10301597714370412481.Spec : Prop :=
  ∀ n, P10301597714370412481.a n = A173770 (n + 1)

end A173770

/-! ## A173770.P9850070331529189951

`Δ[∑[A002278(n)]-n]`
-/

namespace A173770.P9850070331529189951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173770.P9850070331529189951

namespace A173770

/-- `Δ[∑[A002278(n)]-n]` -/
def P9850070331529189951.Spec : Prop :=
  ∀ n, P9850070331529189951.a n = A173770 (n + 1)

end A173770

/-! ## A173770.P2495622993383919597

`floor(A173812(n+1)/2)`
-/

namespace A173770.P2495622993383919597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173812 (n + 1) : ℚ) / 2⌋

end

end A173770.P2495622993383919597

namespace A173770

/-- `floor(A173812(n+1)/2)` -/
def P2495622993383919597.Spec : Prop :=
  ∀ n, P2495622993383919597.a n = A173770 (n + 1)

end A173770

/-! ## A173770.P14350773843687431475

`floor((A002282(n+1)-1)/2)`
-/

namespace A173770.P14350773843687431475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002282 (n + 1) - 1 : ℚ) / 2⌋

end

end A173770.P14350773843687431475

namespace A173770

/-- `floor((A002282(n+1)-1)/2)` -/
def P14350773843687431475.Spec : Prop :=
  ∀ n, P14350773843687431475.a n = A173770 (n + 1)

end A173770

/-! ## A173770.P4088507076740170312

`floor((A250256(2*(n+1)+1)-1)/2)`
-/

namespace A173770.P4088507076740170312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A250256 (2 * (n + 1) + 1) - 1 : ℚ) / 2⌋

end

end A173770.P4088507076740170312

namespace A173770

/-- `floor((A250256(2*(n+1)+1)-1)/2)` -/
def P4088507076740170312.Spec : Prop :=
  ∀ n, P4088507076740170312.a n = A173770 (n + 1)

end A173770

/-! ## A173770.P17859609401587399873

`record[A002278(A133310(n))-1]`
-/

namespace A173770.P17859609401587399873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173770.P17859609401587399873

namespace A173770

/-- `record[A002278(A133310(n))-1]` -/
def P17859609401587399873.Spec : Prop :=
  ∀ n, P17859609401587399873.a n = A173770 (n + 1)

end A173770

/-! ## A173770.P12000817645283857622

`record[A002278(A152271(n))-1]`
-/

namespace A173770.P12000817645283857622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173770.P12000817645283857622

namespace A173770

/-- `record[A002278(A152271(n))-1]` -/
def P12000817645283857622.Spec : Prop :=
  ∀ n, P12000817645283857622.a n = A173770 (n + 1)

end A173770

/-! ## A173770.P10998529919755246060

`∑[Δ[A093143(n)]-A093143(n)]`
-/

namespace A173770.P10998529919755246060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A093143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173770.P10998529919755246060

namespace A173770

/-- `∑[Δ[A093143(n)]-A093143(n)]` -/
def P10998529919755246060.Spec : Prop :=
  ∀ n, P10998529919755246060.a n = A173770 (n + 1)

end A173770

/-!
# A173771: Primes of form (4*10^n+23)/9.

The programs for A173771, there is no canonical definition to state claims against.
-/

/-! ## A173771.P9865237822969837558

`A002278(A099413(n+1))+3`
-/

namespace A173771.P9865237822969837558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 (A099413 (n + 1)).toNat + 3

end

end A173771.P9865237822969837558

/-!
# A173772: a(n) = (4*10^n + 23)/9.

The programs for A173772, the canonical program `A173772.P16042904386115954110` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173772 has offset 1).

The definition of A173772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*10^(n+1)+23)/9` (program `A173772.P16562689624024380453`, by `A173772.P16562689624024380453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173772.P16042904386115954110

`10*a(n-1)-23` with `a(0)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173772

/-- `10*a(n-1)-23` -/
def P16042904386115954110.Spec : Prop :=
  ∀ n, P16042904386115954110.a n = A173772 (n + 1)

theorem P16042904386115954110.correct : P16042904386115954110.Spec := by
  intro n
  simp only [A173772, Nat.add_sub_cancel]

end A173772

/-! ## A173772.P16562689624024380453

`(4*10^(n+1)+23)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173772.P16562689624024380453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * 10 ^ (n + 1) + 23 : ℚ) / 9

end

end A173772.P16562689624024380453

namespace A173772

/-- `(4*10^(n+1)+23)/9` -/
def P16562689624024380453.Spec : Prop :=
  ∀ n, P16562689624024380453.a n = (A173772 (n + 1) : ℚ)

theorem P16562689624024380453.correct : P16562689624024380453.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173772, Nat.add_sub_cancel, A173772.P16562689624024380453.a, A173772.P16042904386115954110.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173772, Nat.add_sub_cancel, A173772.P16562689624024380453.a, A173772.P16042904386115954110.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173772

/-! ## A173772.P18371767737041657505

`or(3, ∑[4*10^n])`
-/

namespace A173772.P18371767737041657505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173772.P18371767737041657505

namespace A173772

/-- `or(3, ∑[4*10^n])` -/
def P18371767737041657505.Spec : Prop :=
  ∀ n, (P18371767737041657505.a n : ℤ) = A173772 (n + 1)

end A173772

/-! ## A173772.P9024160087699921676

`xor(3, ∑[4*10^n])`
-/

namespace A173772.P9024160087699921676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173772.P9024160087699921676

namespace A173772

/-- `xor(3, ∑[4*10^n])` -/
def P9024160087699921676.Spec : Prop :=
  ∀ n, (P9024160087699921676.a n : ℤ) = A173772 (n + 1)

end A173772

/-! ## A173772.P11943365641116852750

`Δ[∑[A002278(n)]+3*n+2]`
-/

namespace A173772.P11943365641116852750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (3 * n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173772.P11943365641116852750

namespace A173772

/-- `Δ[∑[A002278(n)]+3*n+2]` -/
def P11943365641116852750.Spec : Prop :=
  ∀ n, P11943365641116852750.a n = A173772 (n + 1)

end A173772

/-! ## A173772.P17171967956508752313

`record[A002278(A133310(n))+3]`
-/

namespace A173772.P17171967956508752313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 (A133310 n).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173772.P17171967956508752313

namespace A173772

/-- `record[A002278(A133310(n))+3]` -/
def P17171967956508752313.Spec : Prop :=
  ∀ n, P17171967956508752313.a n = A173772 (n + 1)

end A173772

/-! ## A173772.P629576401899317084

`record[A002278(A152271(n))+3]`
-/

namespace A173772.P629576401899317084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 (A152271 n).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173772.P629576401899317084

namespace A173772

/-- `record[A002278(A152271(n))+3]` -/
def P629576401899317084.Spec : Prop :=
  ∀ n, P629576401899317084.a n = A173772 (n + 1)

end A173772

/-!
# A173773: a(3*n) = 8*n+2, a(3*n+1) = 2*n+1, a(3*n+2) = 8*n+6.

The programs for A173773, the canonical program `A173773.P3419673963759673321` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173773 has offset 0).

The definition of A173773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173773.P3419673963759673321

`A173855(n+1)/4`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173773

/-- `A173855(n+1)/4` -/
def P3419673963759673321.Spec : Prop :=
  ∀ n, P3419673963759673321.a n = (A173773 n : ℚ)

end A173773

/-! ## A173773.P13868543199190006071

`A047410(n+1)/A131534(n)²`
-/

namespace A173773.P13868543199190006071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047410 (n + 1) : ℚ) / (A131534 n ^ 2 : ℚ)

end

end A173773.P13868543199190006071

namespace A173773

/-- `A047410(n+1)/A131534(n)²` -/
def P13868543199190006071.Spec : Prop :=
  ∀ n, P13868543199190006071.a n = (A173773 n : ℚ)

end A173773

/-! ## A173773.P9084278834796437063

`A047410(n+1)/A146325(n+1)`
-/

namespace A173773.P9084278834796437063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047410 (n + 1) : ℚ) / (A146325 (n + 1) : ℚ)

end

end A173773.P9084278834796437063

namespace A173773

/-- `A047410(n+1)/A146325(n+1)` -/
def P9084278834796437063.Spec : Prop :=
  ∀ n, P9084278834796437063.a n = (A173773 n : ℚ)

end A173773

/-! ## A173773.P16580460503909911349

`2*A042968(n+1)/A146325(n+1)`
-/

namespace A173773.P16580460503909911349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A042968 (n + 1) : ℚ) / (A146325 (n + 1) : ℚ))

end

end A173773.P16580460503909911349

namespace A173773

/-- `2*A042968(n+1)/A146325(n+1)` -/
def P16580460503909911349.Spec : Prop :=
  ∀ n, P16580460503909911349.a n = (A173773 n : ℚ)

end A173773

/-! ## A173773.P14165383741545979118

`A064680(floor(n/3)+n+1)`
-/

namespace A173773.P14165383741545979118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (⌊(n : ℚ) / 3⌋ + (n + 1 : ℤ)).toNat

end

end A173773.P14165383741545979118

namespace A173773

/-- `A064680(floor(n/3)+n+1)` -/
def P14165383741545979118.Spec : Prop :=
  ∀ n, P14165383741545979118.a n = A173773 n

end A173773

/-! ## A173773.P15304953783895785071

`A073675(floor(n/3)+n+1)`
-/

namespace A173773.P15304953783895785071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (⌊(n : ℚ) / 3⌋ + (n + 1 : ℤ)).toNat

end

end A173773.P15304953783895785071

namespace A173773

/-- `A073675(floor(n/3)+n+1)` -/
def P15304953783895785071.Spec : Prop :=
  ∀ n, P15304953783895785071.a n = A173773 n

end A173773

/-! ## A173773.P4727523720249535995

`A064680(comp[4*n])%∑[n+3]`
-/

namespace A173773.P4727523720249535995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064680 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A173773.P4727523720249535995

namespace A173773

/-- `A064680(comp[4*n])%∑[n+3]` -/
def P4727523720249535995.Spec : Prop :=
  ∀ n, P4727523720249535995.a n = A173773 n

end A173773

/-! ## A173773.P16439139234841580589

`A065883(A047410(n+1))`
-/

namespace A173773.P16439139234841580589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A047410 (n + 1)).toNat

end

end A173773.P16439139234841580589

namespace A173773

/-- `A065883(A047410(n+1))` -/
def P16439139234841580589.Spec : Prop :=
  ∀ n, P16439139234841580589.a n = A173773 n

end A173773

/-! ## A173773.P507062025127060564

`A043547(A367286(n+1))`
-/

namespace A173773.P507062025127060564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043547 (A367286 (n + 1)).toNat

end

end A173773.P507062025127060564

namespace A173773

/-- `A043547(A367286(n+1))` -/
def P507062025127060564.Spec : Prop :=
  ∀ n, P507062025127060564.a n = A173773 n

end A173773

/-! ## A173773.P694898955098438892

`filter[A188167(n), A166486(#)]`
-/

namespace A173773.P694898955098438892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A173773.P694898955098438892

namespace A173773

/-- `filter[A188167(n), A166486(#)]` -/
def P694898955098438892.Spec : Prop :=
  ∀ n, P694898955098438892.a n = A173773 n

end A173773

/-! ## A173773.P5400467214138844155

`A188134(A042968(n+1))/2`
-/

namespace A173773.P5400467214138844155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188134 (A042968 (n + 1)).toNat : ℚ) / 2

end

end A173773.P5400467214138844155

namespace A173773

/-- `A188134(A042968(n+1))/2` -/
def P5400467214138844155.Spec : Prop :=
  ∀ n, P5400467214138844155.a n = (A173773 n : ℚ)

end A173773

/-! ## A173773.P15515554999495866413

`filter[A073675(n+1), A166486(#)]`
-/

namespace A173773.P15515554999495866413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A173773.P15515554999495866413

namespace A173773

/-- `filter[A073675(n+1), A166486(#)]` -/
def P15515554999495866413.Spec : Prop :=
  ∀ n, P15515554999495866413.a n = A173773 n

end A173773

/-! ## A173773.P2003631034015414041

`A065883(record[2*A065883(n+1)])`
-/

namespace A173773.P2003631034015414041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173773.P2003631034015414041

namespace A173773

/-- `A065883(record[2*A065883(n+1)])` -/
def P2003631034015414041.Spec : Prop :=
  ∀ n, P2003631034015414041.a n = A173773 n

end A173773

/-! ## A173773.P17445438827443310370

`filter[A188167(n), A168181(#)]`
-/

namespace A173773.P17445438827443310370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A173773.P17445438827443310370

namespace A173773

/-- `filter[A188167(n), A168181(#)]` -/
def P17445438827443310370.Spec : Prop :=
  ∀ n, P17445438827443310370.a n = A173773 n

end A173773

/-! ## A173773.P17789414538539441879

`A122918(2*n)+2*n+1`
-/

namespace A173773.P17789414538539441879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 (2 * n) + (2 * n + 1 : ℤ)

end

end A173773.P17789414538539441879

namespace A173773

/-- `A122918(2*n)+2*n+1` -/
def P17789414538539441879.Spec : Prop :=
  ∀ n, P17789414538539441879.a n = A173773 n

end A173773

/-! ## A173773.P7539399551389625661

`A188146(2*n)+A057078(n)`
-/

namespace A173773.P7539399551389625661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188146 (2 * n) + A057078 n

end

end A173773.P7539399551389625661

namespace A173773

/-- `A188146(2*n)+A057078(n)` -/
def P7539399551389625661.Spec : Prop :=
  ∀ n, P7539399551389625661.a n = A173773 n

end A173773

/-! ## A173773.P11345238708193363727

`A188146(2*n)-A049347(n+1)`
-/

namespace A173773.P11345238708193363727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188146 (2 * n) - A049347 (n + 1)

end

end A173773.P11345238708193363727

namespace A173773

/-- `A188146(2*n)-A049347(n+1)` -/
def P11345238708193363727.Spec : Prop :=
  ∀ n, P11345238708193363727.a n = A173773 n

end A173773

/-! ## A173773.P2871236703346562013

`A188146(2*n)+A010892(2*n)`
-/

namespace A173773.P2871236703346562013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188146 (2 * n) + A010892 (2 * n)

end

end A173773.P2871236703346562013

namespace A173773

/-- `A188146(2*n)+A010892(2*n)` -/
def P2871236703346562013.Spec : Prop :=
  ∀ n, P2871236703346562013.a n = A173773 n

end A173773

/-! ## A173773.P13784032205385869392

`(1-A087627(2*n+1))*A131714(2*n+1)`
-/

namespace A173773.P13784032205385869392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A087627 (2 * n + 1)) * A131714 (2 * n + 1)

end

end A173773.P13784032205385869392

namespace A173773

/-- `(1-A087627(2*n+1))*A131714(2*n+1)` -/
def P13784032205385869392.Spec : Prop :=
  ∀ n, P13784032205385869392.a n = A173773 n

end A173773

/-! ## A173773.P15821281386386118623

`A004396(2*n+1)+A004396(2*n+1)/A061347(n+2)`
-/

namespace A173773.P15821281386386118623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (2 * n + 1) : ℚ) + (A004396 (2 * n + 1) : ℚ) / (A061347 (n + 2) : ℚ)

end

end A173773.P15821281386386118623

namespace A173773

/-- `A004396(2*n+1)+A004396(2*n+1)/A061347(n+2)` -/
def P15821281386386118623.Spec : Prop :=
  ∀ n, P15821281386386118623.a n = (A173773 n : ℚ)

end A173773

/-!
# A173774: The arithmetic mean of (21*k + 8)*binomial(2*k,k)^3 (k=0..n-1).

The programs for A173774, there is no canonical definition to state claims against.
-/

/-! ## A173774.P7708731303132155844

`8*A001700(n)*A112029(n)`
-/

namespace A173774.P7708731303132155844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A001700 n * A112029 n)

end

end A173774.P7708731303132155844

/-! ## A173774.P12491070837990779011

`A008586(A001405(2*(n+1)))*A112029(n)`
-/

namespace A173774.P12491070837990779011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A001405 (2 * (n + 1))).toNat * A112029 n

end

end A173774.P12491070837990779011

/-! ## A173774.P8834351572602302090

`A008574(A063886(2*(n+1)))*A112029(n)`
-/

namespace A173774.P8834351572602302090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A063886 (2 * (n + 1))).toNat * A112029 n

end

end A173774.P8834351572602302090

/-!
# A173775: Number of ways to place 5 nonattacking queens on an n X n toroidal board.

The programs for A173775, there is no canonical definition to state claims against.
-/

/-! ## A173775.P5658588562375888204

`(2*∑[n]²)%A106169(n+1)`
-/

namespace A173775.P5658588562375888204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A106169 (n + 1))

end

end A173775.P5658588562375888204

/-! ## A173775.P13160412337923054504

`A083573(∑{d}[n+1, floor(#/2)]^(n+1-∏{e}[n+1, #+1]))`
-/

namespace A173775.P13160412337923054504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083573 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), ⌊(d : ℚ) / 2⌋ : ℤ) : ℚ) ^ ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) : ℤ))).toNat

end

end A173775.P13160412337923054504

/-! ## A173775.P2226733382064977265

`A004247(A114799(∑[n]))`
-/

namespace A173775.P2226733382064977265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A114799 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A173775.P2226733382064977265

/-!
# A173776: a(n) = (4*10^n + 41)/9.

The programs for A173776, the canonical program `A173776.P3419304508535140340` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173776 has offset 0).

The definition of A173776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*10^n+41)/9` (program `A173776.P14226826060326130961`, by `A173776.P14226826060326130961.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173776.P3419304508535140340

`10*a(n-1)-41` with `a(0)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173776

/-- `10*a(n-1)-41` -/
def P3419304508535140340.Spec : Prop :=
  ∀ n, P3419304508535140340.a n = A173776 n

theorem P3419304508535140340.correct : P3419304508535140340.Spec := by
  intro n
  simp only [A173776]

end A173776

/-! ## A173776.P14226826060326130961

`(4*10^n+41)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173776.P14226826060326130961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * 10 ^ n + 41 : ℚ) / 9

end

end A173776.P14226826060326130961

namespace A173776

/-- `(4*10^n+41)/9` -/
def P14226826060326130961.Spec : Prop :=
  ∀ n, P14226826060326130961.a n = (A173776 n : ℚ)

theorem P14226826060326130961.correct : P14226826060326130961.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173776, Nat.add_sub_cancel, A173776.P14226826060326130961.a, A173776.P3419304508535140340.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173776, Nat.add_sub_cancel, A173776.P14226826060326130961.a, A173776.P3419304508535140340.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173776

/-! ## A173776.P16395919265204873861

`or(1, ceil(10^n/9)/(1/2)²)`
-/

namespace A173776.P16395919265204873861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((⌈(10 ^ n : ℚ) / 9⌉ : ℚ) / ((1 : ℚ) / 2) ^ 2))

end

end A173776.P16395919265204873861

namespace A173776

/-- `or(1, ceil(10^n/9)/(1/2)²)` -/
def P16395919265204873861.Spec : Prop :=
  ∀ n, P16395919265204873861.a n = A173776 n

end A173776

/-! ## A173776.P14644441658049410403

`A093140(n)+4`
-/

namespace A173776.P14644441658049410403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093140 n + 4

end

end A173776.P14644441658049410403

namespace A173776

/-- `A093140(n)+4` -/
def P14644441658049410403.Spec : Prop :=
  ∀ n, P14644441658049410403.a n = A173776 n

end A173776

/-! ## A173776.P14784351487808539777

`A002278(n)+5`
-/

namespace A173776.P14784351487808539777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n + 5

end

end A173776.P14784351487808539777

namespace A173776

/-- `A002278(n)+5` -/
def P14784351487808539777.Spec : Prop :=
  ∀ n, P14784351487808539777.a n = A173776 n

end A173776

/-! ## A173776.P1051797978642487153

`4*A047855(n)+1`
-/

namespace A173776.P1051797978642487153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A047855 n + 1

end

end A173776.P1051797978642487153

namespace A173776

/-- `4*A047855(n)+1` -/
def P1051797978642487153.Spec : Prop :=
  ∀ n, P1051797978642487153.a n = A173776 n

end A173776

/-! ## A173776.P11998339211638493947

`2*A093135(n)+3`
-/

namespace A173776.P11998339211638493947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093135 n + 3

end

end A173776.P11998339211638493947

namespace A173776

/-- `2*A093135(n)+3` -/
def P11998339211638493947.Spec : Prop :=
  ∀ n, P11998339211638493947.a n = A173776 n

end A173776

/-! ## A173776.P6446151462066657239

`2*A002276(n)+5`
-/

namespace A173776.P6446151462066657239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002276 n + 5

end

end A173776.P6446151462066657239

namespace A173776

/-- `2*A002276(n)+5` -/
def P6446151462066657239.Spec : Prop :=
  ∀ n, P6446151462066657239.a n = A173776 n

end A173776

/-! ## A173776.P6094000626022316439

`A002282(n)/2+5`
-/

namespace A173776.P6094000626022316439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002282 n : ℚ) / 2 + 5

end

end A173776.P6094000626022316439

namespace A173776

/-- `A002282(n)/2+5` -/
def P6094000626022316439.Spec : Prop :=
  ∀ n, P6094000626022316439.a n = (A173776 n : ℚ)

end A173776

/-! ## A173776.P15168642568789716551

`4*A098406(n)-3`
-/

namespace A173776.P15168642568789716551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A098406 n - 3

end

end A173776.P15168642568789716551

namespace A173776

/-- `4*A098406(n)-3` -/
def P15168642568789716551.Spec : Prop :=
  ∀ n, P15168642568789716551.a n = A173776 n

end A173776

/-! ## A173776.P7772450424399200889

`4*A002275(n)+5`
-/

namespace A173776.P7772450424399200889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002275 n + 5

end

end A173776.P7772450424399200889

namespace A173776

/-- `4*A002275(n)+5` -/
def P7772450424399200889.Spec : Prop :=
  ∀ n, P7772450424399200889.a n = A173776 n

end A173776

/-! ## A173776.P4525229140548618709

`5-(A002275(n)-A002279(n))`
-/

namespace A173776.P4525229140548618709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A002275 n - A002279 n)

end

end A173776.P4525229140548618709

namespace A173776

/-- `5-(A002275(n)-A002279(n))` -/
def P4525229140548618709.Spec : Prop :=
  ∀ n, P4525229140548618709.a n = A173776 n

end A173776

/-!
# A173777: Infinite sequence gradually builds a triangle plus another more widely spaced triangle on top of it, or overlapping, if you will.

The programs for A173777, the canonical program `A173777.P17327771560779323052` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173777 has offset 1).

The definition of A173777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173777.P17327771560779323052

`ceil(a(n-3)+n/5)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173777

/-- `ceil(a(n-3)+n/5)` -/
def P17327771560779323052.Spec : Prop :=
  ∀ n, P17327771560779323052.a n = A173777 (n + 1)

theorem P17327771560779323052.correct : P17327771560779323052.Spec := by
  intro n
  simp only [A173777, Nat.add_sub_cancel]

end A173777

/-! ## A173777.P3550955353779397536

`A008672(abs(1-n))+1`
-/

namespace A173777.P3550955353779397536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 |1 - (n : ℤ)|.toNat + 1

end

end A173777.P3550955353779397536

namespace A173777

/-- `A008672(abs(1-n))+1` -/
def P3550955353779397536.Spec : Prop :=
  ∀ n, P3550955353779397536.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P1239559198375123088

`A008676(n-1)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A173777.P1239559198375123088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A008676 (n - 1) + a (n - 1)

end

end A173777.P1239559198375123088

namespace A173777

/-- `A008676(n-1)+a(n-1)` -/
def P1239559198375123088.Spec : Prop :=
  ∀ n, P1239559198375123088.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P15889684785404872937

`A054977(n)+A025799(2*n+1)`
-/

namespace A173777.P15889684785404872937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A025799 (2 * n + 1)

end

end A173777.P15889684785404872937

namespace A173777

/-- `A054977(n)+A025799(2*n+1)` -/
def P15889684785404872937.Spec : Prop :=
  ∀ n, P15889684785404872937.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P8899213749709682966

`A008680(2*n+1)+3-A266722(2*n)`
-/

namespace A173777.P8899213749709682966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (2 * n + 1) + (3 - A266722 (2 * n))

end

end A173777.P8899213749709682966

namespace A173777

/-- `A008680(2*n+1)+3-A266722(2*n)` -/
def P8899213749709682966.Spec : Prop :=
  ∀ n, P8899213749709682966.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P15375422708333715081

`A025799(2*n+1)+2-A066247(2*(n+1))`
-/

namespace A173777.P15375422708333715081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 (2 * n + 1) + (2 - A066247 (2 * (n + 1)))

end

end A173777.P15375422708333715081

namespace A173777

/-- `A025799(2*n+1)+2-A066247(2*(n+1))` -/
def P15375422708333715081.Spec : Prop :=
  ∀ n, P15375422708333715081.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P3386838197138990430

`A025837(A008486(n)+2)+1`
-/

namespace A173777.P3386838197138990430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A008486 n + 2).toNat + 1

end

end A173777.P3386838197138990430

namespace A173777

/-- `A025837(A008486(n)+2)+1` -/
def P3386838197138990430.Spec : Prop :=
  ∀ n, P3386838197138990430.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P9479536490188350726

`A054977(n)+A025864(4*n+1)`
-/

namespace A173777.P9479536490188350726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A025864 (4 * n + 1)

end

end A173777.P9479536490188350726

namespace A173777

/-- `A054977(n)+A025864(4*n+1)` -/
def P9479536490188350726.Spec : Prop :=
  ∀ n, P9479536490188350726.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P10986285652147679345

`A065331(A000040(2*n+1))+A008680(2*n+1)`
-/

namespace A173777.P10986285652147679345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A000040 (2 * n + 1)).toNat + A008680 (2 * n + 1)

end

end A173777.P10986285652147679345

namespace A173777

/-- `A065331(A000040(2*n+1))+A008680(2*n+1)` -/
def P10986285652147679345.Spec : Prop :=
  ∀ n, P10986285652147679345.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P4451242651183284031

`A028310(A008680(2*n+1))+1`
-/

namespace A173777.P4451242651183284031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A008680 (2 * n + 1)).toNat + 1

end

end A173777.P4451242651183284031

namespace A173777

/-- `A028310(A008680(2*n+1))+1` -/
def P4451242651183284031.Spec : Prop :=
  ∀ n, P4451242651183284031.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P2113996965507279565

`A259094(∑[n+2]-1)+1`
-/

namespace A173777.P2113996965507279565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A173777.P2113996965507279565

namespace A173777

/-- `A259094(∑[n+2]-1)+1` -/
def P2113996965507279565.Spec : Prop :=
  ∀ n, P2113996965507279565.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P18353474227057659274

`A008676(A000217(n+5)-A004273(n))`
-/

namespace A173777.P18353474227057659274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A000217 (n + 5) - A004273 n).toNat

end

end A173777.P18353474227057659274

namespace A173777

/-- `A008676(A000217(n+5)-A004273(n))` -/
def P18353474227057659274.Spec : Prop :=
  ∀ n, P18353474227057659274.a n = A173777 (n + 1)

end A173777

/-! ## A173777.P2585390944853071606

`A008676(A000124(n+6)-A008486(n))`
-/

namespace A173777.P2585390944853071606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A000124 (n + 6) - A008486 n).toNat

end

end A173777.P2585390944853071606

namespace A173777

/-- `A008676(A000124(n+6)-A008486(n))` -/
def P2585390944853071606.Spec : Prop :=
  ∀ n, P2585390944853071606.a n = A173777 (n + 1)

end A173777

/-!
# A173778: Triangle T(n, k, q) = round(c(n,q)/(c(k,q)*c(n-k,q))), where c(n,q) = Product_{j=0..n} v(j, q)((1)), v(n, q) = M*v(n-1, q), v(0, q) = {1, 1, 1}, M = {{0, 1, 0}, {0, 0, 1}, {q^3, q^3, 0}}, and q = 2, read by rows.

The programs for A173778, there is no canonical definition to state claims against.
-/

/-! ## A173778.P6321559961292778620

`A198339(A008637(n))^4`
-/

namespace A173778.P6321559961292778620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198339 (A008637 n).toNat ^ 4

end

end A173778.P6321559961292778620

/-! ## A173778.P2432586500594960720

`A007875(A329432(n))^4`
-/

namespace A173778.P2432586500594960720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A329432 n).toNat ^ 4

end

end A173778.P2432586500594960720

/-! ## A173778.P10863622367819488116

`A163100(A000792(n))²²`
-/

namespace A173778.P10863622367819488116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163100 (A000792 n).toNat ^ 2) ^ 2

end

end A173778.P10863622367819488116

/-! ## A173778.P6895903850284268237

`A053735(A316622(n)²)²²`
-/

namespace A173778.P6895903850284268237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053735 (A316622 n ^ 2).toNat ^ 2) ^ 2

end

end A173778.P6895903850284268237

/-! ## A173778.P17603426729655108561

`A055642(A337410(n+1))^4`
-/

namespace A173778.P17603426729655108561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A337410 (n + 1)).toNat ^ 4

end

end A173778.P17603426729655108561

/-!
# A173779: Triangle T(n, k, q) = round( c(n,q)/(c(k,q)*c(n-k,q)) ), where c(n,q) = Product_{j=0..n} v(j, q)((1)), v(n, q) = M*v(n-1, q), v(0, q) = {1, 1, 1}, M = {{0, 1, 0}, {0, 0, 1}, {q^3, q^3, 0}}, and q = 4, read by rows.

The programs for A173779, there is no canonical definition to state claims against.
-/

/-! ## A173779.P17688539932111177116

`A034851(n)^A325282(A325300(n+1))`
-/

namespace A173779.P17688539932111177116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034851 n : ℚ) ^ (A325282 (A325300 (n + 1)).toNat : ℤ)

end

end A173779.P17688539932111177116

/-! ## A173779.P16490042833797303876

`A034851(n)^A217518(A308471(n+4))`
-/

namespace A173779.P16490042833797303876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034851 n : ℚ) ^ (A217518 (A308471 (n + 4)).toNat : ℤ)

end

end A173779.P16490042833797303876

/-! ## A173779.P13486746581058233296

`A034851(n)^A065916(A029913(n+6))`
-/

namespace A173779.P13486746581058233296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034851 n : ℚ) ^ (A065916 (A029913 (n + 6)).toNat : ℤ)

end

end A173779.P13486746581058233296

/-! ## A173779.P12470304681942207645

`A001015(A034851(n)%A265791(n+1))`
-/

namespace A173779.P12470304681942207645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (Int.tmod (A034851 n) (A265791 (n + 1))).toNat

end

end A173779.P12470304681942207645

/-! ## A173779.P6909276000491027682

`A001015(gcd(A018671(n+1), A034851(n)))`
-/

namespace A173779.P6909276000491027682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (Int.gcd (A018671 (n + 1)) (A034851 n))

end

end A173779.P6909276000491027682

/-!
# A173781: a(n) is the smallest entry of the n-th column of the matrix of Super Catalan numbers S(m,n).

The programs for A173781, the canonical program `A173781.P10795593716828301618` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173781 has offset 0).

The definition of A173781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173781.P10795593716828301618

`∏[A111284(n+1)/A008620(A111284(n+1))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173781

/-- `∏[A111284(n+1)/A008620(A111284(n+1))]` -/
def P10795593716828301618.Spec : Prop :=
  ∀ n, P10795593716828301618.a n = (A173781 n : ℚ)

end A173781

/-! ## A173781.P2287915477621280430

`A182411(A171452(n+1))`
-/

namespace A173781.P2287915477621280430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182411 (A171452 (n + 1)).toNat

end

end A173781.P2287915477621280430

namespace A173781

/-- `A182411(A171452(n+1))` -/
def P2287915477621280430.Spec : Prop :=
  ∀ n, P2287915477621280430.a n = A173781 n

end A173781

/-! ## A173781.P13409212927861018759

`A182411(∑[∑[A010872(n)]])`
-/

namespace A173781.P13409212927861018759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182411 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173781.P13409212927861018759

namespace A173781

/-- `A182411(∑[∑[A010872(n)]])` -/
def P13409212927861018759.Spec : Prop :=
  ∀ n, P13409212927861018759.a n = A173781 n

end A173781

/-!
# A173782: Number of ways to place 4n nonattacking kings on an 8 X 2n chessboard.

The programs for A173782, there is no canonical definition to state claims against.
-/

/-! ## A173782.P6798769708655306079

`A350819(C(n+6, 2)+n+1)`
-/

namespace A173782.P6798769708655306079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350819 (Nat.choose (n + 6) 2 + (n + 1))

end

end A173782.P6798769708655306079

/-!
# A173784: Number of numbers k such that 1/k is in the Cantor set and 3^n <= k < 3^(n+1).

The programs for A173784, there is no canonical definition to state claims against.
-/

/-! ## A173784.P6433002631797378023

`∑[A175175(log2(ceil(2^(n-1))))]`
-/

namespace A173784.P6433002631797378023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175175 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173784.P6433002631797378023

/-! ## A173784.P13404061285696262957

`A175175(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A173784.P13404061285696262957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175175 (n - 1) + a (n - 1)

end

end A173784.P13404061285696262957

/-! ## A173784.P14683799331775405454

`∑[A175175(n)]+1-A175175(n)`
-/

namespace A173784.P14683799331775405454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A175175 n)

end

end A173784.P14683799331775405454

/-!
# A173785: Expansion of 2*(1 -4*x +14*x^2 +4*x^3 +9*x^4)/(1-x)^5.

The programs for A173785, the canonical program `A173785.P15018001589553308705` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173785 has offset 0).

The definition of A173785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-8x+28x^2+8x^3+18x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A173785.P15018001589553308705`, by `A173785.P15018001589553308705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173785.P15018001589553308705

`ogf((2-8x+28x^2+8x^3+18x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173785

/-- `ogf((2-8x+28x^2+8x^3+18x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15018001589553308705.Spec : Prop :=
  ∀ n, P15018001589553308705.a n = A173785 n

theorem P15018001589553308705.correct : P15018001589553308705.Spec := by
  intro n
  simp only [A173785]

end A173785

/-! ## A173785.P9502404038608025814

`2*A058031(n)`
-/

namespace A173785.P9502404038608025814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058031 n

end

end A173785.P9502404038608025814

namespace A173785

/-- `2*A058031(n)` -/
def P9502404038608025814.Spec : Prop :=
  ∀ n, P9502404038608025814.a n = A173785 n

end A173785

/-! ## A173785.P166644446105558994

`2*((1-n)²+n)²`
-/

namespace A173785.P166644446105558994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ^ 2

end

end A173785.P166644446105558994

namespace A173785

/-- `2*((1-n)²+n)²` -/
def P166644446105558994.Spec : Prop :=
  ∀ n, P166644446105558994.a n = A173785 n

end A173785

/-! ## A173785.P17805626497533417448

`lcm(2, ((1-n)²+n)²)`
-/

namespace A173785.P17805626497533417448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ^ 2)

end

end A173785.P17805626497533417448

namespace A173785

/-- `lcm(2, ((1-n)²+n)²)` -/
def P17805626497533417448.Spec : Prop :=
  ∀ n, (P17805626497533417448.a n : ℤ) = A173785 n

end A173785

/-! ## A173785.P15288554265137997910

`(4*C(n, 2)+2)²/2`
-/

namespace A173785.P15288554265137997910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * Nat.choose n 2 + 2) ^ 2 : ℚ) / 2

end

end A173785.P15288554265137997910

namespace A173785

/-- `(4*C(n, 2)+2)²/2` -/
def P15288554265137997910.Spec : Prop :=
  ∀ n, P15288554265137997910.a n = (A173785 n : ℚ)

end A173785

/-! ## A173785.P110296006429928322

`∑[a(n-1)+4]²/2` with `a(0)=2, a(1)=0`
-/

namespace A173785.P110296006429928322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2

end

end A173785.P110296006429928322

namespace A173785

/-- `∑[a(n-1)+4]²/2` -/
def P110296006429928322.Spec : Prop :=
  ∀ n, P110296006429928322.a n = (A173785 n : ℚ)

end A173785

/-! ## A173785.P4986467963667450204

`(C(2*n, 2)-(n-2))²/2`
-/

namespace A173785.P4986467963667450204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (2 * n) 2 : ℤ) - ((n : ℤ) - 2)) ^ 2 : ℚ) / 2

end

end A173785.P4986467963667450204

namespace A173785

/-- `(C(2*n, 2)-(n-2))²/2` -/
def P4986467963667450204.Spec : Prop :=
  ∀ n, P4986467963667450204.a n = (A173785 n : ℚ)

end A173785

/-! ## A173785.P6933928919554427000

`or(2, (n-1)*2*n)²/2`
-/

namespace A173785.P6933928919554427000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 (((n : ℤ) - 1) * (2 * n : ℤ)) ^ 2 : ℚ) / 2

end

end A173785.P6933928919554427000

namespace A173785

/-- `or(2, (n-1)*2*n)²/2` -/
def P6933928919554427000.Spec : Prop :=
  ∀ n, P6933928919554427000.a n = (A173785 n : ℚ)

end A173785

/-! ## A173785.P5063267736637350023

`xor(2, (n-1)*2*n)²/2`
-/

namespace A173785.P5063267736637350023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (((n : ℤ) - 1) * (2 * n : ℤ)) ^ 2 : ℚ) / 2

end

end A173785.P5063267736637350023

namespace A173785

/-- `xor(2, (n-1)*2*n)²/2` -/
def P5063267736637350023.Spec : Prop :=
  ∀ n, P5063267736637350023.a n = (A173785 n : ℚ)

end A173785

/-! ## A173785.P9630092488842394199

`∑[ogf((2-4x+6x^2)/(1-2x+x^2))]²/2`
-/

namespace A173785.P9630092488842394199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 6] [1, -2, 1] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A173785.P9630092488842394199

namespace A173785

/-- `∑[ogf((2-4x+6x^2)/(1-2x+x^2))]²/2` -/
def P9630092488842394199.Spec : Prop :=
  ∀ n, P9630092488842394199.a n = (A173785 n : ℚ)

end A173785

/-! ## A173785.P15805158344140759348

`2/∑[a(n-1)+2]^(-2)` with `a(0)=1, a(1)=0`
-/

namespace A173785.P15805158344140759348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-2 : ℤ)

end

end A173785.P15805158344140759348

namespace A173785

/-- `2/∑[a(n-1)+2]^(-2)` -/
def P15805158344140759348.Spec : Prop :=
  ∀ n, P15805158344140759348.a n = (A173785 n : ℚ)

end A173785

/-! ## A173785.P15210812597111917510

`floor(2*∑[a(n-1)-2]²)` with `a(0)=-1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A173785.P15210812597111917510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A173785.P15210812597111917510

namespace A173785

/-- `floor(2*∑[a(n-1)-2]²)` -/
def P15210812597111917510.Spec : Prop :=
  ∀ n, P15210812597111917510.a n = A173785 n

end A173785

/-! ## A173785.P10459115507320870947

`A051890(n)²/2`
-/

namespace A173785.P10459115507320870947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051890 n ^ 2 : ℚ) / 2

end

end A173785.P10459115507320870947

namespace A173785

/-- `A051890(n)²/2` -/
def P10459115507320870947.Spec : Prop :=
  ∀ n, P10459115507320870947.a n = (A173785 n : ℚ)

end A173785

/-! ## A173785.P16495769086511370844

`4*A212135(n)+2`
-/

namespace A173785.P16495769086511370844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A212135 n + 2

end

end A173785.P16495769086511370844

namespace A173785

/-- `4*A212135(n)+2` -/
def P16495769086511370844.Spec : Prop :=
  ∀ n, P16495769086511370844.a n = A173785 n

end A173785

/-! ## A173785.P3240983043090637903

`4*A058919(n)-2`
-/

namespace A173785.P3240983043090637903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A058919 n - 2

end

end A173785.P3240983043090637903

namespace A173785

/-- `4*A058919(n)-2` -/
def P3240983043090637903.Spec : Prop :=
  ∀ n, P3240983043090637903.a n = A173785 n

end A173785

/-! ## A173785.P356675744997739986

`A002523(n)+(1-n)²²`
-/

namespace A173785.P356675744997739986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n + ((1 - (n : ℤ)) ^ 2) ^ 2

end

end A173785.P356675744997739986

namespace A173785

/-- `A002523(n)+(1-n)²²` -/
def P356675744997739986.Spec : Prop :=
  ∀ n, P356675744997739986.a n = A173785 n

end A173785

/-! ## A173785.P1019888527601706470

`ceil(4*(n-A002522(n))²/2)`
-/

namespace A173785.P1019888527601706470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * ((((n : ℤ) - A002522 n) ^ 2 : ℚ) / 2)⌉

end

end A173785.P1019888527601706470

namespace A173785

/-- `ceil(4*(n-A002522(n))²/2)` -/
def P1019888527601706470.Spec : Prop :=
  ∀ n, P1019888527601706470.a n = A173785 n

end A173785

/-! ## A173785.P11519170901025782771

`(C(A004277(n), 2)-n+2)²/2`
-/

namespace A173785.P11519170901025782771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (A004277 n).toNat 2 : ℤ) - (n : ℤ) + 2) ^ 2 : ℚ) / 2

end

end A173785.P11519170901025782771

namespace A173785

/-- `(C(A004277(n), 2)-n+2)²/2` -/
def P11519170901025782771.Spec : Prop :=
  ∀ n, P11519170901025782771.a n = (A173785 n : ℚ)

end A173785

/-! ## A173785.P16041565872713599333

`∑[A008511(n)]+2-A008511(n)`
-/

namespace A173785.P16041565872713599333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A008511 n)

end

end A173785.P16041565872713599333

namespace A173785

/-- `∑[A008511(n)]+2-A008511(n)` -/
def P16041565872713599333.Spec : Prop :=
  ∀ n, P16041565872713599333.a n = A173785 n

end A173785

/-! ## A173785.P16344075131309405995

`floor(((n-1)*(A005563(n)-(n-1))+2)/(n+1)*A051890(n))`
-/

namespace A173785.P16344075131309405995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℤ) - 1) * (A005563 n - ((n : ℤ) - 1)) + 2 : ℚ) / (n + 1 : ℚ) * (A051890 n : ℚ)⌋

end

end A173785.P16344075131309405995

namespace A173785

/-- `floor(((n-1)*(A005563(n)-(n-1))+2)/(n+1)*A051890(n))` -/
def P16344075131309405995.Spec : Prop :=
  ∀ n, P16344075131309405995.a n = A173785 n

end A173785

/-!
# A173786: Triangle read by rows: T(n,k) = 2^n + 2^k, 0 <= k <= n.

The programs for A173786, the canonical program `A173786.P17698000632262255612` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173786 has offset 0).

The definition of A173786 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173786.P17698000632262255612

`A048645(n+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A173786

/-- `A048645(n+2)` -/
def P17698000632262255612.Spec : Prop :=
  ∀ n, P17698000632262255612.a n = A173786 n

theorem P17698000632262255612.correct : P17698000632262255612.Spec := by
  intro n
  simp only [A173786]

end A173786

/-! ## A173786.P914634967249687973

`A099627(n)+1`
-/

namespace A173786.P914634967249687973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n + 1

end

end A173786.P914634967249687973

namespace A173786

/-- `A099627(n)+1` -/
def P914634967249687973.Spec : Prop :=
  ∀ n, P914634967249687973.a n = A173786 n

end A173786

/-! ## A173786.P17307891563829470439

`∑[A232089(n)]+1`
-/

namespace A173786.P17307891563829470439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173786.P17307891563829470439

namespace A173786

/-- `∑[A232089(n)]+1` -/
def P17307891563829470439.Spec : Prop :=
  ∀ n, P17307891563829470439.a n = A173786 n

end A173786

/-! ## A173786.P14078001275342758290

`(A131437(n+1)+3)/2`
-/

namespace A173786.P14078001275342758290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131437 (n + 1) + 3 : ℚ) / 2

end

end A173786.P14078001275342758290

namespace A173786

/-- `(A131437(n+1)+3)/2` -/
def P14078001275342758290.Spec : Prop :=
  ∀ n, P14078001275342758290.a n = (A173786 n : ℚ)

end A173786

/-! ## A173786.P1418500022817488843

`∑[round(2^(A002262(n)-1))]+1`
-/

namespace A173786.P1418500022817488843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002262 n - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173786.P1418500022817488843

namespace A173786

/-- `∑[round(2^(A002262(n)-1))]+1` -/
def P1418500022817488843.Spec : Prop :=
  ∀ n, P1418500022817488843.a n = A173786 n

end A173786

/-! ## A173786.P8486571888312536490

`A137688(n)+A059268(n)`
-/

namespace A173786.P8486571888312536490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A059268 n

end

end A173786.P8486571888312536490

namespace A173786

/-- `A137688(n)+A059268(n)` -/
def P8486571888312536490.Spec : Prop :=
  ∀ n, P8486571888312536490.a n = A173786 n

end A173786

/-! ## A173786.P528548860124851876

`A140513(n)-A173787(n)`
-/

namespace A173786.P528548860124851876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - A173787 n

end

end A173786.P528548860124851876

namespace A173786

/-- `A140513(n)-A173787(n)` -/
def P528548860124851876.Spec : Prop :=
  ∀ n, P528548860124851876.a n = A173786 n

end A173786

/-! ## A173786.P7791959565936513115

`∑[A011782(A002262(n))]+1`
-/

namespace A173786.P7791959565936513115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173786.P7791959565936513115

namespace A173786

/-- `∑[A011782(A002262(n))]+1` -/
def P7791959565936513115.Spec : Prop :=
  ∀ n, P7791959565936513115.a n = A173786 n

end A173786

/-! ## A173786.P17047811142105503037

`A089633(n)+A176224(n)+1`
-/

namespace A173786.P17047811142105503037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n + (A176224 n + 1)

end

end A173786.P17047811142105503037

namespace A173786

/-- `A089633(n)+A176224(n)+1` -/
def P17047811142105503037.Spec : Prop :=
  ∀ n, P17047811142105503037.a n = A173786 n

end A173786

/-! ## A173786.P7612813767226395201

`A018900(n+1)-A137688(n)`
-/

namespace A173786.P7612813767226395201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - A137688 n

end

end A173786.P7612813767226395201

namespace A173786

/-- `A018900(n+1)-A137688(n)` -/
def P7612813767226395201.Spec : Prop :=
  ∀ n, P7612813767226395201.a n = A173786 n

end A173786

/-! ## A173786.P3950283287504704052

`(A130321(n)+1)*A059268(n)`
-/

namespace A173786.P3950283287504704052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130321 n + 1) * A059268 n

end

end A173786.P3950283287504704052

namespace A173786

/-- `(A130321(n)+1)*A059268(n)` -/
def P3950283287504704052.Spec : Prop :=
  ∀ n, P3950283287504704052.a n = A173786 n

end A173786

/-! ## A173786.P11173704706644449308

`A173787(n)+2*A059268(n)`
-/

namespace A173786.P11173704706644449308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + 2 * A059268 n

end

end A173786.P11173704706644449308

namespace A173786

/-- `A173787(n)+2*A059268(n)` -/
def P11173704706644449308.Spec : Prop :=
  ∀ n, P11173704706644449308.a n = A173786 n

end A173786

/-! ## A173786.P14152233407267343577

`A059268(n)+A140513(n)/2`
-/

namespace A173786.P14152233407267343577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) + (A140513 n : ℚ) / 2

end

end A173786.P14152233407267343577

namespace A173786

/-- `A059268(n)+A140513(n)/2` -/
def P14152233407267343577.Spec : Prop :=
  ∀ n, P14152233407267343577.a n = (A173786 n : ℚ)

end A173786

/-! ## A173786.P9590529924418382394

`2*A137688(n)-A173787(n)`
-/

namespace A173786.P9590529924418382394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137688 n - A173787 n

end

end A173786.P9590529924418382394

namespace A173786

/-- `2*A137688(n)-A173787(n)` -/
def P9590529924418382394.Spec : Prop :=
  ∀ n, P9590529924418382394.a n = A173786 n

end A173786

/-! ## A173786.P9934240678223058752

`(A059268(n)+A018900(n+1))/2`
-/

namespace A173786.P9934240678223058752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n + A018900 (n + 1) : ℚ) / 2

end

end A173786.P9934240678223058752

namespace A173786

/-- `(A059268(n)+A018900(n+1))/2` -/
def P9934240678223058752.Spec : Prop :=
  ∀ n, P9934240678223058752.a n = (A173786 n : ℚ)

end A173786

/-! ## A173786.P10031768086826770212

`A018900(n+1)-A140513(n)/2`
-/

namespace A173786.P10031768086826770212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018900 (n + 1) : ℚ) - (A140513 n : ℚ) / 2

end

end A173786.P10031768086826770212

namespace A173786

/-- `A018900(n+1)-A140513(n)/2` -/
def P10031768086826770212.Spec : Prop :=
  ∀ n, P10031768086826770212.a n = (A173786 n : ℚ)

end A173786

/-! ## A173786.P10727721936780629972

`2^A003056(n)+2^A002262(n)`
-/

namespace A173786.P10727721936780629972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ) + (2 : ℚ) ^ (A002262 n : ℤ)

end

end A173786.P10727721936780629972

namespace A173786

/-- `2^A003056(n)+2^A002262(n)` -/
def P10727721936780629972.Spec : Prop :=
  ∀ n, P10727721936780629972.a n = (A173786 n : ℚ)

end A173786

/-! ## A173786.P9329004677563255995

`A059268(n)+A000079(A003056(n))`
-/

namespace A173786.P9329004677563255995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A000079 (A003056 n).toNat

end

end A173786.P9329004677563255995

namespace A173786

/-- `A059268(n)+A000079(A003056(n))` -/
def P9329004677563255995.Spec : Prop :=
  ∀ n, P9329004677563255995.a n = A173786 n

end A173786

/-! ## A173786.P14094597465313104747

`A059268(n)+A011782(A002024(n+1))`
-/

namespace A173786.P14094597465313104747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A011782 (A002024 (n + 1)).toNat

end

end A173786.P14094597465313104747

namespace A173786

/-- `A059268(n)+A011782(A002024(n+1))` -/
def P14094597465313104747.Spec : Prop :=
  ∀ n, P14094597465313104747.a n = A173786 n

end A173786

/-! ## A173786.P11858791535181556391

`A018900(n+1)-A000079(A003056(n))`
-/

namespace A173786.P11858791535181556391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - A000079 (A003056 n).toNat

end

end A173786.P11858791535181556391

namespace A173786

/-- `A018900(n+1)-A000079(A003056(n))` -/
def P11858791535181556391.Spec : Prop :=
  ∀ n, P11858791535181556391.a n = A173786 n

end A173786

/-!
# A173787: Triangle read by rows: T(n,k) = 2^n - 2^k, 0 <= k <= n.

The programs for A173787, the canonical program `A173787.P2304199394440662291` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173787 has offset 0).

The definition of A173787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173787.P1552448814658305565

`∏[char[∑[n]]+1]-A173786(n)`
-/

namespace A173787.P1552448814658305565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A173786 n

end

end A173787.P1552448814658305565

namespace A173787

/-- `∏[char[∑[n]]+1]-A173786(n)` -/
def P1552448814658305565.Spec : Prop :=
  ∀ n, P1552448814658305565.a n = A173787 n

end A173787

/-! ## A173787.P2304199394440662291

`A137688(n)-A059268(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A173787

/-- `A137688(n)-A059268(n)` -/
def P2304199394440662291.Spec : Prop :=
  ∀ n, P2304199394440662291.a n = A173787 n

theorem P2304199394440662291.correct : P2304199394440662291.Spec := by
  intro n
  simp only [A173787]

end A173787

/-! ## A173787.P1106100205333275504

`A130328(n)-A137688(n)`
-/

namespace A173787.P1106100205333275504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 n - A137688 n

end

end A173787.P1106100205333275504

namespace A173787

/-- `A130328(n)-A137688(n)` -/
def P1106100205333275504.Spec : Prop :=
  ∀ n, P1106100205333275504.a n = A173787 n

end A173787

/-! ## A173787.P1901209604731065611

`A130321(n)-A176224(n)`
-/

namespace A173787.P1901209604731065611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n - A176224 n

end

end A173787.P1901209604731065611

namespace A173787

/-- `A130321(n)-A176224(n)` -/
def P1901209604731065611.Spec : Prop :=
  ∀ n, P1901209604731065611.a n = A173787 n

end A173787

/-! ## A173787.P10757412891972617989

`A140513(n)%A173786(n)`
-/

namespace A173787.P10757412891972617989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140513 n) (A173786 n)

end

end A173787.P10757412891972617989

namespace A173787

/-- `A140513(n)%A173786(n)` -/
def P10757412891972617989.Spec : Prop :=
  ∀ n, P10757412891972617989.a n = A173787 n

end A173787

/-! ## A173787.P4448898768479916892

`A140513(n)-(A099627(n)+1)`
-/

namespace A173787.P4448898768479916892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - (A099627 n + 1)

end

end A173787.P4448898768479916892

namespace A173787

/-- `A140513(n)-(A099627(n)+1)` -/
def P4448898768479916892.Spec : Prop :=
  ∀ n, P4448898768479916892.a n = A173787 n

end A173787

/-! ## A173787.P11495850771383421935

`A264802(n+1)-A271709(n)`
-/

namespace A173787.P11495850771383421935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - A271709 n

end

end A173787.P11495850771383421935

namespace A173787

/-- `A264802(n+1)-A271709(n)` -/
def P11495850771383421935.Spec : Prop :=
  ∀ n, P11495850771383421935.a n = A173787 n

end A173787

/-! ## A173787.P4023964359751511816

`(A130321(n)-1)*A059268(n)`
-/

namespace A173787.P4023964359751511816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130321 n - 1) * A059268 n

end

end A173787.P4023964359751511816

namespace A173787

/-- `(A130321(n)-1)*A059268(n)` -/
def P4023964359751511816.Spec : Prop :=
  ∀ n, P4023964359751511816.a n = A173787 n

end A173787

/-! ## A173787.P12396295207046010236

`A173786(n)-2*A059268(n)`
-/

namespace A173787.P12396295207046010236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n - 2 * A059268 n

end

end A173787.P12396295207046010236

namespace A173787

/-- `A173786(n)-2*A059268(n)` -/
def P12396295207046010236.Spec : Prop :=
  ∀ n, P12396295207046010236.a n = A173787 n

end A173787

/-! ## A173787.P2464265028856895073

`(A130328(n)-A059268(n))/2`
-/

namespace A173787.P2464265028856895073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130328 n - A059268 n : ℚ) / 2

end

end A173787.P2464265028856895073

namespace A173787

/-- `(A130328(n)-A059268(n))/2` -/
def P2464265028856895073.Spec : Prop :=
  ∀ n, P2464265028856895073.a n = (A173787 n : ℚ)

end A173787

/-! ## A173787.P3278519284375898789

`A140513(n)/2-A059268(n)`
-/

namespace A173787.P3278519284375898789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140513 n : ℚ) / 2 - (A059268 n : ℚ)

end

end A173787.P3278519284375898789

namespace A173787

/-- `A140513(n)/2-A059268(n)` -/
def P3278519284375898789.Spec : Prop :=
  ∀ n, P3278519284375898789.a n = (A173787 n : ℚ)

end A173787

/-! ## A173787.P9585120493606787811

`A130328(n)-A140513(n)/2`
-/

namespace A173787.P9585120493606787811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130328 n : ℚ) - (A140513 n : ℚ) / 2

end

end A173787.P9585120493606787811

namespace A173787

/-- `A130328(n)-A140513(n)/2` -/
def P9585120493606787811.Spec : Prop :=
  ∀ n, P9585120493606787811.a n = (A173787 n : ℚ)

end A173787

/-! ## A173787.P892474323130889149

`A233757(n+1)%A137688(n)`
-/

namespace A173787.P892474323130889149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233757 (n + 1)) (A137688 n)

end

end A173787.P892474323130889149

namespace A173787

/-- `A233757(n+1)%A137688(n)` -/
def P892474323130889149.Spec : Prop :=
  ∀ n, P892474323130889149.a n = A173787 n

end A173787

/-! ## A173787.P2742901415681640773

`A204985(n+1)/2-A137688(n)`
-/

namespace A173787.P2742901415681640773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204985 (n + 1) : ℚ) / 2 - (A137688 n : ℚ)

end

end A173787.P2742901415681640773

namespace A173787

/-- `A204985(n+1)/2-A137688(n)` -/
def P2742901415681640773.Spec : Prop :=
  ∀ n, P2742901415681640773.a n = (A173787 n : ℚ)

end A173787

/-! ## A173787.P15775033489633117425

`A000079(A003056(n))-A059268(n)`
-/

namespace A173787.P15775033489633117425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat - A059268 n

end

end A173787.P15775033489633117425

namespace A173787

/-- `A000079(A003056(n))-A059268(n)` -/
def P15775033489633117425.Spec : Prop :=
  ∀ n, P15775033489633117425.a n = A173787 n

end A173787

/-! ## A173787.P9898849429934440063

`A137688(n)-A137688(A112367(n))`
-/

namespace A173787.P9898849429934440063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A137688 (A112367 n).toNat

end

end A173787.P9898849429934440063

namespace A173787

/-- `A137688(n)-A137688(A112367(n))` -/
def P9898849429934440063.Spec : Prop :=
  ∀ n, P9898849429934440063.a n = A173787 n

end A173787

/-! ## A173787.P7704096931912631375

`A011782(A002024(n+1))-A059268(n)`
-/

namespace A173787.P7704096931912631375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002024 (n + 1)).toNat - A059268 n

end

end A173787.P7704096931912631375

namespace A173787

/-- `A011782(A002024(n+1))-A059268(n)` -/
def P7704096931912631375.Spec : Prop :=
  ∀ n, P7704096931912631375.a n = A173787 n

end A173787

/-! ## A173787.P9563884051130531774

`(A000079(A025581(n))-1)*A059268(n)`
-/

namespace A173787.P9563884051130531774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (A025581 n).toNat - 1) * A059268 n

end

end A173787.P9563884051130531774

namespace A173787

/-- `(A000079(A025581(n))-1)*A059268(n)` -/
def P9563884051130531774.Spec : Prop :=
  ∀ n, P9563884051130531774.a n = A173787 n

end A173787

/-! ## A173787.P2860655957533009640

`(A130321(n)-1)*A000079(A002262(n))`
-/

namespace A173787.P2860655957533009640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130321 n - 1) * A000079 (A002262 n).toNat

end

end A173787.P2860655957533009640

namespace A173787

/-- `(A130321(n)-1)*A000079(A002262(n))` -/
def P2860655957533009640.Spec : Prop :=
  ∀ n, P2860655957533009640.a n = A173787 n

end A173787

/-! ## A173787.P14689063836766591993

`(A059268(A061579(n))-1)*A059268(n)`
-/

namespace A173787.P14689063836766591993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059268 (A061579 n).toNat - 1) * A059268 n

end

end A173787.P14689063836766591993

namespace A173787

/-- `(A059268(A061579(n))-1)*A059268(n)` -/
def P14689063836766591993.Spec : Prop :=
  ∀ n, P14689063836766591993.a n = A173787 n

end A173787

/-!
# A173788: Nuclear charge numbers in Eric Scerri's periodic table of the elements read down columns.

The programs for A173788, there is no canonical definition to state claims against.
-/

/-! ## A173788.P17962916151886172824

`A138724(A043318(n+2))-2`
-/

namespace A173788.P17962916151886172824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138724 (A043318 (n + 2)).toNat - 2

end

end A173788.P17962916151886172824

/-! ## A173788.P6191463207915279613

`A138724(A044915(n+2))-2`
-/

namespace A173788.P6191463207915279613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138724 (A044915 (n + 2)).toNat - 2

end

end A173788.P6191463207915279613

/-! ## A173788.P7494710021425248940

`A138724(A161951(n+2))-2`
-/

namespace A173788.P7494710021425248940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138724 (A161951 (n + 2)).toNat - 2

end

end A173788.P7494710021425248940

/-! ## A173788.P7015592011549867218

`A134984(n+1)-A087023(A309500(n+1))`
-/

namespace A173788.P7015592011549867218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134984 (n + 1) - A087023 (A309500 (n + 1)).toNat

end

end A173788.P7015592011549867218

/-! ## A173788.P5529764276653191285

`A134984(n+1)-A005811(A000079(n+2))`
-/

namespace A173788.P5529764276653191285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134984 (n + 1) - A005811 (A000079 (n + 2)).toNat

end

end A173788.P5529764276653191285

/-!
# A173792: Numbers of the form x^2 + y^2 + z^2 = phi(x*y*z) + sigma(x*y*z).

The programs for A173792, there is no canonical definition to state claims against.
-/

/-! ## A173792.P14276157077539686183

`A152138(A005728(n))-A005728(n)`
-/

namespace A173792.P14276157077539686183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152138 (A005728 n).toNat - A005728 n

end

end A173792.P14276157077539686183

/-!
# A173793: Primitive numbers n such that 1/n is in the Cantor set.

The programs for A173793, there is no canonical definition to state claims against.
-/

/-! ## A173793.P8069707458824017261

`record[A106610(A121153(n+1))]`
-/

namespace A173793.P8069707458824017261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A121153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173793.P8069707458824017261

/-! ## A173793.P14922367617829524511

`record[A106610(A170943(n+1))]`
-/

namespace A173793.P14922367617829524511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A170943 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173793.P14922367617829524511

/-! ## A173793.P2001904569128600470

`filter[A121153(n+1), A011655(#)]`
-/

namespace A173793.P2001904569128600470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A173793.P2001904569128600470

/-! ## A173793.P13965689939583999375

`filter[A170943(n+1), A011655(#)]`
-/

namespace A173793.P13965689939583999375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A173793.P13965689939583999375

/-! ## A173793.P12362320492743771187

`filter[A121153(n+1), A156595(#)]`
-/

namespace A173793.P12362320492743771187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A173793.P12362320492743771187

/-!
# A173794: Partial sums of A006384.

The programs for A173794, there is no canonical definition to state claims against.
-/

/-! ## A173794.P11230360755527919276

`∑[A006384(n)]`
-/

namespace A173794.P11230360755527919276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173794.P11230360755527919276

/-! ## A173794.P18303120542629064117

`A006384(n^floor(atan(n)))+a(n-1)` with `a(0)=1`
-/

namespace A173794.P18303120542629064117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006384 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat + a (n - 1)

end

end A173794.P18303120542629064117

/-! ## A173794.P7554350456648730246

`A006384(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A173794.P7554350456648730246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006384 n + a (A023443 n).toNat

end

end A173794.P7554350456648730246

/-! ## A173794.P6316251150477349359

`A006384(n)+a(A000038(n)-1+n)` with `a(0)=1`
-/

namespace A173794.P6316251150477349359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006384 n + a (A000038 n - 1 + (n : ℤ)).toNat

end

end A173794.P6316251150477349359

/-! ## A173794.P6478883007319570030

`A006384(n)+a(n-A000045(C(n, n²)!))` with `a(0)=1`
-/

namespace A173794.P6478883007319570030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006384 n + a ((n : ℤ) - A000045 (Nat.factorial (Nat.choose n (n ^ 2)))).toNat

end

end A173794.P6478883007319570030

/-!
# A173795: Smallest prime that is the sum of a square and a positive cube in n different ways.

The programs for A173795, there is no canonical definition to state claims against.
-/

/-! ## A173795.P14466746853169461302

`p?[xor(A143027(n+1), A239264(n))]`
-/

namespace A173795.P14466746853169461302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143027 (n + 1)) (A239264 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173795.P14466746853169461302

/-!
# A173796: Partial sums of A051489.

The programs for A173796, there is no canonical definition to state claims against.
-/

/-! ## A173796.P13959447237755567380

`∑[(n+2)^n+n^(n+2)]`
-/

namespace A173796.P13959447237755567380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ n + n ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173796.P13959447237755567380

/-! ## A173796.P4821663578054223904

`or(1, ∑[A051489(n)])`
-/

namespace A173796.P4821663578054223904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173796.P4821663578054223904

/-! ## A173796.P5591614962149472587

`char[A017032(n)]+∑[A051489(n)]`
-/

namespace A173796.P5591614962149472587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051489 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A173796.P5591614962149472587

/-! ## A173796.P15308846844102332250

`char[A173797(n)]+∑[A051489(n)]`
-/

namespace A173796.P15308846844102332250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173797 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051489 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A173796.P15308846844102332250

/-! ## A173796.P2444954743354157823

`∑[A051489(n)]-char[A215265(n)]`
-/

namespace A173796.P2444954743354157823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215265 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A173796.P2444954743354157823

/-! ## A173796.P6259151525738797628

`∑[A051489(n)]*char[A055651(n)]`
-/

namespace A173796.P6259151525738797628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A173796.P6259151525738797628

/-! ## A173796.P17327390824938784120

`∑[A051489(n)]%Δ[A051442(n)]`
-/

namespace A173796.P17327390824938784120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A173796.P17327390824938784120

/-!
# A173797: Partial sums of A046065.

The programs for A173797, there is no canonical definition to state claims against.
-/

/-! ## A173797.P12999271187947310433

`∑[n^(n+2)-(n+2)^n]`
-/

namespace A173797.P12999271187947310433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (n + 2) : ℤ) - ((n + 2) ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173797.P12999271187947310433

/-! ## A173797.P3507799213570551251

`or(1, ∑[A046065(n)])`
-/

namespace A173797.P3507799213570551251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173797.P3507799213570551251

/-! ## A173797.P14150641705025139079

`∑[A046065(n)]-char[A215265(n)]`
-/

namespace A173797.P14150641705025139079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046065 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215265 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A173797.P14150641705025139079

/-! ## A173797.P4775688120881834929

`∑[A046065(n)]*char[A055651(n)]`
-/

namespace A173797.P4775688120881834929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046065 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A173797.P4775688120881834929

/-! ## A173797.P16355628994266154052

`∑[A046065(n)]%Δ[A051442(n)]`
-/

namespace A173797.P16355628994266154052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046065 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A173797.P16355628994266154052

/-!
# A173798: Partial sums of A030467.

The programs for A173798, there is no canonical definition to state claims against.
-/

/-! ## A173798.P15634987612862181287

`∑[A030467(n+1)]`
-/

namespace A173798.P15634987612862181287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173798.P15634987612862181287

/-! ## A173798.P2290755750376687803

`∑[sqrt(A030466(n+1))]`
-/

namespace A173798.P2290755750376687803
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030466 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173798.P2290755750376687803

/-! ## A173798.P11689990200466223925

`∑[record[A030467(A020986(n))]]`
-/

namespace A173798.P11689990200466223925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173798.P11689990200466223925

/-! ## A173798.P15399465784525887266

`∑[record[A030467(A022446(n))]]`
-/

namespace A173798.P15399465784525887266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173798.P15399465784525887266

/-! ## A173798.P6618566252063966513

`∑[record[A030467(A028920(n))]]`
-/

namespace A173798.P6618566252063966513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173798.P6618566252063966513

/-!
# A173799: Partial sums of A019318.

The programs for A173799, there is no canonical definition to state claims against.
-/

/-! ## A173799.P5854530734851388369

`∑[A019318(n+1)]`
-/

namespace A173799.P5854530734851388369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173799.P5854530734851388369

/-! ## A173799.P7896719707364241756

`∑[record[A019318(A065648(n))]]`
-/

namespace A173799.P7896719707364241756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019318 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173799.P7896719707364241756

/-! ## A173799.P4006212247380425713

`∑[record[A019318(A117910(n))]]`
-/

namespace A173799.P4006212247380425713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019318 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173799.P4006212247380425713

/-! ## A173799.P5897551390171104030

`∑[record[A019318(A154958(n))]]`
-/

namespace A173799.P5897551390171104030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019318 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173799.P5897551390171104030

/-! ## A173799.P15461405997431625868

`∑[record[A019318(A304746(n))]]`
-/

namespace A173799.P15461405997431625868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019318 (A304746 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173799.P15461405997431625868

