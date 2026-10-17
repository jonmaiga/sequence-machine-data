import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A145201: Triangle read by rows: T(n,k) = S(n,k) mod n, where S(n,k) = Stirling numbers of the first kind.

The programs for A145201, there is no canonical definition to state claims against.
-/

/-! ## A145201.P13351094131064196569

`A130534(n)%∑[char[∑[n]]]`
-/

namespace A145201.P13351094131064196569
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130534 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145201.P13351094131064196569

/-! ## A145201.P6707026421907363923

`abs(A008275(n+1)%round(sqrt(2*(n+1))))`
-/

namespace A145201.P6707026421907363923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A008275 (n + 1)) (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)))|

end

end A145201.P6707026421907363923

/-! ## A145201.P12670070287783783091

`abs(A008275(n+1))%(A003056(n)+1)`
-/

namespace A145201.P12670070287783783091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A008275 (n + 1)| (A003056 n + 1)

end

end A145201.P12670070287783783091

/-! ## A145201.P17974652227755025785

`A392471(n+1)%A002024(n+1)`
-/

namespace A145201.P17974652227755025785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392471 (n + 1)) (A002024 (n + 1))

end

end A145201.P17974652227755025785

/-! ## A145201.P15305734116577140641

`A075525(n+1)%∑[char[∑[n]]]`
-/

namespace A145201.P15305734116577140641
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075525 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145201.P15305734116577140641

/-! ## A145201.P12925848541396869866

`A008298(n+1)%∑[char[∑[n]]]`
-/

namespace A145201.P12925848541396869866
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008298 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145201.P12925848541396869866

/-! ## A145201.P7227229585167122815

`A039692(n+1)%∑[char[∑[n]]]`
-/

namespace A145201.P7227229585167122815
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039692 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145201.P7227229585167122815

/-! ## A145201.P15304253313273363048

`A228534(n+1)%∑[char[∑[n]]]`
-/

namespace A145201.P15304253313273363048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228534 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145201.P15304253313273363048

/-! ## A145201.P12259262577470732027

`A079638(n+1)%A002024(n+1)`
-/

namespace A145201.P12259262577470732027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079638 (n + 1)) (A002024 (n + 1))

end

end A145201.P12259262577470732027

/-! ## A145201.P5055883558327018065

`A060281(n+1)%∑[char[∑[n]]]`
-/

namespace A145201.P5055883558327018065
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060281 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145201.P5055883558327018065

/-! ## A145201.P11638168843109889869

`A220883(n+1)%A002024(n+1)`
-/

namespace A145201.P11638168843109889869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220883 (n + 1)) (A002024 (n + 1))

end

end A145201.P11638168843109889869

/-! ## A145201.P15015057938775102572

`A038455(n+1)%∑[char[∑[n]]]`
-/

namespace A145201.P15015057938775102572
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038455 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145201.P15015057938775102572

/-! ## A145201.P10485672138116173813

`A364708(n+1)%A002024(n+1)`
-/

namespace A145201.P10485672138116173813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364708 (n + 1)) (A002024 (n + 1))

end

end A145201.P10485672138116173813

/-! ## A145201.P13286627647958977830

`A027477(n+1)%A002024(n+1)`
-/

namespace A145201.P13286627647958977830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027477 (n + 1)) (A002024 (n + 1))

end

end A145201.P13286627647958977830

/-! ## A145201.P3765583978056239160

`A027478(n+1)%A002024(n+1)`
-/

namespace A145201.P3765583978056239160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027478 (n + 1)) (A002024 (n + 1))

end

end A145201.P3765583978056239160

/-! ## A145201.P2323873950684126255

`A027479(n+1)%A002024(n+1)`
-/

namespace A145201.P2323873950684126255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027479 (n + 1)) (A002024 (n + 1))

end

end A145201.P2323873950684126255

/-!
# A145202: Primes of form 4*n^2 + 4*n + 653.

The programs for A145202, there is no canonical definition to state claims against.
-/

/-! ## A145202.P17296548266768564730

`A145125(n+2)`
-/

namespace A145202.P17296548266768564730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145125 (n + 2)

end

end A145202.P17296548266768564730

/-! ## A145202.P6483233172604648784

`record[A145125(A324347(n))]`
-/

namespace A145202.P6483233172604648784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145125 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145202.P6483233172604648784

/-! ## A145202.P452674254701085161

`record[A145125(A331742(n))]`
-/

namespace A145202.P452674254701085161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145125 (A331742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145202.P452674254701085161

/-! ## A145202.P2892472191406480618

`record[A145125(A052938(n))]`
-/

namespace A145202.P2892472191406480618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145125 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145202.P2892472191406480618

/-! ## A145202.P6442782548007571656

`record[A145125(abs(A157128(n)))]`
-/

namespace A145202.P6442782548007571656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145125 |A157128 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145202.P6442782548007571656

/-! ## A145202.P14878185123737942599

`record[A145125(A141256(n))]`
-/

namespace A145202.P14878185123737942599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145125 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145202.P14878185123737942599

/-! ## A145202.P2780034522458974068

`record[A145125(A286478(n))]`
-/

namespace A145202.P2780034522458974068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145125 (A286478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145202.P2780034522458974068

/-! ## A145202.P9402887364324076047

`record[A145125(A112382(n))]`
-/

namespace A145202.P9402887364324076047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145125 (A112382 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145202.P9402887364324076047

/-!
# A145203: a(n) = pi(A002407(n)).

The programs for A145203, there is no canonical definition to state claims against.
-/

/-! ## A145203.P15872781827820428243

`A000720(p?[Δ[n^3]])`
-/

namespace A145203.P15872781827820428243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145203.P15872781827820428243

/-! ## A145203.P9210642504647510964

`A061395(p?[3*(n²+n)+1])`
-/

namespace A145203.P9210642504647510964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n ^ 2 + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A145203.P9210642504647510964

/-! ## A145203.P17133460532031597462

`A000720(or(1, p?[6*C(n+1, 2)+1]))`
-/

namespace A145203.P17133460532031597462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A145203.P17133460532031597462

/-! ## A145203.P13100974142815802196

`A061395(or(1, p?[6*C(n+1, 2)+1]))`
-/

namespace A145203.P13100974142815802196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A145203.P13100974142815802196

/-! ## A145203.P8083369272982208219

`A000720(p?[(n+1)*3*n+1]+1)`
-/

namespace A145203.P8083369272982208219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A145203.P8083369272982208219

/-! ## A145203.P14057529330276497972

`A061395(or(1, p?[(n+1)*3*n+1]))`
-/

namespace A145203.P14057529330276497972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A145203.P14057529330276497972

/-! ## A145203.P2842440156965719940

`A061395(∑{p}[p?[n*3*(n+1)+1], #])`
-/

namespace A145203.P2842440156965719940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * (n + 1)) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A145203.P2842440156965719940

/-! ## A145203.P4545553521021808213

`A061395(∏{p}[p?[(n-1)*3*n+1], #])`
-/

namespace A145203.P4545553521021808213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (3 * n : ℤ) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A145203.P4545553521021808213

/-! ## A145203.P10678018063235857139

`A000720(A002407(n+1))`
-/

namespace A145203.P10678018063235857139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002407 (n + 1)).toNat

end

end A145203.P10678018063235857139

/-! ## A145203.P7071977135499419703

`A000720(A334520(n+2))`
-/

namespace A145203.P7071977135499419703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A334520 (n + 2)).toNat

end

end A145203.P7071977135499419703

/-!
# A145204: Numbers whose representation in base 3 (A007089) ends in an odd number of zeros.

The programs for A145204, the canonical program `A145204.P17766825992425707014` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145204 has offset 1).

The definition of A145204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145204.P8152726024297838459

`comp[(n+1)*3^val(n+1, 3)]`
-/

namespace A145204.P8152726024297838459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 3 ^ SequenceMachineLib.valuation (n + 1) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145204.P8152726024297838459

namespace A145204

