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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A248600: G.f.: Sum_{n>=0} R_n(x+x*y) * x^(2*n)*y^n / (1-x-x*y)^(4*n+1) = Sum_{n>=0} Sum_{k=0..n} C(n,k)^4 * x^n*y^k, where R_n(x+x*y) equals the n-th row polynomial R_n(z) = Sum_{k=0..2*n} T(n,k)*z^k at z = x+x*y.

The programs for A248600, there is no canonical definition to state claims against.
-/

/-! ## A248600.P11933552863314398027

`A000984(A000196(n))*A187056(n)`
-/

namespace A248600.P11933552863314398027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A000196 n).toNat * A187056 n

end

end A248600.P11933552863314398027

/-!
# A248601: Square array T(n, k) read by antidiagonals, n > 0 and k > 0: for any number n > 0, let f(n) be the function that associates k to the prime(k)-adic valuation of n (where prime(k) denotes the k-th prime); f establishes a bijection between the positive numbers and the arithmetic functions with nonnegative integer values and a finite number of nonzero values; let g be the inverse of f; T(n, k) = g(f(n) * f(k)) (where i * j denotes the Dirichlet convolution of i and j).

The programs for A248601, there is no canonical definition to state claims against.
-/

/-! ## A248601.P4787190662945434703

`A000005((A144464(n)^A244479(n))%A195670(n+1))`
-/

namespace A248601.P4787190662945434703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (SequenceMachineLib.roundAway ((A144464 n : ℚ) ^ (A244479 n : ℤ))) (A195670 (n + 1))).toNat

end

end A248601.P4787190662945434703

/-! ## A248601.P7684116049903939498

`A326075(A173887(n))+A007318(n)`
-/

namespace A248601.P7684116049903939498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326075 (A173887 n).toNat + A007318 n

end

end A248601.P7684116049903939498

/-! ## A248601.P15430869293402059685

`A000005(A144464(n)^A244479(n))`
-/

namespace A248601.P15430869293402059685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A144464 n : ℚ) ^ (A244479 n : ℤ))).toNat

end

end A248601.P15430869293402059685

/-! ## A248601.P8475221386274044049

`A000005(A144464(n)^A186444(n+1))`
-/

namespace A248601.P8475221386274044049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A144464 n : ℚ) ^ (A186444 (n + 1) : ℤ))).toNat

end

end A248601.P8475221386274044049

/-! ## A248601.P2892934537025787889

`A014499(A008300(n))`
-/

namespace A248601.P2892934537025787889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A008300 n).toNat

end

end A248601.P2892934537025787889

/-!
# A248602: Primes p such that p^3 - 6 is prime.

The programs for A248602, there is no canonical definition to state claims against.
-/

/-! ## A248602.P304333504258524906

`p?[ceil(root(A201310(n+1), 3))]`
-/

namespace A248602.P304333504258524906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201310 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248602.P304333504258524906

/-! ## A248602.P7559846218849781603

`A090348(A229883(n+1))`
-/

namespace A248602.P7559846218849781603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090348 (A229883 (n + 1)).toNat

end

end A248602.P7559846218849781603

/-!
# A248603: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (A(x) + x^n)^n.

The programs for A248603, there is no canonical definition to state claims against.
-/

/-! ## A248603.P10337774405173665432

`A115630(A270049(n))`
-/

namespace A248603.P10337774405173665432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115630 (A270049 n).toNat

end

end A248603.P10337774405173665432

/-! ## A248603.P9866673817293176625

`A088940(A091487(n+1))`
-/

namespace A248603.P9866673817293176625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088940 (A091487 (n + 1)).toNat

end

end A248603.P9866673817293176625

/-! ## A248603.P16008529688315231969

`A088940(A107387(n+1))`
-/

namespace A248603.P16008529688315231969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088940 (A107387 (n + 1)).toNat

end

end A248603.P16008529688315231969

/-!
# A248604: Numbers a(n) which are the minimum number of moves needed in a variation of the tower of Hanoi with 4 towers and n disks.

The programs for A248604, the canonical program `A248604.P10772372551069262179` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248604 has offset 1).

The definition of A248604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248604.P385880418099818142

`∑[ogf((-1+2x^2+4x^4)/(-1+2x))]`
-/

namespace A248604.P385880418099818142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 0, -4] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248604.P385880418099818142

namespace A248604

/-- `∑[ogf((-1+2x^2+4x^4)/(-1+2x))]` -/
def P385880418099818142.Spec : Prop :=
  ∀ n, P385880418099818142.a n = A248604 (n + 1)

end A248604

/-! ## A248604.P4860792976933984378

`ogf((1-2x^2-4x^4)/(1-3x+2x^2))`
-/

namespace A248604.P4860792976933984378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 0, -4] [1, -3, 2] n

end

end A248604.P4860792976933984378

namespace A248604

/-- `ogf((1-2x^2-4x^4)/(1-3x+2x^2))` -/
def P4860792976933984378.Spec : Prop :=
  ∀ n, P4860792976933984378.a n = A248604 (n + 1)

end A248604

/-! ## A248604.P10772372551069262179

`2*a(n-1)-5` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248604

/-- `2*a(n-1)-5` -/
def P10772372551069262179.Spec : Prop :=
  ∀ n, P10772372551069262179.a n = A248604 (n + 1)

theorem P10772372551069262179.correct : P10772372551069262179.Spec := by
  intro n
  simp only [A248604, Nat.add_sub_cancel]

end A248604

/-! ## A248604.P12542106541326203130

`a(n-1)+a(n-1)-5` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9`
-/

namespace A248604.P12542106541326203130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 9] fun n a =>
  a (n - 1) + (a (n - 1) - 5)

end

end A248604.P12542106541326203130

namespace A248604

/-- `a(n-1)+a(n-1)-5` -/
def P12542106541326203130.Spec : Prop :=
  ∀ n, P12542106541326203130.a n = A248604 (n + 1)

theorem P12542106541326203130.correct : P12542106541326203130.Spec := by
  intro n
  simp only [A248604, Nat.add_sub_cancel, A248604.P12542106541326203130.a, A248604.P10772372551069262179.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A248604

/-! ## A248604.P4664789035671510552

`a(n-1)-(5-a(n-1))` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9`
-/

namespace A248604.P4664789035671510552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 9] fun n a =>
  a (n - 1) - (5 - a (n - 1))

end

end A248604.P4664789035671510552

namespace A248604

/-- `a(n-1)-(5-a(n-1))` -/
def P4664789035671510552.Spec : Prop :=
  ∀ n, P4664789035671510552.a n = A248604 (n + 1)

theorem P4664789035671510552.correct : P4664789035671510552.Spec := by
  intro n
  simp only [A248604, Nat.add_sub_cancel, A248604.P4664789035671510552.a, A248604.P10772372551069262179.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A248604

/-! ## A248604.P12305638445207317715

`∑[∑[A131575(comp[2*(n+4)-2])]]`
-/

namespace A248604.P12305638445207317715
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 4) : ℤ) - 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248604.P12305638445207317715

namespace A248604

/-- `∑[∑[A131575(comp[2*(n+4)-2])]]` -/
def P12305638445207317715.Spec : Prop :=
  ∀ n, P12305638445207317715.a n = A248604 (n + 1)

end A248604

/-! ## A248604.P7861691635964011636

`∑[A011782(ceil(log2(2^(n-1)+n+3))-1)]`
-/

namespace A248604.P7861691635964011636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (⌈Real.logb 2 ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n + 3 : ℚ) : ℝ)⌉ - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248604.P7861691635964011636

namespace A248604

/-- `∑[A011782(ceil(log2(2^(n-1)+n+3))-1)]` -/
def P7861691635964011636.Spec : Prop :=
  ∀ n, P7861691635964011636.a n = A248604 (n + 1)

end A248604

/-! ## A248604.P2622364906016947344

`∑[2^n/gcd(4, a(n-1))]` with `a(0)=1`
-/

namespace A248604.P2622364906016947344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 ^ n : ℚ) / (Int.gcd 4 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248604.P2622364906016947344

namespace A248604

/-- `∑[2^n/gcd(4, a(n-1))]` -/
def P2622364906016947344.Spec : Prop :=
  ∀ n, P2622364906016947344.a n = (A248604 (n + 1) : ℚ)

end A248604

/-! ## A248604.P2248671238151785505

`∑[2^n/a(3%a(n-1))]` with `a(0)=1`
-/

namespace A248604.P2248671238151785505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 ^ n : ℚ) / f1 (Int.tmod 3 (SequenceMachineLib.roundAway (f1 (n - 1)))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248604.P2248671238151785505

namespace A248604

/-- `∑[2^n/a(3%a(n-1))]` -/
def P2248671238151785505.Spec : Prop :=
  ∀ n, P2248671238151785505.a n = (A248604 (n + 1) : ℚ)

end A248604

/-!
# A248606: Primes p such that (2*p)^3 - 3 is also prime.

The programs for A248606, there is no canonical definition to state claims against.
-/

/-! ## A248606.P12338968880628016816

`p?[A241808(n+1)]`
-/

namespace A248606.P12338968880628016816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248606.P12338968880628016816

/-! ## A248606.P1789589994986607201

`record[A006530(A241808(n+2))]`
-/

namespace A248606.P1789589994986607201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A241808 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248606.P1789589994986607201

/-! ## A248606.P6126273740286745253

`record[A020639(A241808(n+3))]`
-/

namespace A248606.P6126273740286745253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A241808 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248606.P6126273740286745253

/-! ## A248606.P10614641078047433764

`filter[A241808(n+1), A010051(#)]`
-/

namespace A248606.P10614641078047433764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A248606.P10614641078047433764

/-! ## A248606.P8001634800267618748

`∩[A000040(n+1), A241808(n+1)]`
-/

namespace A248606.P8001634800267618748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P8001634800267618748

/-! ## A248606.P16968531053629681442

`∩[A040159(n+1), A241808(n+1)]`
-/

namespace A248606.P16968531053629681442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P16968531053629681442

/-! ## A248606.P11599039870697838766

`∩[A040161(n+1), A241808(n+1)]`
-/

namespace A248606.P11599039870697838766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P11599039870697838766

/-! ## A248606.P14895954238450146337

`∩[A040165(n+1), A241808(n+1)]`
-/

namespace A248606.P14895954238450146337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P14895954238450146337

/-! ## A248606.P4327534271167268475

`∩[A040169(n+1), A241808(n+1)]`
-/

namespace A248606.P4327534271167268475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P4327534271167268475

/-! ## A248606.P11366508341486510802

`∩[A040171(n+1), A241808(n+1)]`
-/

namespace A248606.P11366508341486510802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P11366508341486510802

/-! ## A248606.P10612663107436986049

`∩[A040177(n+1), A241808(n+1)]`
-/

namespace A248606.P10612663107436986049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P10612663107436986049

/-! ## A248606.P15604129243256198154

`∩[A040179(n+1), A241808(n+1)]`
-/

namespace A248606.P15604129243256198154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P15604129243256198154

/-! ## A248606.P8167901299265930015

`∩[A040184(n+1), A241808(n+1)]`
-/

namespace A248606.P8167901299265930015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P8167901299265930015

/-! ## A248606.P3658491740363049030

`∩[A040970(n+1), A241808(n+1)]`
-/

namespace A248606.P3658491740363049030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P3658491740363049030

/-! ## A248606.P14884497830527937633

`∩[A040972(n+1), A241808(n+1)]`
-/

namespace A248606.P14884497830527937633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P14884497830527937633

/-! ## A248606.P15457812975566052497

`∩[A040974(n+1), A241808(n+1)]`
-/

namespace A248606.P15457812975566052497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P15457812975566052497

/-! ## A248606.P2437935654230690453

`∩[A040978(n+1), A241808(n+1)]`
-/

namespace A248606.P2437935654230690453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P2437935654230690453

/-! ## A248606.P2457716014562563979

`∩[A040980(n+1), A241808(n+1)]`
-/

namespace A248606.P2457716014562563979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P2457716014562563979

/-! ## A248606.P4595029192319521067

`∩[A040982(n+1), A241808(n+1)]`
-/

namespace A248606.P4595029192319521067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248606.P4595029192319521067

/-!
# A248607: Least k such that Pi/2 - sum{2^h/((2h+1)*C(2h,h)), h = 1..k} < 1/3^n.

The programs for A248607, there is no canonical definition to state claims against.
-/

/-! ## A248607.P17352936074701157804

`floor(∑[atan(A178861(n+6))])`
-/

namespace A248607.P17352936074701157804
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A178861 (n + 6) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A248607.P17352936074701157804

/-! ## A248607.P14193950375228433446

`floor(∑[atan(A184155(n+4))])`
-/

namespace A248607.P14193950375228433446
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A184155 (n + 4) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A248607.P14193950375228433446

/-! ## A248607.P13986419968573310923

`round(∑[atan(A344085(n+2))])`
-/

namespace A248607.P13986419968573310923
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A344085 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248607.P13986419968573310923

/-! ## A248607.P633560653697038542

`round(∑[atan(A109950(n+1)+n+1)])`
-/

namespace A248607.P633560653697038542
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A109950 (n + 1) + (n + 1 : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248607.P633560653697038542

/-! ## A248607.P2371283012400785682

`floor(∑[atan(A000926(n+6))])`
-/

namespace A248607.P2371283012400785682
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A000926 (n + 6) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A248607.P2371283012400785682

/-! ## A248607.P3305032802586636558

`ceil(∑[atan(A298305(n+1))])`
-/

namespace A248607.P3305032802586636558
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A298305 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A248607.P3305032802586636558

/-! ## A248607.P11148910082488658432

`floor(∑[atan(A342499(n+1)+6)])`
-/

namespace A248607.P11148910082488658432
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A342499 (n + 1) + 6 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A248607.P11148910082488658432

/-!
# A248608: Numbers k such that A248607(k+1) = A248607(k) + 1.

The programs for A248608, there is no canonical definition to state claims against.
-/

/-! ## A248608.P1740428945718671145

`eq[1, Δ[A248607(n+1)]]+1`
-/

namespace A248608.P1740428945718671145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248608.P1740428945718671145

/-! ## A248608.P325407360622550434

`A000196(∑[A000040(A145190(n+1))])`
-/

namespace A248608.P325407360622550434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A145190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248608.P325407360622550434

/-! ## A248608.P16449044002676501004

`floor(∑[A205999(n)/A195980(n)]+n)`
-/

namespace A248608.P16449044002676501004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205999 n : ℚ) / (A195980 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)⌋

end

end A248608.P16449044002676501004

/-! ## A248608.P8464084503507394841

`A008619(A248333(3*n+2)+n+1+n)`
-/

namespace A248608.P8464084503507394841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A248333 (3 * n + 2) + (n + 1 : ℤ) + (n : ℤ)).toNat

end

end A248608.P8464084503507394841

/-!
# A248609: Numbers k such that A248607(k+1) = A248607(k) + 2.

The programs for A248609, there is no canonical definition to state claims against.
-/

/-! ## A248609.P8602299918753380180

`comp[A248608(n+1)-1]+1`
-/

namespace A248609.P8602299918753380180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248608 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248609.P8602299918753380180

/-! ## A248609.P9267515295929766343

`A020725(eq[2, Δ[A248607(n+1)]])`
-/

namespace A248609.P9267515295929766343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248609.P9267515295929766343

/-! ## A248609.P4295489931873846330

`lt[A008683(Δ[A248607(n+1)]), 0]+1`
-/

namespace A248609.P4295489931873846330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248607 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A248609.P4295489931873846330

/-!
# A248610: Least k such that (Pi^2)/18 - sum{1/(h^2*C(2h,h)), h = 1..k} < 1/3^n.

The programs for A248610, there is no canonical definition to state claims against.
-/

/-! ## A248610.P12398684043446791786

`∑[A316101(p?[A087466(n+14)])]`
-/

namespace A248610.P12398684043446791786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087466 (n + 14)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248610.P12398684043446791786

/-! ## A248610.P2369249618429904879

`A036042(A072706(n)+A064922(n+2))`
-/

namespace A248610.P2369249618429904879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A072706 n + A064922 (n + 2)).toNat

end

end A248610.P2369249618429904879

/-! ## A248610.P7247911809129132019

`∑[A011598(A373118(n)²)]`
-/

namespace A248610.P7247911809129132019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 (A373118 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248610.P7247911809129132019

/-! ## A248610.P35861689340164885

`floor(log2(A256969(n+2)))`
-/

namespace A248610.P35861689340164885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A256969 (n + 2)).toNat

end

end A248610.P35861689340164885

/-! ## A248610.P16240520661299785565

`A135660(∑[A171175(2*(n+1))+1])`
-/

namespace A248610.P16240520661299785565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171175 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248610.P16240520661299785565

/-!
# A248611: Numbers k such that A248610(k+1) = A248610(k).

The programs for A248611, there is no canonical definition to state claims against.
-/

/-! ## A248611.P9492726412558824456

`comp[A248612(n+1)-1]+1`
-/

namespace A248611.P9492726412558824456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248612 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248611.P9492726412558824456

/-! ## A248611.P11453278372752923818

`comp[∪[A248612(n+1), A248621(n)]]`
-/

namespace A248611.P11453278372752923818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248612 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248621 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A248611.P11453278372752923818

/-! ## A248611.P2298138513379338390

`comp[∪[A248598(n+1), A248612(n+1)]]`
-/

namespace A248611.P2298138513379338390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248598 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A248611.P2298138513379338390

/-!
# A248612: Numbers k such that A248610(k+1) = A248610(k) + 1.

The programs for A248612, there is no canonical definition to state claims against.
-/

/-! ## A248612.P4479230915642191451

`record[A209295(Δ[A248610(n+2)])+n]`
-/

namespace A248612.P4479230915642191451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 (f2 (n + 1) - f2 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248612.P4479230915642191451

/-! ## A248612.P7588284299097221276

`A085423(A277277(n+1))+n`
-/

namespace A248612.P7588284299097221276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (A277277 (n + 1)).toNat + (n : ℤ)

end

end A248612.P7588284299097221276

/-! ## A248612.P3007355349545414791

`A039836(A057352(n+2))+n`
-/

namespace A248612.P3007355349545414791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (A057352 (n + 2)).toNat + (n : ℤ)

end

end A248612.P3007355349545414791

/-! ## A248612.P2393989238411339696

`A070939(A000041(n+3)+n)+n`
-/

namespace A248612.P2393989238411339696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000041 (n + 3) + (n : ℤ)).toNat + (n : ℤ)

end

end A248612.P2393989238411339696

/-!
# A248614: Rank of the n-th distinct value of the Bernoulli denominators in the sequence of the denominators of the Bernoulli numbers.

The programs for A248614, there is no canonical definition to state claims against.
-/

/-! ## A248614.P399302879663561599

`lt[A346468(n+1), 2]`
-/

namespace A248614.P399302879663561599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A248614.P399302879663561599

/-! ## A248614.P11500821030004770620

`record[and(n, A346467(n+1))]`
-/

namespace A248614.P11500821030004770620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A346467 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248614.P11500821030004770620

/-! ## A248614.P15662782932784418483

`∪[48*n², ∑[A248913(n)]]`
-/

namespace A248614.P15662782932784418483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248614.P15662782932784418483

/-! ## A248614.P12903746313113837568

`eq[1, A346468(abs(1-n)+2)]`
-/

namespace A248614.P12903746313113837568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248614.P12903746313113837568

/-! ## A248614.P12898452988873739579

`∑[A248913(n)]-A248913(n)`
-/

namespace A248614.P12898452988873739579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A248913 n

end

end A248614.P12898452988873739579

/-! ## A248614.P14119695205298129898

`eq[A028310(n), A346467(n+1)]`
-/

namespace A248614.P14119695205298129898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248614.P14119695205298129898

/-! ## A248614.P3998326938624942434

`eq[A346468(n+1), A355150(n)]`
-/

namespace A248614.P3998326938624942434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248614.P3998326938624942434

/-! ## A248614.P1946478763268870878

`eq[A185048(n+1), A346467(n+1)]`
-/

namespace A248614.P1946478763268870878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248614.P1946478763268870878