/-- `comp[(n+1)*3^val(n+1, 3)]` -/
def P8152726024297838459.Spec : Prop :=
  ∀ n, (P8152726024297838459.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P17766825992425707014

`record[(n+1)*val(n+1, 3)%2]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A145204

/-- `record[(n+1)*val(n+1, 3)%2]` -/
def P17766825992425707014.Spec : Prop :=
  ∀ n, (P17766825992425707014.a n : ℤ) = A145204 (n + 1)

theorem P17766825992425707014.correct : P17766825992425707014.Spec := by
  intro n
  simp only [A145204, Nat.add_sub_cancel]

end A145204

/-! ## A145204.P12399181119892641114

`record[(n+1)*and(1, val(n+1, 3))]`
-/

namespace A145204.P12399181119892641114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land 1 (SequenceMachineLib.valuation (n + 1) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145204.P12399181119892641114

namespace A145204

/-- `record[(n+1)*and(1, val(n+1, 3))]` -/
def P12399181119892641114.Spec : Prop :=
  ∀ n, (P12399181119892641114.a n : ℤ) = A145204 (n + 1)

theorem P12399181119892641114.correct : P12399181119892641114.Spec := by
  intro n
  simp only [A145204, Nat.add_sub_cancel, A145204.P12399181119892641114.f1, A145204.P12399181119892641114.a, A145204.P17766825992425707014.f1, A145204.P17766825992425707014.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A145204

/-! ## A145204.P9966437576590946962

`record[lcm(n+1, and(1, val(n+1, 3)))]`
-/

namespace A145204.P9966437576590946962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.land 1 (SequenceMachineLib.valuation (n + 1) 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145204.P9966437576590946962

namespace A145204

/-- `record[lcm(n+1, and(1, val(n+1, 3)))]` -/
def P9966437576590946962.Spec : Prop :=
  ∀ n, (P9966437576590946962.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P11047429893777595986

`eq[0, A163532(n)]`
-/

namespace A145204.P11047429893777595986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145204.P11047429893777595986

namespace A145204

/-- `eq[0, A163532(n)]` -/
def P11047429893777595986.Spec : Prop :=
  ∀ n, (P11047429893777595986.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P17838597002882186920

`record[n*A163533(n)²]`
-/

namespace A145204.P17838597002882186920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163533 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145204.P17838597002882186920

namespace A145204

/-- `record[n*A163533(n)²]` -/
def P17838597002882186920.Spec : Prop :=
  ∀ n, P17838597002882186920.a n = A145204 (n + 1)

end A145204

/-! ## A145204.P17919737772458780480

`eq[0, A163533(3*n)]`
-/

namespace A145204.P17919737772458780480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145204.P17919737772458780480

namespace A145204

/-- `eq[0, A163533(3*n)]` -/
def P17919737772458780480.Spec : Prop :=
  ∀ n, (P17919737772458780480.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P8009991277560385297

`eq[A002483(n), A014578(n)]`
-/

namespace A145204.P8009991277560385297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145204.P8009991277560385297

namespace A145204

/-- `eq[A002483(n), A014578(n)]` -/
def P8009991277560385297.Spec : Prop :=
  ∀ n, (P8009991277560385297.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P1519347040229604132

`lt[char[A007417(n+1)], 1]`
-/

namespace A145204.P1519347040229604132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A145204.P1519347040229604132

namespace A145204

/-- `lt[char[A007417(n+1)], 1]` -/
def P1519347040229604132.Spec : Prop :=
  ∀ n, (P1519347040229604132.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P16392973692293973286

`eq[A005929(n), A014578(n)]`
-/

namespace A145204.P16392973692293973286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005929 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145204.P16392973692293973286

namespace A145204

/-- `eq[A005929(n), A014578(n)]` -/
def P16392973692293973286.Spec : Prop :=
  ∀ n, (P16392973692293973286.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P7459638507184502417

`eq[A014578(n), A055028(n)]`
-/

namespace A145204.P7459638507184502417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145204.P7459638507184502417

namespace A145204

/-- `eq[A014578(n), A055028(n)]` -/
def P7459638507184502417.Spec : Prop :=
  ∀ n, (P7459638507184502417.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P1834029588889954935

`eq[A014578(n), A132681(n)]`
-/

namespace A145204.P1834029588889954935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145204.P1834029588889954935

namespace A145204

/-- `eq[A014578(n), A132681(n)]` -/
def P1834029588889954935.Spec : Prop :=
  ∀ n, (P1834029588889954935.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P7810270041109152135

`eq[A014578(n), A132710(n)]`
-/

namespace A145204.P7810270041109152135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145204.P7810270041109152135

namespace A145204

/-- `eq[A014578(n), A132710(n)]` -/
def P7810270041109152135.Spec : Prop :=
  ∀ n, (P7810270041109152135.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P2164986591368033170

`eq[A014578(n), A217219(n)]`
-/

namespace A145204.P2164986591368033170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145204.P2164986591368033170

namespace A145204

/-- `eq[A014578(n), A217219(n)]` -/
def P2164986591368033170.Spec : Prop :=
  ∀ n, (P2164986591368033170.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P4763112154765736156

`eq[A014578(n), A353327(n)]`
-/

namespace A145204.P4763112154765736156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145204.P4763112154765736156

namespace A145204

/-- `eq[A014578(n), A353327(n)]` -/
def P4763112154765736156.Spec : Prop :=
  ∀ n, (P4763112154765736156.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P8288432185353715446

`eq[1, A000007(n)+A163533(n)²]`
-/

namespace A145204.P8288432185353715446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A163533 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145204.P8288432185353715446

namespace A145204

/-- `eq[1, A000007(n)+A163533(n)²]` -/
def P8288432185353715446.Spec : Prop :=
  ∀ n, (P8288432185353715446.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P10746399985779783313

`eq[A014578(n)+A011588(n), A011588(n)]`
-/

namespace A145204.P10746399985779783313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n + A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145204.P10746399985779783313

namespace A145204

/-- `eq[A014578(n)+A011588(n), A011588(n)]` -/
def P10746399985779783313.Spec : Prop :=
  ∀ n, (P10746399985779783313.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P15654287646235801205

`eq[A054390(n)+A014578(n), A054390(n)]`
-/

namespace A145204.P15654287646235801205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n + A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145204.P15654287646235801205

namespace A145204

/-- `eq[A054390(n)+A014578(n), A054390(n)]` -/
def P15654287646235801205.Spec : Prop :=
  ∀ n, (P15654287646235801205.a n : ℤ) = A145204 (n + 1)

end A145204

/-! ## A145204.P6374209818024291671

`eq[A089013(n)+A014578(n), A089013(n)]`
-/

namespace A145204.P6374209818024291671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n + A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145204.P6374209818024291671

namespace A145204

/-- `eq[A089013(n)+A014578(n), A089013(n)]` -/
def P6374209818024291671.Spec : Prop :=
  ∀ n, (P6374209818024291671.a n : ℤ) = A145204 (n + 1)

end A145204

/-!
# A145208: Number of distinct shuffles of the identity permutation on n letters with the halfway-wrapped around permutation k+1,k+2,...,n-1,n,1,2,...,k where k=floor(n/2).

The programs for A145208, there is no canonical definition to state claims against.
-/

/-! ## A145208.P6648835543648180146

`A068914(∑[9*n+7])`
-/

namespace A145208.P6648835543648180146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145208.P6648835543648180146

/-! ## A145208.P513439690953236839

`A145211(n+1)-char[2]`
-/

namespace A145208.P513439690953236839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145211 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A145208.P513439690953236839

/-!
# A145211: Maximal number of distinct shuffles of the identity permutation on n letters with another permutation on n letters.

The programs for A145211, there is no canonical definition to state claims against.
-/

/-! ## A145211.P5730024098932757131

`A145208(n+1)+char[2]`
-/

namespace A145211.P5730024098932757131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145208 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A145211.P5730024098932757131

/-!
# A145216: Self-convolution of (1^3, 2^3, 3^3, 4^3, ... ).

The programs for A145216, the canonical program `A145216.P17434379097759354601` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145216 has offset 1).

The definition of A145216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145216.P17434379097759354601

`∑[A085465(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A145216

/-- `∑[A085465(n+1)]` -/
def P17434379097759354601.Spec : Prop :=
  ∀ n, P17434379097759354601.a n = A145216 (n + 1)

theorem P17434379097759354601.correct : P17434379097759354601.Spec := by
  intro n
  simp only [A145216, Nat.add_sub_cancel]

end A145216

/-! ## A145216.P14040647941428502092

`∑[∑[∑[A143008(n)]]]`
-/

namespace A145216.P14040647941428502092
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145216.P14040647941428502092

namespace A145216

/-- `∑[∑[∑[A143008(n)]]]` -/
def P14040647941428502092.Spec : Prop :=
  ∀ n, P14040647941428502092.a n = A145216 (n + 1)

end A145216

/-! ## A145216.P16572003134789794115

`∑[∑[∑[∑[A008530(n)]]]]`
-/

namespace A145216.P16572003134789794115
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008530 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145216.P16572003134789794115

namespace A145216

/-- `∑[∑[∑[∑[A008530(n)]]]]` -/
def P16572003134789794115.Spec : Prop :=
  ∀ n, P16572003134789794115.a n = A145216 (n + 1)

end A145216

/-! ## A145216.P2073020696221311225

`∑[A202785(n)+a(n-1)]` with `a(0)=1`
-/

namespace A145216.P2073020696221311225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A202785 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145216.P2073020696221311225

namespace A145216

/-- `∑[A202785(n)+a(n-1)]` -/
def P2073020696221311225.Spec : Prop :=
  ∀ n, P2073020696221311225.a n = A145216 (n + 1)

end A145216

/-! ## A145216.P3148246742707958049

`2*A213560(n+1)/(n+2)`
-/

namespace A145216.P3148246742707958049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A213560 (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A145216.P3148246742707958049

namespace A145216

/-- `2*A213560(n+1)/(n+2)` -/
def P3148246742707958049.Spec : Prop :=
  ∀ n, P3148246742707958049.a n = (A145216 (n + 1) : ℚ)

end A145216

/-! ## A145216.P13780225980755061012

`∑[2*A083200(n+2)-A085464(n+1)]`
-/

namespace A145216.P13780225980755061012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083200 (n + 2) - A085464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145216.P13780225980755061012

namespace A145216

/-- `∑[2*A083200(n+2)-A085464(n+1)]` -/
def P13780225980755061012.Spec : Prop :=
  ∀ n, P13780225980755061012.a n = A145216 (n + 1)

end A145216

/-! ## A145216.P8599573602493473707

`A213558(∑[n]+1)`
-/

namespace A145216.P8599573602493473707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213558 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A145216.P8599573602493473707

namespace A145216

/-- `A213558(∑[n]+1)` -/
def P8599573602493473707.Spec : Prop :=
  ∀ n, P8599573602493473707.a n = A145216 (n + 1)

end A145216

/-! ## A145216.P8696206000076318195

`record[A213558(n+1)]`
-/

namespace A145216.P8696206000076318195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145216.P8696206000076318195

namespace A145216

/-- `record[A213558(n+1)]` -/
def P8696206000076318195.Spec : Prop :=
  ∀ n, P8696206000076318195.a n = A145216 (n + 1)

end A145216

/-! ## A145216.P12123172162477904148

`∑[A048395(∑[n+1])/5]`
-/

namespace A145216.P12123172162477904148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048395 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145216.P12123172162477904148

namespace A145216

/-- `∑[A048395(∑[n+1])/5]` -/
def P12123172162477904148.Spec : Prop :=
  ∀ n, P12123172162477904148.a n = (A145216 (n + 1) : ℚ)

end A145216

/-!
# A145217: a(n) is the self-convolution series of the sum of 4th powers of the first n natural numbers.

The programs for A145217, there is no canonical definition to state claims against.
-/

/-! ## A145217.P5715924766712125398

`A125116(n)+a(n-2)` with `a(0)=1, a(1)=32`
-/

namespace A145217.P5715924766712125398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 32] fun n a =>
  A125116 n + a (n - 2)

end

end A145217.P5715924766712125398

/-! ## A145217.P800248657134081491

`A306548(A056119(n)+25)`
-/

namespace A145217.P800248657134081491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306548 (A056119 n + 25).toNat

end

end A145217.P800248657134081491

/-!
# A145218: a(n) is the self-convolution series of the sum of 5th powers of the first n natural numbers.

The programs for A145218, there is no canonical definition to state claims against.
-/

/-! ## A145218.P1821862364086536005

`A306548(eq[6, A306533(n+1)])`
-/

namespace A145218.P1821862364086536005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145218.P1821862364086536005

/-!
# A145219: a(n) is the number of even permutations (of an n-set) with exactly 1 fixed point.

The programs for A145219, there is no canonical definition to state claims against.
-/

/-! ## A145219.P2434681221571404883

`(n+1)*A003221(n)`
-/

namespace A145219.P2434681221571404883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003221 n

end

end A145219.P2434681221571404883

/-! ## A145219.P5542061679996954206

`A145224(∑[n+1]+1)`
-/

namespace A145219.P5542061679996954206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145224 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A145219.P5542061679996954206

/-! ## A145219.P6123111368635736189

`abs((n+1)*(1-A009574(n)))`
-/

namespace A145219.P6123111368635736189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (1 - A009574 n)|

end

end A145219.P6123111368635736189

/-! ## A145219.P6722570588521851756

`(n+1)*abs(n-A009281(n))`
-/

namespace A145219.P6722570588521851756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |(n : ℤ) - A009281 n|

end

end A145219.P6722570588521851756

/-! ## A145219.P10863059407678025679

`abs(A009574(n+1)-A000217(n))`
-/

namespace A145219.P10863059407678025679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009574 (n + 1) - A000217 n|

end

end A145219.P10863059407678025679

/-! ## A145219.P17269028269211827154

`A000240(n+1)-A145222(n+1)`
-/

namespace A145219.P17269028269211827154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000240 (n + 1) - A145222 (n + 1)

end

end A145219.P17269028269211827154

/-! ## A145219.P4299344347983828781

`(n+1)*(A000166(n)-A000387(n))`
-/

namespace A145219.P4299344347983828781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000166 n - A000387 n)

end

end A145219.P4299344347983828781

/-! ## A145219.P15735823541482094583

`2/(n+2)*A145220(n+2)`
-/

namespace A145219.P15735823541482094583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A145220 (n + 2) : ℚ)

end

end A145219.P15735823541482094583

/-!
# A145220: a(n) is the number of even permutations (of an n-set) with exactly 2 fixed points.

The programs for A145220, there is no canonical definition to state claims against.
-/

/-! ## A145220.P16646279609411709208

`∑[n+1]*A003221(n)`
-/

namespace A145220.P16646279609411709208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A003221 n

end

end A145220.P16646279609411709208

/-! ## A145220.P16005114881900234713

`A003221(n)*A008805(2*n)`
-/

namespace A145220.P16005114881900234713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003221 n * A008805 (2 * n)

end

end A145220.P16005114881900234713

/-! ## A145220.P11930546305797683863

`A000387(n+2)-A145223(n+2)`
-/

namespace A145220.P11930546305797683863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 (n + 2) - A145223 (n + 2)

end

end A145220.P11930546305797683863

/-! ## A145220.P10876960598882804470

`A003221(n)*A038722(A000124(n))`
-/

namespace A145220.P10876960598882804470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003221 n * A038722 (A000124 n).toNat

end

end A145220.P10876960598882804470

/-! ## A145220.P6731570388235791276

`(A000166(n)-A000387(n))*A000217(n+1)`
-/

namespace A145220.P6731570388235791276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000166 n - A000387 n) * A000217 (n + 1)