/-! ## A248614.P5448682920615068924

`eq[A346468(n+1), A354807(n+1)]`
-/

namespace A248614.P5448682920615068924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248614.P5448682920615068924

/-! ## A248614.P7245072960192871046

`eq[A346468(n+1), A359196(n+1)]`
-/

namespace A248614.P7245072960192871046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248614.P7245072960192871046

/-!
# A248615: E.g.f.: Sum_{n>=0} x^n * (1 + exp(n*x))^n.

The programs for A248615, there is no canonical definition to state claims against.
-/

/-! ## A248615.P13722053409503843875

`A060968(n!²)+n`
-/

namespace A248615.P13722053409503843875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (Nat.factorial n ^ 2) + (n : ℤ)

end

end A248615.P13722053409503843875

/-!
# A248616: Least number k such that k^k in base n contains all n possible digits.

The programs for A248616, there is no canonical definition to state claims against.
-/

/-! ## A248616.P7479930794368083314

`A239306(∑[n+1])`
-/

namespace A248616.P7479930794368083314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248616.P7479930794368083314

/-! ## A248616.P17357319431956100515

`A239306(A000217(n+1))*A318809(n+1)`
-/

namespace A248616.P17357319431956100515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239306 (A000217 (n + 1)).toNat * A318809 (n + 1)

end

end A248616.P17357319431956100515

/-!
# A248619: a(n) = (n*(n+1))^4.

The programs for A248619, the canonical program `A248619.P9491875530803965383` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248619 has offset 0).

The definition of A248619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*(n+1))^4` (program `A248619.P9491875530803965383`, by `A248619.P9491875530803965383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248619.P9491875530803965383