end

end A145220.P6731570388235791276

/-! ## A145220.P14455971470662023390

`A000124(n+1)*A003221(n)-A003221(n)`
-/

namespace A145220.P14455971470662023390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) * A003221 n - A003221 n

end

end A145220.P14455971470662023390

/-!
# A145222: a(n) is the number of odd permutations (of an n-set) with exactly 1 fixed point.

The programs for A145222, there is no canonical definition to state claims against.
-/

/-! ## A145222.P1301972767117422336

`(n+1)*A000387(n)`
-/

namespace A145222.P1301972767117422336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000387 n

end

end A145222.P1301972767117422336

/-! ## A145222.P6870858533630947879

`A145225(∑[n+1]+1)`
-/

namespace A145222.P6870858533630947879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145225 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A145222.P6870858533630947879

/-! ## A145222.P14299041265455251280

`(n+1)*abs(n-A009574(n))`
-/

namespace A145222.P14299041265455251280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |(n : ℤ) - A009574 n|

end

end A145222.P14299041265455251280

/-! ## A145222.P11939264339662660763

`A000387(n)*A008619(2*n)`
-/

namespace A145222.P11939264339662660763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 n * A008619 (2 * n)

end

end A145222.P11939264339662660763

/-! ## A145222.P16510679129902441811

`A000387(n)*A008612(A008458(n))`
-/

namespace A145222.P16510679129902441811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 n * A008612 (A008458 n).toNat

end

end A145222.P16510679129902441811

/-! ## A145222.P7766030570692054338

`2/(n+2)*A145223(n+2)`
-/

namespace A145222.P7766030570692054338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A145223 (n + 2) : ℚ)

end

end A145222.P7766030570692054338

/-! ## A145222.P7405800528724662494

`A000387(n+1)+A145887(n+1)-A145886(n+1)`
-/

namespace A145222.P7405800528724662494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 (n + 1) + (A145887 (n + 1) - A145886 (n + 1))

end

end A145222.P7405800528724662494

/-!
# A145223: a(n) is the number of odd permutations (of an n-set) with exactly 2 fixed points.

The programs for A145223, there is no canonical definition to state claims against.
-/

/-! ## A145223.P9053369503363852274

`∑[n+1]*A000387(n)`
-/

namespace A145223.P9053369503363852274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000387 n

end

end A145223.P9053369503363852274

/-! ## A145223.P10188693445746086340

`A145225(A340266(n+1))`
-/

namespace A145223.P10188693445746086340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145225 (A340266 (n + 1)).toNat

end

end A145223.P10188693445746086340

/-! ## A145223.P7005358926809136623

`A000387(n)*A080036(∑[n])`
-/

namespace A145223.P7005358926809136623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 n * A080036 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145223.P7005358926809136623

/-! ## A145223.P2316939501430890271

`A000387(n)*A179865(n+2)`
-/

namespace A145223.P2316939501430890271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 n * A179865 (n + 2)

end

end A145223.P2316939501430890271

/-! ## A145223.P18340030964881058903

`A000387(n)*A001972(2*n)`
-/

namespace A145223.P18340030964881058903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 n * A001972 (2 * n)

end

end A145223.P18340030964881058903

/-! ## A145223.P13726903037597548441

`abs(Δ[A000292(n)]*A000387(n))`
-/

namespace A145223.P13726903037597548441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000387 n|

end

end A145223.P13726903037597548441

/-! ## A145223.P14917804029116487795

`A000387(n+2)-A145220(n+2)`
-/

namespace A145223.P14917804029116487795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 (n + 2) - A145220 (n + 2)

end

end A145223.P14917804029116487795

/-! ## A145223.P17113065275462913797

`abs((n-A009574(n))*A000217(n+1))`
-/

namespace A145223.P17113065275462913797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - A009574 n) * A000217 (n + 1)|

end

end A145223.P17113065275462913797

/-! ## A145223.P1808217005681814870

`A000387(n)+A000096(n)*A000387(n)`
-/

namespace A145223.P1808217005681814870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 n + A000096 n * A000387 n

end

end A145223.P1808217005681814870

/-!
# A145224: Triangle read by rows: T(n,k) is the number of even permutations (of an n-set) with exactly k fixed points.

The programs for A145224, the canonical program `A145224.P15372820718121127702` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145224 has offset 0).

The definition of A145224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145224.P14383429420685742749

`A008290(n)-A145225(n)`
-/

namespace A145224.P14383429420685742749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 n - A145225 n

end

end A145224.P14383429420685742749

namespace A145224

/-- `A008290(n)-A145225(n)` -/
def P14383429420685742749.Spec : Prop :=
  ∀ n, P14383429420685742749.a n = A145224 n

end A145224

/-! ## A145224.P4306531923829958604

`A098825(∑[char[∑[n]]]²-n-1)-A145225(n)`
-/

namespace A145224.P4306531923829958604
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat - A145225 n

end

end A145224.P4306531923829958604

namespace A145224

/-- `A098825(∑[char[∑[n]]]²-n-1)-A145225(n)` -/
def P4306531923829958604.Spec : Prop :=
  ∀ n, P4306531923829958604.a n = A145224 n

end A145224

/-! ## A145224.P15372820718121127702

`A007318(n)*A003221(A025581(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A145224

/-- `A007318(n)*A003221(A025581(n))` -/
def P15372820718121127702.Spec : Prop :=
  ∀ n, P15372820718121127702.a n = A145224 n

theorem P15372820718121127702.correct : P15372820718121127702.Spec := by
  intro n
  simp only [A145224]

end A145224

/-! ## A145224.P11367913177108613729

`abs(A098825(A061579(n))-A145225(n))`
-/

namespace A145224.P11367913177108613729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098825 (A061579 n).toNat - A145225 n|

end

end A145224.P11367913177108613729

namespace A145224

/-- `abs(A098825(A061579(n))-A145225(n))` -/
def P11367913177108613729.Spec : Prop :=
  ∀ n, P11367913177108613729.a n = A145224 n

end A145224

/-! ## A145224.P9630185802274033454

`sqrt(A008459(n))*A003221(A025581(n))`
-/

namespace A145224.P9630185802274033454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A003221 (A025581 n).toNat : ℝ)

end

end A145224.P9630185802274033454

namespace A145224

/-- `sqrt(A008459(n))*A003221(A025581(n))` -/
def P9630185802274033454.Spec : Prop :=
  ∀ n, P9630185802274033454.a n = (A145224 n : ℝ)

end A145224

/-! ## A145224.P11343107267382921399

`A180188(n+1)/A002024(n+1)-A145225(n)`
-/

namespace A145224.P11343107267382921399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180188 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) - (A145225 n : ℚ)

end

end A145224.P11343107267382921399

namespace A145224

/-- `A180188(n+1)/A002024(n+1)-A145225(n)` -/
def P11343107267382921399.Spec : Prop :=
  ∀ n, P11343107267382921399.a n = (A145224 n : ℚ)

end A145224

/-! ## A145224.P17326848452051869239

`gcd(A156788(n), A337615(n))-A145225(n)`
-/

namespace A145224.P17326848452051869239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A156788 n) (A337615 n) : ℤ) - A145225 n

end

end A145224.P17326848452051869239

namespace A145224

/-- `gcd(A156788(n), A337615(n))-A145225(n)` -/
def P17326848452051869239.Spec : Prop :=
  ∀ n, P17326848452051869239.a n = A145224 n

end A145224

/-!
# A145225: Triangle read by rows: T(n,k) is the number of odd permutations (of an n-set) with exactly k fixed points.

The programs for A145225, the canonical program `A145225.P16601938539536274568` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145225 has offset 0).

The definition of A145225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145225.P9376388972173779006

`A008290(n)-A145224(n)`
-/

namespace A145225.P9376388972173779006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 n - A145224 n

end

end A145225.P9376388972173779006

namespace A145225

/-- `A008290(n)-A145224(n)` -/
def P9376388972173779006.Spec : Prop :=
  ∀ n, P9376388972173779006.a n = A145225 n

end A145225

/-! ## A145225.P10209046789557817022

`A098825(round(sqrt(2*n+1))²-n-1)-A145224(n)`
-/

namespace A145225.P10209046789557817022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) ^ 2 - (n : ℤ) - 1).toNat - A145224 n

end

end A145225.P10209046789557817022

namespace A145225

/-- `A098825(round(sqrt(2*n+1))²-n-1)-A145224(n)` -/
def P10209046789557817022.Spec : Prop :=
  ∀ n, P10209046789557817022.a n = A145225 n

end A145225

/-! ## A145225.P16601938539536274568

`A007318(n)*A000387(A025581(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A145225

/-- `A007318(n)*A000387(A025581(n))` -/
def P16601938539536274568.Spec : Prop :=
  ∀ n, P16601938539536274568.a n = A145225 n

theorem P16601938539536274568.correct : P16601938539536274568.Spec := by
  intro n
  simp only [A145225]

end A145225

/-! ## A145225.P17494766937712618307

`abs(A098825(A061579(n))-A145224(n))`
-/

namespace A145225.P17494766937712618307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098825 (A061579 n).toNat - A145224 n|

end

end A145225.P17494766937712618307

namespace A145225

/-- `abs(A098825(A061579(n))-A145224(n))` -/
def P17494766937712618307.Spec : Prop :=
  ∀ n, P17494766937712618307.a n = A145225 n

end A145225

/-! ## A145225.P2529125761023737042

`abs(A000387(A025581(n))*A108086(n))`
-/

namespace A145225.P2529125761023737042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000387 (A025581 n).toNat * A108086 n|

end

end A145225.P2529125761023737042

namespace A145225

/-- `abs(A000387(A025581(n))*A108086(n))` -/
def P2529125761023737042.Spec : Prop :=
  ∀ n, P2529125761023737042.a n = A145225 n

end A145225

/-! ## A145225.P10010474975769451571

`abs(A000387(A025581(n))*A130595(n))`
-/

namespace A145225.P10010474975769451571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000387 (A025581 n).toNat * A130595 n|

end

end A145225.P10010474975769451571

namespace A145225

/-- `abs(A000387(A025581(n))*A130595(n))` -/
def P10010474975769451571.Spec : Prop :=
  ∀ n, P10010474975769451571.a n = A145225 n

end A145225

/-! ## A145225.P12868549640839033068

`sqrt(A008459(n))*A000387(A025581(n))`
-/

namespace A145225.P12868549640839033068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000387 (A025581 n).toNat : ℝ)

end

end A145225.P12868549640839033068

namespace A145225

/-- `sqrt(A008459(n))*A000387(A025581(n))` -/
def P12868549640839033068.Spec : Prop :=
  ∀ n, P12868549640839033068.a n = (A145225 n : ℝ)

end A145225

/-! ## A145225.P5450508930955015314

`A000387(A025581(n))/2*A028326(n)`
-/

namespace A145225.P5450508930955015314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000387 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A145225.P5450508930955015314

namespace A145225

/-- `A000387(A025581(n))/2*A028326(n)` -/
def P5450508930955015314.Spec : Prop :=
  ∀ n, P5450508930955015314.a n = (A145225 n : ℚ)

end A145225

/-! ## A145225.P11552618538117283335

`A180188(n+1)/A002024(n+1)-A145224(n)`
-/

namespace A145225.P11552618538117283335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180188 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) - (A145224 n : ℚ)

end

end A145225.P11552618538117283335

namespace A145225

/-- `A180188(n+1)/A002024(n+1)-A145224(n)` -/
def P11552618538117283335.Spec : Prop :=
  ∀ n, P11552618538117283335.a n = (A145225 n : ℚ)

end A145225

/-! ## A145225.P5508481365439721066

`gcd(A156788(n), A337615(n))-A145224(n)`
-/

namespace A145225.P5508481365439721066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A156788 n) (A337615 n) : ℤ) - A145224 n

end

end A145225.P5508481365439721066

namespace A145225

/-- `gcd(A156788(n), A337615(n))-A145224(n)` -/
def P5508481365439721066.Spec : Prop :=
  ∀ n, P5508481365439721066.a n = A145225 n

end A145225

/-!
# A145229: Coefficients in expansion of E'_1(q).

The programs for A145229, the canonical program `A145229.P6100243278817655101` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145229 has offset 0).

The definition of A145229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145229.P6100243278817655101

`4*∑{d}[n+1, lcm(#, n+1)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A145229

/-- `4*∑{d}[n+1, lcm(#, n+1)]` -/
def P6100243278817655101.Spec : Prop :=
  ∀ n, (P6100243278817655101.a n : ℤ) = A145229 n

theorem P6100243278817655101.correct : P6100243278817655101.Spec := by
  intro n
  simp only [A145229]

end A145229

/-! ## A145229.P252623523556022176

`4*∑{d}[n+1, gcd(n, #)+n]`
-/

namespace A145229.P252623523556022176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f1 n), (Nat.gcd n d + n))

end

end A145229.P252623523556022176

namespace A145229

/-- `4*∑{d}[n+1, gcd(n, #)+n]` -/
def P252623523556022176.Spec : Prop :=
  ∀ n, (P252623523556022176.a n : ℤ) = A145229 n

end A145229

/-! ## A145229.P2478101304101198547

`4*∑{d}[n+1, n-or(#, -1)]`
-/

namespace A145229.P2478101304101198547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - Int.lor (d : ℤ) (-1)))

end

end A145229.P2478101304101198547

namespace A145229

/-- `4*∑{d}[n+1, n-or(#, -1)]` -/
def P2478101304101198547.Spec : Prop :=
  ∀ n, P2478101304101198547.a n = A145229 n

end A145229

/-! ## A145229.P14967939298619618844

`4*∑{d}[n+1, ceil(1/#+n)]`
-/

namespace A145229.P14967939298619618844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ) + (n : ℚ)⌉)

end

end A145229.P14967939298619618844

namespace A145229

/-- `4*∑{d}[n+1, ceil(1/#+n)]` -/
def P14967939298619618844.Spec : Prop :=
  ∀ n, P14967939298619618844.a n = A145229 n

end A145229

/-! ## A145229.P5965951149820839551

`4*(n+1)*∏{e}[n+1, #+1]`
-/

namespace A145229.P5965951149820839551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A145229.P5965951149820839551

namespace A145229

/-- `4*(n+1)*∏{e}[n+1, #+1]` -/
def P5965951149820839551.Spec : Prop :=
  ∀ n, (P5965951149820839551.a n : ℤ) = A145229 n

end A145229

/-! ## A145229.P9767877347583260997

`∑{d}[n+1, (n+1)*4%(#+4)]`
-/

namespace A145229.P9767877347583260997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * (4 % (d + 4))

end

end A145229.P9767877347583260997

namespace A145229

/-- `∑{d}[n+1, (n+1)*4%(#+4)]` -/
def P9767877347583260997.Spec : Prop :=
  ∀ n, (P9767877347583260997.a n : ℤ) = A145229 n

end A145229

/-! ## A145229.P11239499372488970444

`4*(n+1)*(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A145229.P11239499372488970444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)))

end

end A145229.P11239499372488970444

namespace A145229

/-- `4*(n+1)*(∑{d}[n+1, #+1]-∑{d}[n+1, #])` -/
def P11239499372488970444.Spec : Prop :=
  ∀ n, P11239499372488970444.a n = A145229 n

end A145229

/-! ## A145229.P1308672834738474733

`4*A038040(n+1)`
-/

namespace A145229.P1308672834738474733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A038040 (n + 1)

end

end A145229.P1308672834738474733

namespace A145229

/-- `4*A038040(n+1)` -/
def P1308672834738474733.Spec : Prop :=
  ∀ n, P1308672834738474733.a n = A145229 n

end A145229

/-! ## A145229.P4458919013105999256

`4*(A083271(n+1)-1)`
-/

namespace A145229.P4458919013105999256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A083271 (n + 1) - 1)

end

end A145229.P4458919013105999256

namespace A145229

/-- `4*(A083271(n+1)-1)` -/
def P4458919013105999256.Spec : Prop :=
  ∀ n, P4458919013105999256.a n = A145229 n

end A145229

/-! ## A145229.P6955234573619120892

`(n+1)*A145154(n+1)`
-/

namespace A145229.P6955234573619120892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A145154 (n + 1)

end

end A145229.P6955234573619120892

namespace A145229

/-- `(n+1)*A145154(n+1)` -/
def P6955234573619120892.Spec : Prop :=
  ∀ n, P6955234573619120892.a n = A145229 n

end A145229

/-! ## A145229.P8680338492134933560

`2*(n+1)*A062011(n+1)`
-/

namespace A145229.P8680338492134933560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A062011 (n + 1))

end

end A145229.P8680338492134933560

namespace A145229

/-- `2*(n+1)*A062011(n+1)` -/
def P8680338492134933560.Spec : Prop :=
  ∀ n, P8680338492134933560.a n = A145229 n

end A145229

/-! ## A145229.P10797919478189035752

`4*(n+1)*A000005(n+1)`
-/

namespace A145229.P10797919478189035752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A000005 (n + 1))

end

end A145229.P10797919478189035752

namespace A145229

/-- `4*(n+1)*A000005(n+1)` -/
def P10797919478189035752.Spec : Prop :=
  ∀ n, P10797919478189035752.a n = A145229 n

end A145229

/-! ## A145229.P4334447262176667941

`4/(n+1)*A034714(n+1)`
-/