`(n*(n+1))^4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248619

/-- `(n*(n+1))^4` -/
def P9491875530803965383.Spec : Prop :=
  ∀ n, (P9491875530803965383.a n : ℤ) = A248619 n

theorem P9491875530803965383.correct : P9491875530803965383.Spec := by
  intro n
  simp only [A248619]

end A248619

/-! ## A248619.P10610101394831383467

`A016744(A000217(n))`
-/

namespace A248619.P10610101394831383467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016744 (A000217 n).toNat

end

end A248619.P10610101394831383467

namespace A248619

/-- `A016744(A000217(n))` -/
def P10610101394831383467.Spec : Prop :=
  ∀ n, P10610101394831383467.a n = A248619 n

end A248619

/-! ## A248619.P5134111636139398214

`lcm(n, n+1)²²`
-/

namespace A248619.P5134111636139398214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) ^ 2) ^ 2

end

end A248619.P5134111636139398214

namespace A248619

/-- `lcm(n, n+1)²²` -/
def P5134111636139398214.Spec : Prop :=
  ∀ n, (P5134111636139398214.a n : ℤ) = A248619 n

end A248619

/-! ## A248619.P17519793722547206211

`∑[lcm(2, 2*n)]²²`
-/

namespace A248619.P17519793722547206211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A248619.P17519793722547206211

namespace A248619

/-- `∑[lcm(2, 2*n)]²²` -/
def P17519793722547206211.Spec : Prop :=
  ∀ n, (P17519793722547206211.a n : ℤ) = A248619 n

end A248619

/-! ## A248619.P12995044420305711135

`(n*xor(n, -1))²²`
-/

namespace A248619.P12995044420305711135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * Int.xor (n : ℤ) (-1)) ^ 2) ^ 2

end

end A248619.P12995044420305711135

namespace A248619

/-- `(n*xor(n, -1))²²` -/
def P12995044420305711135.Spec : Prop :=
  ∀ n, P12995044420305711135.a n = A248619 n

end A248619

/-! ## A248619.P15559106933509387424

`(2*C(n+1, 2))²²`
-/

namespace A248619.P15559106933509387424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.choose (n + 1) 2) ^ 2) ^ 2

end

end A248619.P15559106933509387424

namespace A248619

/-- `(2*C(n+1, 2))²²` -/
def P15559106933509387424.Spec : Prop :=
  ∀ n, (P15559106933509387424.a n : ℤ) = A248619 n

theorem P15559106933509387424.correct : P15559106933509387424.Spec := by
  intro n
  simp only [A248619, Nat.add_sub_cancel, A248619.P15559106933509387424.a, A248619.P9491875530803965383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A248619

/-! ## A248619.P10677645530401664384

`and(-2, (n²+n)^4)`
-/

namespace A248619.P10677645530401664384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((n ^ 2 + n) ^ 4 : ℤ)

end

end A248619.P10677645530401664384

namespace A248619

/-- `and(-2, (n²+n)^4)` -/
def P10677645530401664384.Spec : Prop :=
  ∀ n, P10677645530401664384.a n = A248619 n

end A248619

/-! ## A248619.P3747184949568211514

`∑[and(2*n, -2)]²²`
-/

namespace A248619.P3747184949568211514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A248619.P3747184949568211514

namespace A248619

/-- `∑[and(2*n, -2)]²²` -/
def P3747184949568211514.Spec : Prop :=
  ∀ n, P3747184949568211514.a n = A248619 n

end A248619

/-! ## A248619.P1846948033704080153

`and(-2, (n²+n)²)²`
-/

namespace A248619.P1846948033704080153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((n ^ 2 + n) ^ 2 : ℤ) ^ 2

end

end A248619.P1846948033704080153

namespace A248619

/-- `and(-2, (n²+n)²)²` -/
def P1846948033704080153.Spec : Prop :=
  ∀ n, P1846948033704080153.a n = A248619 n

end A248619

/-! ## A248619.P2316437640054315993

`(n²*record[(n-1)²])²`
-/

namespace A248619.P2316437640054315993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A248619.P2316437640054315993

namespace A248619

/-- `(n²*record[(n-1)²])²` -/
def P2316437640054315993.Spec : Prop :=
  ∀ n, P2316437640054315993.a n = A248619 n

end A248619

/-! ## A248619.P2457376260305939483

`lcm(n², record[(n-1)²])²`
-/

namespace A248619.P2457376260305939483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A248619.P2457376260305939483

namespace A248619

/-- `lcm(n², record[(n-1)²])²` -/
def P2457376260305939483.Spec : Prop :=
  ∀ n, (P2457376260305939483.a n : ℤ) = A248619 n

end A248619

/-! ## A248619.P3340372520545604543

`floor((n+1)/acot(n))²²`
-/

namespace A248619.P3340372520545604543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2) ^ 2

end

end A248619.P3340372520545604543

namespace A248619

/-- `floor((n+1)/acot(n))²²` -/
def P3340372520545604543.Spec : Prop :=
  ∀ n, P3340372520545604543.a n = A248619 n

end A248619

/-! ## A248619.P6785867440094431773

`round(n/acot(n+1))²²`
-/

namespace A248619.P6785867440094431773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)) ^ 2) ^ 2

end

end A248619.P6785867440094431773

namespace A248619

/-- `round(n/acot(n+1))²²` -/
def P6785867440094431773.Spec : Prop :=
  ∀ n, P6785867440094431773.a n = A248619 n

end A248619

/-! ## A248619.P13269607273686151823

`(n/tan(acot(n+1)))²²`
-/

namespace A248619.P13269607273686151823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))) ^ 2) ^ 2

end

end A248619.P13269607273686151823

namespace A248619

/-- `(n/tan(acot(n+1)))²²` -/
def P13269607273686151823.Spec : Prop :=
  ∀ n, P13269607273686151823.a n = (A248619 n : ℝ)

end A248619

/-! ## A248619.P13896199855714622032

`n^4*record[(1-n)^4]`
-/

namespace A248619.P13896199855714622032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248619.P13896199855714622032

namespace A248619

/-- `n^4*record[(1-n)^4]` -/
def P13896199855714622032.Spec : Prop :=
  ∀ n, P13896199855714622032.a n = A248619 n

end A248619

/-! ## A248619.P12583939952609702677

`∑[1-or(1, 2*n)]²²`
-/

namespace A248619.P12583939952609702677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lor 1 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A248619.P12583939952609702677

namespace A248619

/-- `∑[1-or(1, 2*n)]²²` -/
def P12583939952609702677.Spec : Prop :=
  ∀ n, P12583939952609702677.a n = A248619 n

end A248619

/-! ## A248619.P2548421416485200665

`∑[xor(1, 2*n+1)]²²`
-/

namespace A248619.P2548421416485200665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A248619.P2548421416485200665

namespace A248619

/-- `∑[xor(1, 2*n+1)]²²` -/
def P2548421416485200665.Spec : Prop :=
  ∀ n, (P2548421416485200665.a n : ℤ) = A248619 n

end A248619

/-! ## A248619.P3535539721413648034

`∑[1-xor(1, 2*n)]²²`
-/

namespace A248619.P3535539721413648034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.xor 1 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A248619.P3535539721413648034

namespace A248619

/-- `∑[1-xor(1, 2*n)]²²` -/
def P3535539721413648034.Spec : Prop :=
  ∀ n, P3535539721413648034.a n = A248619 n

end A248619

/-! ## A248619.P13393294388448778404

`∑[a(n-1)+2]²²` with `a(0)=0`
-/

namespace A248619.P13393294388448778404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A248619.P13393294388448778404

namespace A248619

/-- `∑[a(n-1)+2]²²` -/
def P13393294388448778404.Spec : Prop :=
  ∀ n, (P13393294388448778404.a n : ℤ) = A248619 n

end A248619

/-! ## A248619.P14070720102603789114

`xor(1, n²+1+n)²²`
-/

namespace A248619.P14070720102603789114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n ^ 2 + 1 + n) ^ 2) ^ 2

end

end A248619.P14070720102603789114

namespace A248619

/-- `xor(1, n²+1+n)²²` -/
def P14070720102603789114.Spec : Prop :=
  ∀ n, (P14070720102603789114.a n : ℤ) = A248619 n

end A248619

/-!
# A248620: Lesser of twin primes of (29n + 1, 29n + 3).

The programs for A248620, the canonical program `A248620.P14115097485308387555` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248620 has offset 1).

The definition of A248620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248620.P14115097485308387555

`∩[A001359(n+1), A141977(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A248620

/-- `∩[A001359(n+1), A141977(n+1)]` -/
def P14115097485308387555.Spec : Prop :=
  ∀ n, (P14115097485308387555.a n : ℤ) = A248620 (n + 1)

theorem P14115097485308387555.correct : P14115097485308387555.Spec := by
  intro n
  simp only [A248620, Nat.add_sub_cancel]

end A248620

/-! ## A248620.P12875464302621978786

`∩[A141977(n+1), A378983(n+1)]`
-/

namespace A248620.P12875464302621978786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P12875464302621978786

namespace A248620

/-- `∩[A141977(n+1), A378983(n+1)]` -/
def P12875464302621978786.Spec : Prop :=
  ∀ n, (P12875464302621978786.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P2717617746928784726

`∩[A126193(n+1), A141977(n+1)]`
-/

namespace A248620.P2717617746928784726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P2717617746928784726

namespace A248620

/-- `∩[A126193(n+1), A141977(n+1)]` -/
def P2717617746928784726.Spec : Prop :=
  ∀ n, (P2717617746928784726.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P8280833539246142159

`∩[A141977(n+1), A087693(n)]`
-/

namespace A248620.P8280833539246142159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P8280833539246142159

namespace A248620

/-- `∩[A141977(n+1), A087693(n)]` -/
def P8280833539246142159.Spec : Prop :=
  ∀ n, (P8280833539246142159.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P4858086370609621522

`∩[A054799(n+1), A141977(n+1)]`
-/

namespace A248620.P4858086370609621522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P4858086370609621522

namespace A248620

/-- `∩[A054799(n+1), A141977(n+1)]` -/
def P4858086370609621522.Spec : Prop :=
  ∀ n, (P4858086370609621522.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P2316722604367714588

`∩[A063700(n+1), A141977(n+1)]`
-/

namespace A248620.P2316722604367714588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P2316722604367714588

namespace A248620

/-- `∩[A063700(n+1), A141977(n+1)]` -/
def P2316722604367714588.Spec : Prop :=
  ∀ n, (P2316722604367714588.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P18025519251793136727

`∩[A111166(n+1), A141977(n+1)]`
-/

namespace A248620.P18025519251793136727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P18025519251793136727

namespace A248620

/-- `∩[A111166(n+1), A141977(n+1)]` -/
def P18025519251793136727.Spec : Prop :=
  ∀ n, (P18025519251793136727.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P11233918602570389224

`∩[A124588(n+1), A141977(n+1)]`
-/

namespace A248620.P11233918602570389224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P11233918602570389224

namespace A248620

/-- `∩[A124588(n+1), A141977(n+1)]` -/
def P11233918602570389224.Spec : Prop :=
  ∀ n, (P11233918602570389224.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P3830502611058534855

`∩[A141977(n+1), A181747(n+1)]`
-/

namespace A248620.P3830502611058534855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P3830502611058534855

namespace A248620

/-- `∩[A141977(n+1), A181747(n+1)]` -/
def P3830502611058534855.Spec : Prop :=
  ∀ n, (P3830502611058534855.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P9251016689482396464

`∩[A141977(n+1), A238528(n+1)]`
-/

namespace A248620.P9251016689482396464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P9251016689482396464

namespace A248620

/-- `∩[A141977(n+1), A238528(n+1)]` -/
def P9251016689482396464.Spec : Prop :=
  ∀ n, (P9251016689482396464.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P3334194104881447732

`∩[A063693(n+1), A141977(n+1)]`
-/

namespace A248620.P3334194104881447732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P3334194104881447732

namespace A248620

/-- `∩[A063693(n+1), A141977(n+1)]` -/
def P3334194104881447732.Spec : Prop :=
  ∀ n, (P3334194104881447732.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P7622054814181271994

`∩[A141977(n+1), A229064(n+1)]`
-/

namespace A248620.P7622054814181271994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P7622054814181271994

namespace A248620

/-- `∩[A141977(n+1), A229064(n+1)]` -/
def P7622054814181271994.Spec : Prop :=
  ∀ n, (P7622054814181271994.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P8684978960903806713

`∩[A141977(n+1), A280255(n+1)]`
-/

namespace A248620.P8684978960903806713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P8684978960903806713

namespace A248620

/-- `∩[A141977(n+1), A280255(n+1)]` -/
def P8684978960903806713.Spec : Prop :=
  ∀ n, (P8684978960903806713.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P11032293567404575712

`∩[A141977(n+1), A267944(n+1)]`
-/

namespace A248620.P11032293567404575712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P11032293567404575712

namespace A248620

/-- `∩[A141977(n+1), A267944(n+1)]` -/
def P11032293567404575712.Spec : Prop :=
  ∀ n, (P11032293567404575712.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P11561610975826895603

`∩[A064076(n+1), A141977(n+1)]`
-/

namespace A248620.P11561610975826895603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P11561610975826895603

namespace A248620

/-- `∩[A064076(n+1), A141977(n+1)]` -/
def P11561610975826895603.Spec : Prop :=
  ∀ n, (P11561610975826895603.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P3315518534031895789

`∩[A120431(n+1), A141977(n+1)]`
-/

namespace A248620.P3315518534031895789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P3315518534031895789

namespace A248620

/-- `∩[A120431(n+1), A141977(n+1)]` -/
def P3315518534031895789.Spec : Prop :=
  ∀ n, (P3315518534031895789.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P3736059523289286966

`∩[A141977(n+1), A289995(n+1)]`
-/

namespace A248620.P3736059523289286966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P3736059523289286966

namespace A248620

/-- `∩[A141977(n+1), A289995(n+1)]` -/
def P3736059523289286966.Spec : Prop :=
  ∀ n, (P3736059523289286966.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P11911093581172588279

`∩[A141977(n+1), A394509(n+1)]`
-/

namespace A248620.P11911093581172588279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P11911093581172588279

namespace A248620

/-- `∩[A141977(n+1), A394509(n+1)]` -/
def P11911093581172588279.Spec : Prop :=
  ∀ n, (P11911093581172588279.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P3016473440316630649

`∩[A141977(n+1), A395788(n+1)]`
-/

namespace A248620.P3016473440316630649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P3016473440316630649

namespace A248620

/-- `∩[A141977(n+1), A395788(n+1)]` -/
def P3016473440316630649.Spec : Prop :=
  ∀ n, (P3016473440316630649.a n : ℤ) = A248620 (n + 1)

end A248620

/-! ## A248620.P12896862769929598304

`∩[A073534(n+1), A141977(n+1)]`
-/

namespace A248620.P12896862769929598304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248620.P12896862769929598304

namespace A248620

/-- `∩[A073534(n+1), A141977(n+1)]` -/
def P12896862769929598304.Spec : Prop :=
  ∀ n, (P12896862769929598304.a n : ℤ) = A248620 (n + 1)

end A248620

/-!
# A248621: Floor of sums of the squares of the non-integer cube roots of n, as partitioned by the integer roots: floor(Sum_{j=n^3+1..(n+1)^3-1} j^(2/3)).

The programs for A248621, the canonical program `A248621.P9342273231102720067` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248621 has offset 0).

The definition of A248621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248621.P9342273231102720067

`2*n+5*n²+6*n^3+3*n^4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248621

/-- `2*n+5*n²+6*n^3+3*n^4` -/
def P9342273231102720067.Spec : Prop :=
  ∀ n, (P9342273231102720067.a n : ℤ) = A248621 n

theorem P9342273231102720067.correct : P9342273231102720067.Spec := by
  intro n
  simp only [A248621]

end A248621

/-! ## A248621.P7643603458694982095

`2*n*∑[∑[a(n-1)+9]]` with `a(0)=1, a(1)=6`
-/

namespace A248621.P7643603458694982095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A248621.P7643603458694982095

namespace A248621

/-- `2*n*∑[∑[a(n-1)+9]]` -/
def P7643603458694982095.Spec : Prop :=
  ∀ n, (P7643603458694982095.a n : ℤ) = A248621 n

end A248621

/-! ## A248621.P9638104845495618082

`2*n*∑[∑[ogf((1+4x+4x^2)/(1-2x+x^2))]]`
-/

namespace A248621.P9638104845495618082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248621.P9638104845495618082

namespace A248621

/-- `2*n*∑[∑[ogf((1+4x+4x^2)/(1-2x+x^2))]]` -/
def P9638104845495618082.Spec : Prop :=
  ∀ n, P9638104845495618082.a n = A248621 n

end A248621

/-! ## A248621.P7556191378598324020

`2*n*∑[C(n+2, 2)+(2*n)²]`
-/

namespace A248621.P7556191378598324020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248621.P7556191378598324020

namespace A248621

/-- `2*n*∑[C(n+2, 2)+(2*n)²]` -/
def P7556191378598324020.Spec : Prop :=
  ∀ n, (P7556191378598324020.a n : ℤ) = A248621 n

end A248621

/-! ## A248621.P6685373126751080871

`n*∑[A082040(n)+1]`
-/

namespace A248621.P6685373126751080871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248621.P6685373126751080871

namespace A248621

/-- `n*∑[A082040(n)+1]` -/
def P6685373126751080871.Spec : Prop :=
  ∀ n, P6685373126751080871.a n = A248621 n

end A248621

/-! ## A248621.P12052558405474055823

`∑[n*(A005914(n)+2)]`
-/

namespace A248621.P12052558405474055823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005914 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248621.P12052558405474055823

namespace A248621

/-- `∑[n*(A005914(n)+2)]` -/
def P12052558405474055823.Spec : Prop :=
  ∀ n, P12052558405474055823.a n = A248621 n

end A248621

/-! ## A248621.P5912400413633412876

`n*∑[A045945(n)+2]`
-/

namespace A248621.P5912400413633412876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248621.P5912400413633412876

namespace A248621

/-- `n*∑[A045945(n)+2]` -/
def P5912400413633412876.Spec : Prop :=
  ∀ n, P5912400413633412876.a n = A248621 n

end A248621

/-! ## A248621.P18250479322097466940

`∑[2*n*A005897(n)]`
-/

namespace A248621.P18250479322097466940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A005897 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248621.P18250479322097466940

namespace A248621

/-- `∑[2*n*A005897(n)]` -/
def P18250479322097466940.Spec : Prop :=
  ∀ n, P18250479322097466940.a n = A248621 n

end A248621

/-! ## A248621.P12861328246880213274

`2*n*∑[A038764(n)]`
-/

namespace A248621.P12861328246880213274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A248621.P12861328246880213274

namespace A248621

/-- `2*n*∑[A038764(n)]` -/
def P12861328246880213274.Spec : Prop :=
  ∀ n, P12861328246880213274.a n = A248621 n

end A248621

/-! ## A248621.P6138451579509290020

`2*n*A100175(n+1)`
-/

namespace A248621.P6138451579509290020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A100175 (n + 1))

end

end A248621.P6138451579509290020

namespace A248621

/-- `2*n*A100175(n+1)` -/
def P6138451579509290020.Spec : Prop :=
  ∀ n, P6138451579509290020.a n = A248621 n

end A248621

/-! ## A248621.P9365494835581642906

`n*(A005915(n)+1+n)`
-/

namespace A248621.P9365494835581642906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005915 n + 1 + (n : ℤ))

end

end A248621.P9365494835581642906

namespace A248621

/-- `n*(A005915(n)+1+n)` -/
def P9365494835581642906.Spec : Prop :=
  ∀ n, P9365494835581642906.a n = A248621 n

theorem P9365494835581642906.correct : P9365494835581642906.Spec := by
  intro n
  simp only [A248621, Nat.add_sub_cancel, A248621.P9365494835581642906.a, A248621.P9342273231102720067.a, A005915, A005915.P10778017196570457320.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248621

/-! ## A248621.P14948633178043085656

`(n+1)*(A249354(n)+n)`
-/

namespace A248621.P14948633178043085656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A249354 n + (n : ℤ))

end

end A248621.P14948633178043085656

namespace A248621

/-- `(n+1)*(A249354(n)+n)` -/
def P14948633178043085656.Spec : Prop :=
  ∀ n, P14948633178043085656.a n = A248621 n

theorem P14948633178043085656.correct : P14948633178043085656.Spec := by
  intro n
  simp only [A248621, Nat.add_sub_cancel, A248621.P14948633178043085656.a, A248621.P9342273231102720067.a, A249354, A249354.P14794765986060037338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248621

/-! ## A248621.P1677343835816875054

`(A003215(n)+1)*∑[2*n]`
-/

namespace A248621.P1677343835816875054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003215 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A248621.P1677343835816875054

namespace A248621

/-- `(A003215(n)+1)*∑[2*n]` -/
def P1677343835816875054.Spec : Prop :=
  ∀ n, P1677343835816875054.a n = A248621 n

end A248621

/-! ## A248621.P18152388933254739016

`(∑[3*n]+1)*A046092(n)`
-/

namespace A248621.P18152388933254739016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A046092 n

end

end A248621.P18152388933254739016

namespace A248621

/-- `(∑[3*n]+1)*A046092(n)` -/
def P18152388933254739016.Spec : Prop :=
  ∀ n, P18152388933254739016.a n = A248621 n

end A248621

/-! ## A248621.P6222186997214380940

`2*n*∑[A000217(3*n)+1]`
-/

namespace A248621.P6222186997214380940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248621.P6222186997214380940

namespace A248621

/-- `2*n*∑[A000217(3*n)+1]` -/
def P6222186997214380940.Spec : Prop :=
  ∀ n, P6222186997214380940.a n = A248621 n

end A248621

/-! ## A248621.P1042186411389545479

`∑[A038764(n)]*A005843(n)`
-/

namespace A248621.P1042186411389545479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005843 n

end

end A248621.P1042186411389545479

namespace A248621

/-- `∑[A038764(n)]*A005843(n)` -/
def P1042186411389545479.Spec : Prop :=
  ∀ n, P1042186411389545479.a n = A248621 n

end A248621

/-! ## A248621.P16306664941678737078

`A005843(n)*A100175(n+1)`
-/

namespace A248621.P16306664941678737078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A100175 (n + 1)

end

end A248621.P16306664941678737078

namespace A248621

/-- `A005843(n)*A100175(n+1)` -/
def P16306664941678737078.Spec : Prop :=
  ∀ n, P16306664941678737078.a n = A248621 n

end A248621

/-! ## A248621.P5095446214287556843

`(A028896(n)+2)*A002378(n)`
-/

namespace A248621.P5095446214287556843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028896 n + 2) * A002378 n

end

end A248621.P5095446214287556843

namespace A248621

/-- `(A028896(n)+2)*A002378(n)` -/
def P5095446214287556843.Spec : Prop :=
  ∀ n, P5095446214287556843.a n = A248621 n

theorem P5095446214287556843.correct : P5095446214287556843.Spec := by
  intro n
  simp only [A248621, Nat.add_sub_cancel, A248621.P5095446214287556843.a, A248621.P9342273231102720067.a, A002378, A002378.P6342434596694243671.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248621

/-! ## A248621.P13827568447970232097

`(n+1)*n*A077588(n+1)`
-/

namespace A248621.P13827568447970232097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A077588 (n + 1))

end

end A248621.P13827568447970232097

namespace A248621

/-- `(n+1)*n*A077588(n+1)` -/
def P13827568447970232097.Spec : Prop :=
  ∀ n, P13827568447970232097.a n = A248621 n

end A248621

/-! ## A248621.P10071642108252880406

`A002378(n)*A077588(n+1)`
-/

namespace A248621.P10071642108252880406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A077588 (n + 1)

end

end A248621.P10071642108252880406

namespace A248621

/-- `A002378(n)*A077588(n+1)` -/
def P10071642108252880406.Spec : Prop :=
  ∀ n, P10071642108252880406.a n = A248621 n

end A248621

/-!
# A248623: Triangle T(n,k) read by rows, of number of primes in interval [k*n, (k+1)*n] exclusive, n>=k.

The programs for A248623, there is no canonical definition to state claims against.
-/

/-! ## A248623.P4268013604941492958

`A001221(record[A081676(A125165(n))])`
-/

namespace A248623.P4268013604941492958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A125165 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A248623.P4268013604941492958

/-! ## A248623.P9679268010931666925

`gcd(A000196(A215078(n)), A118458(n))`
-/

namespace A248623.P9679268010931666925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (A215078 n).toNat) (A118458 n)

end

end A248623.P9679268010931666925

/-! ## A248623.P12512067870026126288

`A101825(A270624(n)-A027746(n+1))`
-/

namespace A248623.P12512067870026126288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (A270624 n - A027746 (n + 1)).toNat

end

end A248623.P12512067870026126288

/-! ## A248623.P1974886205835964019

`A193509(A134816(n+1)*A272209(n+1))`
-/

namespace A248623.P1974886205835964019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193509 (A134816 (n + 1) * A272209 (n + 1)).toNat

end

end A248623.P1974886205835964019

/-! ## A248623.P3167885816086002776

`A000001(or(A056239(n+1), A282377(n+1)))`
-/

namespace A248623.P3167885816086002776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Int.lor (A056239 (n + 1)) (A282377 (n + 1))).toNat

end

end A248623.P3167885816086002776

/-!
# A248625: Lexicographically earliest sequence of nonnegative integers such that no triple (a(n),a(n+d),a(n+2d)) is in arithmetic progression, for any d>0, n>=0.

The programs for A248625, there is no canonical definition to state claims against.
-/

/-! ## A248625.P15134154763356918178

`A229037(n+1)-1`
-/

namespace A248625.P15134154763356918178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229037 (n + 1) - 1

end

end A248625.P15134154763356918178

/-! ## A248625.P6107904020852456849

`abs(1-A229037(n-log2(1/2)))`
-/

namespace A248625.P6107904020852456849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A229037 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat|

end

end A248625.P6107904020852456849

/-! ## A248625.P13150176042157559744

`A002837(A229037(n+1))`
-/

namespace A248625.P13150176042157559744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A229037 (n + 1)).toNat

end

end A248625.P13150176042157559744

/-! ## A248625.P9811989235262314944

`A057918(A229037(n+1)²)`
-/

namespace A248625.P9811989235262314944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A229037 (n + 1) ^ 2).toNat

end

end A248625.P9811989235262314944

/-! ## A248625.P2139146139926264758

`A086520(A229037(n+1)²)`
-/

namespace A248625.P2139146139926264758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A229037 (n + 1) ^ 2).toNat

end

end A248625.P2139146139926264758

/-! ## A248625.P5182459127072125509

`A088226(A229037(n+1)²)`
-/

namespace A248625.P5182459127072125509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A229037 (n + 1) ^ 2).toNat

end

end A248625.P5182459127072125509

/-! ## A248625.P14090453081872988334

`A259361(A229037(n+1)²)`
-/

namespace A248625.P14090453081872988334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A229037 (n + 1) ^ 2).toNat

end

end A248625.P14090453081872988334

/-! ## A248625.P8984974389719433662

`A023444(A229037(n+1)+1)`
-/

namespace A248625.P8984974389719433662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A229037 (n + 1) + 1).toNat

end

end A248625.P8984974389719433662

/-! ## A248625.P15524278392190215461

`A289207(A229037(n+1)+1)`
-/

namespace A248625.P15524278392190215461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A229037 (n + 1) + 1).toNat

end

end A248625.P15524278392190215461

/-! ## A248625.P3415470439848597884

`A132270(7*A229037(n+1))`
-/

namespace A248625.P3415470439848597884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (7 * A229037 (n + 1)).toNat

end

end A248625.P3415470439848597884

/-!
# A248627: Index at which the first n appears in A248625 = least nonnegative sequence with no AP (a(n), a(n+d), a(n+2d)).

The programs for A248627, there is no canonical definition to state claims against.
-/

/-! ## A248627.P4918425232466330060

`A241752(n+1)-1`
-/

namespace A248627.P4918425232466330060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241752 (n + 1) - 1

end

end A248627.P4918425232466330060

/-! ## A248627.P15003963253319419818

`A023443(A241752(n+1))`
-/

namespace A248627.P15003963253319419818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A241752 (n + 1)).toNat

end

end A248627.P15003963253319419818

/-! ## A248627.P13362566439405610813

`A023444(A241752(n+1)+1)`
-/

namespace A248627.P13362566439405610813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A241752 (n + 1) + 1).toNat

end

end A248627.P13362566439405610813

/-! ## A248627.P1352141772283484448

`A289207(A241752(n+1)+1)`
-/

namespace A248627.P1352141772283484448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A241752 (n + 1) + 1).toNat

end

end A248627.P1352141772283484448

/-! ## A248627.P5229122497917408981

`A023445(A241752(n+1)+2)`
-/

namespace A248627.P5229122497917408981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A241752 (n + 1) + 2).toNat

end

end A248627.P5229122497917408981

/-! ## A248627.P10557688020666916618

`A046667(2*A241752(n+1))`
-/

namespace A248627.P10557688020666916618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A241752 (n + 1)).toNat

end

end A248627.P10557688020666916618

/-! ## A248627.P10683374960179109287

`A140106(2*A241752(n+1))`
-/

namespace A248627.P10683374960179109287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A241752 (n + 1)).toNat

end

end A248627.P10683374960179109287

/-! ## A248627.P2067052788953282411

`A059169(4*A241752(n+1))`
-/

namespace A248627.P2067052788953282411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A241752 (n + 1)).toNat

end

end A248627.P2067052788953282411

/-! ## A248627.P8250096932812329560

`A260196(n+2)+A241752(n+1)`
-/

namespace A248627.P8250096932812329560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A241752 (n + 1)

end

end A248627.P8250096932812329560

/-! ## A248627.P4690610333414196006

`A340455(A007318(∑[n]))+A241752(n+1)`
-/

namespace A248627.P4690610333414196006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340455 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A241752 (n + 1)

end

end A248627.P4690610333414196006

/-!
# A248629: Least k such that 6 - sum{(h^2)/2^h, h = 1..k} < 1/3^n.

The programs for A248629, there is no canonical definition to state claims against.
-/

/-! ## A248629.P3959494693241641825

`A232753(A000567(n+4))-A289555(n+1)`
-/

namespace A248629.P3959494693241641825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (A000567 (n + 4)).toNat - A289555 (n + 1)

end

end A248629.P3959494693241641825

/-! ## A248629.P15182416857006341688

`n+4+A127321(A006331(n+5))`
-/

namespace A248629.P15182416857006341688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) + A127321 (A006331 (n + 5)).toNat

end

end A248629.P15182416857006341688

/-! ## A248629.P3728576250247213758

`record[A016777(n+3)-∑[A054124(n+1)]]`
-/

namespace A248629.P3728576250247213758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 3) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248629.P3728576250247213758

/-! ## A248629.P878741271024295855

`A005843(n+5)-A055642(A000073(n))`
-/

namespace A248629.P878741271024295855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 5) - A055642 (A000073 n).toNat

end

end A248629.P878741271024295855

/-! ## A248629.P11461035100697307309

`∑[A000002((A332032(2*(n+1))+3)²-1)]+7`
-/

namespace A248629.P11461035100697307309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 ((A332032 (2 * (n + 1)) + 3) ^ 2 - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A248629.P11461035100697307309

/-!
# A248630: Numbers k such that A248630(k+1) = A248360(k) + 1.

The programs for A248630, there is no canonical definition to state claims against.
-/

/-! ## A248630.P17855923036256719920

`eq[1, Δ[A248629(n+1)]]+1`
-/

namespace A248630.P17855923036256719920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248630.P17855923036256719920

/-! ## A248630.P9186352042937056124

`lt[1, A139213(Δ[A248629(n+1)])]+1`
-/

namespace A248630.P9186352042937056124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139213 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248630.P9186352042937056124

/-! ## A248630.P8820282451764863985

`A243196(A189938(n+1))`
-/

namespace A248630.P8820282451764863985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243196 (A189938 (n + 1)).toNat

end

end A248630.P8820282451764863985

/-! ## A248630.P2369558977204396412

`A004221(A309917(n+1))`
-/

namespace A248630.P2369558977204396412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004221 (A309917 (n + 1)).toNat

end

end A248630.P2369558977204396412

/-!
# A248631: Least k such that 3/2 - sum{(h^2)/3^h, h = 1..k} < 1/2^n.

The programs for A248631, there is no canonical definition to state claims against.
-/

/-! ## A248631.P1740684139431932744

`A074279(A174172(n+1))+2`
-/

namespace A248631.P1740684139431932744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A174172 (n + 1)).toNat + 2

end

end A248631.P1740684139431932744

/-! ## A248631.P7891759438720065857

`A074279(∑[A001694(n+1)])+2`
-/

namespace A248631.P7891759438720065857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A248631.P7891759438720065857

/-! ## A248631.P4293540410388148368

`A050499(A110882(2*n+1)+n+2)`
-/

namespace A248631.P4293540410388148368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A110882 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A248631.P4293540410388148368

/-! ## A248631.P8577933880971236173

`A036042(A003022(n+2)+A000041(n+3))`
-/

namespace A248631.P8577933880971236173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A003022 (n + 2) + A000041 (n + 3)).toNat

end

end A248631.P8577933880971236173

/-! ## A248631.P968673244288322607

`A036042(A106683(C(n+3, 2))+A000041(n+3))`
-/

namespace A248631.P968673244288322607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A106683 (Nat.choose (n + 3) 2) + A000041 (n + 3)).toNat

end

end A248631.P968673244288322607

/-!
# A248632: Numbers k such that A248631(k+1) = A248631(k).

The programs for A248632, there is no canonical definition to state claims against.
-/

/-! ## A248632.P1774720666192099037

`eq[A248631(n+1), A248631(A000038(n)+n)]`
-/

namespace A248632.P1774720666192099037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248631 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248632.P1774720666192099037

/-! ## A248632.P9488485710115746326

`A000196(∑[A045572(A337987(n+1))])`
-/

namespace A248632.P9488485710115746326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A337987 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248632.P9488485710115746326

/-! ## A248632.P17358551843460994250

`∑[round(A344160(3*n+2)/(5*n+2))]`
-/

namespace A248632.P17358551843460994250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A344160 (3 * n + 2) : ℚ) / (5 * n + 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248632.P17358551843460994250

/-! ## A248632.P17085978805711024422

`A002024(∑[A229839(3*n+4)])`
-/

namespace A248632.P17085978805711024422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229839 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248632.P17085978805711024422

/-!
# A248633: Least k such that 20/27- sum{(h^2)/4^h, h = 1..k} < 1/8^n.

The programs for A248633, there is no canonical definition to state claims against.
-/

/-! ## A248633.P3102833677063633907

`ceil((A248634(Δ[n²])-n)/2)`
-/

namespace A248633.P3102833677063633907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A248634 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ) : ℚ) / 2⌉

end

end A248633.P3102833677063633907

/-! ## A248633.P10888440896309541347

`floor((A248634(2*n+1)-n+1)/2)`
-/

namespace A248633.P10888440896309541347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248634 (2 * n + 1) - (n : ℤ) + 1 : ℚ) / 2⌋

end

end A248633.P10888440896309541347

/-! ## A248633.P13847259447521811864

`A065033(A248634(2*n+1)-n)`
-/

namespace A248633.P13847259447521811864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A248634 (2 * n + 1) - (n : ℤ)).toNat

end

end A248633.P13847259447521811864

/-! ## A248633.P7470451990237828773

`A110654(A248634(2*n+1)-n)`
-/

namespace A248633.P7470451990237828773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A248634 (2 * n + 1) - (n : ℤ)).toNat

end

end A248633.P7470451990237828773

/-! ## A248633.P9353794673032703758

`A008619(A248634(2*n+1)-(n+1))`
-/

namespace A248633.P9353794673032703758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A248634 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A248633.P9353794673032703758

/-! ## A248633.P3758541601232725517

`A008621(A248634(2*n+1)+A248634(n+1))`
-/

namespace A248633.P3758541601232725517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A248634 (2 * n + 1) + A248634 (n + 1)).toNat

end

end A248633.P3758541601232725517

/-!
# A248634: Numbers k such that A248633(k+1) = A248633(k) + 1.

The programs for A248634, there is no canonical definition to state claims against.
-/

/-! ## A248634.P18036568629764792466

`A029837(∑[A080900(n+1)+17])+2*n`
-/

namespace A248634.P18036568629764792466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (n + 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (2 * n : ℤ)

end

end A248634.P18036568629764792466

/-! ## A248634.P3205609446271351469

`A084556(A268345(n))+2*(n+2)`
-/

namespace A248634.P3205609446271351469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A268345 n).toNat + (2 * (n + 2) : ℤ)

end

end A248634.P3205609446271351469

/-! ## A248634.P4832475771614513159

`∑[A000035(A052296(n))+2]+2`
-/

namespace A248634.P4832475771614513159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A052296 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A248634.P4832475771614513159

/-! ## A248634.P16937695451851589180

`2*n+5+A065770(A036035(n))`
-/

namespace A248634.P16937695451851589180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) + A065770 (A036035 n).toNat

end

end A248634.P16937695451851589180

/-!
# A248635: Numbers k such that A248633(k+1) = A248633(k) + 2.

The programs for A248635, there is no canonical definition to state claims against.
-/

/-! ## A248635.P2864036366488274283

`comp[A248634(n+1)-1]+1`
-/

namespace A248635.P2864036366488274283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248634 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248635.P2864036366488274283

/-! ## A248635.P17493944361278717462

`comp[A023443(A248634(n+1))]+1`
-/

namespace A248635.P17493944361278717462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A248634 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248635.P17493944361278717462

/-! ## A248635.P9159256248407009704

`Δ[n²]-A000523(A023602(n+1))`
-/

namespace A248635.P9159256248407009704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000523 (A023602 (n + 1)).toNat

end

end A248635.P9159256248407009704

/-! ## A248635.P1182263790569814887

`A000027(n+1)-A000523(A023602(n+1))+n`
-/

namespace A248635.P1182263790569814887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A000523 (A023602 (n + 1)).toNat + (n : ℤ)

end

end A248635.P1182263790569814887

/-! ## A248635.P13260346872836991696

`A016789(n)-(A000523(A023602(n+1))+n+1)`
-/

namespace A248635.P13260346872836991696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A000523 (A023602 (n + 1)).toNat + (n + 1 : ℤ))

end

end A248635.P13260346872836991696

/-! ## A248635.P1428941659906760249

`2*n+A010054(∑[n])-A000523(A023602(n+1))`
-/

namespace A248635.P1428941659906760249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A010054 (∑ j ∈ Finset.range (n + 1), f1 j) - A000523 (A023602 (n + 1)).toNat)

end

end A248635.P1428941659906760249

/-! ## A248635.P5054588459951389657

`A092486(2*n+1)-A000523(A023602(n+1))-1`
-/

namespace A248635.P5054588459951389657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * n + 1) - A000523 (A023602 (n + 1)).toNat - 1

end

end A248635.P5054588459951389657

/-! ## A248635.P14647070286437086950

`2*n+3-A130249(A126254(n+1))`
-/

namespace A248635.P14647070286437086950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A130249 (A126254 (n + 1)).toNat

end

end A248635.P14647070286437086950

/-!
# A248636: Least k such that 33/8- sum{(h^3)/3^h, h = 1..k} < 1/4^n.

The programs for A248636, there is no canonical definition to state claims against.
-/

/-! ## A248636.P5891985993711253224

`A182008(A225852((n+1)²+1)+1)+4+n`
-/

namespace A248636.P5891985993711253224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182008 (A225852 ((n + 1) ^ 2 + 1) + 1).toNat + 4 + (n : ℤ)

end

end A248636.P5891985993711253224

/-! ## A248636.P10156273067350377622

`A020915(A080036(2*n+5))+gcd(n, A060135(n))`
-/

namespace A248636.P10156273067350377622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A080036 (2 * n + 5)).toNat + (Int.gcd (n : ℤ) (A060135 n) : ℤ)

end

end A248636.P10156273067350377622

/-! ## A248636.P3400709026622376614

`A267871(A164316(n))+A020915(A080036(2*n+5))`
-/

namespace A248636.P3400709026622376614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (A164316 n).toNat + A020915 (A080036 (2 * n + 5)).toNat

end

end A248636.P3400709026622376614

/-! ## A248636.P5356924453286479373

`A054977(A166654(n+1))+A020915(A080036(2*n+5))`
-/

namespace A248636.P5356924453286479373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A166654 (n + 1)).toNat + A020915 (A080036 (2 * n + 5)).toNat

end

end A248636.P5356924453286479373

/-! ## A248636.P2927799479302211298

`A138342(A218242(n+1))+A020915(A080036(2*n+5))`
-/

namespace A248636.P2927799479302211298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (A218242 (n + 1)).toNat + A020915 (A080036 (2 * n + 5)).toNat

end

end A248636.P2927799479302211298

/-!
# A248637: Numbers k such that A248636(k+1) = A248636(k) + 1.

The programs for A248637, there is no canonical definition to state claims against.
-/

/-! ## A248637.P8047372189453775557

`comp[A248638(n+1)-1]+1`
-/

namespace A248637.P8047372189453775557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248638 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248637.P8047372189453775557

/-! ## A248637.P13493600014066710445

`eq[1, Δ[A248636(n+1)]]+1`
-/

namespace A248637.P13493600014066710445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248637.P13493600014066710445

/-! ## A248637.P6858979356217322676

`eq[1, Δ[A248636(A028310(n))]]`
-/

namespace A248637.P6858979356217322676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248636 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248637.P6858979356217322676

/-! ## A248637.P13793358616215105851

`eq[1, Δ[A248636(A000007(n)+n)]]`
-/

namespace A248637.P13793358616215105851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248636 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248637.P13793358616215105851

/-! ## A248637.P2670277958918553859

`eq[1, Δ[A248636(A000038(n)+n)]]`
-/

namespace A248637.P2670277958918553859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248636 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248637.P2670277958918553859

/-! ## A248637.P15522290426047072870

`eq[1, A248636(n+1)-A248636(A028310(n))]`
-/

namespace A248637.P15522290426047072870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248636 (n + 1) - A248636 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248637.P15522290426047072870

/-!
# A248638: Numbers k such that A248636(k+1) = A248636(k) + 1.

The programs for A248638, there is no canonical definition to state claims against.
-/

/-! ## A248638.P12932876380190746193

`lt[1, Δ[A248636(n+1)]]+1`
-/

namespace A248638.P12932876380190746193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248638.P12932876380190746193

/-! ## A248638.P13933136108780049788

`eq[2, Δ[A248636(A028310(n))]]`
-/

namespace A248638.P13933136108780049788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248636 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248638.P13933136108780049788

/-! ## A248638.P15608304536367795940

`eq[2, Δ[A248636(A000007(n)+n)]]`
-/

namespace A248638.P15608304536367795940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248636 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248638.P15608304536367795940

/-! ## A248638.P11768775112013507973

`eq[2, Δ[A248636(A000038(n)+n)]]`
-/

namespace A248638.P11768775112013507973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248636 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248638.P11768775112013507973

/-! ## A248638.P17142366106166685940

`eq[2, A248636(n+1)-A248636(A028310(n))]`
-/

namespace A248638.P17142366106166685940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248636 (n + 1) - A248636 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248638.P17142366106166685940

/-!
# A248639: Least nonnegative sequence which does not contain a 4-term equidistant subsequence (a(n+k*d); k=0,1,2,3) in arithmetic progression.

The programs for A248639, there is no canonical definition to state claims against.
-/

/-! ## A248639.P7166003268130602742

`A248641(n)-1`
-/

namespace A248639.P7166003268130602742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248641 n - 1

end

end A248639.P7166003268130602742

/-! ## A248639.P6937732878735312908

`A000378(A248641(n))`
-/

namespace A248639.P6937732878735312908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (A248641 n).toNat

end

end A248639.P6937732878735312908

/-! ## A248639.P8031685013016895293

`A057918(A248641(n)²)`
-/

namespace A248639.P8031685013016895293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A248641 n ^ 2).toNat

end

end A248639.P8031685013016895293

/-! ## A248639.P12919173266963729259

`A086520(A248641(n)²)`
-/

namespace A248639.P12919173266963729259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A248641 n ^ 2).toNat

end

end A248639.P12919173266963729259

/-! ## A248639.P5200460110307700777

`A088226(A248641(n)²)`
-/

namespace A248639.P5200460110307700777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A248641 n ^ 2).toNat

end

end A248639.P5200460110307700777

/-! ## A248639.P619851569889144345

`A132090(A248641(n)²)`
-/

namespace A248639.P619851569889144345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A248641 n ^ 2).toNat

end

end A248639.P619851569889144345

/-! ## A248639.P12230249375656640019

`A214526(A248641(n)²)`
-/

namespace A248639.P12230249375656640019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A248641 n ^ 2).toNat

end

end A248639.P12230249375656640019

/-! ## A248639.P8754081346777719243

`A259361(A248641(n)²)`
-/

namespace A248639.P8754081346777719243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A248641 n ^ 2).toNat

end

end A248639.P8754081346777719243

/-! ## A248639.P1385791278900531024

`A002262(A248641(n)+14)`
-/

namespace A248639.P1385791278900531024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A248641 n + 14).toNat

end

end A248639.P1385791278900531024

/-! ## A248639.P5833562773020717504

`A070198(n)%A248641(n)`
-/

namespace A248639.P5833562773020717504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A248641 n)

end

end A248639.P5833562773020717504

/-! ## A248639.P11367447024679263712

`A153823(n)%A248641(n)`
-/

namespace A248639.P11367447024679263712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 n) (A248641 n)

end

end A248639.P11367447024679263712

/-! ## A248639.P13207055616466406632

`A196305(n)%A248641(n)`
-/

namespace A248639.P13207055616466406632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A248641 n)

end

end A248639.P13207055616466406632

/-! ## A248639.P1287235877239778804

`A200748(n)%A248641(n)`
-/

namespace A248639.P1287235877239778804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A248641 n)

end

end A248639.P1287235877239778804

/-! ## A248639.P6518439200792994388

`A004892(∑{digits}[A248641(n), #])`
-/

namespace A248639.P6518439200792994388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004892 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A248639.P6518439200792994388

/-! ## A248639.P3805954662374812586

`A025581(2*A248641(n)²)`
-/

namespace A248639.P3805954662374812586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A248641 n ^ 2).toNat

end

end A248639.P3805954662374812586

/-! ## A248639.P17341464853730697801

`A030494(n+1)%A248641(n)`
-/

namespace A248639.P17341464853730697801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A248641 n)

end

end A248639.P17341464853730697801

/-! ## A248639.P14921987177714954309

`A079782(n+1)%A248641(n)`
-/

namespace A248639.P14921987177714954309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A248641 n)

end

end A248639.P14921987177714954309

/-! ## A248639.P5719621058516213773

`A083685(n+1)%A248641(n)`
-/

namespace A248639.P5719621058516213773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A248641 n)

end

end A248639.P5719621058516213773

/-! ## A248639.P9225365895518692589

`A083800(n+1)%A248641(n)`
-/

namespace A248639.P9225365895518692589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A248641 n)

end

end A248639.P9225365895518692589

/-! ## A248639.P3200636648360586704

`A121934(n+1)%A248641(n)`
-/

namespace A248639.P3200636648360586704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A248641 n)

end

end A248639.P3200636648360586704

/-!
# A248640: Least nonnegative sequence which does not contain a 5-term equidistant subsequence (a(n+k*d); k=0,1,2,3,4) in arithmetic progression.

The programs for A248640, there is no canonical definition to state claims against.
-/

/-! ## A248640.P2866888475124559514

`A102673(A283317(n+1)+A007091(n))`
-/

namespace A248640.P2866888475124559514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A283317 (n + 1) + A007091 n).toNat

end

end A248640.P2866888475124559514

/-!
# A248641: Lexicographically earliest positive sequence which does not contain a 4-term equidistant subsequence (a(n+k*d); k=0,1,2,3) in arithmetic progression.

The programs for A248641, there is no canonical definition to state claims against.
-/

/-! ## A248641.P836513857178581440

`A248639(n)+1`
-/

namespace A248641.P836513857178581440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 n + 1

end

end A248641.P836513857178581440

/-! ## A248641.P2543469160906690978

`1-A057428(n)*A248639(n)`
-/

namespace A248641.P2543469160906690978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A248639 n

end

end A248641.P2543469160906690978

/-! ## A248641.P402058604781960114

`n-A023443(n-A248639(n))`
-/

namespace A248641.P402058604781960114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 ((n : ℤ) - A248639 n).toNat

end

end A248641.P402058604781960114

/-! ## A248641.P9181939607295148166

`A002522(n)-(n²-A248639(n))`
-/

namespace A248641.P9181939607295148166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - ((n ^ 2 : ℤ) - A248639 n)

end

end A248641.P9181939607295148166

/-! ## A248641.P15229803286466996100

`A005408(n)-(2*n-A248639(n))`
-/

namespace A248641.P15229803286466996100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A248639 n)

end

end A248641.P15229803286466996100

/-! ## A248641.P9541452513142974000

`A000005(∑{d}[n, C(2, #)]^A248639(n))`
-/

namespace A248641.P9541452513142974000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 d : ℕ) : ℚ) ^ (A248639 n : ℤ))).toNat

end

end A248641.P9541452513142974000

/-! ## A248641.P13496770762727636813

`A000005(A020483(n)^A248639(n))`
-/

namespace A248641.P13496770762727636813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A020483 n : ℚ) ^ (A248639 n : ℤ))).toNat

end

end A248641.P13496770762727636813

/-! ## A248641.P279439191336992880

`A000005(A060397(n)^A248639(n))`
-/

namespace A248641.P279439191336992880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A060397 n : ℚ) ^ (A248639 n : ℤ))).toNat

end

end A248641.P279439191336992880

/-! ## A248641.P788635870699233171

`A001222(2*A020483(n)^A248639(n))`
-/

namespace A248641.P788635870699233171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (A020483 n : ℚ) ^ (A248639 n : ℤ))).toNat