namespace A145229.P4334447262176667941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A034714 (n + 1) : ℚ)

end

end A145229.P4334447262176667941

namespace A145229

/-- `4/(n+1)*A034714(n+1)` -/
def P4334447262176667941.Spec : Prop :=
  ∀ n, P4334447262176667941.a n = (A145229 n : ℚ)

end A145229

/-! ## A145229.P8442505998112536295

`4*(n+1)*(∑{d}[n+1, #+1]-A000203(n+1))`
-/

namespace A145229.P8442505998112536295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1)))

end

end A145229.P8442505998112536295

namespace A145229

/-- `4*(n+1)*(∑{d}[n+1, #+1]-A000203(n+1))` -/
def P8442505998112536295.Spec : Prop :=
  ∀ n, P8442505998112536295.a n = A145229 n

end A145229

/-! ## A145229.P14313287989792778795

`(A004767(n)+1)*A000005(n+1)`
-/

namespace A145229.P14313287989792778795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004767 n + 1) * A000005 (n + 1)

end

end A145229.P14313287989792778795

namespace A145229

/-- `(A004767(n)+1)*A000005(n+1)` -/
def P14313287989792778795.Spec : Prop :=
  ∀ n, P14313287989792778795.a n = A145229 n

end A145229

/-! ## A145229.P15639359628196485929

`A054844(n+1)*A069895(n+1)`
-/

namespace A145229.P15639359628196485929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) * A069895 (n + 1)

end

end A145229.P15639359628196485929

namespace A145229

/-- `A054844(n+1)*A069895(n+1)` -/
def P15639359628196485929.Spec : Prop :=
  ∀ n, P15639359628196485929.a n = A145229 n

end A145229

/-! ## A145229.P12382293078363804659

`(A016825(n)+2)*A000005(n+1)`
-/

namespace A145229.P12382293078363804659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 n + 2) * A000005 (n + 1)

end

end A145229.P12382293078363804659

namespace A145229

/-- `(A016825(n)+2)*A000005(n+1)` -/
def P12382293078363804659.Spec : Prop :=
  ∀ n, P12382293078363804659.a n = A145229 n

end A145229

/-! ## A145229.P1962014646028752298

`(A016897(n)-n)*A000005(n+1)`
-/

namespace A145229.P1962014646028752298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n - (n : ℤ)) * A000005 (n + 1)

end

end A145229.P1962014646028752298

namespace A145229

/-- `(A016897(n)-n)*A000005(n+1)` -/
def P1962014646028752298.Spec : Prop :=
  ∀ n, P1962014646028752298.a n = A145229 n

end A145229

/-! ## A145229.P10876769838494412615

`A062249(n+1)²-A049820(n+1)²`
-/

namespace A145229.P10876769838494412615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) ^ 2 - A049820 (n + 1) ^ 2

end

end A145229.P10876769838494412615

namespace A145229

/-- `A062249(n+1)²-A049820(n+1)²` -/
def P10876769838494412615.Spec : Prop :=
  ∀ n, P10876769838494412615.a n = A145229 n

end A145229

/-!
# A145231: 

The programs for A145231, there is no canonical definition to state claims against.
-/

/-! ## A145231.P4747035889634775873

`A058635(2*n)`
-/

namespace A145231.P4747035889634775873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058635 (2 * n)

end

end A145231.P4747035889634775873

/-!
# A145236: a(n) is the least positive integer such that if p_n is the n-th prime then (ceiling(sqrt(a(n)*p_n)))^2 - a(n)*p_n is a perfect square.

The programs for A145236, there is no canonical definition to state claims against.
-/

/-! ## A145236.P6919886454113747513

`A113935(n+1)-A001650(A100484(n+1))`
-/

namespace A145236.P6919886454113747513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - A001650 (A100484 (n + 1)).toNat

end

end A145236.P6919886454113747513

/-! ## A145236.P10101101956123388622

`A114557(2*(n+1))-A001650(A100484(n+1))`
-/

namespace A145236.P10101101956123388622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114557 (2 * (n + 1)) - A001650 (A100484 (n + 1)).toNat

end

end A145236.P10101101956123388622

/-! ## A145236.P1203652247202361892

`A249298(p?[xor(1, n)+1])`
-/

namespace A145236.P1203652247202361892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249298 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A145236.P1203652247202361892

/-! ## A145236.P16886773243026833160

`A249298(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A145236.P16886773243026833160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249298 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A145236.P16886773243026833160

/-! ## A145236.P2782443936877305079

`A249298(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A145236.P2782443936877305079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249298 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A145236.P2782443936877305079

/-!
# A145237: 1/3 of the number of 3-colorings of an n X n array symmetric about main diagonal.

The programs for A145237, there is no canonical definition to state claims against.
-/

/-! ## A145237.P12137924988545349274

`A020639(p?[∑[n]+1]-1)*A193268(n+1)`
-/

namespace A145237.P12137924988545349274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1) * A193268 (n + 1)

end

end A145237.P12137924988545349274

/-! ## A145237.P9896409992566004095

`A020639(A008458(n))*A193268(n+1)`
-/

namespace A145237.P9896409992566004095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A193268 (n + 1)

end

end A145237.P9896409992566004095

/-! ## A145237.P10818451991610087684

`A020639(A310503(n))*A193268(n+1)`
-/

namespace A145237.P10818451991610087684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A310503 n).toNat * A193268 (n + 1)

end

end A145237.P10818451991610087684

/-! ## A145237.P13322928153271287707

`A014963(A000079(n))*A193268(n+1)`
-/

namespace A145237.P13322928153271287707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000079 n).toNat * A193268 (n + 1)

end

end A145237.P13322928153271287707

/-!
# A145238: 1/3 of the number of 3-colorings of an n X n array symmetric about both diagonal and antidiagonal.

The programs for A145238, there is no canonical definition to state claims against.
-/

/-! ## A145238.P6210083679046476583

`record[∏{digits}[A268666(n+1), #]]`
-/

namespace A145238.P6210083679046476583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268666 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145238.P6210083679046476583

/-! ## A145238.P14279691744493371542

`A376065(A105543(n))`
-/

namespace A145238.P14279691744493371542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376065 (A105543 n).toNat

end

end A145238.P14279691744493371542

/-!
# A145239: 1/3 of the number of 3-colorings of an n X n array symmetric under 180 degree rotation.

The programs for A145239, there is no canonical definition to state claims against.
-/

/-! ## A145239.P62658298017474522

`A239513(A059966(n+5))`
-/

namespace A145239.P62658298017474522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239513 (A059966 (n + 5)).toNat

end

end A145239.P62658298017474522

/-!
# A145241: 1/4 of the number of 4-colorings of an n X n array symmetric about both diagonal and antidiagonal.

The programs for A145241, there is no canonical definition to state claims against.
-/

/-! ## A145241.P14741570954844098158

`A003961(A138278(∑[n]))`
-/

namespace A145241.P14741570954844098158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A138278 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A145241.P14741570954844098158

/-! ## A145241.P567221718008940164

`A000265(A223331(∑[or(1, n)]))`
-/

namespace A145241.P567221718008940164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A223331 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A145241.P567221718008940164

/-!
# A145252: 1/8 of the number of 8-colorings of an n X n array symmetric about both diagonal and antidiagonal.

The programs for A145252, there is no canonical definition to state claims against.
-/

/-! ## A145252.P1799111829856208871

`∏[A106609(A033143(n+1))]`
-/

namespace A145252.P1799111829856208871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A033143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A145252.P1799111829856208871

/-!
# A145254: a(n) = the smallest positive integer that is non-coprime to n and has the same number of 1's in its binary representation as n.

The programs for A145254, there is no canonical definition to state claims against.
-/

/-! ## A145254.P11288669007772281913

`A379120(n+2)%A248416(3*n+5)`
-/

namespace A145254.P11288669007772281913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379120 (n + 2)) (A248416 (3 * n + 5))

end

end A145254.P11288669007772281913

/-! ## A145254.P7221232581828786231

`A379120(n+2)%A134496(A248416(n+1))`
-/

namespace A145254.P7221232581828786231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379120 (n + 2)) (A134496 (A248416 (n + 1)).toNat)

end

end A145254.P7221232581828786231

/-! ## A145254.P7308417790003671798

`A303708(A000040(n+1))*A379120(n+2)`
-/

namespace A145254.P7308417790003671798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303708 (A000040 (n + 1)).toNat * A379120 (n + 2)

end

end A145254.P7308417790003671798

/-! ## A145254.P16272991100788681830

`A094701(A129196(n+1))`
-/

namespace A145254.P16272991100788681830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094701 (A129196 (n + 1)).toNat

end

end A145254.P16272991100788681830

/-! ## A145254.P6527588128851351415

`A094701(A270437(n+2))`
-/

namespace A145254.P6527588128851351415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094701 (A270437 (n + 2)).toNat

end

end A145254.P6527588128851351415

/-!
# A145255: a(n) = the smallest positive integer that is non-coprime to n and has the same number of 0's in its binary representation as n has.

The programs for A145255, there is no canonical definition to state claims against.
-/

/-! ## A145255.P13802616550325324192

`A028233((n+2)^A294335(n))`
-/

namespace A145255.P13802616550325324192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A294335 n : ℤ))).toNat

end

end A145255.P13802616550325324192

/-! ## A145255.P10811471951415405913

`A028233(n+2)*A050361(A048578(n))`
-/

namespace A145255.P10811471951415405913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 2) * A050361 (A048578 n).toNat

end

end A145255.P10811471951415405913

/-! ## A145255.P15777403999785395957

`A028233(A307847(n)+A187829(n+1))`
-/

namespace A145255.P15777403999785395957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A307847 n + A187829 (n + 1)).toNat

end

end A145255.P15777403999785395957

/-! ## A145255.P11658388031312991873

`A323130(A307847(n)+A187829(n+1))`
-/

namespace A145255.P11658388031312991873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (A307847 n + A187829 (n + 1)).toNat

end

end A145255.P11658388031312991873

/-! ## A145255.P16250971522947771364

`A323130(n+2)+A252736(A351309(n+1))`
-/

namespace A145255.P16250971522947771364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (n + 2) + A252736 (A351309 (n + 1)).toNat

end

end A145255.P16250971522947771364

/-!
# A145257: a(n) is the smallest integer > n that is non-coprime to n and has the same number of 0's in its binary representation as n has.

The programs for A145257, there is no canonical definition to state claims against.
-/

/-! ## A145257.P3865041577174542977

`A115571(A003242(n))*A161397(n+2)`
-/

namespace A145257.P3865041577174542977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115571 (A003242 n).toNat * A161397 (n + 2)

end

end A145257.P3865041577174542977

/-! ## A145257.P4258023238389138358

`A105551(A105547(n))*A161397(n+2)`
-/

namespace A145257.P4258023238389138358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105551 (A105547 n).toNat * A161397 (n + 2)

end

end A145257.P4258023238389138358

/-! ## A145257.P3422650767551524268

`or(A004016(A074406(n+1)), A161397(n+2))`
-/

namespace A145257.P3422650767551524268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004016 (A074406 (n + 1)).toNat) (A161397 (n + 2))

end

end A145257.P3422650767551524268

/-!
# A145262: 1/10 of the number of 10-colorings of an n X n array symmetric about both diagonal and antidiagonal.

The programs for A145262, there is no canonical definition to state claims against.
-/

/-! ## A145262.P10674562080174590157

`∏[A004151(A033145(n+1))]`
-/

namespace A145262.P10674562080174590157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A033145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A145262.P10674562080174590157

/-!
# A145264: a(n) is the positive integer such that Sum_{k>=0} floor(n/(a(n)+k)) = n, or 0 if there is no such positive integer.

The programs for A145264, there is no canonical definition to state claims against.
-/

/-! ## A145264.P940930376346812743

`A175676(A242774(n+2)+1)`
-/

namespace A145264.P940930376346812743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A242774 (n + 2) + 1).toNat

end

end A145264.P940930376346812743

/-! ## A145264.P12466107128798729525

`A175676(A010761(n+1)+3)`
-/

namespace A145264.P12466107128798729525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A010761 (n + 1) + 3).toNat

end

end A145264.P12466107128798729525

/-! ## A145264.P16581198232905743580

`A027656(A004396(A010761(n+1)))`
-/

namespace A145264.P16581198232905743580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A004396 (A010761 (n + 1)).toNat).toNat

end

end A145264.P16581198232905743580

/-! ## A145264.P15963554137463148161

`A175676(A080513(n)+A008620(n+4))`
-/

namespace A145264.P15963554137463148161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A080513 n + A008620 (n + 4)).toNat

end

end A145264.P15963554137463148161

/-! ## A145264.P16328328667868296806

`A175676(A008620(n+1)+A008619(n+3))`
-/

namespace A145264.P16328328667868296806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A008620 (n + 1) + A008619 (n + 3)).toNat

end

end A145264.P16328328667868296806

/-! ## A145264.P499318459030333282

`A175676(A001651(n+6)-A004523(n+8))`
-/

namespace A145264.P499318459030333282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A001651 (n + 6) - A004523 (n + 8)).toNat

end

end A145264.P499318459030333282

/-! ## A145264.P1836402712486854871

`A000292(A010761(n+1)+3)%(A010761(n+1)+3)`
-/

namespace A145264.P1836402712486854871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A010761 (n + 1) + 3).toNat) (A010761 (n + 1) + 3)

end

end A145264.P1836402712486854871

/-! ## A145264.P3844349547048388929

`A005900(A010761(n+1)+3)%(A010761(n+1)+3)`
-/

namespace A145264.P3844349547048388929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005900 (A010761 (n + 1) + 3).toNat) (A010761 (n + 1) + 3)

end

end A145264.P3844349547048388929

/-! ## A145264.P3418309223791357854

`A006331(A010761(n+1)+3)%(A010761(n+1)+3)`
-/

namespace A145264.P3418309223791357854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006331 (A010761 (n + 1) + 3).toNat) (A010761 (n + 1) + 3)

end

end A145264.P3418309223791357854

/-! ## A145264.P10617948937272853643

`A100157(A010761(n+1)+3)%(A010761(n+1)+3)`
-/

namespace A145264.P10617948937272853643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100157 (A010761 (n + 1) + 3).toNat) (A010761 (n + 1) + 3)

end

end A145264.P10617948937272853643

/-!
# A145265: A positive integer n is included if there exists a positive integer m such that Sum_{k>=0} floor(n/(m+k)) = n.

The programs for A145265, there is no canonical definition to state claims against.
-/

/-! ## A145265.P5233675099661082575

`3*(n+1)-(gcd(2, n)+n)%6`
-/

namespace A145265.P5233675099661082575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (((Nat.gcd 2 n + n) % 6 : ℕ) : ℤ)

end

end A145265.P5233675099661082575

/-! ## A145265.P1550148116865622018

`∑[gcd(2^n-2, 5^n-2^n)]`
-/

namespace A145265.P1550148116865622018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 ^ n : ℤ) - 2) ((5 ^ n : ℤ) - (2 ^ n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145265.P1550148116865622018

/-! ## A145265.P5851904725532135839

`3*n+2-or(1, (n+2)%6-2)`
-/

namespace A145265.P5851904725532135839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - Int.lor 1 ((((n + 2) % 6 : ℕ) : ℤ) - 2)

end

end A145265.P5851904725532135839

/-! ## A145265.P2918608422177045904

`A181099(a(n-1)+3)` with `a(0)=1`
-/

namespace A145265.P2918608422177045904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A181099 (a (n - 1) + 3).toNat

end

end A145265.P2918608422177045904

/-! ## A145265.P3314388385727457146

`∑[or(1, A010198(3*n+1))]`
-/

namespace A145265.P3314388385727457146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010198 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145265.P3314388385727457146

/-! ## A145265.P9105967123223762876

`A047241(n+2)-(n+2)%6`
-/

namespace A145265.P9105967123223762876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 2) - (((n + 2) % 6 : ℕ) : ℤ)

end

end A145265.P9105967123223762876

/-! ## A145265.P2749375356511313913

`eq[3, A020639(A063199(n+1)+1)]`
-/

namespace A145265.P2749375356511313913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063199 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145265.P2749375356511313913

/-! ## A145265.P8128101446790997754

`∑[A130145(gcd(n-1, A020639(3*(n+1))))]`
-/

namespace A145265.P8128101446790997754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130145 (Int.gcd ((n : ℤ) - 1) (A020639 (3 * (n + 1))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145265.P8128101446790997754

/-!
# A145266: A positive integer n is included if there does not exist a positive integer m such that Sum{k>=0} floor(n/(m+k)) = n.

The programs for A145266, there is no canonical definition to state claims against.
-/

/-! ## A145266.P15659386660300521166

`comp[3*(n+1)-(gcd(2, n)+n)%6-18]`
-/

namespace A145266.P15659386660300521166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (((Nat.gcd 2 n + n) % 6 : ℕ) : ℤ) - 18

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A145266.P15659386660300521166

/-! ## A145266.P6509852616964840513

`comp[A145265(n+1)-18]`
-/

namespace A145266.P6509852616964840513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145265 (n + 1) - 18

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A145266.P6509852616964840513

/-! ## A145266.P14037937729434003685

`comp[3*n]+∑[A014021(n)]`
-/

namespace A145266.P14037937729434003685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A145266.P14037937729434003685

/-! ## A145266.P5657672090527187333

`comp[A181099(a(n-1)+3)]` with `a(0)=0`
-/

namespace A145266.P5657672090527187333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A181099 (f1 (n - 1) + 3).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A145266.P5657672090527187333

/-! ## A145266.P3403438189738337866

`eq[0, A373830(3*n-2*floor(n/2))]`
-/

namespace A145266.P3403438189738337866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 ((3 * n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145266.P3403438189738337866

/-! ## A145266.P5129452259815448542

`comp[A047241(n+2)-(n+2)%6-18]`
-/

namespace A145266.P5129452259815448542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 2) - (((n + 2) % 6 : ℕ) : ℤ) - 18

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A145266.P5129452259815448542

/-! ## A145266.P13381678441691898169

`∑[A040001(n)+A014021(n)]`
-/

namespace A145266.P13381678441691898169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + A014021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145266.P13381678441691898169

/-! ## A145266.P12649121086079585952

`eq[1, A005131(A063208(n+1))]`
-/

namespace A145266.P12649121086079585952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A063208 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145266.P12649121086079585952

/-! ## A145266.P8930681441901204469

`eq[1, A005131(A008612(n+3))]`
-/

namespace A145266.P8930681441901204469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A008612 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145266.P8930681441901204469

/-! ## A145266.P9699028756324772770

`comp[eq[3, A020639(A063199(n+1)+1)]-18]`
-/

namespace A145266.P9699028756324772770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063199 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 18

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A145266.P9699028756324772770

/-!
# A145267: G.f. satisfies A(x) = Product_{k>0} (1+x^k*A(x)).

The programs for A145267, there is no canonical definition to state claims against.
-/

/-! ## A145267.P6812310375392354101

`A029917(A027118(n+1))`
-/

namespace A145267.P6812310375392354101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 (A027118 (n + 1)).toNat

end

end A145267.P6812310375392354101

/-! ## A145267.P11008780004790832930

`ceil(A289429(n)/3^n)`
-/

namespace A145267.P11008780004790832930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289429 n : ℚ) / (3 ^ n : ℚ)⌉

end

end A145267.P11008780004790832930

/-! ## A145267.P153378462317175851

`A191786(Δ[A250264(n)²])`
-/

namespace A145267.P153378462317175851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250264 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191786 (f1 (n + 1) - f1 n).toNat

end

end A145267.P153378462317175851

/-! ## A145267.P10335816079727986316

`A003602(4*A027058(n+1))`
-/

namespace A145267.P10335816079727986316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (4 * A027058 (n + 1)).toNat

end

end A145267.P10335816079727986316

/-! ## A145267.P9299530926261457944

`A008616(5*A027058(n+1))`
-/

namespace A145267.P9299530926261457944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (5 * A027058 (n + 1)).toNat

end

end A145267.P9299530926261457944

/-!
# A145268: G.f. A(x) satisfies A(x) = 1/Product_{k>0} (1-x^k*A(x)).

The programs for A145268, there is no canonical definition to state claims against.
-/

/-! ## A145268.P5359293665287805884

`A138311(A148956(n))`
-/

namespace A145268.P5359293665287805884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A148956 n).toNat

end

end A145268.P5359293665287805884

/-! ## A145268.P2346666487002009362

`A247971(A047102(n))`
-/

namespace A145268.P2346666487002009362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A047102 n).toNat

end

end A145268.P2346666487002009362

/-! ## A145268.P427847593285787799

`A119372(n)+A054015(A322659(n+1))`
-/

namespace A145268.P427847593285787799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119372 n + A054015 (A322659 (n + 1)).toNat

end

end A145268.P427847593285787799

/-!
# A145269: Number of simple nonplanar graphs on n nodes.

The programs for A145269, there is no canonical definition to state claims against.
-/

/-! ## A145269.P18074778399314155864

`A000088(n)-A005470(n)`
-/

namespace A145269.P18074778399314155864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A005470 n

end

end A145269.P18074778399314155864

/-! ## A145269.P3873087936602567308

`∑[A002494(n)]-A005470(n)`
-/

namespace A145269.P3873087936602567308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005470 n

end

end A145269.P3873087936602567308

/-! ## A145269.P2141707283254925283

`A361404(∑[n])-A005470(n)`
-/

namespace A145269.P2141707283254925283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f1 j) - A005470 n