end

end A248641.P788635870699233171

/-! ## A248641.P12245345164696063444

`A001222(2*A060397(n)^A248639(n))`
-/

namespace A248641.P12245345164696063444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (A060397 n : ℚ) ^ (A248639 n : ℤ))).toNat

end

end A248641.P12245345164696063444

/-! ## A248641.P8363902315500051661

`A008619(n)-(A004526(n)-A248639(n))`
-/

namespace A248641.P8363902315500051661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A004526 n - A248639 n)

end

end A248641.P8363902315500051661

/-! ## A248641.P8068138049318433171

`and(A248639(n)-A125169(n), A125169(n))`
-/

namespace A248641.P8068138049318433171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248639 n - A125169 n) (A125169 n)

end

end A248641.P8068138049318433171

/-! ## A248641.P15349894618741437244

`2-(A010059(n*A010059(n))-A248639(n))`
-/

namespace A248641.P15349894618741437244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A010059 ((n : ℤ) * A010059 n).toNat - A248639 n)

end

end A248641.P15349894618741437244

/-! ## A248641.P18381801050867148347

`A322286(n+1)%A322293(A322321(n+2))`
-/

namespace A248641.P18381801050867148347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322286 (n + 1)) (A322293 (A322321 (n + 2)).toNat)

end

end A248641.P18381801050867148347

/-! ## A248641.P5910690931561034057

`and(A151142(n), A322286(n+1))`
-/

namespace A248641.P5910690931561034057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151142 n) (A322286 (n + 1))

end

end A248641.P5910690931561034057

/-! ## A248641.P17801868473240344431

`A322286(n+1)%A322293(n+1)`
-/

namespace A248641.P17801868473240344431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322286 (n + 1)) (A322293 (n + 1))

end

end A248641.P17801868473240344431

/-!
# A248643: a(n) = phi(2^n) - phi(n^2), with Euler's totient function phi = A000010.

The programs for A248643, the canonical program `A248643.P15599122857225494513` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248643 has offset 1).

The definition of A248643 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248643.P15599122857225494513

`A000079(n)-A002618(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A248643

/-- `A000079(n)-A002618(n+1)` -/
def P15599122857225494513.Spec : Prop :=
  ∀ n, P15599122857225494513.a n = A248643 (n + 1)

theorem P15599122857225494513.correct : P15599122857225494513.Spec := by
  intro n
  simp only [A248643, Nat.add_sub_cancel]

end A248643

/-! ## A248643.P12041719778069552389

`2^n-(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A248643.P12041719778069552389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A248643.P12041719778069552389

namespace A248643

/-- `2^n-(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P12041719778069552389.Spec : Prop :=
  ∀ n, P12041719778069552389.a n = (A248643 (n + 1) : ℚ)

end A248643

/-! ## A248643.P5536184610427031587

`2^n-(n+1)*A000010(n+1)`
-/

namespace A248643.P5536184610427031587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n + 1 : ℤ) * A000010 (n + 1)

end

end A248643.P5536184610427031587

namespace A248643

/-- `2^n-(n+1)*A000010(n+1)` -/
def P5536184610427031587.Spec : Prop :=
  ∀ n, P5536184610427031587.a n = A248643 (n + 1)

end A248643

/-! ## A248643.P17542956668434357881

`A000051(n)-A046152(n+1)`
-/

namespace A248643.P17542956668434357881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A046152 (n + 1)

end

end A248643.P17542956668434357881

namespace A248643

/-- `A000051(n)-A046152(n+1)` -/
def P17542956668434357881.Spec : Prop :=
  ∀ n, P17542956668434357881.a n = A248643 (n + 1)

end A248643

/-! ## A248643.P11384264557136893891

`A000225(n)-A046151(n+1)`
-/

namespace A248643.P11384264557136893891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A046151 (n + 1)

end

end A248643.P11384264557136893891

namespace A248643

/-- `A000225(n)-A046151(n+1)` -/
def P11384264557136893891.Spec : Prop :=
  ∀ n, P11384264557136893891.a n = A248643 (n + 1)

end A248643

/-! ## A248643.P11968578012338498971

`A053650(n+1)-A071099(n)`
-/

namespace A248643.P11968578012338498971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053650 (n + 1) - A071099 n

end

end A248643.P11968578012338498971

namespace A248643

/-- `A053650(n+1)-A071099(n)` -/
def P11968578012338498971.Spec : Prop :=
  ∀ n, P11968578012338498971.a n = A248643 (n + 1)

end A248643

/-! ## A248643.P9698107999029795828

`A000051(n)-(A002618(n+1)+1)`
-/

namespace A248643.P9698107999029795828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A002618 (n + 1) + 1)

end

end A248643.P9698107999029795828

namespace A248643

/-- `A000051(n)-(A002618(n+1)+1)` -/
def P9698107999029795828.Spec : Prop :=
  ∀ n, P9698107999029795828.a n = A248643 (n + 1)

theorem P9698107999029795828.correct : P9698107999029795828.Spec := by
  intro n
  simp only [A248643, Nat.add_sub_cancel, A248643.P9698107999029795828.a, A248643.P15599122857225494513.a, A000051, A000051.P14067217022188782580.a, A000079, A000079.P10855139691139572931.a, A002618, A002618.P11219262123574684380.a, A009195, A009195.P575735392333790531.a, A009262, A009262.P968093419327824865.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P12093122754958550118.a, A109395, A109395.P12004804553665674898.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A318305, A318305.P17845263951644339002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A248643

/-! ## A248643.P2728181354458722668

`A000225(n)+1-A002618(n+1)`
-/

namespace A248643.P2728181354458722668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A002618 (n + 1))

end

end A248643.P2728181354458722668

namespace A248643

/-- `A000225(n)+1-A002618(n+1)` -/
def P2728181354458722668.Spec : Prop :=
  ∀ n, P2728181354458722668.a n = A248643 (n + 1)

theorem P2728181354458722668.correct : P2728181354458722668.Spec := by
  intro n
  simp only [A248643, Nat.add_sub_cancel, A248643.P2728181354458722668.a, A248643.P15599122857225494513.a, A000079, A000079.P10855139691139572931.a, A000225, A000225.P6535533121115206393.a, A002618, A002618.P11219262123574684380.a, A009195, A009195.P575735392333790531.a, A009262, A009262.P968093419327824865.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P12093122754958550118.a, A109395, A109395.P12004804553665674898.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A318305, A318305.P17845263951644339002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A248643

/-! ## A248643.P16834715003143036639

`A000079(n)-(A109606(n+1)+1)*(n+1)`
-/

namespace A248643.P16834715003143036639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A109606 (n + 1) + 1) * (n + 1 : ℤ)

end

end A248643.P16834715003143036639

namespace A248643

/-- `A000079(n)-(A109606(n+1)+1)*(n+1)` -/
def P16834715003143036639.Spec : Prop :=
  ∀ n, P16834715003143036639.a n = A248643 (n + 1)

end A248643

/-! ## A248643.P874455919215795190

`A000079(n)-A034444(n+1)*A248003(n+1)`
-/

namespace A248643.P874455919215795190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A034444 (n + 1) * A248003 (n + 1)

end

end A248643.P874455919215795190

namespace A248643

/-- `A000079(n)-A034444(n+1)*A248003(n+1)` -/
def P874455919215795190.Spec : Prop :=
  ∀ n, P874455919215795190.a n = A248643 (n + 1)

end A248643

/-! ## A248643.P1936755451726085521

`2^n-A000010((n+1)²)`
-/

namespace A248643.P1936755451726085521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000010 ((n + 1) ^ 2)

end

end A248643.P1936755451726085521

namespace A248643

/-- `2^n-A000010((n+1)²)` -/
def P1936755451726085521.Spec : Prop :=
  ∀ n, P1936755451726085521.a n = A248643 (n + 1)

end A248643

/-!
# A248644: Evil numbers (A001969) remaining evil if any digit is deleted (zeros allowed).

The programs for A248644, there is no canonical definition to state claims against.
-/

/-! ## A248644.P2907438869268458717

`eq[A000720(A328572(n)), A065359(n)]`
-/

namespace A248644.P2907438869268458717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A328572 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248644.P2907438869268458717

/-! ## A248644.P8591424384524601790

`eq[A065359(n), A336551(A346101(n))]`
-/

namespace A248644.P8591424384524601790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A346101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248644.P8591424384524601790

/-! ## A248644.P9717252651954382020

`lt[A169821(n), A139337(A110409(n))]`
-/

namespace A248644.P9717252651954382020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169821 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A110409 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248644.P9717252651954382020

/-! ## A248644.P4369302552871572249

`lt[A074296(A074296(3*n+2)), A074297(3*n+5)]`
-/

namespace A248644.P4369302552871572249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074296 (A074296 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074297 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248644.P4369302552871572249

/-!
# A248645: Number of light-years in a parsec, prior to its redefinition in August 2015.

The programs for A248645, there is no canonical definition to state claims against.
-/

/-! ## A248645.P766532889813890521

`A344323(n+1)-A344310(A184983(n))`
-/

namespace A248645.P766532889813890521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344323 (n + 1) - A344310 (A184983 n).toNat

end

end A248645.P766532889813890521

/-!
# A248646: Expansion of g.f. x*(x^3+x^2+x+2)/(1-2*x).

The programs for A248646, the canonical program `A248646.P2882016070363778612` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248646 has offset 1).

The definition of A248646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+x+x^2+x^3)/(1-2x))` (program `A248646.P2882016070363778612`, by `A248646.P2882016070363778612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248646.P2882016070363778612

`ogf((2+x+x^2+x^3)/(1-2x))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248646

/-- `ogf((2+x+x^2+x^3)/(1-2x))` -/
def P2882016070363778612.Spec : Prop :=
  ∀ n, P2882016070363778612.a n = A248646 (n + 1)

theorem P2882016070363778612.correct : P2882016070363778612.Spec := by
  intro n
  simp only [A248646, Nat.add_sub_cancel]

end A248646

/-! ## A248646.P17679326210187006890

`2*a(n-1)` with `a(0)=2, a(1)=5, a(2)=11, a(3)=23`
-/

namespace A248646.P17679326210187006890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 11, 23] fun n a =>
  2 * a (n - 1)

end

end A248646.P17679326210187006890

namespace A248646

/-- `2*a(n-1)` -/
def P17679326210187006890.Spec : Prop :=
  ∀ n, (P17679326210187006890.a n : ℤ) = A248646 (n + 1)

end A248646

/-! ## A248646.P14413169054568852425

`floor(23*2^(n-3))`
-/

namespace A248646.P14413169054568852425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊23 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

end

end A248646.P14413169054568852425

namespace A248646

/-- `floor(23*2^(n-3))` -/
def P14413169054568852425.Spec : Prop :=
  ∀ n, P14413169054568852425.a n = A248646 (n + 1)

end A248646

/-! ## A248646.P15775207337735577819

`a(n-1)+floor(a(n-1)+3/n)` with `a(0)=2, a(1)=5`
-/

namespace A248646.P15775207337735577819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℚ) + 3 / (n : ℚ)⌋