end

end A145269.P2141707283254925283

/-! ## A145269.P1264823290418376253

`∑[A217653(∑[n])]-A005470(n)`
-/

namespace A145269.P1264823290418376253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217653 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005470 n

end

end A145269.P1264823290418376253

/-! ## A145269.P12460561521262914569

`A263293(∑[n+1])-A005470(n)`
-/

namespace A145269.P12460561521262914569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263293 (∑ j ∈ Finset.range (n + 1), f1 j) - A005470 n

end

end A145269.P12460561521262914569

/-!
# A145270: Number of simple connected nonplanar graphs on n nodes.

The programs for A145270, there is no canonical definition to state claims against.
-/

/-! ## A145270.P17906798321236111673

`A001349(n)-A003094(n)`
-/

namespace A145270.P17906798321236111673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n - A003094 n

end

end A145270.P17906798321236111673

/-! ## A145270.P5346688520850623854

`A304311(∑[n])-A003094(n)`
-/

namespace A145270.P5346688520850623854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (∑ j ∈ Finset.range (n + 1), f1 j) - A003094 n

end

end A145270.P5346688520850623854

/-! ## A145270.P726845718287113857

`A201922(C(n, 2)+1)-A003094(n)`
-/

namespace A145270.P726845718287113857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (Nat.choose n 2 + 1) - A003094 n

end

end A145270.P726845718287113857

/-! ## A145270.P14370423181262628850

`A201922(∑[abs(1-n)])-A003094(n)`
-/

namespace A145270.P14370423181262628850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A003094 n

end

end A145270.P14370423181262628850

/-! ## A145270.P17584546731265815727

`A005142(n)+A157051(n)-A003094(n)`
-/

namespace A145270.P17584546731265815727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005142 n + (A157051 n - A003094 n)

end

end A145270.P17584546731265815727

/-!
# A145272: First differences of successive iterated triangular numbers with seed 2.

The programs for A145272, there is no canonical definition to state claims against.
-/

/-! ## A145272.P13144724172052635159

`Δ[C(a(n-1)+1, 2)]` with `a(0)=2`
-/

namespace A145272.P13144724172052635159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.choose (f1 (n - 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A145272.P13144724172052635159

/-! ## A145272.P2666318079836729980

`Δ[(a(n-1)+a(n-1)²)/2]` with `a(0)=2`
-/

namespace A145272.P2666318079836729980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (f1 (n - 1) + f1 (n - 1) ^ 2) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145272.P2666318079836729980

/-! ## A145272.P3285262010962273559

`Δ[(a(n-1)+1)/2*a(n-1)]` with `a(0)=2`
-/

namespace A145272.P3285262010962273559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (f1 (n - 1) + 1) / 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145272.P3285262010962273559

/-! ## A145272.P8816175985427991872

`Δ[A007501(n)]`
-/

namespace A145272.P8816175985427991872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145272.P8816175985427991872

/-! ## A145272.P2658715777746536044

`Δ[A006893(n+1)]`
-/

namespace A145272.P2658715777746536044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145272.P2658715777746536044

/-!
# A145273: Parity sequence of A006893.

The programs for A145273, there is no canonical definition to state claims against.
-/

/-! ## A145273.P9319789833516229465

`A117872(xor(A034501(n+1)+1, A117872(n)))`
-/

namespace A145273.P9319789833516229465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117872 (Int.xor (A034501 (n + 1) + 1) (A117872 n)).toNat

end

end A145273.P9319789833516229465

/-! ## A145273.P417831798278717753

`A000007((A117872(n)+A034501(n+1))²)`
-/

namespace A145273.P417831798278717753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((A117872 n + A034501 (n + 1)) ^ 2).toNat

end

end A145273.P417831798278717753

/-! ## A145273.P6650606095153426049

`ceil(A275342(n+1)/A005496(n))`
-/

namespace A145273.P6650606095153426049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A275342 (n + 1) : ℚ) / (A005496 n : ℚ)⌉

end

end A145273.P6650606095153426049

/-! ## A145273.P4738627954640459128

`A000035(A117872(n)+A112859(n+1))`
-/

namespace A145273.P4738627954640459128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A117872 n + A112859 (n + 1)).toNat

end

end A145273.P4738627954640459128

/-! ## A145273.P11517533164049228284

`A316829(A365871(n+1))-A117872(n)`
-/

namespace A145273.P11517533164049228284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (A365871 (n + 1)).toNat - A117872 n

end

end A145273.P11517533164049228284

/-!
# A145278: Complement of A145198.

The programs for A145278, there is no canonical definition to state claims against.
-/

/-! ## A145278.P7713634628095712991

`∩[A206476(n+1), A390848(n+1)]`
-/

namespace A145278.P7713634628095712991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145278.P7713634628095712991

/-! ## A145278.P17543740792839870296

`∩[A343281(n+1), A390848(n+1)]`
-/

namespace A145278.P17543740792839870296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145278.P17543740792839870296

/-! ## A145278.P16396451372152468504

`∩[A208770(n+1), A390848(n+1)]`
-/

namespace A145278.P16396451372152468504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145278.P16396451372152468504

/-! ## A145278.P9878286253093955715

`∩[A353280(n+1), A390848(n+1)]`
-/

namespace A145278.P9878286253093955715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145278.P9878286253093955715

/-! ## A145278.P10164496767840012269

`∩[A100658(n+1), A390848(n+1)]`
-/

namespace A145278.P10164496767840012269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145278.P10164496767840012269

/-!
# A145279: Fecundity of n-th Fibonacci number.

The programs for A145279, there is no canonical definition to state claims against.
-/

/-! ## A145279.P3206745241459371287