end

end A248646.P15775207337735577819

namespace A248646

/-- `a(n-1)+floor(a(n-1)+3/n)` -/
def P15775207337735577819.Spec : Prop :=
  ∀ n, P15775207337735577819.a n = A248646 (n + 1)

end A248646

/-! ## A248646.P15550791859553044839

`a(n-1)-floor((n/2-2)/a(n-1)-a(n-1))` with `a(0)=2`
-/

namespace A248646.P15550791859553044839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ⌊((n : ℚ) / 2 - 2) / (a (n - 1) : ℚ) - (a (n - 1) : ℚ)⌋

end

end A248646.P15550791859553044839

namespace A248646

/-- `a(n-1)-floor((n/2-2)/a(n-1)-a(n-1))` -/
def P15550791859553044839.Spec : Prop :=
  ∀ n, P15550791859553044839.a n = A248646 (n + 1)

end A248646

/-! ## A248646.P3763626846204697660

`or(a(n-1)/sqrt(1/4), A122391(n))` with `a(0)=2`
-/

namespace A248646.P3763626846204697660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))) (A122391 n)

end

end A248646.P3763626846204697660

namespace A248646

/-- `or(a(n-1)/sqrt(1/4), A122391(n))` -/
def P3763626846204697660.Spec : Prop :=
  ∀ n, P3763626846204697660.a n = A248646 (n + 1)

end A248646

/-! ## A248646.P2666603030380062342

`A052996(n+1)-A267539(n)`
-/

namespace A248646.P2666603030380062342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 (n + 1) - A267539 n

end

end A248646.P2666603030380062342

namespace A248646

/-- `A052996(n+1)-A267539(n)` -/
def P2666603030380062342.Spec : Prop :=
  ∀ n, P2666603030380062342.a n = A248646 (n + 1)

end A248646

/-!
# A248647: Records in A098550.

The programs for A248647, there is no canonical definition to state claims against.
-/

/-! ## A248647.P16530596866785293937

`record[A098550(n+1)]`
-/

namespace A248647.P16530596866785293937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248647.P16530596866785293937

/-! ## A248647.P11178748102767286153

`sqrt(record[A098550(-xor(n, -1))²])`
-/

namespace A248647.P11178748102767286153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A248647.P11178748102767286153

/-! ## A248647.P17012702208734466580

`record[A098550(-xor(n, -1))%A016946(n)]`
-/

namespace A248647.P17012702208734466580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098550 (-Int.xor (n : ℤ) (-1)).toNat) (A016946 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248647.P17012702208734466580

/-! ## A248647.P2788335516823556968

`record[A098550(-xor(n, -1))]%A027785(n)`
-/

namespace A248647.P2788335516823556968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A027785 (n + 10))

end

end A248647.P2788335516823556968

/-! ## A248647.P3599986956612119817

`record[A098550(A008619(2*n))]%A004171(n)`
-/

namespace A248647.P3599986956612119817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004171 n)

end

end A248647.P3599986956612119817

/-!
# A248648: The squares related to the strictly increasing subsequence of A053667(n), n >= 1.

The programs for A248648, there is no canonical definition to state claims against.
-/

/-! ## A248648.P11250271169019192204

`∑[A379752(A018029(n))]²`
-/

namespace A248648.P11250271169019192204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379752 (A018029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A248648.P11250271169019192204

/-! ## A248648.P10059143893779493970

`record[A351465(∑[10-a(n-1)]+1)²]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=6`
-/

namespace A248648.P10059143893779493970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 6] fun n f2 =>
  10 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351465 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248648.P10059143893779493970

/-! ## A248648.P14211295003080320602

`∑[A001876(A018047(n))]²`
-/

namespace A248648.P14211295003080320602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A018047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A248648.P14211295003080320602

/-! ## A248648.P10163356797126415047

`∑[A008480(A041783(n))]²`
-/

namespace A248648.P10163356797126415047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A041783 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A248648.P10163356797126415047

/-! ## A248648.P3497230006773388224

`lt[A000041(n), A130139(n)]²`
-/

namespace A248648.P3497230006773388224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130139 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A248648.P3497230006773388224

/-!
# A248649: Numbers n that are the product of three distinct primes such that x^2+y^2 = n has integer solutions.

The programs for A248649, the canonical program `A248649.P2251139896662346655` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248649 has offset 1).

The definition of A248649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248649.P2361077683445952851

`filter[A071011(n+1), A354926(#)]`
-/

namespace A248649.P2361077683445952851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A248649.P2361077683445952851

namespace A248649

/-- `filter[A071011(n+1), A354926(#)]` -/
def P2361077683445952851.Spec : Prop :=
  ∀ n, P2361077683445952851.a n = A248649 (n + 1)

end A248649

/-! ## A248649.P3475453103734424022

`filter[A274044(n+2), A354926(#)]`
-/

namespace A248649.P3475453103734424022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A248649.P3475453103734424022

namespace A248649

/-- `filter[A274044(n+2), A354926(#)]` -/
def P3475453103734424022.Spec : Prop :=
  ∀ n, P3475453103734424022.a n = A248649 (n + 1)

end A248649

/-! ## A248649.P3307378865907584555

`filter[A274044(n+2), A358753(#)]`
-/

namespace A248649.P3307378865907584555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A248649.P3307378865907584555

namespace A248649

/-- `filter[A274044(n+2), A358753(#)]` -/
def P3307378865907584555.Spec : Prop :=
  ∀ n, P3307378865907584555.a n = A248649 (n + 1)

end A248649

/-! ## A248649.P2251139896662346655

`filter[A274044(n+2), A373975(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A248649

/-- `filter[A274044(n+2), A373975(#)]` -/
def P2251139896662346655.Spec : Prop :=
  ∀ n, P2251139896662346655.a n = A248649 (n + 1)

theorem P2251139896662346655.correct : P2251139896662346655.Spec := by
  intro n
  simp only [A248649, Nat.add_sub_cancel]

end A248649

/-! ## A248649.P2242409312028002995

`filter[A024508(n+1), A354926(#)]`
-/

namespace A248649.P2242409312028002995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A248649.P2242409312028002995

namespace A248649

/-- `filter[A024508(n+1), A354926(#)]` -/
def P2242409312028002995.Spec : Prop :=
  ∀ n, P2242409312028002995.a n = A248649 (n + 1)

end A248649

/-! ## A248649.P16548479031658935238

`filter[A007692(n+1), A354926(#)]`
-/

namespace A248649.P16548479031658935238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A248649.P16548479031658935238

namespace A248649

/-- `filter[A007692(n+1), A354926(#)]` -/
def P16548479031658935238.Spec : Prop :=
  ∀ n, P16548479031658935238.a n = A248649 (n + 1)

end A248649

/-! ## A248649.P9594924505030966038

`filter[A118882(n+1), A354926(#)]`
-/

namespace A248649.P9594924505030966038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A248649.P9594924505030966038

namespace A248649

/-- `filter[A118882(n+1), A354926(#)]` -/
def P9594924505030966038.Spec : Prop :=
  ∀ n, P9594924505030966038.a n = A248649 (n + 1)

end A248649

/-! ## A248649.P1772968487150777513

`filter[A378480(n+1), A229062(#)]`
-/

namespace A248649.P1772968487150777513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A248649.P1772968487150777513

namespace A248649

/-- `filter[A378480(n+1), A229062(#)]` -/
def P1772968487150777513.Spec : Prop :=
  ∀ n, P1772968487150777513.a n = A248649 (n + 1)

end A248649

/-! ## A248649.P14111197593059966467

`filter[A378480(n+1), A353814(#)]`
-/

namespace A248649.P14111197593059966467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A248649.P14111197593059966467

namespace A248649

/-- `filter[A378480(n+1), A353814(#)]` -/
def P14111197593059966467.Spec : Prop :=
  ∀ n, P14111197593059966467.a n = A248649 (n + 1)

end A248649

/-! ## A248649.P16412553701185267875

`∩[A007692(n+1), A378480(n+1)]`
-/

namespace A248649.P16412553701185267875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248649.P16412553701185267875

namespace A248649

/-- `∩[A007692(n+1), A378480(n+1)]` -/
def P16412553701185267875.Spec : Prop :=
  ∀ n, (P16412553701185267875.a n : ℤ) = A248649 (n + 1)

end A248649

/-! ## A248649.P10441392501664769227

`∩[A008784(n+1), A378480(n+1)]`
-/

namespace A248649.P10441392501664769227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248649.P10441392501664769227

namespace A248649

/-- `∩[A008784(n+1), A378480(n+1)]` -/
def P10441392501664769227.Spec : Prop :=
  ∀ n, (P10441392501664769227.a n : ℤ) = A248649 (n + 1)

end A248649

/-! ## A248649.P14393781564019779484

`∩[A020893(n+1), A378480(n+1)]`
-/

namespace A248649.P14393781564019779484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248649.P14393781564019779484

namespace A248649

/-- `∩[A020893(n+1), A378480(n+1)]` -/
def P14393781564019779484.Spec : Prop :=
  ∀ n, (P14393781564019779484.a n : ℤ) = A248649 (n + 1)

end A248649

/-! ## A248649.P966539556574537849

`∩[A024508(n+1), A378480(n+1)]`
-/

namespace A248649.P966539556574537849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248649.P966539556574537849

namespace A248649

/-- `∩[A024508(n+1), A378480(n+1)]` -/
def P966539556574537849.Spec : Prop :=
  ∀ n, (P966539556574537849.a n : ℤ) = A248649 (n + 1)

end A248649

/-! ## A248649.P2348454126812812349

`∩[A071011(n+1), A378480(n+1)]`
-/

namespace A248649.P2348454126812812349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248649.P2348454126812812349

namespace A248649

/-- `∩[A071011(n+1), A378480(n+1)]` -/
def P2348454126812812349.Spec : Prop :=
  ∀ n, (P2348454126812812349.a n : ℤ) = A248649 (n + 1)

end A248649

/-! ## A248649.P10118725585864766669

`∩[A118882(n+1), A378480(n+1)]`
-/

namespace A248649.P10118725585864766669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248649.P10118725585864766669

namespace A248649

/-- `∩[A118882(n+1), A378480(n+1)]` -/
def P10118725585864766669.Spec : Prop :=
  ∀ n, (P10118725585864766669.a n : ℤ) = A248649 (n + 1)

end A248649

/-! ## A248649.P14166203898757500582

`∩[A174051(n+1), A378480(n+1)]`
-/

namespace A248649.P14166203898757500582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248649.P14166203898757500582

namespace A248649

/-- `∩[A174051(n+1), A378480(n+1)]` -/
def P14166203898757500582.Spec : Prop :=
  ∀ n, (P14166203898757500582.a n : ℤ) = A248649 (n + 1)

end A248649

/-! ## A248649.P13509978173017766356

`∩[A274044(n+1), A378480(n+1)]`
-/

namespace A248649.P13509978173017766356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248649.P13509978173017766356

namespace A248649

/-- `∩[A274044(n+1), A378480(n+1)]` -/
def P13509978173017766356.Spec : Prop :=
  ∀ n, (P13509978173017766356.a n : ℤ) = A248649 (n + 1)

end A248649

/-! ## A248649.P12414545645678297658

`∩[A046711(n+1), A378480(n+1)]`
-/

namespace A248649.P12414545645678297658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248649.P12414545645678297658

namespace A248649

/-- `∩[A046711(n+1), A378480(n+1)]` -/
def P12414545645678297658.Spec : Prop :=
  ∀ n, (P12414545645678297658.a n : ℤ) = A248649 (n + 1)

end A248649

/-! ## A248649.P4579367304020421357

`∩[A057129(n+1), A378480(n+1)]`
-/

namespace A248649.P4579367304020421357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248649.P4579367304020421357

namespace A248649

/-- `∩[A057129(n+1), A378480(n+1)]` -/
def P4579367304020421357.Spec : Prop :=
  ∀ n, (P4579367304020421357.a n : ℤ) = A248649 (n + 1)

end A248649

/-! ## A248649.P198640882852368764

`filter[A007304(n+1), A229062(#)]`
-/

namespace A248649.P198640882852368764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A248649.P198640882852368764

namespace A248649

/-- `filter[A007304(n+1), A229062(#)]` -/
def P198640882852368764.Spec : Prop :=
  ∀ n, P198640882852368764.a n = A248649 (n + 1)

end A248649

/-!
# A248651: a(n) is the smallest number greater than a(n-1) such that in a(1) through a(n) no digit occurs more than once more than any other digit, starting with a(1) = 1.

The programs for A248651, there is no canonical definition to state claims against.
-/

/-! ## A248651.P9445878337047500766

`A002262(C(n, 9)²)+1+n`
-/

namespace A248651.P9445878337047500766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.choose n 9 ^ 2) + 1 + (n : ℤ)

end

end A248651.P9445878337047500766

/-! ## A248651.P15518879781071411736

`A349294(∑[1-(∑{digits}[n, #]-n)])`
-/

namespace A248651.P15518879781071411736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248651.P15518879781071411736

/-! ## A248651.P15788622633571571303

`A342591(A032571(n+1))`
-/

namespace A248651.P15788622633571571303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (A032571 (n + 1)).toNat

end

end A248651.P15788622633571571303

/-! ## A248651.P5802335423918963978

`A342591(A037124(n+1))`
-/

namespace A248651.P5802335423918963978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (A037124 (n + 1)).toNat

end

end A248651.P5802335423918963978

/-! ## A248651.P6233253466758389773

`A342591(A080459(n+1))`
-/

namespace A248651.P6233253466758389773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (A080459 (n + 1)).toNat

end

end A248651.P6233253466758389773

/-!
# A248652: Union of the factorial numbers (A000142) and the double factorials of odd numbers (A001147).

The programs for A248652, the canonical program `A248652.P17680892557761327173` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248652 has offset 1).

The definition of A248652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248652.P17680892557761327173

`∪[(n+1)!, ∏[comp[2*n]]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248652

/-- `∪[(n+1)!, ∏[comp[2*n]]]` -/
def P17680892557761327173.Spec : Prop :=
  ∀ n, (P17680892557761327173.a n : ℤ) = A248652 (n + 1)

theorem P17680892557761327173.correct : P17680892557761327173.Spec := by
  intro n
  simp only [A248652, Nat.add_sub_cancel]

end A248652

/-! ## A248652.P5436960994034987818

`∪[∏[comp[2*n]], ∏[n+1]]`
-/

namespace A248652.P5436960994034987818
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A248652.P5436960994034987818

namespace A248652

/-- `∪[∏[comp[2*n]], ∏[n+1]]` -/
def P5436960994034987818.Spec : Prop :=
  ∀ n, (P5436960994034987818.a n : ℤ) = A248652 (n + 1)

end A248652

/-! ## A248652.P9727008647392393660

`∩[A052421(n+1), A268645(n+1)]`
-/

namespace A248652.P9727008647392393660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248652.P9727008647392393660

namespace A248652

/-- `∩[A052421(n+1), A268645(n+1)]` -/
def P9727008647392393660.Spec : Prop :=
  ∀ n, (P9727008647392393660.a n : ℤ) = A248652 (n + 1)

end A248652

/-! ## A248652.P7166673933163301705

`∩[A225651(n+1), A268645(n+1)]`
-/

namespace A248652.P7166673933163301705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248652.P7166673933163301705

namespace A248652

/-- `∩[A225651(n+1), A268645(n+1)]` -/
def P7166673933163301705.Spec : Prop :=
  ∀ n, (P7166673933163301705.a n : ℤ) = A248652 (n + 1)

end A248652

/-! ## A248652.P15700903122213796017

`A028310(∪[∏[2*n+1], A072346(2*(n+1))])`
-/

namespace A248652.P15700903122213796017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072346 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n)

end

end A248652.P15700903122213796017

namespace A248652

/-- `A028310(∪[∏[2*n+1], A072346(2*(n+1))])` -/
def P15700903122213796017.Spec : Prop :=
  ∀ n, P15700903122213796017.a n = A248652 (n + 1)

end A248652

/-!
# A248653: E.g.f.: Sum_{n>=0} x^n * (2 + exp(n*x))^n.

The programs for A248653, there is no canonical definition to state claims against.
-/

/-! ## A248653.P3267948171181961259

`A248387(A000110(2*n))+A130400(n)`
-/

namespace A248653.P3267948171181961259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (A000110 (2 * n)).toNat + A130400 n

end

end A248653.P3267948171181961259

/-!
# A248654: E.g.f.: Sum_{n>=0} x^n * (3 + exp(n*x))^n.

The programs for A248654, there is no canonical definition to state claims against.
-/

/-! ## A248654.P13245381322088717694

`A005187(A059760(n+1)+A003586(n+1))`
-/

namespace A248654.P13245381322088717694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A059760 (n + 1) + A003586 (n + 1)).toNat

end

end A248654.P13245381322088717694

/-!
# A248655: E.g.f.: Sum_{n>=0} x^n * (2*exp(n*x) - 1)^n.

The programs for A248655, there is no canonical definition to state claims against.
-/

/-! ## A248655.P5569765896608471854

`or(1, n)*A058037(ceil(2^(n-1)))`
-/

namespace A248655.P5569765896608471854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * A058037 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A248655.P5569765896608471854

/-!
# A248658: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^3 * x^(2*k).

The programs for A248658, there is no canonical definition to state claims against.
-/

/-! ## A248658.P13143415915731635953

`A121643(A024651(n))`
-/

namespace A248658.P13143415915731635953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121643 (A024651 n).toNat

end

end A248658.P13143415915731635953

/-! ## A248658.P17509672424016599825

`A121643(A024652(n))`
-/

namespace A248658.P17509672424016599825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121643 (A024652 n).toNat

end

end A248658.P17509672424016599825

/-! ## A248658.P3715785096428600358

`A121643(A024653(n))`
-/

namespace A248658.P3715785096428600358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121643 (A024653 n).toNat

end

end A248658.P3715785096428600358

/-! ## A248658.P3587027530315165694

`A121643(A024654(n))`
-/

namespace A248658.P3587027530315165694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121643 (A024654 n).toNat

end

end A248658.P3587027530315165694

/-! ## A248658.P6986975419821779509

`A121643(A024655(n))`
-/

namespace A248658.P6986975419821779509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121643 (A024655 n).toNat

end

end A248658.P6986975419821779509

/-!
# A248661: Initial members of prime quadruples (n, n+2, n+54, n+56).

The programs for A248661, there is no canonical definition to state claims against.
-/

/-! ## A248661.P6721312100648836570

`∩[A054799(n+1)-54, A054799(n+1)]`
-/

namespace A248661.P6721312100648836570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1) - 54

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248661.P6721312100648836570

/-!
# A248662: Numbers with the property: tau(n) > sopfr(n), or A000005(n) > A001414(n).

The programs for A248662, the canonical program `A248662.P15236440755590100314` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248662 has offset 1).

The definition of A248662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248662.P15236440755590100314

`lt[A001414(n+1), A000005(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A248662

/-- `lt[A001414(n+1), A000005(n+1)]+1` -/
def P15236440755590100314.Spec : Prop :=
  ∀ n, (P15236440755590100314.a n : ℤ) = A248662 (n + 1)

theorem P15236440755590100314.correct : P15236440755590100314.Spec := by
  intro n
  simp only [A248662, Nat.add_sub_cancel]

end A248662

/-! ## A248662.P17916225880710588969

`lt[A082299(n+1)*A082343(n+1), A000005(n+1)]+1`
-/

namespace A248662.P17916225880710588969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1) * A082343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A248662.P17916225880710588969

namespace A248662

/-- `lt[A082299(n+1)*A082343(n+1), A000005(n+1)]+1` -/
def P17916225880710588969.Spec : Prop :=
  ∀ n, (P17916225880710588969.a n : ℤ) = A248662 (n + 1)

end A248662

/-! ## A248662.P13349992346974379573

`lt[A036288(n+1), A334954(n+1)]+1`
-/

namespace A248662.P13349992346974379573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A248662.P13349992346974379573

namespace A248662

/-- `lt[A036288(n+1), A334954(n+1)]+1` -/
def P13349992346974379573.Spec : Prop :=
  ∀ n, (P13349992346974379573.a n : ℤ) = A248662 (n + 1)

end A248662

/-! ## A248662.P8222862838939574721

`lt[A074373(n+1), A000005(n+1)²]+1`
-/

namespace A248662.P8222862838939574721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A248662.P8222862838939574721

namespace A248662

/-- `lt[A074373(n+1), A000005(n+1)²]+1` -/
def P8222862838939574721.Spec : Prop :=
  ∀ n, (P8222862838939574721.a n : ℤ) = A248662 (n + 1)

end A248662

/-! ## A248662.P7916258624530899531

`lt[A025281(n+1)-A025281(n), A000005(n+1)]+1`
-/

namespace A248662.P7916258624530899531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1) - A025281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A248662.P7916258624530899531

namespace A248662

/-- `lt[A025281(n+1)-A025281(n), A000005(n+1)]+1` -/
def P7916258624530899531.Spec : Prop :=
  ∀ n, (P7916258624530899531.a n : ℤ) = A248662 (n + 1)

end A248662

/-!
# A248663: Binary encoding of the prime factors of the squarefree part of n.

The programs for A248663, the canonical program `A248663.P4155660683917625723` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248663 has offset 1).

The definition of A248663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248663.P4155660683917625723

`A048675(A007913(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A248663

/-- `A048675(A007913(n+1))` -/
def P4155660683917625723.Spec : Prop :=
  ∀ n, P4155660683917625723.a n = A248663 (n + 1)

theorem P4155660683917625723.correct : P4155660683917625723.Spec := by
  intro n
  simp only [A248663, Nat.add_sub_cancel]

end A248663

/-! ## A248663.P11543084648584116746

`A087207(A071975(n+1))`
-/

namespace A248663.P11543084648584116746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A071975 (n + 1)).toNat

end

end A248663.P11543084648584116746

namespace A248663

/-- `A087207(A071975(n+1))` -/
def P11543084648584116746.Spec : Prop :=
  ∀ n, P11543084648584116746.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P515148386235558861

`A087207(A350389(n+1))`
-/

namespace A248663.P515148386235558861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A350389 (n + 1)).toNat

end

end A248663.P515148386235558861

namespace A248663

/-- `A087207(A350389(n+1))` -/
def P515148386235558861.Spec : Prop :=
  ∀ n, P515148386235558861.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P8423191569473637249

`A156552(A335423(n+1))`
-/

namespace A248663.P8423191569473637249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A335423 (n + 1)).toNat

end

end A248663.P8423191569473637249

namespace A248663

/-- `A156552(A335423(n+1))` -/
def P8423191569473637249.Spec : Prop :=
  ∀ n, P8423191569473637249.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P14003245591505656868

`A334872(2*2*A007913(n+1))`
-/

namespace A248663.P14003245591505656868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334872 (2 * (2 * A007913 (n + 1))).toNat

end

end A248663.P14003245591505656868

namespace A248663

/-- `A334872(2*2*A007913(n+1))` -/
def P14003245591505656868.Spec : Prop :=
  ∀ n, P14003245591505656868.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P9140396775165643060

`A048675((n+1)/A008833(n+1))`
-/

namespace A248663.P9140396775165643060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A248663.P9140396775165643060

namespace A248663

/-- `A048675((n+1)/A008833(n+1))` -/
def P9140396775165643060.Spec : Prop :=
  ∀ n, P9140396775165643060.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P1807153979818539926

`A087207((n+1)/A008833(n+1))`
-/

namespace A248663.P1807153979818539926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A248663.P1807153979818539926

namespace A248663

/-- `A087207((n+1)/A008833(n+1))` -/
def P1807153979818539926.Spec : Prop :=
  ∀ n, P1807153979818539926.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P1739989109759018306

`A285330((n+1)/A008833(n+1))`
-/

namespace A248663.P1739989109759018306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A248663.P1739989109759018306

namespace A248663

/-- `A285330((n+1)/A008833(n+1))` -/
def P1739989109759018306.Spec : Prop :=
  ∀ n, P1739989109759018306.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P5851197576067491162

`A331740((n+1)/A008833(n+1))`
-/

namespace A248663.P5851197576067491162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A248663.P5851197576067491162

namespace A248663

/-- `A331740((n+1)/A008833(n+1))` -/
def P5851197576067491162.Spec : Prop :=
  ∀ n, P5851197576067491162.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P7270813910213979146

`A334871((n+1)/A008833(n+1))`
-/

namespace A248663.P7270813910213979146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A248663.P7270813910213979146

namespace A248663

/-- `A334871((n+1)/A008833(n+1))` -/
def P7270813910213979146.Spec : Prop :=
  ∀ n, P7270813910213979146.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P1551396054007053984

`A334871(A053143(n+1)/(n+1))`
-/

namespace A248663.P1551396054007053984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A248663.P1551396054007053984

namespace A248663

/-- `A334871(A053143(n+1)/(n+1))` -/
def P1551396054007053984.Spec : Prop :=
  ∀ n, P1551396054007053984.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P17217858743853731159

`A335426(A053143(n+1)/(n+1))`
-/

namespace A248663.P17217858743853731159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335426 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A248663.P17217858743853731159

namespace A248663

/-- `A335426(A053143(n+1)/(n+1))` -/
def P17217858743853731159.Spec : Prop :=
  ∀ n, P17217858743853731159.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P12450622514273416814

`A087207(A007913(2*n+1-n))`
-/

namespace A248663.P12450622514273416814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A007913 (2 * n + 1 - n)).toNat

end

end A248663.P12450622514273416814

namespace A248663

/-- `A087207(A007913(2*n+1-n))` -/
def P12450622514273416814.Spec : Prop :=
  ∀ n, P12450622514273416814.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P9208241186769967778

`A285330(gcd(n+1, A007913(n+1)))`
-/

namespace A248663.P9208241186769967778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (Int.gcd (n + 1 : ℤ) (A007913 (n + 1)))

end

end A248663.P9208241186769967778

namespace A248663

/-- `A285330(gcd(n+1, A007913(n+1)))` -/
def P9208241186769967778.Spec : Prop :=
  ∀ n, P9208241186769967778.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P289205091270758558

`A048675((n+1)/(A336642(n+1)+1))`
-/

namespace A248663.P289205091270758558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336642 (n + 1) + 1 : ℚ))).toNat

end

end A248663.P289205091270758558

namespace A248663

/-- `A048675((n+1)/(A336642(n+1)+1))` -/
def P289205091270758558.Spec : Prop :=
  ∀ n, P289205091270758558.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P7630007278586037148

`A048675(n+1)-A048675(A008833(n+1))`
-/

namespace A248663.P7630007278586037148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) - A048675 (A008833 (n + 1)).toNat

end

end A248663.P7630007278586037148

namespace A248663

/-- `A048675(n+1)-A048675(A008833(n+1))` -/
def P7630007278586037148.Spec : Prop :=
  ∀ n, P7630007278586037148.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P15502472445209050880

`A087207(n+1)-A087207(A336643(n+1))`
-/

namespace A248663.P15502472445209050880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1) - A087207 (A336643 (n + 1)).toNat

end

end A248663.P15502472445209050880

namespace A248663

/-- `A087207(n+1)-A087207(A336643(n+1))` -/
def P15502472445209050880.Spec : Prop :=
  ∀ n, P15502472445209050880.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P16584160649257629869

`A331740(n+1)-A331740(A000188(n+1))`
-/

namespace A248663.P16584160649257629869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (n + 1) - A331740 (A000188 (n + 1)).toNat

end

end A248663.P16584160649257629869

namespace A248663

/-- `A331740(n+1)-A331740(A000188(n+1))` -/
def P16584160649257629869.Spec : Prop :=
  ∀ n, P16584160649257629869.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P2437819325241749821

`A331740(n+1)-A331740(A008833(n+1))`
-/

namespace A248663.P2437819325241749821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (n + 1) - A331740 (A008833 (n + 1)).toNat

end

end A248663.P2437819325241749821

namespace A248663

/-- `A331740(n+1)-A331740(A008833(n+1))` -/
def P2437819325241749821.Spec : Prop :=
  ∀ n, P2437819325241749821.a n = A248663 (n + 1)

end A248663

/-! ## A248663.P11914052276315068814

`A334871(n+1)-A334871(A008833(n+1))`
-/

namespace A248663.P11914052276315068814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (n + 1) - A334871 (A008833 (n + 1)).toNat

end

end A248663.P11914052276315068814

namespace A248663

/-- `A334871(n+1)-A334871(A008833(n+1))` -/
def P11914052276315068814.Spec : Prop :=
  ∀ n, P11914052276315068814.a n = A248663 (n + 1)

end A248663

/-!
# A248664: Triangular array of coefficients of polynomials p(n,k) defined in Comments.

The programs for A248664, there is no canonical definition to state claims against.
-/

/-! ## A248664.P6767391308922541555

`A076112(n+1)*A248669(n+1)`
-/

namespace A248664.P6767391308922541555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A248669 (n + 1)

end

end A248664.P6767391308922541555

/-! ## A248664.P18428195278182805385

`A076112(n+1)*A248670(A038722(n+1))`
-/

namespace A248664.P18428195278182805385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A248670 (A038722 (n + 1)).toNat

end

end A248664.P18428195278182805385

/-! ## A248664.P8248506992395983912

`A248665(A038722(n+1))`
-/

namespace A248664.P8248506992395983912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248665 (A038722 (n + 1)).toNat

end

end A248664.P8248506992395983912

/-! ## A248664.P12163409624045033398

`A248665(A061579(n)+1)`
-/

namespace A248664.P12163409624045033398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248665 (A061579 n + 1).toNat

end

end A248664.P12163409624045033398

/-! ## A248664.P5099050329622829053

`A248665(A002024(n+1)²-n)`
-/

namespace A248664.P5099050329622829053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248665 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A248664.P5099050329622829053

/-! ## A248664.P1903233720840456634

`A248665(A002024(n+1)*A002024(n+1)-n)`
-/

namespace A248664.P1903233720840456634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248665 (A002024 (n + 1) * A002024 (n + 1) - (n : ℤ)).toNat

end

end A248664.P1903233720840456634

/-!
# A248665: Triangular array of coefficients of polynomials p(n,x) defined in Comments; these are the polynomials defined at A248664, but here the coefficients are written in the order of decreasing powers of x.

The programs for A248665, there is no canonical definition to state claims against.
-/

/-! ## A248665.P16354450147682380664

`A095888(n+1)*A248670(n+1)`
-/

namespace A248665.P16354450147682380664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) * A248670 (n + 1)

end

end A248665.P16354450147682380664

/-! ## A248665.P12481445091627241574

`A076112(A038722(n+1))*A248670(n+1)`
-/

namespace A248665.P12481445091627241574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (A038722 (n + 1)).toNat * A248670 (n + 1)

end

end A248665.P12481445091627241574

/-! ## A248665.P7813533818471588679

`A248664(A038722(n+1))`
-/

namespace A248665.P7813533818471588679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248664 (A038722 (n + 1)).toNat

end

end A248665.P7813533818471588679

/-! ## A248665.P14766884873168131056

`A248664(A061579(n)+1)`
-/

namespace A248665.P14766884873168131056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248664 (A061579 n + 1).toNat

end

end A248665.P14766884873168131056

/-! ## A248665.P7774185683676051157

`A248664(A114327(n)+1+n)`
-/

namespace A248665.P7774185683676051157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248664 (A114327 n + 1 + (n : ℤ)).toNat

end

end A248665.P7774185683676051157

/-! ## A248665.P13266775294316952757

`A248664(A093995(n+1)-n)`
-/

namespace A248665.P13266775294316952757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248664 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A248665.P13266775294316952757

/-! ## A248665.P155854663227693797

`A248664(A127739(n+1)-A002262(n))`
-/

namespace A248665.P155854663227693797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248664 (A127739 (n + 1) - A002262 n).toNat

end

end A248665.P155854663227693797

/-!
# A248666: Greatest common divisor of the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A248666, there is no canonical definition to state claims against.
-/

/-! ## A248666.P17972450069145366181

`gcd(32^(8/2)+4, n+1)`
-/

namespace A248666.P17972450069145366181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((32 : ℝ) ^ ((8 : ℚ) / 2 : ℝ) + 4)) (n + 1 : ℤ)

end

end A248666.P17972450069145366181

/-! ## A248666.P15333575682581691967

`gcd(1-n, ∑[n])*A124781(3*n)`
-/

namespace A248666.P15333575682581691967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (1 - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) * A124781 (3 * n)

end

end A248666.P15333575682581691967

/-! ## A248666.P17062269311341183119

`A000027(gcd(n+1, A176787(n+1)))`
-/

namespace A248666.P17062269311341183119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (n + 1 : ℤ) (A176787 (n + 1)))

end

end A248666.P17062269311341183119

/-! ## A248666.P2027723783005844966

`A028310(gcd(A093101(3*n+2), A131738(n)))`
-/

namespace A248666.P2027723783005844966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (A093101 (3 * n + 2)) (A131738 n))

end

end A248666.P2027723783005844966

/-! ## A248666.P3066953407850359616

`A028310(gcd(A028310(n+1), A093101(2*n+1)))`
-/

namespace A248666.P3066953407850359616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (A028310 (n + 1)) (A093101 (2 * n + 1)))

end

end A248666.P3066953407850359616

/-! ## A248666.P8395996020628824527

`A000027(gcd(n+1, A009940(n)))`
-/

namespace A248666.P8395996020628824527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (n + 1 : ℤ) (A009940 n))

end

end A248666.P8395996020628824527

/-! ## A248666.P16959950943561171278

`A028310(gcd(C(n², 2), A000522(n)))`
-/

namespace A248666.P16959950943561171278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (Nat.choose (n ^ 2) 2 : ℤ) (A000522 n))

end

end A248666.P16959950943561171278

/-! ## A248666.P7043543879454857498

`A000027(gcd(A000522(n), A002378(n)))`
-/

namespace A248666.P7043543879454857498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A000522 n) (A002378 n))

end

end A248666.P7043543879454857498

/-!
# A248667: Numbers k for which coefficients of the polynomial p(k,x) defined in Comments are relatively prime.

The programs for A248667, the canonical program `A248667.P10690883735429551010` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248667 has offset 1).

The definition of A248667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248667.P10690883735429551010

`record[A124782(n+2)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A248667

/-- `record[A124782(n+2)]` -/
def P10690883735429551010.Spec : Prop :=
  ∀ n, P10690883735429551010.a n = A248667 (n + 1)

theorem P10690883735429551010.correct : P10690883735429551010.Spec := by
  intro n
  simp only [A248667, Nat.add_sub_cancel]

end A248667

/-! ## A248667.P1863895620963988437

`record[A124782(n)^floor(atan(n))]`
-/

namespace A248667.P1863895620963988437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124782 n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248667.P1863895620963988437

namespace A248667

/-- `record[A124782(n)^floor(atan(n))]` -/
def P1863895620963988437.Spec : Prop :=
  ∀ n, P1863895620963988437.a n = (A248667 (n + 1) : ℚ)

end A248667

/-! ## A248667.P14054143529321022961

`record[A123901(2*n+1)^(n%2)]`
-/

namespace A248667.P14054143529321022961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123901 (2 * n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248667.P14054143529321022961

namespace A248667

/-- `record[A123901(2*n+1)^(n%2)]` -/
def P14054143529321022961.Spec : Prop :=
  ∀ n, P14054143529321022961.a n = A248667 (n + 1)

end A248667

/-! ## A248667.P783241798393856962

`record[A123901(3*n)/3]`
-/

namespace A248667.P783241798393856962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123901 (3 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248667.P783241798393856962

namespace A248667

/-- `record[A123901(3*n)/3]` -/
def P783241798393856962.Spec : Prop :=
  ∀ n, P783241798393856962.a n = (A248667 (n + 1) : ℚ)

end A248667

/-! ## A248667.P15337810907981574518

`record[A124782(3*n)/3]`
-/

namespace A248667.P15337810907981574518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124782 (3 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248667.P15337810907981574518

namespace A248667

/-- `record[A124782(3*n)/3]` -/
def P15337810907981574518.Spec : Prop :=
  ∀ n, P15337810907981574518.a n = (A248667 (n + 1) : ℚ)

end A248667

/-! ## A248667.P2933476937225299583

`eq[1, A124781(3*n)]+1`
-/

namespace A248667.P2933476937225299583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124781 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248667.P2933476937225299583

namespace A248667

/-- `eq[1, A124781(3*n)]+1` -/
def P2933476937225299583.Spec : Prop :=
  ∀ n, (P2933476937225299583.a n : ℤ) = A248667 (n + 1)

end A248667

/-! ## A248667.P13260804736792054518

`eq[1, A124781(abs(3*(1-n)))]`
-/

namespace A248667.P13260804736792054518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124781 |3 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248667.P13260804736792054518

namespace A248667

/-- `eq[1, A124781(abs(3*(1-n)))]` -/
def P13260804736792054518.Spec : Prop :=
  ∀ n, (P13260804736792054518.a n : ℤ) = A248667 (n + 1)

end A248667

/-! ## A248667.P10692262645191888519

`record[A006083(A123901(n))]`
-/

namespace A248667.P10692262645191888519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A123901 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248667.P10692262645191888519

namespace A248667

/-- `record[A006083(A123901(n))]` -/
def P10692262645191888519.Spec : Prop :=
  ∀ n, P10692262645191888519.a n = A248667 (n + 1)

end A248667

/-! ## A248667.P12025014094242075027

`record[A093803(A124782(n))]`
-/

namespace A248667.P12025014094242075027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A124782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248667.P12025014094242075027

namespace A248667

/-- `record[A093803(A124782(n))]` -/
def P12025014094242075027.Spec : Prop :=
  ∀ n, P12025014094242075027.a n = A248667 (n + 1)

end A248667

/-! ## A248667.P4823198810460862352

`record[A006083(record[A124782(n)])]`
-/

namespace A248667.P4823198810460862352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248667.P4823198810460862352

namespace A248667

/-- `record[A006083(record[A124782(n)])]` -/
def P4823198810460862352.Spec : Prop :=
  ∀ n, P4823198810460862352.a n = A248667 (n + 1)

end A248667

/-!
# A248668: Sum of the numbers in the n-th row of the array at A248664.

The programs for A248668, there is no canonical definition to state claims against.
-/

/-! ## A248668.P7812815620051230441

`A347667(A056220(n+1))`
-/

namespace A248668.P7812815620051230441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347667 (A056220 (n + 1)).toNat

end

end A248668.P7812815620051230441

/-! ## A248668.P14041857618935733509

`A038156(2*n+1)%A000407(n)+1`
-/

namespace A248668.P14041857618935733509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038156 (2 * n + 1)) (A000407 n) + 1

end

end A248668.P14041857618935733509

/-!
# A248669: Triangular array of coefficients of polynomials q(n,k) defined in Comments.

The programs for A248669, there is no canonical definition to state claims against.
-/

/-! ## A248669.P4092840579662322136

`A248670(A038722(n+1))`
-/

namespace A248669.P4092840579662322136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248670 (A038722 (n + 1)).toNat

end

end A248669.P4092840579662322136

/-! ## A248669.P17253643569737335301

`A248670(A061579(n)+1)`
-/

namespace A248669.P17253643569737335301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248670 (A061579 n + 1).toNat

end

end A248669.P17253643569737335301

/-! ## A248669.P17128537139320635956

`A248670(A093995(n+1)-n)`
-/

namespace A248669.P17128537139320635956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248670 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A248669.P17128537139320635956

/-! ## A248669.P843235896172477271

`A248670(A127739(n+1)-A002262(n))`
-/

namespace A248669.P843235896172477271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248670 (A127739 (n + 1) - A002262 n).toNat

end

end A248669.P843235896172477271

/-! ## A248669.P913812024661698130

`A248664(n+1)/A076112(n+1)`
-/

namespace A248669.P913812024661698130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248664 (n + 1) : ℚ) / (A076112 (n + 1) : ℚ)

end

end A248669.P913812024661698130

/-!
# A248670: Triangular array of coefficients of polynomials q defined in Comments; the coefficients are written in the order of decreasing powers of x.

The programs for A248670, there is no canonical definition to state claims against.
-/

/-! ## A248670.P11515864320738891251

`A248669(A038722(n+1))`
-/

namespace A248670.P11515864320738891251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248669 (A038722 (n + 1)).toNat

end

end A248670.P11515864320738891251

/-! ## A248670.P17128115355123860601

`A248669(A061579(n)+1)`
-/

namespace A248670.P17128115355123860601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248669 (A061579 n + 1).toNat

end

end A248670.P17128115355123860601

/-! ## A248670.P3033987991652182770

`A248669(A114327(n)+1+n)`
-/

namespace A248670.P3033987991652182770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248669 (A114327 n + 1 + (n : ℤ)).toNat

end

end A248670.P3033987991652182770

/-! ## A248670.P9103002277951639144

`A248669(A093995(n+1)-n)`
-/

namespace A248670.P9103002277951639144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248669 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A248670.P9103002277951639144

/-! ## A248670.P11106642262643737099

`A248669(A127739(n+1)-A002262(n))`
-/

namespace A248670.P11106642262643737099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248669 (A127739 (n + 1) - A002262 n).toNat

end

end A248670.P11106642262643737099

/-! ## A248670.P3575670677829268885

`A248665(n+1)/A095888(n+1)`
-/

namespace A248670.P3575670677829268885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248665 (n + 1) : ℚ) / (A095888 (n + 1) : ℚ)

end

end A248670.P3575670677829268885

/-!
# A248671: Number of subgroups of the dihedral group Dn that are intersections of some maximal subgroups.

The programs for A248671, the canonical program `A248671.P13482163374788990009` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248671 has offset 1).