`A070562(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A145279.P3206745241459371287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A145279.P3206745241459371287

/-!
# A145280: Fecundity of n-th prime.

The programs for A145280, there is no canonical definition to state claims against.
-/

/-! ## A145280.P8207711232122679881

`A070562(p?[xor(1, n)])`
-/

namespace A145280.P8207711232122679881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A145280.P8207711232122679881

/-! ## A145280.P17734940629110250615

`A070562(Δ[A007504(n)])`
-/

namespace A145280.P17734940629110250615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (f1 (n + 1) - f1 n).toNat

end

end A145280.P17734940629110250615

/-! ## A145280.P9759182437285614128

`A070562(record[A162753(n)])`
-/

namespace A145280.P9759182437285614128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145280.P9759182437285614128

/-! ## A145280.P9360394966073864752

`A070562(A000040(n+1))`
-/

namespace A145280.P9360394966073864752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (A000040 (n + 1)).toNat

end

end A145280.P9360394966073864752

/-! ## A145280.P14413181420662341924

`A070562(A008578(n+2))`
-/

namespace A145280.P14413181420662341924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (A008578 (n + 2)).toNat

end

end A145280.P14413181420662341924

/-! ## A145280.P7209161789084963561

`A070562(A182986(n+2))`
-/

namespace A145280.P7209161789084963561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (A182986 (n + 2)).toNat

end

end A145280.P7209161789084963561

/-! ## A145280.P7441817537384856738

`A070562(record[A006530(n+2)])`
-/

namespace A145280.P7441817537384856738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145280.P7441817537384856738

/-! ## A145280.P2332898426901134253

`A070562(record[A014963(n+2)])`
-/

namespace A145280.P2332898426901134253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145280.P2332898426901134253

/-! ## A145280.P2508938420637845291

`A070562(record[A020639(n+2)])`
-/

namespace A145280.P2508938420637845291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145280.P2508938420637845291

/-! ## A145280.P4316605519167854410

`A070562(p?[A207790(n+1)])`
-/

namespace A145280.P4316605519167854410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145280.P4316605519167854410

/-! ## A145280.P15178522347547596449

`A070562(A207790(2*(n+1)))`
-/

namespace A145280.P15178522347547596449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (A207790 (2 * (n + 1))).toNat

end

end A145280.P15178522347547596449

/-! ## A145280.P17008757889171793136

`A070562(eq[n, A000010(n+1)]+1)`
-/

namespace A145280.P17008757889171793136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A145280.P17008757889171793136

/-! ## A145280.P4383347752312742488

`A070562(A007504(n+1)-A007504(n))`
-/

namespace A145280.P4383347752312742488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (A007504 (n + 1) - A007504 n).toNat

end

end A145280.P4383347752312742488

/-!
# A145281: a(n) is the least prime such that (ceiling(sqrt(a(n)*p_n)))^2 - a(n)*p_n is a perfect square, where p_n is the n-th prime.

The programs for A145281, there is no canonical definition to state claims against.
-/

/-! ## A145281.P15238160295467169460

`A007918(A145236(C(2, n)+1+n))`
-/

namespace A145281.P15238160295467169460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A145236 (Nat.choose 2 n + 1 + n)).toNat

end

end A145281.P15238160295467169460

/-! ## A145281.P7119393805023830495

`or(char[2^n], A007918(A145236(n+1)))`
-/

namespace A145281.P7119393805023830495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007918 (A145236 (n + 1)).toNat)

end

end A145281.P7119393805023830495

/-! ## A145281.P113462748487016475

`or(A007918(A145236(n+1)), A011655(n))`
-/

namespace A145281.P113462748487016475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007918 (A145236 (n + 1)).toNat) (A011655 n)

end

end A145281.P113462748487016475

/-! ## A145281.P5810834076723484411

`or(A007918(A145236(n+1)), A022932(n))`
-/

namespace A145281.P5810834076723484411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007918 (A145236 (n + 1)).toNat) (A022932 n)

end

end A145281.P5810834076723484411

/-! ## A145281.P7164052997826387230

`or(A007918(A145236(n+1)), A054977(n))`
-/

namespace A145281.P7164052997826387230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007918 (A145236 (n + 1)).toNat) (A054977 n)

end

end A145281.P7164052997826387230

/-! ## A145281.P11392727686790679720

`or(A007918(A145236(n+1)), A057427(n))`
-/

namespace A145281.P11392727686790679720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007918 (A145236 (n + 1)).toNat) (A057427 n)

end

end A145281.P11392727686790679720

/-! ## A145281.P5192356275448064444

`or(A007918(A145236(n+1)), A011657(n+1))`
-/

namespace A145281.P5192356275448064444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007918 (A145236 (n + 1)).toNat) (A011657 (n + 1))

end

end A145281.P5192356275448064444

/-! ## A145281.P879194263162791167

`or(A007918(A145236(n+1)), A021913(n+1))`
-/

namespace A145281.P879194263162791167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007918 (A145236 (n + 1)).toNat) (A021913 (n + 1))

end

end A145281.P879194263162791167

/-!
# A145283: a(n) = number of monomials in n-th power of polynomial x^3-x-1.

The programs for A145283, there is no canonical definition to state claims against.
-/

/-! ## A145283.P14605816531557941499

`A000027(3*(n+1))-A025441(A299286(n))`
-/

namespace A145283.P14605816531557941499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * (n + 1)) - A025441 (A299286 n).toNat

end

end A145283.P14605816531557941499

/-! ## A145283.P10722307002881332937

`∑[A276575(A137169(n)²)]`
-/

namespace A145283.P10722307002881332937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 (A137169 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145283.P10722307002881332937

/-! ## A145283.P9512503820514685448

`A106744(A081842(n+2)+1)`
-/

namespace A145283.P9512503820514685448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A081842 (n + 2) + 1).toNat

end

end A145283.P9512503820514685448

/-! ## A145283.P2781329809850644582

`3*(n+1)-A096693(A270339(2*(n+1)))`
-/

namespace A145283.P2781329809850644582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A096693 (A270339 (2 * (n + 1))).toNat

end

end A145283.P2781329809850644582

/-! ## A145283.P4605285123624151828

`A137161(A000065(n))+A016789(n)`
-/

namespace A145283.P4605285123624151828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137161 (A000065 n).toNat + A016789 n

end

end A145283.P4605285123624151828

/-!
# A145284: a(n) = number of monomials in n-th power of polynomial x^3-x^2-x-1.

The programs for A145284, there is no canonical definition to state claims against.
-/

/-! ## A145284.P4414989361344471488

`A276283(n)+A080847(A320449(n))`
-/

namespace A145284.P4414989361344471488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n + A080847 (A320449 n).toNat

end

end A145284.P4414989361344471488

/-! ## A145284.P18204668351772110068

`A013596(A060404(n))+3*(n+1)`
-/

namespace A145284.P18204668351772110068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013596 (A060404 n).toNat + (3 * (n + 1) : ℤ)

end

end A145284.P18204668351772110068

/-!
# A145285: a(n) is the number of monomials in the n-th power of polynomial x^4-x^3-x^2-x-1.

The programs for A145285, the canonical program `A145285.P12645708157525155387` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145285 has offset 1).

The definition of A145285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145285.P12645708157525155387

`2*a(n-1)-a(n-2)` with `a(0)=5, a(1)=8, a(2)=12, a(3)=16, a(4)=20, a(5)=25, a(6)=28, a(7)=32, a(8)=37, a(9)=41`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A145285

/-- `2*a(n-1)-a(n-2)` -/
def P12645708157525155387.Spec : Prop :=
  ∀ n, P12645708157525155387.a n = A145285 (n + 1)

theorem P12645708157525155387.correct : P12645708157525155387.Spec := by
  intro n
  simp only [A145285, Nat.add_sub_cancel]

end A145285

/-!
# A145286: a(n) = number of monomials in n-th power of polynomial x^5-x^4-x^3-x^2-x-1.

The programs for A145286, there is no canonical definition to state claims against.
-/

/-! ## A145286.P4330656374307391738

`A160755(A314056(n))+5`
-/

namespace A145286.P4330656374307391738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A314056 n).toNat + 5

end

end A145286.P4330656374307391738

/-! ## A145286.P1276822796305266552

`A232749(A330186(3*n+4))-n`
-/

namespace A145286.P1276822796305266552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232749 (A330186 (3 * n + 4)).toNat - (n : ℤ)

end

end A145286.P1276822796305266552

/-! ## A145286.P15313656322186310981

`∑[A249032(13*A078355(3*n+4))]`
-/

namespace A145286.P15313656322186310981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249032 (13 * A078355 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145286.P15313656322186310981

/-! ## A145286.P16795994068398005257

`or(A070118(3*n+5), A124760(A002805(n+1)))`
-/

namespace A145286.P16795994068398005257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070118 (3 * n + 5)) (A124760 (A002805 (n + 1)).toNat)

end

end A145286.P16795994068398005257

/-! ## A145286.P14307215349949183602

`A166018(3*n+4)+A006466(A001297(n))`
-/

namespace A145286.P14307215349949183602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166018 (3 * n + 4) + A006466 (A001297 n).toNat

end

end A145286.P14307215349949183602

/-!
# A145288: Shorter side (l) of bordered rectangle described in A168339.

The programs for A145288, there is no canonical definition to state claims against.
-/

/-! ## A145288.P11740139179383872044

`A161358(n+1)+2`
-/

namespace A145288.P11740139179383872044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (n + 1) + 2

end

end A145288.P11740139179383872044

/-! ## A145288.P2269998014035010577

`A009056(A161358(n+1))`
-/

namespace A145288.P2269998014035010577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A161358 (n + 1)).toNat

end

end A145288.P2269998014035010577

/-! ## A145288.P16746976492723296880

`floor(2*n/A161357(n+1))+3`
-/

namespace A145288.P16746976492723296880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (A161357 (n + 1) : ℚ)⌋ + 3

end

end A145288.P16746976492723296880

/-! ## A145288.P18217054334632163124

`round(A005408(n)/A161357(n+1))+2`
-/

namespace A145288.P18217054334632163124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005408 n : ℚ) / (A161357 (n + 1) : ℚ)) + 2

end

end A145288.P18217054334632163124

/-! ## A145288.P13325925940199484148

`round(A103517(n)/A161357(n+1))+2`
-/

namespace A145288.P13325925940199484148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A103517 n : ℚ) / (A161357 (n + 1) : ℚ)) + 2

end

end A145288.P13325925940199484148

/-! ## A145288.P1474615781640597968

`round(A047445(n+1)/A161357(n+1))+2`
-/

namespace A145288.P1474615781640597968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A047445 (n + 1) : ℚ) / (A161357 (n + 1) : ℚ)) + 2

end

end A145288.P1474615781640597968

/-! ## A145288.P15242916602029283333

`A009056(ceil((2*n+1)/A161357(n+1)))`
-/

namespace A145288.P15242916602029283333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 ⌈(2 * n + 1 : ℚ) / (A161357 (n + 1) : ℚ)⌉.toNat

end

end A145288.P15242916602029283333

/-! ## A145288.P5345176400990800963

`(ceil((2*n+1)/A161357(n+1))+2)%A001478(3*n+5)`
-/

namespace A145288.P5345176400990800963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(2 * n + 1 : ℚ) / (A161357 (n + 1) : ℚ)⌉ + 2) (A001478 (3 * n + 5))

end

end A145288.P5345176400990800963

/-! ## A145288.P4128997349994559972

`A009056(round(A005408(n)/A161357(n+1)))`
-/

namespace A145288.P4128997349994559972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.roundAway ((A005408 n : ℚ) / (A161357 (n + 1) : ℚ))).toNat

end

end A145288.P4128997349994559972

/-! ## A145288.P16678547054966202223

`A009056(round(A103517(n)/A161357(n+1)))`
-/

namespace A145288.P16678547054966202223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.roundAway ((A103517 n : ℚ) / (A161357 (n + 1) : ℚ))).toNat

end

end A145288.P16678547054966202223

/-!
# A145291: Primes p with generic simple group set S_p.

The programs for A145291, there is no canonical definition to state claims against.
-/

/-! ## A145291.P1622982202562755605

`A363462(A110677(n+2))`
-/

namespace A145291.P1622982202562755605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363462 (A110677 (n + 2)).toNat

end

end A145291.P1622982202562755605

/-!
# A145292: Composite numbers generated by the Euler polynomial x^2 + x + 41.

The programs for A145292, there is no canonical definition to state claims against.
-/

/-! ## A145292.P4245654744099978333

`A202018(A007634(n+1))`
-/

namespace A145292.P4245654744099978333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (A007634 (n + 1)).toNat

end

end A145292.P4245654744099978333

/-! ## A145292.P16276737783049586005

`A005846(gcd(n, n+1))+A002378(A007634(n+1))`
-/

namespace A145292.P16276737783049586005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (Nat.gcd n (n + 1)) + A002378 (A007634 (n + 1)).toNat

end

end A145292.P16276737783049586005

/-! ## A145292.P7831401631782314622

`A068169(A171977(2*n+1))+A002378(A007634(n+1))`
-/

namespace A145292.P7831401631782314622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068169 (A171977 (2 * n + 1)).toNat + A002378 (A007634 (n + 1)).toNat

end

end A145292.P7831401631782314622

/-! ## A145292.P3102479271552298589

`A342253(A007634(n+1)+5)`
-/

namespace A145292.P3102479271552298589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (A007634 (n + 1) + 5).toNat

end

end A145292.P3102479271552298589

/-! ## A145292.P10773474434067713176

`A060566(A007634(n+1)+40)`
-/

namespace A145292.P10773474434067713176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (A007634 (n + 1) + 40).toNat

end

end A145292.P10773474434067713176