The definition of A248671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248671.P13482163374788990009

`∑{d}[∏{p}[n+1, #], #+1]-1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248671

/-- `∑{d}[∏{p}[n+1, #], #+1]-1` -/
def P13482163374788990009.Spec : Prop :=
  ∀ n, P13482163374788990009.a n = A248671 (n + 1)

theorem P13482163374788990009.correct : P13482163374788990009.Spec := by
  intro n
  simp only [A248671, Nat.add_sub_cancel]

end A248671

/-! ## A248671.P1180725090149287497

`∏{p}[n+1, #+1]+∏{p}[n+1, 2%#²]-1`
-/

namespace A248671.P1180725090149287497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) + (((∏ p ∈ Nat.primeFactors (f2 n), 2 % p ^ 2 : ℕ) : ℤ) - 1)

end

end A248671.P1180725090149287497

namespace A248671

/-- `∏{p}[n+1, #+1]+∏{p}[n+1, 2%#²]-1` -/
def P1180725090149287497.Spec : Prop :=
  ∀ n, P1180725090149287497.a n = A248671 (n + 1)

end A248671

/-! ## A248671.P10196105887645989663

`A007503(∏{p}[n+1, #])-1`
-/

namespace A248671.P10196105887645989663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (∏ p ∈ Nat.primeFactors (f1 n), p) - 1

end

end A248671.P10196105887645989663

namespace A248671

/-- `A007503(∏{p}[n+1, #])-1` -/
def P10196105887645989663.Spec : Prop :=
  ∀ n, P10196105887645989663.a n = A248671 (n + 1)

end A248671

/-! ## A248671.P10371971762525015282

`∑{d}[∏{p}[n+1, #], A065475(#)]`
-/

namespace A248671.P10371971762525015282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065475 d

end

end A248671.P10371971762525015282

namespace A248671

/-- `∑{d}[∏{p}[n+1, #], A065475(#)]` -/
def P10371971762525015282.Spec : Prop :=
  ∀ n, P10371971762525015282.a n = A248671 (n + 1)

end A248671

/-! ## A248671.P2457370424744161443

`∑{d}[A007947(n+1), #+1]-1`
-/

namespace A248671.P2457370424744161443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1) : ℕ) : ℤ) - 1

end

end A248671.P2457370424744161443

namespace A248671

/-- `∑{d}[A007947(n+1), #+1]-1` -/
def P2457370424744161443.Spec : Prop :=
  ∀ n, P2457370424744161443.a n = A248671 (n + 1)

end A248671

/-! ## A248671.P8701622063385403801

`∑{d}[1-A066503(n+1)+n, #+1]-1`
-/

namespace A248671.P8701622063385403801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066503 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1) : ℕ) : ℤ) - 1

end

end A248671.P8701622063385403801

namespace A248671

/-- `∑{d}[1-A066503(n+1)+n, #+1]-1` -/
def P8701622063385403801.Spec : Prop :=
  ∀ n, P8701622063385403801.a n = A248671 (n + 1)

end A248671

/-! ## A248671.P6938619743035986484

`∑{d}[A073353(n+1)-(n+1), #+1]-1`
-/

namespace A248671.P6938619743035986484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1) : ℕ) : ℤ) - 1

end

end A248671.P6938619743035986484

namespace A248671

/-- `∑{d}[A073353(n+1)-(n+1), #+1]-1` -/
def P6938619743035986484.Spec : Prop :=
  ∀ n, P6938619743035986484.a n = A248671 (n + 1)

end A248671

/-! ## A248671.P13823700184056645099

`A032741(∏{p}[n+1, #])+∏{p}[n+1, #+1]`
-/

namespace A248671.P13823700184056645099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∏ p ∈ Nat.primeFactors (f1 n), p) + ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A248671.P13823700184056645099

namespace A248671

/-- `A032741(∏{p}[n+1, #])+∏{p}[n+1, #+1]` -/
def P13823700184056645099.Spec : Prop :=
  ∀ n, P13823700184056645099.a n = A248671 (n + 1)

end A248671

/-! ## A248671.P4431655726534442368

`A000225(∑{p}[n+1, gcd(n, #)])+∏{p}[n+1, #+1]`
-/

namespace A248671.P4431655726534442368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) + ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A248671.P4431655726534442368

namespace A248671

/-- `A000225(∑{p}[n+1, gcd(n, #)])+∏{p}[n+1, #+1]` -/
def P4431655726534442368.Spec : Prop :=
  ∀ n, P4431655726534442368.a n = A248671 (n + 1)

end A248671

/-! ## A248671.P11395196963529624967

`A000203(∏{p}[n+1, #])+∏{p}[n+1, 2%#²]-1`
-/

namespace A248671.P11395196963529624967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) + (((∏ p ∈ Nat.primeFactors (f2 n), 2 % p ^ 2 : ℕ) : ℤ) - 1)

end

end A248671.P11395196963529624967

namespace A248671

/-- `A000203(∏{p}[n+1, #])+∏{p}[n+1, 2%#²]-1` -/
def P11395196963529624967.Spec : Prop :=
  ∀ n, P11395196963529624967.a n = A248671 (n + 1)

end A248671

/-! ## A248671.P4957342042138544565

`A309307(n+1)+A048250(n+1)`
-/

namespace A248671.P4957342042138544565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1) + A048250 (n + 1)

end

end A248671.P4957342042138544565

namespace A248671

/-- `A309307(n+1)+A048250(n+1)` -/
def P4957342042138544565.Spec : Prop :=
  ∀ n, P4957342042138544565.a n = A248671 (n + 1)

end A248671

/-!
# A248686: Triangular array of multinomial coefficients: T(n,k) = n!/(n(1)!*n(2)!* ... *n(k)!), where n(i) = floor((n + i - 1)/k) for i = 1 .. k.

The programs for A248686, there is no canonical definition to state claims against.
-/

/-! ## A248686.P8405450823713398498

`A036038(∑[A008284(n+1)])`
-/

namespace A248686.P8405450823713398498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248686.P8405450823713398498

/-! ## A248686.P12031785720807610132

`A036038(∑[A026921(n+1)+A026920(n+1)])`
-/

namespace A248686.P12031785720807610132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026921 (n + 1) + A026920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248686.P12031785720807610132

/-! ## A248686.P6512384705179066985

`A036038(∑[A172467(n+1)/A002260(n+1)])`
-/

namespace A248686.P6512384705179066985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172467 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A248686.P6512384705179066985

/-! ## A248686.P967213800744794475

`∑[char[∑[n]]]!/A335109(n+1)`
-/

namespace A248686.P967213800744794475
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A335109 (n + 1) : ℚ)

end

end A248686.P967213800744794475

/-! ## A248686.P9284600058713122432

`Δ[A200748(n)]/A335109(n+1)`
-/

namespace A248686.P9284600058713122432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A335109 (n + 1) : ℚ)

end

end A248686.P9284600058713122432

/-! ## A248686.P16241238874798773317

`A130493(n+1)/A335109(n+1)`
-/

namespace A248686.P16241238874798773317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A335109 (n + 1) : ℚ)

end

end A248686.P16241238874798773317

/-! ## A248686.P14755497897845075982

`Δ[A051683(n+1)]/A335109(n+1)`
-/

namespace A248686.P14755497897845075982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A335109 (n + 1) : ℚ)

end

end A248686.P14755497897845075982

/-! ## A248686.P413003664700913165

`A028421(A127739(n+1))/A335109(n+1)`
-/

namespace A248686.P413003664700913165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028421 (A127739 (n + 1)).toNat : ℚ) / (A335109 (n + 1) : ℚ)

end

end A248686.P413003664700913165

/-!
# A248687: Sum of the numbers in row n of the triangular array at A248686.

The programs for A248687, there is no canonical definition to state claims against.
-/

/-! ## A248687.P6382857489946315396

`A273662(A305128(n)+A052572(n))`
-/

namespace A248687.P6382857489946315396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273662 (A305128 n + A052572 n).toNat

end

end A248687.P6382857489946315396

/-! ## A248687.P7535915419934084171

`or(A000720(A346845(n+1)), A177510(n))`
-/

namespace A248687.P7535915419934084171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000720 (A346845 (n + 1)).toNat) (A177510 n)

end

end A248687.P7535915419934084171

/-!
# A248692: Fully multiplicative with a(prime(i)) = 2^i; If n = Product_{k >= 1} (p_k)^(c_k) where p_k is k-th prime A000040(k) and c_k >= 0 then a(n) = Product_{k >= 1} 2^(k*c_k).

The programs for A248692, the canonical program `A248692.P1706809774081457484` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248692 has offset 1).

The definition of A248692 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248692.P8443528389735852411

`2^A056239(n+1)`
-/

namespace A248692.P8443528389735852411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056239 (n + 1) : ℤ)

end

end A248692.P8443528389735852411

namespace A248692

/-- `2^A056239(n+1)` -/
def P8443528389735852411.Spec : Prop :=
  ∀ n, P8443528389735852411.a n = (A248692 (n + 1) : ℚ)

end A248692

/-! ## A248692.P1706809774081457484

`A000079(A056239(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A248692

/-- `A000079(A056239(n+1))` -/
def P1706809774081457484.Spec : Prop :=
  ∀ n, P1706809774081457484.a n = A248692 (n + 1)

theorem P1706809774081457484.correct : P1706809774081457484.Spec := by
  intro n
  simp only [A248692, Nat.add_sub_cancel]

end A248692

/-! ## A248692.P10155078132786786804

`2^(n+1-A178503(n+1))`
-/

namespace A248692.P10155078132786786804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A178503 (n + 1) : ℤ)

end

end A248692.P10155078132786786804

namespace A248692

/-- `2^(n+1-A178503(n+1))` -/
def P10155078132786786804.Spec : Prop :=
  ∀ n, P10155078132786786804.a n = (A248692 (n + 1) : ℚ)

end A248692

/-! ## A248692.P8156222416093967207

`2^(A380345(n+1)-(n+1))`
-/

namespace A248692.P8156222416093967207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A380345 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A248692.P8156222416093967207

namespace A248692

/-- `2^(A380345(n+1)-(n+1))` -/
def P8156222416093967207.Spec : Prop :=
  ∀ n, P8156222416093967207.a n = (A248692 (n + 1) : ℚ)

end A248692

/-! ## A248692.P12820332038651840477

`A011782(A056239(n+1)+1)`
-/

namespace A248692.P12820332038651840477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A056239 (n + 1) + 1).toNat

end

end A248692.P12820332038651840477

namespace A248692

/-- `A011782(A056239(n+1)+1)` -/
def P12820332038651840477.Spec : Prop :=
  ∀ n, P12820332038651840477.a n = A248692 (n + 1)

end A248692

/-! ## A248692.P7680243637719085118

`A131577(A056239(n+1)+1)`
-/

namespace A248692.P7680243637719085118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A056239 (n + 1) + 1).toNat

end

end A248692.P7680243637719085118

namespace A248692

/-- `A131577(A056239(n+1)+1)` -/
def P7680243637719085118.Spec : Prop :=
  ∀ n, P7680243637719085118.a n = A248692 (n + 1)

end A248692

/-! ## A248692.P1432779467173012133

`A016116(2*A056239(n+1))`
-/

namespace A248692.P1432779467173012133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A056239 (n + 1)).toNat

end

end A248692.P1432779467173012133

namespace A248692

/-- `A016116(2*A056239(n+1))` -/
def P1432779467173012133.Spec : Prop :=
  ∀ n, P1432779467173012133.a n = A248692 (n + 1)

end A248692

/-! ## A248692.P15802813522473472736

`A077958(3*A056239(n+1))`
-/

namespace A248692.P15802813522473472736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 (3 * A056239 (n + 1)).toNat

end

end A248692.P15802813522473472736

namespace A248692

/-- `A077958(3*A056239(n+1))` -/
def P15802813522473472736.Spec : Prop :=
  ∀ n, P15802813522473472736.a n = A248692 (n + 1)

end A248692

/-! ## A248692.P13493572180333863259

`A336125(A008578(A056239(2*n+n+3)))`
-/

namespace A248692.P13493572180333863259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336125 (A008578 (A056239 (2 * n + (n + 3))).toNat).toNat

end

end A248692.P13493572180333863259

namespace A248692

/-- `A336125(A008578(A056239(2*n+n+3)))` -/
def P13493572180333863259.Spec : Prop :=
  ∀ n, P13493572180333863259.a n = A248692 (n + 1)

end A248692

/-! ## A248692.P9210679961227673017

`A016116(A056239(n+1)+A056239(n+1)+1)`
-/

namespace A248692.P9210679961227673017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A056239 (n + 1) + (A056239 (n + 1) + 1)).toNat

end

end A248692.P9210679961227673017

namespace A248692

/-- `A016116(A056239(n+1)+A056239(n+1)+1)` -/
def P9210679961227673017.Spec : Prop :=
  ∀ n, P9210679961227673017.a n = A248692 (n + 1)

end A248692

/-! ## A248692.P6231760592234130731

`A052509(2*(A056239(n+1)+1)²)`
-/

namespace A248692.P6231760592234130731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (2 * (A056239 (n + 1) + 1) ^ 2).toNat

end

end A248692.P6231760592234130731

namespace A248692

/-- `A052509(2*(A056239(n+1)+1)²)` -/
def P6231760592234130731.Spec : Prop :=
  ∀ n, P6231760592234130731.a n = A248692 (n + 1)

end A248692

/-! ## A248692.P16328681844030051091

`A130321(2*A316436(2*(n+1))²)`
-/

namespace A248692.P16328681844030051091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (2 * A316436 (2 * (n + 1)) ^ 2).toNat

end

end A248692.P16328681844030051091

namespace A248692

/-- `A130321(2*A316436(2*(n+1))²)` -/
def P16328681844030051091.Spec : Prop :=
  ∀ n, P16328681844030051091.a n = A248692 (n + 1)

end A248692

/-! ## A248692.P1538016179780538935

`A007283(n)/A007283(n-A056239(n+1))`
-/

namespace A248692.P1538016179780538935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 n : ℚ) / (A007283 ((n : ℤ) - A056239 (n + 1)).toNat : ℚ)

end

end A248692.P1538016179780538935

namespace A248692

/-- `A007283(n)/A007283(n-A056239(n+1))` -/
def P1538016179780538935.Spec : Prop :=
  ∀ n, P1538016179780538935.a n = (A248692 (n + 1) : ℚ)

end A248692

/-! ## A248692.P17245080766187059801

`A007283(A056239(n+1)+n)/A007283(n)`
-/

namespace A248692.P17245080766187059801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 (A056239 (n + 1) + (n : ℤ)).toNat : ℚ) / (A007283 n : ℚ)

end

end A248692.P17245080766187059801

namespace A248692

/-- `A007283(A056239(n+1)+n)/A007283(n)` -/
def P17245080766187059801.Spec : Prop :=
  ∀ n, P17245080766187059801.a n = (A248692 (n + 1) : ℚ)

end A248692

/-! ## A248692.P14666088652978280654

`2^A346698((n+1)²)`
-/

namespace A248692.P14666088652978280654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A346698 ((n + 1) ^ 2) : ℤ)

end

end A248692.P14666088652978280654

namespace A248692

/-- `2^A346698((n+1)²)` -/
def P14666088652978280654.Spec : Prop :=
  ∀ n, P14666088652978280654.a n = (A248692 (n + 1) : ℚ)

end A248692

/-! ## A248692.P7984063375187045161

`A000079(A346698((n+1)²))`
-/

namespace A248692.P7984063375187045161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A346698 ((n + 1) ^ 2)).toNat

end

end A248692.P7984063375187045161

namespace A248692

/-- `A000079(A346698((n+1)²))` -/
def P7984063375187045161.Spec : Prop :=
  ∀ n, P7984063375187045161.a n = A248692 (n + 1)

end A248692

/-! ## A248692.P17042714193344528726

`2^A249338(A249339(n+1)+1)`
-/

namespace A248692.P17042714193344528726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A249338 (A249339 (n + 1) + 1).toNat : ℤ)

end

end A248692.P17042714193344528726

namespace A248692

/-- `2^A249338(A249339(n+1)+1)` -/
def P17042714193344528726.Spec : Prop :=
  ∀ n, P17042714193344528726.a n = (A248692 (n + 1) : ℚ)

end A248692

/-! ## A248692.P15926145110004014198

`2^A346700((n+1)²)`
-/

namespace A248692.P15926145110004014198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A346700 ((n + 1) ^ 2) : ℤ)

end

end A248692.P15926145110004014198

namespace A248692

/-- `2^A346700((n+1)²)` -/
def P15926145110004014198.Spec : Prop :=
  ∀ n, P15926145110004014198.a n = (A248692 (n + 1) : ℚ)

end A248692

/-! ## A248692.P14399613076382179556

`A000079(A346700((n+1)²))`
-/

namespace A248692.P14399613076382179556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A346700 ((n + 1) ^ 2)).toNat

end

end A248692.P14399613076382179556

namespace A248692

/-- `A000079(A346700((n+1)²))` -/
def P14399613076382179556.Spec : Prop :=
  ∀ n, P14399613076382179556.a n = A248692 (n + 1)

end A248692

/-! ## A248692.P2787376844630373116

`A016116(A056239((n+1)²))`
-/

namespace A248692.P2787376844630373116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A056239 ((n + 1) ^ 2)).toNat

end

end A248692.P2787376844630373116

namespace A248692

/-- `A016116(A056239((n+1)²))` -/
def P2787376844630373116.Spec : Prop :=
  ∀ n, P2787376844630373116.a n = A248692 (n + 1)

end A248692

/-!
# A248693: Numbers k such that the product of factorials of proper divisors of k does not divide k!.

The programs for A248693, there is no canonical definition to state claims against.
-/

/-! ## A248693.P18445313277388720121

`∪[A075422(n+1), A091192(n+1)]`
-/

namespace A248693.P18445313277388720121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248693.P18445313277388720121

/-! ## A248693.P12066586026860104572

`lt[A056538(n+1), A300048(A211111(n))]`
-/

namespace A248693.P12066586026860104572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300048 (A211111 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248693.P12066586026860104572

/-! ## A248693.P8234779704547492290

`lt[1, A195310(A033630(n))]`
-/

namespace A248693.P8234779704547492290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195310 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A248693.P8234779704547492290

/-! ## A248693.P9371452933305716645

`lt[A238404(n+1)+2, A033630(n)]`
-/

namespace A248693.P9371452933305716645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238404 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248693.P9371452933305716645

/-! ## A248693.P6718344468142910334

`lt[A007978(A171250(n+1)), A033630(n)]`
-/

namespace A248693.P6718344468142910334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A171250 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248693.P6718344468142910334

/-!
# A248694: Odd numbers k such that the product of factorials of proper divisors of k does not divide k!

The programs for A248694, there is no canonical definition to state claims against.
-/

/-! ## A248694.P6769980928102939107

`A005231(lt[A138770(n+2), A325768(3*(n+1))])`
-/

namespace A248694.P6769980928102939107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138770 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325768 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A248694.P6769980928102939107

/-! ## A248694.P12159942686657102673

`record[A005231(A325181(n)+2)]`
-/

namespace A248694.P12159942686657102673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (A325181 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248694.P12159942686657102673

/-! ## A248694.P15537257390361196948

`record[A005231(A279048(3*n+4)+2)]`
-/

namespace A248694.P15537257390361196948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (A279048 (3 * n + 4) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248694.P15537257390361196948

/-! ## A248694.P15792934030391639313

`record[A005231(A274821(p?[2*n+1]))]`
-/

namespace A248694.P15792934030391639313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (A274821 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248694.P15792934030391639313

/-!
# A248697: Primes of the form k+(k+3)^2 where k is a nonnegative integer.

The programs for A248697, the canonical program `A248697.P124310057229668485` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248697 has offset 1).

The definition of A248697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248697.P124310057229668485

`p?[(n+3)²+n]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248697

/-- `p?[(n+3)²+n]` -/
def P124310057229668485.Spec : Prop :=
  ∀ n, (P124310057229668485.a n : ℤ) = A248697 (n + 1)

theorem P124310057229668485.correct : P124310057229668485.Spec := by
  intro n
  simp only [A248697, Nat.add_sub_cancel]

end A248697

/-! ## A248697.P6882995346183360026

`∏{p}[p?[9*(n²-n)-1], #]`
-/

namespace A248697.P6882995346183360026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((n ^ 2 : ℤ) - (n : ℤ)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A248697.P6882995346183360026

namespace A248697

/-- `∏{p}[p?[9*(n²-n)-1], #]` -/
def P6882995346183360026.Spec : Prop :=
  ∀ n, (P6882995346183360026.a n : ℤ) = A248697 (n + 1)

end A248697

/-! ## A248697.P18017699922048010031

`or(1, p?[(n+2)*(n+5)-1])`
-/

namespace A248697.P18017699922048010031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 5) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A248697.P18017699922048010031

namespace A248697

/-- `or(1, p?[(n+2)*(n+5)-1])` -/
def P18017699922048010031.Spec : Prop :=
  ∀ n, P18017699922048010031.a n = A248697 (n + 1)

end A248697

/-! ## A248697.P1279468275474191504

`p?[(n+1)*(n+6)+3]-1-log2(1/2)`
-/

namespace A248697.P1279468275474191504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 6) + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

end

end A248697.P1279468275474191504

namespace A248697

/-- `p?[(n+1)*(n+6)+3]-1-log2(1/2)` -/
def P1279468275474191504.Spec : Prop :=
  ∀ n, P1279468275474191504.a n = (A248697 (n + 1) : ℝ)

end A248697

/-! ## A248697.P14077255548046117106

`∑{p}[p?[A014209(n+2)], #]`
-/

namespace A248697.P14077255548046117106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A248697.P14077255548046117106

namespace A248697

/-- `∑{p}[p?[A014209(n+2)], #]` -/
def P14077255548046117106.Spec : Prop :=
  ∀ n, (P14077255548046117106.a n : ℤ) = A248697 (n + 1)

end A248697

/-! ## A248697.P4330455566509879374

`∩[A061242(n+1), A014209(n)]`
-/

namespace A248697.P4330455566509879374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248697.P4330455566509879374

namespace A248697

/-- `∩[A061242(n+1), A014209(n)]` -/
def P4330455566509879374.Spec : Prop :=
  ∀ n, (P4330455566509879374.a n : ℤ) = A248697 (n + 1)

end A248697

/-! ## A248697.P3487353821340359973

`∩[A004116(n+1), A061242(n+1)]`
-/

namespace A248697.P3487353821340359973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248697.P3487353821340359973

namespace A248697

/-- `∩[A004116(n+1), A061242(n+1)]` -/
def P3487353821340359973.Spec : Prop :=
  ∀ n, (P3487353821340359973.a n : ℤ) = A248697 (n + 1)

end A248697

/-! ## A248697.P10954901056883405875

`∩[A061242(n+1), A184112(n+1)]`
-/

namespace A248697.P10954901056883405875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248697.P10954901056883405875

namespace A248697

/-- `∩[A061242(n+1), A184112(n+1)]` -/
def P10954901056883405875.Spec : Prop :=
  ∀ n, (P10954901056883405875.a n : ℤ) = A248697 (n + 1)

end A248697

/-! ## A248697.P5490635478540726353

`A000027(p?[A001504(n)-3])`
-/

namespace A248697.P5490635478540726353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A248697.P5490635478540726353

namespace A248697

/-- `A000027(p?[A001504(n)-3])` -/
def P5490635478540726353.Spec : Prop :=
  ∀ n, P5490635478540726353.a n = A248697 (n + 1)

end A248697

/-! ## A248697.P10322815996784567820

`∩[A129805(n+1), A014209(n)]`
-/

namespace A248697.P10322815996784567820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248697.P10322815996784567820

namespace A248697

/-- `∩[A129805(n+1), A014209(n)]` -/
def P10322815996784567820.Spec : Prop :=
  ∀ n, (P10322815996784567820.a n : ℤ) = A248697 (n + 1)

end A248697

/-!
# A248698: Floor of sums of the non-integer fourth roots of n, as partitioned by the integer roots: floor(Sum_{j=n^4+1..(n+1)^4-1} j^(1/4)).

The programs for A248698, the canonical program `A248698.P17768782674993239299` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248698 has offset 0).

The definition of A248698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248698.P17768782674993239299

`3*n+8*n²+8*n^3+4*n^4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248698

/-- `3*n+8*n²+8*n^3+4*n^4` -/
def P17768782674993239299.Spec : Prop :=
  ∀ n, (P17768782674993239299.a n : ℤ) = A248698 n

theorem P17768782674993239299.correct : P17768782674993239299.Spec := by
  intro n
  simp only [A248698]

end A248698

/-! ## A248698.P13027068145863238926

`floor(∑[a(n-1)+4]²-(n+1))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A248698.P13027068145863238926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A248698.P13027068145863238926

namespace A248698

/-- `floor(∑[a(n-1)+4]²-(n+1))` -/
def P13027068145863238926.Spec : Prop :=
  ∀ n, P13027068145863238926.a n = A248698 n

end A248698

/-! ## A248698.P5930549169725609350

`∑[A007900(n)-1]`
-/

namespace A248698.P5930549169725609350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007900 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248698.P5930549169725609350

namespace A248698

/-- `∑[A007900(n)-1]` -/
def P5930549169725609350.Spec : Prop :=
  ∀ n, P5930549169725609350.a n = A248698 n

end A248698

/-! ## A248698.P17593318571533710137

`abs(n-A288486(n))`
-/

namespace A248698.P17593318571533710137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A288486 n|

end

end A248698.P17593318571533710137

namespace A248698

/-- `abs(n-A288486(n))` -/
def P17593318571533710137.Spec : Prop :=
  ∀ n, P17593318571533710137.a n = A248698 n

end A248698

/-! ## A248698.P8727856115361654607

`abs(A001844(n)²-(n+1))`
-/

namespace A248698.P8727856115361654607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001844 n ^ 2 - (n + 1 : ℤ)|

end

end A248698.P8727856115361654607

namespace A248698

/-- `abs(A001844(n)²-(n+1))` -/
def P8727856115361654607.Spec : Prop :=
  ∀ n, P8727856115361654607.a n = A248698 n

end A248698

/-! ## A248698.P3159995912765328959

`abs((A046092(n)+1)²-(n+1))`
-/

namespace A248698.P3159995912765328959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A046092 n + 1) ^ 2 - (n + 1 : ℤ)|

end

end A248698.P3159995912765328959

namespace A248698

/-- `abs((A046092(n)+1)²-(n+1))` -/
def P3159995912765328959.Spec : Prop :=
  ∀ n, P3159995912765328959.a n = A248698 n

end A248698

/-! ## A248698.P4614590002260561885

`A352758(n+1)%A007204(n)`
-/

namespace A248698.P4614590002260561885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352758 (n + 1)) (A007204 n)

end

end A248698.P4614590002260561885

namespace A248698

/-- `A352758(n+1)%A007204(n)` -/
def P4614590002260561885.Spec : Prop :=
  ∀ n, P4614590002260561885.a n = A248698 n

end A248698

/-! ## A248698.P400417117282511720

`A365206(n+1)%A374489(n)`
-/

namespace A248698.P400417117282511720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365206 (n + 1)) (A374489 n)

end

end A248698.P400417117282511720

namespace A248698

/-- `A365206(n+1)%A374489(n)` -/
def P400417117282511720.Spec : Prop :=
  ∀ n, P400417117282511720.a n = A248698 n

end A248698

/-! ## A248698.P3495693988298174755

`n*(A033430(n+1)-(2*n+1)²)`
-/

namespace A248698.P3495693988298174755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A033430 (n + 1) - ((2 * n + 1) ^ 2 : ℤ))

end

end A248698.P3495693988298174755

namespace A248698

/-- `n*(A033430(n+1)-(2*n+1)²)` -/
def P3495693988298174755.Spec : Prop :=
  ∀ n, P3495693988298174755.a n = A248698 n

theorem P3495693988298174755.correct : P3495693988298174755.Spec := by
  intro n
  simp only [A248698, Nat.add_sub_cancel, A248698.P3495693988298174755.a, A248698.P17768782674993239299.a, A033430, A033430.P5214425656551841819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248698

/-! ## A248698.P2166343441488875468

`n*(A064808(2*n+1)+n)`
-/

namespace A248698.P2166343441488875468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A064808 (2 * n + 1) + (n : ℤ))

end

end A248698.P2166343441488875468

namespace A248698

/-- `n*(A064808(2*n+1)+n)` -/
def P2166343441488875468.Spec : Prop :=
  ∀ n, P2166343441488875468.a n = A248698 n

end A248698

/-! ## A248698.P10411252179154215216

`n*(A002411(2*n+1)+3*n+2)`
-/

namespace A248698.P10411252179154215216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002411 (2 * n + 1) + (3 * n + 2 : ℤ))

end

end A248698.P10411252179154215216

namespace A248698

/-- `n*(A002411(2*n+1)+3*n+2)` -/
def P10411252179154215216.Spec : Prop :=
  ∀ n, P10411252179154215216.a n = A248698 n

end A248698

/-! ## A248698.P4770470267785140874

`n*(A006003(2*n+1)+A001105(n+1))`
-/

namespace A248698.P4770470267785140874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006003 (2 * n + 1) + A001105 (n + 1))

end

end A248698.P4770470267785140874

namespace A248698

/-- `n*(A006003(2*n+1)+A001105(n+1))` -/
def P4770470267785140874.Spec : Prop :=
  ∀ n, P4770470267785140874.a n = A248698 n

end A248698

/-!
# A248699: Expansion of (2 + x + 5*x^2 + 3*x^3 + 3*x^4 + x^5) / ((1 - x^3) * (1 - x^4)) in powers of x.

The programs for A248699, the canonical program `A248699.P11765436438143887929` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248699 has offset 0).

The definition of A248699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+x+5x^2+3x^3+3x^4+x^5)/(1-x^3-x^4+x^7))` (program `A248699.P11765436438143887929`, by `A248699.P11765436438143887929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248699.P11765436438143887929

`ogf((2+x+5x^2+3x^3+3x^4+x^5)/(1-x^3-x^4+x^7))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248699

/-- `ogf((2+x+5x^2+3x^3+3x^4+x^5)/(1-x^3-x^4+x^7))` -/
def P11765436438143887929.Spec : Prop :=
  ∀ n, P11765436438143887929.a n = A248699 n

theorem P11765436438143887929.correct : P11765436438143887929.Spec := by
  intro n
  simp only [A248699]

end A248699

/-! ## A248699.P5540594770728988350

`a(n-3)+a(n-4)-a(n-7)` with `a(0)=2, a(1)=1, a(2)=5, a(3)=5, a(4)=6, a(5)=7, a(6)=10`
-/

namespace A248699.P5540594770728988350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5, 5, 6, 7, 10] fun n a =>
  a (n - 3) + a (n - 4) - a (n - 7)

end

end A248699.P5540594770728988350

namespace A248699

/-- `a(n-3)+a(n-4)-a(n-7)` -/
def P5540594770728988350.Spec : Prop :=
  ∀ n, P5540594770728988350.a n = A248699 n

end A248699

/-! ## A248699.P2331919952654535095

`A008619(A008619(n))+A115360(n)+n`
-/

namespace A248699.P2331919952654535095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 n).toNat + (A115360 n + (n : ℤ))

end

end A248699.P2331919952654535095

namespace A248699

/-- `A008619(A008619(n))+A115360(n)+n` -/
def P2331919952654535095.Spec : Prop :=
  ∀ n, P2331919952654535095.a n = A248699 n

end A248699

/-! ## A248699.P7208620168096955644

`A061800(n)+A004526(A168200(n+1)-A061800(n))`
-/

namespace A248699.P7208620168096955644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n + A004526 (A168200 (n + 1) - A061800 n).toNat

end

end A248699.P7208620168096955644

namespace A248699

/-- `A061800(n)+A004526(A168200(n+1)-A061800(n))` -/
def P7208620168096955644.Spec : Prop :=
  ∀ n, P7208620168096955644.a n = A248699 n

end A248699

/-! ## A248699.P17629947848456824737

`A267453(n+1)-(n²+n)%3`
-/

namespace A248699.P17629947848456824737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267453 (n + 1) - (((n ^ 2 + n) % 3 : ℕ) : ℤ)

end

end A248699.P17629947848456824737

namespace A248699

/-- `A267453(n+1)-(n²+n)%3` -/
def P17629947848456824737.Spec : Prop :=
  ∀ n, P17629947848456824737.a n = A248699 n

end A248699

/-! ## A248699.P15195883613342183581

`A032769(n+2)+Δ[A008615(n+1)]`
-/

namespace A248699.P15195883613342183581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032769 (n + 2) + (f1 (n + 1) - f1 n)

end

end A248699.P15195883613342183581

namespace A248699

/-- `A032769(n+2)+Δ[A008615(n+1)]` -/
def P15195883613342183581.Spec : Prop :=
  ∀ n, P15195883613342183581.a n = A248699 n

end A248699

/-! ## A248699.P3189741909127406154

`Δ[A130519(n+1)+A008615(n+1)]+n+1`
-/

namespace A248699.P3189741909127406154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 1) + A008615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A248699.P3189741909127406154

namespace A248699

/-- `Δ[A130519(n+1)+A008615(n+1)]+n+1` -/
def P3189741909127406154.Spec : Prop :=
  ∀ n, P3189741909127406154.a n = A248699 n

end A248699

/-! ## A248699.P12591574609258961147

`A115360(n)+A002265(n+2)+n+1`
-/

namespace A248699.P12591574609258961147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n + (A002265 (n + 2) + (n + 1 : ℤ))

end

end A248699.P12591574609258961147

namespace A248699

/-- `A115360(n)+A002265(n+2)+n+1` -/
def P12591574609258961147.Spec : Prop :=
  ∀ n, P12591574609258961147.a n = A248699 n

end A248699

/-! ## A248699.P14674662261580064786

`A004525(2*n+1)+A008679(2*n)+A008679(n+1)`
-/

namespace A248699.P14674662261580064786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1) + (A008679 (2 * n) + A008679 (n + 1))

end

end A248699.P14674662261580064786

namespace A248699

/-- `A004525(2*n+1)+A008679(2*n)+A008679(n+1)` -/
def P14674662261580064786.Spec : Prop :=
  ∀ n, P14674662261580064786.a n = A248699 n

end A248699

/-! ## A248699.P6862154125918738937

`A004526(A168200(n+1)+A061800(n))`
-/

namespace A248699.P6862154125918738937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A168200 (n + 1) + A061800 n).toNat

end

end A248699.P6862154125918738937

namespace A248699

/-- `A004526(A168200(n+1)+A061800(n))` -/
def P6862154125918738937.Spec : Prop :=
  ∀ n, P6862154125918738937.a n = A248699 n

end A248699

/-! ## A248699.P3633562967670793701

`A004526(A166598(n+1))-Δ[A002264(n+1)]`
-/

namespace A248699.P3633562967670793701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A166598 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A248699.P3633562967670793701

namespace A248699

/-- `A004526(A166598(n+1))-Δ[A002264(n+1)]` -/
def P3633562967670793701.Spec : Prop :=
  ∀ n, P3633562967670793701.a n = A248699 n

end A248699

/-! ## A248699.P16307712251426681955

`A103221(∑[A040033(n)-1])+A103221(n)`
-/

namespace A248699.P16307712251426681955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040033 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A103221 n

end

end A248699.P16307712251426681955

namespace A248699

/-- `A103221(∑[A040033(n)-1])+A103221(n)` -/
def P16307712251426681955.Spec : Prop :=
  ∀ n, P16307712251426681955.a n = A248699 n

end A248699

