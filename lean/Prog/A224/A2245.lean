import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A224500: Number of ordered full binary trees with labels from a set of at most n labels.

The programs for A224500, there is no canonical definition to state claims against.
-/

/-! ## A224500.P2999373716041220449

`∑[A052143(n)]`
-/

namespace A224500.P2999373716041220449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224500.P2999373716041220449

/-! ## A224500.P12055500178454595579

`(n+1)*A349640(n)`
-/

namespace A224500.P12055500178454595579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A349640 n

end

end A224500.P12055500178454595579

/-! ## A224500.P17041426610335294159

`a(n-1)+A052143(n)+A000045(C(n, n+1))` with `a(0)=1`
-/

namespace A224500.P17041426610335294159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A052143 n + A000045 (Nat.choose n (n + 1)))

end

end A224500.P17041426610335294159

/-! ## A224500.P16439243799770418309

`a(n-1)+A052143(n)+A008683(3*(n+1)²)` with `a(0)=1`
-/

namespace A224500.P16439243799770418309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A052143 n + A008683 (3 * (n + 1) ^ 2))

end

end A224500.P16439243799770418309

/-! ## A224500.P10842636635290202024

`record[A185946(n)]`
-/

namespace A224500.P10842636635290202024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224500.P10842636635290202024

/-!
# A224502: Prime numbers (together with one) whose representation in balanced ternary are palindromes.

The programs for A224502, there is no canonical definition to state claims against.
-/

/-! ## A224502.P14667970088985052350

`p?[A233010(n+1)]-A000038(n)`
-/

namespace A224502.P14667970088985052350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000038 n

end

end A224502.P14667970088985052350

/-! ## A224502.P10701097847187612140

`p?[A233010(n+1)]%A212697(n+1)`
-/

namespace A224502.P10701097847187612140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A212697 (n + 1))

end

end A224502.P10701097847187612140

/-! ## A224502.P10668202667613635747

`gcd(A004277(n)%2, p?[A233010(n+1)])`
-/

namespace A224502.P10668202667613635747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A004277 n) 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A224502.P10668202667613635747

/-! ## A224502.P12892981081625249698

`p?[A233010(n+1)]-A057635(2*n+1)`
-/

namespace A224502.P12892981081625249698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A057635 (2 * n + 1)

end

end A224502.P12892981081625249698

/-! ## A224502.P3353839036644521280

`p?[A233010(n+1)]^A001221(A062383(n))`
-/

namespace A224502.P3353839036644521280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A001221 (A062383 n).toNat : ℤ)

end

end A224502.P3353839036644521280

/-! ## A224502.P2978880680938411316

`filter[A134027(n+2), A380467(#)]`
-/

namespace A224502.P2978880680938411316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134027 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A224502.P2978880680938411316

/-! ## A224502.P1751386478200624463

`∩[A006005(n+1), A134027(n+1)]`
-/

namespace A224502.P1751386478200624463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224502.P1751386478200624463

/-! ## A224502.P3551105999117618423

`∩[A008578(n+1), A134027(n+1)]`
-/

namespace A224502.P3551105999117618423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224502.P3551105999117618423

/-! ## A224502.P11764317910409565684

`∩[A060634(n+1), A134027(n+1)]`
-/

namespace A224502.P11764317910409565684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224502.P11764317910409565684

/-! ## A224502.P2792814595591249330

`∩[A123365(n+1), A134027(n+1)]`
-/

namespace A224502.P2792814595591249330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224502.P2792814595591249330

/-!
# A224503: Smallest nontrivial prime power congruent to 1 mod n.

The programs for A224503, there is no canonical definition to state claims against.
-/

/-! ## A224503.P1290049363499473277

`A329524(lcm(n+2, A350818(n)))`
-/

namespace A224503.P1290049363499473277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329524 (Int.lcm (n + 2 : ℤ) (A350818 n))

end

end A224503.P1290049363499473277

/-! ## A224503.P5499448411206519219

`A329524((n+2)*A274190(n))`
-/

namespace A224503.P5499448411206519219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329524 ((n + 2 : ℤ) * A274190 n).toNat

end

end A224503.P5499448411206519219

/-! ## A224503.P16390210526438491516

`A329524((n+2)*A215521(n+1))`
-/

namespace A224503.P16390210526438491516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329524 ((n + 2 : ℤ) * A215521 (n + 1)).toNat

end

end A224503.P16390210526438491516

/-! ## A224503.P9613731860516383198

`A290480(n+3)+A033273(A020707(n))`
-/

namespace A224503.P9613731860516383198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 3) + A033273 (A020707 n).toNat

end

end A224503.P9613731860516383198

/-! ## A224503.P5552062546847256777

`A086593(A000051(n)*A001221(n+3))`
-/

namespace A224503.P5552062546847256777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (A000051 n * A001221 (n + 3)).toNat

end

end A224503.P5552062546847256777

/-!
# A224504: a(n) = number of terms in row n of A214850.

The programs for A224504, there is no canonical definition to state claims against.
-/

/-! ## A224504.P12382859215119374455

`Δ[eq[2, A214850(n+1)]]`
-/

namespace A224504.P12382859215119374455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214850 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A224504.P12382859215119374455

/-!
# A224505: Primes p such that p+1 is the sum of the squares of a pair of twin primes.

The programs for A224505, there is no canonical definition to state claims against.
-/

/-! ## A224505.P9791205755747116619

`∩[A184417(n+1), A227340(n+1)]`
-/

namespace A224505.P9791205755747116619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224505.P9791205755747116619

/-! ## A224505.P15353119703741314557

`∩[A090685(n+1), A184417(n+1)]`
-/

namespace A224505.P15353119703741314557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224505.P15353119703741314557

/-! ## A224505.P6708195145424820095

`∩[A090685(n+1), A227340(n+1)]`
-/

namespace A224505.P6708195145424820095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224505.P6708195145424820095

/-! ## A224505.P8409144617183529918

`∩[A090698(n+1), A184417(n+1)]`
-/

namespace A224505.P8409144617183529918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224505.P8409144617183529918

/-! ## A224505.P984550993811373243

`∩[A090698(n+1), A227340(n+1)]`
-/

namespace A224505.P984550993811373243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224505.P984550993811373243

/-! ## A224505.P3202831033019407070

`∩[A184417(n+1), A249410(n+1)]`
-/

namespace A224505.P3202831033019407070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224505.P3202831033019407070

/-! ## A224505.P2403411801423031797

`∩[A227340(n+1), A249410(n+1)]`
-/

namespace A224505.P2403411801423031797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224505.P2403411801423031797

/-! ## A224505.P5014215030726775432

`∩[A227340(n+1), A158740(n)]`
-/

namespace A224505.P5014215030726775432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224505.P5014215030726775432

/-! ## A224505.P8597105214505449689

`∩[A184417(n+1), A256917(n+1)]`
-/

namespace A224505.P8597105214505449689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224505.P8597105214505449689

/-! ## A224505.P9752013096328980550

`∩[A227340(n+1), A256917(n+1)]`
-/

namespace A224505.P9752013096328980550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224505.P9752013096328980550

/-!
# A224507: Numbers k such that (17^k + 2^k)/19 is prime.

The programs for A224507, there is no canonical definition to state claims against.
-/

/-! ## A224507.P13790599428414277702

`p?[A332929(A099887(n))+n+3]`
-/

namespace A224507.P13790599428414277702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332929 (A099887 n).toNat + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224507.P13790599428414277702

/-!
# A224508: a(n+2) = a(n+1) + a(n) + A*t^n, with A = 1 and t = -2.

The programs for A224508, the canonical program `A224508.P101396537568610900` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224508 has offset 0).

The definition of A224508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224508.P3651662730463252520

`(-2)^(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A224508.P3651662730463252520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (a (n - 1) + a (n - 2))

end

end A224508.P3651662730463252520

namespace A224508

/-- `(-2)^(n-2)+a(n-1)+a(n-2)` -/
def P3651662730463252520.Spec : Prop :=
  ∀ n, P3651662730463252520.a n = (A224508 n : ℚ)

end A224508

/-! ## A224508.P101396537568610900

`A104449(n)-2*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A224508

/-- `A104449(n)-2*a(n-1)` -/
def P101396537568610900.Spec : Prop :=
  ∀ n, P101396537568610900.a n = A224508 n

theorem P101396537568610900.correct : P101396537568610900.Spec := by
  intro n
  simp only [A224508]

end A224508

/-! ## A224508.P1639638332364233548

`Δ[A000285(n)]-2*a(n-1)` with `a(0)=0`
-/

namespace A224508.P1639638332364233548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - 2 * a (n - 1)

end

end A224508.P1639638332364233548

namespace A224508

/-- `Δ[A000285(n)]-2*a(n-1)` -/
def P1639638332364233548.Spec : Prop :=
  ∀ n, P1639638332364233548.a n = A224508 n

end A224508

/-! ## A224508.P14176836323301731196

`Δ[A022308(n)-2*a(n-1)]` with `a(0)=1`
-/

namespace A224508.P14176836323301731196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A022308 n - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224508.P14176836323301731196

namespace A224508

/-- `Δ[A022308(n)-2*a(n-1)]` -/
def P14176836323301731196.Spec : Prop :=
  ∀ n, P14176836323301731196.a n = A224508 n

end A224508

/-! ## A224508.P3837592894838404509

`(A022086(n)-A084179(n))/2`
-/

namespace A224508.P3837592894838404509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022086 n - A084179 n : ℚ) / 2

end

end A224508.P3837592894838404509

namespace A224508

/-- `(A022086(n)-A084179(n))/2` -/
def P3837592894838404509.Spec : Prop :=
  ∀ n, P3837592894838404509.a n = (A224508 n : ℚ)

end A224508

/-! ## A224508.P17062913891430138434

`2*A000045(n)-A084178(n)`
-/

namespace A224508.P17062913891430138434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - A084178 n

end

end A224508.P17062913891430138434

namespace A224508

/-- `2*A000045(n)-A084178(n)` -/
def P17062913891430138434.Spec : Prop :=
  ∀ n, P17062913891430138434.a n = A224508 n

end A224508

/-! ## A224508.P2666280357951629598

`A000045(n)-(A084179(n)-A084178(n))`
-/

namespace A224508.P2666280357951629598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A084179 n - A084178 n)

end

end A224508.P2666280357951629598

namespace A224508

/-- `A000045(n)-(A084179(n)-A084178(n))` -/
def P2666280357951629598.Spec : Prop :=
  ∀ n, P2666280357951629598.a n = A224508 n

end A224508

/-!
# A224509: Expansion of (1-x)*(1-2*x)*(1-3*x)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A224509, the canonical program `A224509.P7681600021664512821` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224509 has offset 0).

The definition of A224509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224509.P7681600021664512821

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=35, a(4)=125`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224509

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P7681600021664512821.Spec : Prop :=
  ∀ n, P7681600021664512821.a n = A224509 n

theorem P7681600021664512821.correct : P7681600021664512821.Spec := by
  intro n
  simp only [A224509]

end A224509

/-! ## A224509.P15193203854514691109

`A224514(n+1)-A216710(n)`
-/

namespace A224509.P15193203854514691109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 (n + 1) - A216710 n

end

end A224509.P15193203854514691109

namespace A224509

/-- `A224514(n+1)-A216710(n)` -/
def P15193203854514691109.Spec : Prop :=
  ∀ n, P15193203854514691109.a n = A224509 n

end A224509

/-! ## A224509.P17537854867693955150

`2*A220948(n)-∑[A220948(n)]`
-/

namespace A224509.P17537854867693955150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220948 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224509.P17537854867693955150

namespace A224509

/-- `2*A220948(n)-∑[A220948(n)]` -/
def P17537854867693955150.Spec : Prop :=
  ∀ n, P17537854867693955150.a n = A224509 n

end A224509

/-! ## A224509.P11255888674242358333

`A336675(2*(n+1))-A216710(n)`
-/

namespace A224509.P11255888674242358333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (2 * (n + 1)) - A216710 n

end

end A224509.P11255888674242358333

namespace A224509

/-- `A336675(2*(n+1))-A216710(n)` -/
def P11255888674242358333.Spec : Prop :=
  ∀ n, P11255888674242358333.a n = A224509 n

end A224509

/-! ## A224509.P2330072865795636083

`A224514(n+1)-A336675(2*n+1)`
-/

namespace A224509.P2330072865795636083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 (n + 1) - A336675 (2 * n + 1)

end

end A224509.P2330072865795636083

namespace A224509

/-- `A224514(n+1)-A336675(2*n+1)` -/
def P2330072865795636083.Spec : Prop :=
  ∀ n, P2330072865795636083.a n = A224509 n

end A224509

/-! ## A224509.P9485325689697220586

`A336675(2*(n+1))-A336675(2*n+1)`
-/

namespace A224509.P9485325689697220586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (2 * (n + 1)) - A336675 (2 * n + 1)

end

end A224509.P9485325689697220586

namespace A224509

/-- `A336675(2*(n+1))-A336675(2*n+1)` -/
def P9485325689697220586.Spec : Prop :=
  ∀ n, P9485325689697220586.a n = A224509 n

end A224509

/-! ## A224509.P7229782240964430317

`Δ[Δ[A231182(2*n+1)]]-A231182(2*n+1)`
-/

namespace A224509.P7229782240964430317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A231182 (2 * n + 1)

end

end A224509.P7229782240964430317

namespace A224509

/-- `Δ[Δ[A231182(2*n+1)]]-A231182(2*n+1)` -/
def P7229782240964430317.Spec : Prop :=
  ∀ n, P7229782240964430317.a n = A224509 n

end A224509

/-! ## A224509.P17905355278217698365

`Δ[A216710(n)]-A221859(n)`
-/

namespace A224509.P17905355278217698365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A221859 n

end

end A224509.P17905355278217698365

namespace A224509

/-- `Δ[A216710(n)]-A221859(n)` -/
def P17905355278217698365.Spec : Prop :=
  ∀ n, P17905355278217698365.a n = A224509 n

end A224509

/-! ## A224509.P296988940869462784

`A216710(n+1)-(A221859(n)+A216710(n))`
-/

namespace A224509.P296988940869462784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216710 (n + 1) - (A221859 n + A216710 n)

end

end A224509.P296988940869462784

namespace A224509

/-- `A216710(n+1)-(A221859(n)+A216710(n))` -/
def P296988940869462784.Spec : Prop :=
  ∀ n, P296988940869462784.a n = A224509 n

end A224509

/-! ## A224509.P10161448481764950634

`A223968(2*(n+1)²)`
-/

namespace A224509.P10161448481764950634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223968 (2 * (n + 1) ^ 2)

end

end A224509.P10161448481764950634

namespace A224509

/-- `A223968(2*(n+1)²)` -/
def P10161448481764950634.Spec : Prop :=
  ∀ n, P10161448481764950634.a n = A224509 n

end A224509

/-!
# A224510: Number of simple labeled graphs on {1,2,...,n} such that the node labeled with 1 is in the same component as the node labeled with 2.

The programs for A224510, there is no canonical definition to state claims against.
-/

/-! ## A224510.P16780965714695512172

`A002266(A038754(∑[n]))`
-/

namespace A224510.P16780965714695512172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A038754 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224510.P16780965714695512172

/-! ## A224510.P7449061949016506789

`A059995(A060647(∑[n]))`
-/

namespace A224510.P7449061949016506789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A060647 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224510.P7449061949016506789

/-!
# A224512: Gray code variant of A147582.

The programs for A224512, there is no canonical definition to state claims against.
-/

/-! ## A224512.P12418744626701301266

`A147582(or(1, xor(n, 2*n)))`
-/

namespace A224512.P12418744626701301266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (Nat.lor 1 (Nat.xor n (2 * n)))

end

end A224512.P12418744626701301266

/-! ## A224512.P617975344628342218

`A160415(or(1, xor(n, 2*n)))`
-/

namespace A224512.P617975344628342218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160415 (Nat.lor 1 (Nat.xor n (2 * n)))

end

end A224512.P617975344628342218

/-! ## A224512.P6616794944938724748

`A147582(xor(n, or(1, n)+n))`
-/

namespace A224512.P6616794944938724748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (Nat.xor n (Nat.lor 1 n + n))

end

end A224512.P6616794944938724748

/-! ## A224512.P5809878835672542868

`A160415(xor(n, or(1, n)+n))`
-/

namespace A224512.P5809878835672542868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160415 (Nat.xor n (Nat.lor 1 n + n))

end

end A224512.P5809878835672542868

/-! ## A224512.P6008385393212186010

`floor(4*3^A005811(n)/3)`
-/

namespace A224512.P6008385393212186010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((3 : ℚ) ^ (A005811 n : ℤ) / 3)⌋

end

end A224512.P6008385393212186010

/-! ## A224512.P399213870799793661

`A147582(xor(n, floor(n/2))+1)`
-/

namespace A224512.P399213870799793661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A224512.P399213870799793661

/-! ## A224512.P2007636835042036816

`A147582(comp[3*n]-and(n, 2*n))`
-/

namespace A224512.P2007636835042036816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - Nat.land n (2 * n))

end

end A224512.P2007636835042036816

/-! ## A224512.P15216451641412185368

`A003946(A005811(n))`
-/

namespace A224512.P15216451641412185368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (A005811 n).toNat

end

end A224512.P15216451641412185368

/-! ## A224512.P10801724310527397151

`A052156(A088748(n))`
-/

namespace A224512.P10801724310527397151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (A088748 n).toNat

end

end A224512.P10801724310527397151

/-!
# A224513: Gray code variant of A147562.

The programs for A224513, there is no canonical definition to state claims against.
-/

/-! ## A224513.P5393243219563692409

`∑[A224512(n+1)]`
-/

namespace A224513.P5393243219563692409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224513.P5393243219563692409

/-! ## A224513.P3584581486227906853

`∑[A147582(or(1, xor(n, 2*n)))]`
-/

namespace A224513.P3584581486227906853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (Nat.lor 1 (Nat.xor n (2 * n)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224513.P3584581486227906853

/-! ## A224513.P17524539652170309065

`∑[A147582(xor(n, or(1, n)+n))]`
-/

namespace A224513.P17524539652170309065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (Nat.xor n (Nat.lor 1 n + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224513.P17524539652170309065

/-! ## A224513.P5390254848858321924

`∑[A160415(xor(n, or(1, n)+n))]`
-/

namespace A224513.P5390254848858321924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160415 (Nat.xor n (Nat.lor 1 n + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224513.P5390254848858321924

/-! ## A224513.P9825065332733794607

`∑[A147582(xor(n, floor(n/2))+1)]`
-/

namespace A224513.P9825065332733794607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224513.P9825065332733794607

/-!
# A224514: Expansion of (1-x)*(1-3*x)*(1-3*x+x^2)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A224514, the canonical program `A224514.P523680564005807271` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224514 has offset 0).

The definition of A224514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224514.P523680564005807271

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20, a(4)=70`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224514

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P523680564005807271.Spec : Prop :=
  ∀ n, P523680564005807271.a n = A224514 n

theorem P523680564005807271.correct : P523680564005807271.Spec := by
  intro n
  simp only [A224514]

end A224514

/-! ## A224514.P16082649673776802930

`A336675(2*n)`
-/

namespace A224514.P16082649673776802930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (2 * n)

end

end A224514.P16082649673776802930

namespace A224514

/-- `A336675(2*n)` -/
def P16082649673776802930.Spec : Prop :=
  ∀ n, P16082649673776802930.a n = A224514 n

end A224514

/-! ## A224514.P14234172335835576866

`record[A336675(n)/(-1)^n]`
-/

namespace A224514.P14234172335835576866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336675 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224514.P14234172335835576866

namespace A224514

/-- `record[A336675(n)/(-1)^n]` -/
def P14234172335835576866.Spec : Prop :=
  ∀ n, P14234172335835576866.a n = (A224514 n : ℚ)

end A224514

/-! ## A224514.P10110644939869879384

`record[A336675(A029578(n))]`
-/

namespace A224514.P10110644939869879384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224514.P10110644939869879384

namespace A224514

/-- `record[A336675(A029578(n))]` -/
def P10110644939869879384.Spec : Prop :=
  ∀ n, P10110644939869879384.a n = A224514 n

end A224514

/-! ## A224514.P17455888443654011901

`record[A336675(A124625(n))]`
-/

namespace A224514.P17455888443654011901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224514.P17455888443654011901

namespace A224514

/-- `record[A336675(A124625(n))]` -/
def P17455888443654011901.Spec : Prop :=
  ∀ n, P17455888443654011901.a n = A224514 n

end A224514

/-! ## A224514.P10099562701327245766

`record[A336675(n)^(A040001(n)/2)]`
-/

namespace A224514.P10099562701327245766
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A336675 n : ℝ) ^ ((A040001 n : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224514.P10099562701327245766

namespace A224514

/-- `record[A336675(n)^(A040001(n)/2)]` -/
def P10099562701327245766.Spec : Prop :=
  ∀ n, P10099562701327245766.a n = (A224514 n : ℝ)

end A224514

/-! ## A224514.P13275009434029894469

`and(A057428(n+1), A336675(A005843(n)))`
-/

namespace A224514.P13275009434029894469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A336675 (A005843 n).toNat)

end

end A224514.P13275009434029894469

namespace A224514

/-- `and(A057428(n+1), A336675(A005843(n)))` -/
def P13275009434029894469.Spec : Prop :=
  ∀ n, P13275009434029894469.a n = A224514 n

end A224514

/-! ## A224514.P13260993586811845539

`A336675(A005843(n))/A001222(A007918(n))`
-/

namespace A224514.P13260993586811845539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336675 (A005843 n).toNat : ℚ) / (A001222 (A007918 n).toNat : ℚ)

end

end A224514.P13260993586811845539

namespace A224514

/-- `A336675(A005843(n))/A001222(A007918(n))` -/
def P13260993586811845539.Spec : Prop :=
  ∀ n, P13260993586811845539.a n = (A224514 n : ℚ)

end A224514

/-! ## A224514.P9855876340025903768

`A122608(2*(n+1))-Δ[A122608(2*(n+1))]`
-/

namespace A224514.P9855876340025903768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122608 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122608 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A224514.P9855876340025903768

namespace A224514

/-- `A122608(2*(n+1))-Δ[A122608(2*(n+1))]` -/
def P9855876340025903768.Spec : Prop :=
  ∀ n, P9855876340025903768.a n = A224514 n

end A224514

/-! ## A224514.P8973541988097098439

`A153360(2*n+1)-A090994(2*n+1)`
-/

namespace A224514.P8973541988097098439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153360 (2 * n + 1) - A090994 (2 * n + 1)

end

end A224514.P8973541988097098439

namespace A224514

/-- `A153360(2*n+1)-A090994(2*n+1)` -/
def P8973541988097098439.Spec : Prop :=
  ∀ n, P8973541988097098439.a n = A224514 n

end A224514

/-! ## A224514.P13131744334396335974

`A153360(2*n+1)-A153360(2*(n+1))/2`
-/

namespace A224514.P13131744334396335974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153360 (2 * n + 1) : ℚ) - (A153360 (2 * (n + 1)) : ℚ) / 2

end

end A224514.P13131744334396335974

namespace A224514

/-- `A153360(2*n+1)-A153360(2*(n+1))/2` -/
def P13131744334396335974.Spec : Prop :=
  ∀ n, P13131744334396335974.a n = (A224514 n : ℚ)

end A224514

/-! ## A224514.P9829151932953702694

`A336675(A005843(n))%A000108(n+2)`
-/

namespace A224514.P9829151932953702694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336675 (A005843 n).toNat) (A000108 (n + 2))

end

end A224514.P9829151932953702694

namespace A224514

/-- `A336675(A005843(n))%A000108(n+2)` -/
def P9829151932953702694.Spec : Prop :=
  ∀ n, P9829151932953702694.a n = A224514 n

end A224514

/-!
# A224516: Number of solutions to x^4 - x == 0 (mod n).

The programs for A224516, the canonical program `A224516.P4254981347655587293` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224516 has offset 1).

The definition of A224516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224516.P4254981347655587293

`A002487(A060839(n+1))*A034444(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A224516

/-- `A002487(A060839(n+1))*A034444(n+1)` -/
def P4254981347655587293.Spec : Prop :=
  ∀ n, P4254981347655587293.a n = A224516 (n + 1)

theorem P4254981347655587293.correct : P4254981347655587293.Spec := by
  intro n
  simp only [A224516, Nat.add_sub_cancel]

end A224516

/-! ## A224516.P3976744072713278436

`A061142(A034444(n+1)*A060839(n+1))`
-/

namespace A224516.P3976744072713278436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A034444 (n + 1) * A060839 (n + 1)).toNat

end

end A224516.P3976744072713278436

namespace A224516

/-- `A061142(A034444(n+1)*A060839(n+1))` -/
def P3976744072713278436.Spec : Prop :=
  ∀ n, P3976744072713278436.a n = A224516 (n + 1)

end A224516

/-! ## A224516.P18153127101241447504

`A061142(A060839(n+1)*A181819(n+1))`
-/

namespace A224516.P18153127101241447504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A060839 (n + 1) * A181819 (n + 1)).toNat

end

end A224516.P18153127101241447504

namespace A224516

/-- `A061142(A060839(n+1)*A181819(n+1))` -/
def P18153127101241447504.Spec : Prop :=
  ∀ n, P18153127101241447504.a n = A224516 (n + 1)

end A224516

/-! ## A224516.P2999041567980792473

`A034444(n+1)*A283976(A319100(n+1))`
-/

namespace A224516.P2999041567980792473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A283976 (A319100 (n + 1)).toNat

end

end A224516.P2999041567980792473

namespace A224516

/-- `A034444(n+1)*A283976(A319100(n+1))` -/
def P2999041567980792473.Spec : Prop :=
  ∀ n, P2999041567980792473.a n = A224516 (n + 1)

end A224516

/-! ## A224516.P10191549699747277038

`2^(A001221(n+1)+A001222(A060839(n+1)))`
-/

namespace A224516.P10191549699747277038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) + A001222 (A060839 (n + 1)).toNat : ℤ)

end

end A224516.P10191549699747277038

namespace A224516

/-- `2^(A001221(n+1)+A001222(A060839(n+1)))` -/
def P10191549699747277038.Spec : Prop :=
  ∀ n, P10191549699747277038.a n = (A224516 (n + 1) : ℚ)

end A224516

/-! ## A224516.P7566977847456305838

`A061142(A007947(n+1))*A061142(A060839(n+1))`
-/

namespace A224516.P7566977847456305838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A007947 (n + 1)).toNat * A061142 (A060839 (n + 1)).toNat

end

end A224516.P7566977847456305838

namespace A224516

/-- `A061142(A007947(n+1))*A061142(A060839(n+1))` -/
def P7566977847456305838.Spec : Prop :=
  ∀ n, P7566977847456305838.a n = A224516 (n + 1)

end A224516

/-! ## A224516.P12791350912256258495

`A061142(A007947(n+1)*A060839(n+1))`
-/

namespace A224516.P12791350912256258495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A007947 (n + 1) * A060839 (n + 1)).toNat

end

end A224516.P12791350912256258495

namespace A224516

/-- `A061142(A007947(n+1)*A060839(n+1))` -/
def P12791350912256258495.Spec : Prop :=
  ∀ n, P12791350912256258495.a n = A224516 (n + 1)

end A224516

/-! ## A224516.P8130556990034703129

`A000010(A060839(n+1)!)*A034444(n+1)`
-/

namespace A224516.P8130556990034703129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (A060839 (n + 1)).toNat) * A034444 (n + 1)

end

end A224516.P8130556990034703129

namespace A224516

/-- `A000010(A060839(n+1)!)*A034444(n+1)` -/
def P8130556990034703129.Spec : Prop :=
  ∀ n, P8130556990034703129.a n = A224516 (n + 1)

end A224516

/-! ## A224516.P16063263232064173882

`A027748(A060839(n+1)!)*A034444(n+1)`
-/

namespace A224516.P16063263232064173882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (Nat.factorial (A060839 (n + 1)).toNat) * A034444 (n + 1)

end

end A224516.P16063263232064173882

namespace A224516

/-- `A027748(A060839(n+1)!)*A034444(n+1)` -/
def P16063263232064173882.Spec : Prop :=
  ∀ n, P16063263232064173882.a n = A224516 (n + 1)

end A224516

/-! ## A224516.P5475789281320132855

`A034444(n+1)*A038502(A060839(n+1)!)`
-/

namespace A224516.P5475789281320132855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A038502 (Nat.factorial (A060839 (n + 1)).toNat)

end

end A224516.P5475789281320132855

namespace A224516

/-- `A034444(n+1)*A038502(A060839(n+1)!)` -/
def P5475789281320132855.Spec : Prop :=
  ∀ n, P5475789281320132855.a n = A224516 (n + 1)

end A224516

/-!
# A224517: Numbers not expressible as a sum of non-consecutive distinct squares.

The programs for A224517, there is no canonical definition to state claims against.
-/

/-! ## A224517.P8820319116151313578

`eq[0, A220945(n)]`
-/

namespace A224517.P8820319116151313578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224517.P8820319116151313578

/-! ## A224517.P4115209506245656267

`lt[A220945(n+1), 1]+1`
-/

namespace A224517.P4115209506245656267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220945 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A224517.P4115209506245656267

/-! ## A224517.P1776121263460098314

`lt[A220945(2*n-n), 1]`
-/

namespace A224517.P1776121263460098314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220945 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224517.P1776121263460098314

/-! ## A224517.P14126782123469697447

`abs(lt[A220945(abs(1-n)), 1]-1)`
-/

namespace A224517.P14126782123469697447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220945 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1|

end

end A224517.P14126782123469697447

/-! ## A224517.P11813752125548061508

`A000027(lt[A220945(n), 1])`
-/

namespace A224517.P11813752125548061508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220945 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A224517.P11813752125548061508

/-! ## A224517.P9302359106418568836

`lt[A000217(A220945(n)²), 1]`
-/

namespace A224517.P9302359106418568836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A220945 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224517.P9302359106418568836

/-! ## A224517.P14566728646677527759

`lt[A000290(A220945(n)²), 1]`
-/

namespace A224517.P14566728646677527759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A220945 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224517.P14566728646677527759

/-! ## A224517.P4664822857436940144

`lt[A000203(A220945(n)+1), 2]`
-/

namespace A224517.P4664822857436940144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A220945 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224517.P4664822857436940144

/-! ## A224517.P15979700457357535480

`lt[A002024(A220945(n)+1), 2]`
-/

namespace A224517.P15979700457357535480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A220945 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224517.P15979700457357535480

/-! ## A224517.P2805275111322740149

`lt[A130082(A220945(n)+1), 2]`
-/

namespace A224517.P2805275111322740149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (A220945 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224517.P2805275111322740149

/-!
# A224519: For n >= 4, a(n) = (A056899(n) - A056899(n-1))/72, where A056899 lists the primes of the form k^2 + 2.

The programs for A224519, there is no canonical definition to state claims against.
-/

/-! ## A224519.P2103425370302445589

`Δ[C(A056900(n)+1, 2)]`
-/

namespace A224519.P2103425370302445589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056900 n + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A224519.P2103425370302445589

/-! ## A224519.P6538949401602179185

`Δ[C(A091199(n+1), 2)]`
-/

namespace A224519.P6538949401602179185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091199 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A224519.P6538949401602179185

/-! ## A224519.P13577724807357306063

`Δ[A232011(n+1)²/8]`
-/

namespace A224519.P13577724807357306063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232011 (n + 1) ^ 2 : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224519.P13577724807357306063

/-! ## A224519.P688961012599893890

`Δ[(A056899(n+3)-2)/72]`
-/

namespace A224519.P688961012599893890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056899 (n + 3) - 2 : ℚ) / 72

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224519.P688961012599893890

/-! ## A224519.P11803861758979799434

`Δ[(A067201(n+3)/6)²/2]`
-/

namespace A224519.P11803861758979799434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A067201 (n + 3) : ℚ) / 6) ^ 2 / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224519.P11803861758979799434

/-! ## A224519.P17963431170795593005

`Δ[A000124(A056900(n))]`
-/

namespace A224519.P17963431170795593005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A056900 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224519.P17963431170795593005

/-! ## A224519.P4720942452277153892

`Δ[A001971(A232011(n+1))]`
-/

namespace A224519.P4720942452277153892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A232011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224519.P4720942452277153892

/-! ## A224519.P2951621422193698275

`Δ[A161680(A091199(n+1))]`
-/

namespace A224519.P2951621422193698275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A091199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224519.P2951621422193698275

/-! ## A224519.P15507338186865632007

`Δ[A000124(A091199(n+1)-1)]`
-/

namespace A224519.P15507338186865632007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A091199 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224519.P15507338186865632007

/-! ## A224519.P916193829175129096

`Δ[A000217(A091199(n+1)-1)]`
-/

namespace A224519.P916193829175129096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A091199 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224519.P916193829175129096

/-!
# A224520: Numbers a(n) with property a(n) + a(n+4) = 2^(n+4) - 1 = A000225(n+4).

The programs for A224520, the canonical program `A224520.P18365774479045530183` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224520 has offset 0).

The definition of A224520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224520.P18365774479045530183

`floor(2^(n+4)/17)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224520

/-- `floor(2^(n+4)/17)` -/
def P18365774479045530183.Spec : Prop :=
  ∀ n, P18365774479045530183.a n = A224520 n

theorem P18365774479045530183.correct : P18365774479045530183.Spec := by
  intro n
  simp only [A224520]

end A224520

/-! ## A224520.P7713862802838669869

`∑[∑[∑[n]]]%2+2*a(n-1)` with `a(0)=0`
-/

namespace A224520.P7713862802838669869
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 2 * a (n - 1)

end

end A224520.P7713862802838669869

namespace A224520

/-- `∑[∑[∑[n]]]%2+2*a(n-1)` -/
def P7713862802838669869.Spec : Prop :=
  ∀ n, (P7713862802838669869.a n : ℤ) = A224520 n

end A224520

/-! ## A224520.P16183925037225340832

`∑[A191497(n+3)]`
-/

namespace A224520.P16183925037225340832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191497 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224520.P16183925037225340832

namespace A224520

/-- `∑[A191497(n+3)]` -/
def P16183925037225340832.Spec : Prop :=
  ∀ n, P16183925037225340832.a n = A224520 n

end A224520

/-! ## A224520.P2849513578062736441

`a(n-1)+A131078(n)+a(n-1)` with `a(0)=0`
-/

namespace A224520.P2849513578062736441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A131078 n + a (n - 1))

end

end A224520.P2849513578062736441

namespace A224520

/-- `a(n-1)+A131078(n)+a(n-1)` -/
def P2849513578062736441.Spec : Prop :=
  ∀ n, P2849513578062736441.a n = A224520 n

end A224520

/-! ## A224520.P11554226798522487275

`A000225(n)-floor(A000225(n)/17)`
-/

namespace A224520.P11554226798522487275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - ⌊(A000225 n : ℚ) / 17⌋

end

end A224520.P11554226798522487275

namespace A224520

/-- `A000225(n)-floor(A000225(n)/17)` -/
def P11554226798522487275.Spec : Prop :=
  ∀ n, P11554226798522487275.a n = A224520 n

end A224520

/-! ## A224520.P7521153318024825891

`record[floor(A072478(n)/17)]`
-/

namespace A224520.P7521153318024825891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072478 n : ℚ) / 17⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224520.P7521153318024825891

namespace A224520

/-- `record[floor(A072478(n)/17)]` -/
def P7521153318024825891.Spec : Prop :=
  ∀ n, P7521153318024825891.a n = A224520 n

end A224520

/-! ## A224520.P9190815825429885084

`record[floor(A122111(n+1)/17)]`
-/

namespace A224520.P9190815825429885084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122111 (n + 1) : ℚ) / 17⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224520.P9190815825429885084

namespace A224520

/-- `record[floor(A122111(n+1)/17)]` -/
def P9190815825429885084.Spec : Prop :=
  ∀ n, P9190815825429885084.a n = A224520 n

end A224520

/-!
# A224521: Numbers a(n) with property a(n) + a(n+5) = 2^(n+5) - 1 = A000225(n+5).

The programs for A224521, the canonical program `A224521.P1292483461684483283` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224521 has offset 0).

The definition of A224521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224521.P1292483461684483283

`floor(2^(n+5)/33)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224521

/-- `floor(2^(n+5)/33)` -/
def P1292483461684483283.Spec : Prop :=
  ∀ n, P1292483461684483283.a n = A224521 n

theorem P1292483461684483283.correct : P1292483461684483283.Spec := by
  intro n
  simp only [A224521]

end A224521

/-! ## A224521.P15462289886283280473

`a(n-1)+A112713(n)+a(n-1)` with `a(0)=0`
-/

namespace A224521.P15462289886283280473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A112713 n + a (n - 1))

end

end A224521.P15462289886283280473

namespace A224521

/-- `a(n-1)+A112713(n)+a(n-1)` -/
def P15462289886283280473.Spec : Prop :=
  ∀ n, P15462289886283280473.a n = A224521 n

end A224521

/-! ## A224521.P1653695739973499545

`A000225(n)-floor(A000225(n)/33)`
-/

namespace A224521.P1653695739973499545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - ⌊(A000225 n : ℚ) / 33⌋

end

end A224521.P1653695739973499545

namespace A224521

/-- `A000225(n)-floor(A000225(n)/33)` -/
def P1653695739973499545.Spec : Prop :=
  ∀ n, P1653695739973499545.a n = A224521 n

end A224521

/-! ## A224521.P10665516309580642060

`A000079(n)-ceil(A000079(n)/33)`
-/

namespace A224521.P10665516309580642060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ⌈(A000079 n : ℚ) / 33⌉

end

end A224521.P10665516309580642060

namespace A224521

/-- `A000079(n)-ceil(A000079(n)/33)` -/
def P10665516309580642060.Spec : Prop :=
  ∀ n, P10665516309580642060.a n = A224521 n

end A224521

/-! ## A224521.P5002628391991739664

`∑[record[round(A156552(n+1)/66)]]`
-/

namespace A224521.P5002628391991739664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A156552 (n + 1) : ℚ) / 66)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224521.P5002628391991739664

namespace A224521

/-- `∑[record[round(A156552(n+1)/66)]]` -/
def P5002628391991739664.Spec : Prop :=
  ∀ n, P5002628391991739664.a n = A224521 n

end A224521

/-!
# A224522: Least prime which is followed by a gap of 30n.

The programs for A224522, there is no canonical definition to state claims against.
-/

/-! ## A224522.P12906956976119817797

`A058193(5*(n+1))`
-/

namespace A224522.P12906956976119817797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058193 (5 * (n + 1))

end

end A224522.P12906956976119817797

/-! ## A224522.P8277823352592638975

`A000230(15*(n+1))`
-/

namespace A224522.P8277823352592638975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (15 * (n + 1))

end

end A224522.P8277823352592638975

/-! ## A224522.P10703385599601483503

`A045881(15*(n+1))-1`
-/

namespace A224522.P10703385599601483503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (15 * (n + 1)) - 1

end

end A224522.P10703385599601483503

/-! ## A224522.P2874914200684827813

`or(1, A000230(A008597(n+1)))`
-/

namespace A224522.P2874914200684827813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000230 (A008597 (n + 1)).toNat)

end

end A224522.P2874914200684827813

/-! ## A224522.P10102097838214350998

`A057428(n+1)+A045881(15*(n+1))`
-/

namespace A224522.P10102097838214350998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A045881 (15 * (n + 1))

end

end A224522.P10102097838214350998

/-!
# A224524: Table read by antidiagonals: T(n,k) is the number of idempotent n X n 0..k matrices of rank 1.

The programs for A224524, there is no canonical definition to state claims against.
-/

/-! ## A224524.P984556892230906219

`A004396(A193842(n))%A376754(3*n+1)*A002260(n+1)`
-/

namespace A224524.P984556892230906219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 (A193842 n).toNat) (A376754 (3 * n + 1)) * A002260 (n + 1)

end

end A224524.P984556892230906219

/-! ## A224524.P431561168024012795

`A002260(n+1)*A193702(A032555(n+1))`
-/

namespace A224524.P431561168024012795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A193702 (A032555 (n + 1)).toNat

end

end A224524.P431561168024012795

/-! ## A224524.P14275800215467952364

`A002260(A032555(n+1))*A193710(n+1)`
-/

namespace A224524.P14275800215467952364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A032555 (n + 1)).toNat * A193710 (n + 1)

end

end A224524.P14275800215467952364

/-! ## A224524.P18064938433238564147

`A002260(n+1)*A193702(A082217(n+1))`
-/

namespace A224524.P18064938433238564147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A193702 (A082217 (n + 1)).toNat

end

end A224524.P18064938433238564147

/-! ## A224524.P12423448345600939636

`A089854(A002260(n+1)*A193702(n+1))`
-/

namespace A224524.P12423448345600939636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A002260 (n + 1) * A193702 (n + 1)).toNat

end

end A224524.P12423448345600939636

/-!
# A224525: Number of idempotent 3 X 3 0..n matrices of rank 1.

The programs for A224525, there is no canonical definition to state claims against.
-/

/-! ## A224525.P16872762564740650557

`A224524(∑[n+2]+4)`
-/

namespace A224525.P16872762564740650557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224525.P16872762564740650557

/-! ## A224525.P9353473246335909390

`lcm(3, A224524(A167614(n+1)))`
-/

namespace A224525.P9353473246335909390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A224524 (A167614 (n + 1)).toNat)

end

end A224525.P9353473246335909390

/-! ## A224525.P17330024429945222939

`A224524(A167614(n+1))%A017057(n)`
-/

namespace A224525.P17330024429945222939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224524 (A167614 (n + 1)).toNat) (A017057 n)

end

end A224525.P17330024429945222939

/-! ## A224525.P4685661027768776184

`or(A224524(A167614(n+1)), A290452(n))`
-/

namespace A224525.P4685661027768776184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A224524 (A167614 (n + 1)).toNat) (A290452 n)

end

end A224525.P4685661027768776184

/-! ## A224525.P13454978991075550239

`or(A010051(n+1), A224524(A167614(n+1)))`
-/

namespace A224525.P13454978991075550239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A224524 (A167614 (n + 1)).toNat)

end

end A224525.P13454978991075550239

/-! ## A224525.P8978659340984893904

`or(A188034(n+1), A224524(A167614(n+1)))`
-/

namespace A224525.P8978659340984893904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188034 (n + 1)) (A224524 (A167614 (n + 1)).toNat)

end

end A224525.P8978659340984893904

/-! ## A224525.P13043378317518077951

`A224524(A167614(n+1))+2-A000040(gcd(n, n+1))`
-/

namespace A224525.P13043378317518077951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A167614 (n + 1)).toNat + 2 - A000040 (Nat.gcd n (n + 1))

end

end A224525.P13043378317518077951

/-!
# A224526: Number of idempotent 4 X 4 0..n matrices of rank 1.

The programs for A224526, there is no canonical definition to state claims against.
-/

/-! ## A224526.P12633032918926115051

`A224524(A052905(n)+9)`
-/

namespace A224526.P12633032918926115051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A052905 n + 9).toNat

end

end A224526.P12633032918926115051

/-! ## A224526.P15993022586747203708

`A224524(A167614(n+2)+1)`
-/

namespace A224526.P15993022586747203708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A167614 (n + 2) + 1).toNat

end

end A224526.P15993022586747203708

/-! ## A224526.P6019243505310083678

`A224524(A000096(n+2)+5)`
-/

namespace A224526.P6019243505310083678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A000096 (n + 2) + 5).toNat

end

end A224526.P6019243505310083678

/-! ## A224526.P4899582780411479476

`A224524(A000217(n+3)+4)`
-/

namespace A224526.P4899582780411479476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A000217 (n + 3) + 4).toNat

end

end A224526.P4899582780411479476

/-! ## A224526.P1633481144472869914

`A224524(A055998(n+1)+7)`
-/

namespace A224526.P1633481144472869914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A055998 (n + 1) + 7).toNat

end

end A224526.P1633481144472869914

/-! ## A224526.P10306836382941517501

`record[A224524(n+10)/A224524(n+7)]`
-/

namespace A224526.P10306836382941517501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224524 (n + 10) : ℚ) / (A224524 (n + 7) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224526.P10306836382941517501

/-! ## A224526.P16521189814061371801

`record[root(A224524(n+10), A013612(n+6))]`
-/

namespace A224526.P16521189814061371801
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224524 (n + 10) : ℝ) ^ (1 / (A013612 (n + 6) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224526.P16521189814061371801

/-!
# A224527: Number of idempotent 5X5 0..n matrices of rank 1.

The programs for A224527, there is no canonical definition to state claims against.
-/

/-! ## A224527.P16270977252005573188

`A224524(C(n+6, 2)-n)`
-/

namespace A224527.P16270977252005573188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (Nat.choose (n + 6) 2 - n)

end

end A224527.P16270977252005573188

/-! ## A224527.P10350337513985221050

`A224524(A167499(n+3))`
-/

namespace A224527.P10350337513985221050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A167499 (n + 3)).toNat

end

end A224527.P10350337513985221050

/-! ## A224527.P6578003738070457340

`A224524(A155212(n)+13)`
-/

namespace A224527.P6578003738070457340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A155212 n + 13).toNat

end

end A224527.P6578003738070457340

/-! ## A224527.P13493105327223174587

`A224524(A056000(n)+15)`
-/

namespace A224527.P13493105327223174587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A056000 n + 15).toNat

end

end A224527.P13493105327223174587

/-! ## A224527.P11669844935184960582

`A224524(eq[7, A066657(n)])`
-/

namespace A224527.P11669844935184960582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224527.P11669844935184960582

/-!
# A224528: Number of idempotent 6X6 0..n matrices of rank 1.

The programs for A224528, there is no canonical definition to state claims against.
-/

/-! ## A224528.P5770636000209501406

`A224524(C(n+7, 2)-n)`
-/

namespace A224528.P5770636000209501406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (Nat.choose (n + 7) 2 - n)

end

end A224528.P5770636000209501406

/-! ## A224528.P10828099161402918239

`A224524(A167499(n+4)+1)`
-/

namespace A224528.P10828099161402918239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A167499 (n + 4) + 1).toNat

end

end A224528.P10828099161402918239

/-! ## A224528.P17055482516568934974

`A224524(A167614(n+4)+3)`
-/

namespace A224528.P17055482516568934974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A167614 (n + 4) + 3).toNat

end

end A224528.P17055482516568934974

/-! ## A224528.P284344344554980965

`A224524(A000124(n+5)+5)`
-/

namespace A224528.P284344344554980965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (A000124 (n + 5) + 5).toNat

end

end A224528.P284344344554980965

/-! ## A224528.P1448042921956632046

`A224524(eq[7, A131818(n+1)])`
-/

namespace A224528.P1448042921956632046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224528.P1448042921956632046

/-!
# A224529: Sequence f_n from a paper by Robert Osburn and Brundaban Sahu.

The programs for A224529, there is no canonical definition to state claims against.
-/

/-! ## A224529.P4089789268939153491

`A008619(A030808(n+1))-A002075(n+1)`
-/

namespace A224529.P4089789268939153491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A030808 (n + 1)).toNat - A002075 (n + 1)

end

end A224529.P4089789268939153491

/-!
# A224530: Sequence F_n from a paper by Robert Osburn and Brundaban Sahu.

The programs for A224530, there is no canonical definition to state claims against.
-/

/-! ## A224530.P8224949732622792527

`A151497(n)+A002265(A151495(n))`
-/

namespace A224530.P8224949732622792527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151497 n + A002265 (A151495 n).toNat

end

end A224530.P8224949732622792527

/-! ## A224530.P2799108322376810347

`A242062(A007226(n))+A204387(n+1)`
-/

namespace A224530.P2799108322376810347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A007226 n).toNat + A204387 (n + 1)

end

end A224530.P2799108322376810347

/-!
# A224532: Largest number k such that phi(k) = A007374(n).

The programs for A224532, there is no canonical definition to state claims against.
-/

/-! ## A224532.P5895111078743712342

`A224531(C(n+3, 2))`
-/

namespace A224532.P5895111078743712342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224531 (Nat.choose (n + 3) 2)

end

end A224532.P5895111078743712342

/-! ## A224532.P5913117497668688003

`A224531(∑[n+2]+1)`
-/

namespace A224532.P5913117497668688003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224531 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224532.P5913117497668688003

/-! ## A224532.P11038404844497499812

`A224531(A000217(n+2))*A254377(2*(n+2))`
-/

namespace A224532.P11038404844497499812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224531 (A000217 (n + 2)).toNat * A254377 (2 * (n + 2))

end

end A224532.P11038404844497499812

/-! ## A224532.P12948637887319838461

`A319048(A007374(n+2))`
-/

namespace A224532.P12948637887319838461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A007374 (n + 2)).toNat

end

end A224532.P12948637887319838461

/-! ## A224532.P18284591912945382068

`A319048(A014573(n+2))`
-/

namespace A224532.P18284591912945382068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A014573 (n + 2)).toNat

end

end A224532.P18284591912945382068

/-!
# A224533: Odd numbers n for which the number of iterations to reach the largest equals number of iterations to reach 1 from the largest in Collatz (3x+1) trajectory of n.

The programs for A224533, there is no canonical definition to state claims against.
-/

/-! ## A224533.P184307934369650874

`filter[A224303(n+1), A374134(#)]`
-/

namespace A224533.P184307934369650874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A224533.P184307934369650874

/-! ## A224533.P16851443869466313828

`filter[A224303(n+1), A379952(#)]`
-/

namespace A224533.P16851443869466313828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A224533.P16851443869466313828

/-! ## A224533.P15707866046852997114

`record[A093178(A224303(n+1))]`
-/

namespace A224533.P15707866046852997114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A224303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224533.P15707866046852997114

/-! ## A224533.P9647051131989898817

`filter[A224303(n+1), A000035(#)]`
-/

namespace A224533.P9647051131989898817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A224533.P9647051131989898817

/-!
# A224534: Prime numbers that are the sum of three distinct prime numbers.

The programs for A224534, there is no canonical definition to state claims against.
-/

/-! ## A224534.P11531968577558269449

`p?[2*n+19]`
-/

namespace A224534.P11531968577558269449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A224534.P11531968577558269449

/-! ## A224534.P17824662468053382660

`or(1, p?[a(n-1)+2])` with `a(0)=19`
-/

namespace A224534.P17824662468053382660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A224534.P17824662468053382660

/-! ## A224534.P361623844547531549

`∏{d}[p?[a(n-1)+2], #]` with `a(0)=19`
-/

namespace A224534.P361623844547531549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [19] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A224534.P361623844547531549

/-! ## A224534.P7333077583070628145

`xor(1, p?[a(n-1)+2]-1)` with `a(0)=19`
-/

namespace A224534.P7333077583070628145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A224534.P7333077583070628145

/-! ## A224534.P8388393981863183573

`lcm((-1)^val(n+1, 2), p?[a(n-1)+2])` with `a(0)=19`
-/

namespace A224534.P8388393981863183573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A224534.P8388393981863183573

/-! ## A224534.P449618353387291432

`A071621(n+2)`
-/

namespace A224534.P449618353387291432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 2)

end

end A224534.P449618353387291432

/-! ## A224534.P5271068962330369636

`A166061(n+2)`
-/

namespace A224534.P5271068962330369636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166061 (n + 2)

end

end A224534.P5271068962330369636

/-! ## A224534.P1746596652308311929

`A157996(n+3)`
-/

namespace A224534.P1746596652308311929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 3)

end

end A224534.P1746596652308311929

/-! ## A224534.P10699020756161561110

`A120533(n+4)`
-/

namespace A224534.P10699020756161561110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 4)

end

end A224534.P10699020756161561110

/-!
# A224535: Odd numbers that are the sum of three distinct prime numbers.

The programs for A224535, there is no canonical definition to state claims against.
-/

/-! ## A224535.P17105594321418033029

`a(n-1)+2` with `a(0)=15, a(1)=19`
-/

namespace A224535.P17105594321418033029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15, 19] fun n a =>
  a (n - 1) + 2

end

end A224535.P17105594321418033029

/-!
# A224536: Number of ways a digit can be appended or prepended to n and form a unique prime.

The programs for A224536, there is no canonical definition to state claims against.
-/

/-! ## A224536.P12289030060339179637

`A224953(n)-char[A166333(n)]`
-/

namespace A224536.P12289030060339179637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224536.P12289030060339179637

/-! ## A224536.P7142729594098614456

`A224953(n)-char[A006530(n+1)]`
-/

namespace A224536.P7142729594098614456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224536.P7142729594098614456

/-! ## A224536.P17148932853404013123

`A224953(n)-char[A008578(n+1)]`
-/

namespace A224536.P17148932853404013123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224536.P17148932853404013123

/-! ## A224536.P209006599664394764

`A224953(n)-char[A014963(n+1)]`
-/

namespace A224536.P209006599664394764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224536.P209006599664394764

/-! ## A224536.P17453467622840231136

`A224953(n)-char[A015919(n+1)]`
-/

namespace A224536.P17453467622840231136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224536.P17453467622840231136

/-! ## A224536.P14585463033946777699

`A224953(n)-char[A020639(n+1)]`
-/

namespace A224536.P14585463033946777699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224536.P14585463033946777699

/-! ## A224536.P7860944603326274723

`A224953(n)-char[A027746(n+1)]`
-/

namespace A224536.P7860944603326274723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224536.P7860944603326274723

/-! ## A224536.P12243703446504019453

`A224953(n)-char[A136548(n+1)]`
-/

namespace A224536.P12243703446504019453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224536.P12243703446504019453

/-! ## A224536.P16368016204440503035

`A224953(n)-char[lt[A000005(n+1), 3]+1]`
-/

namespace A224536.P16368016204440503035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224536.P16368016204440503035

/-! ## A224536.P11043139936418169145

`A224953(n)-A101040(A008486(n))`
-/

namespace A224536.P11043139936418169145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n - A101040 (A008486 n).toNat

end

end A224536.P11043139936418169145

/-!
# A224540: Number of k such that all terms of the Collatz (3x+1) iteration of k are <= 3^n.

The programs for A224540, there is no canonical definition to state claims against.
-/

/-! ## A224540.P4571182549964553170

`A081611(A000079(n)²)-A081611(2*n)`
-/

namespace A224540.P4571182549964553170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A000079 n ^ 2).toNat - A081611 (2 * n)

end

end A224540.P4571182549964553170

/-! ## A224540.P2025291041978762874

`A081611(A000079(2*n))-A081611(2*n)`
-/

namespace A224540.P2025291041978762874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A000079 (2 * n)).toNat - A081611 (2 * n)

end

end A224540.P2025291041978762874

/-!
# A224541: Number of doubly-surjective functions f:[n]->[3].

The programs for A224541, there is no canonical definition to state claims against.
-/

/-! ## A224541.P16218072131154929466

`6*A000478(n+6)`
-/

namespace A224541.P16218072131154929466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000478 (n + 6)

end

end A224541.P16218072131154929466

/-! ## A224541.P4282299309269955455

`6*A008299(A002620(n+7)-(n+2))`
-/

namespace A224541.P4282299309269955455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008299 (A002620 (n + 7) - (n + 2 : ℤ)).toNat

end

end A224541.P4282299309269955455

/-! ## A224541.P2884472905881150252

`6*record[A008299(n+10)/A008299(n+8)]`
-/

namespace A224541.P2884472905881150252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008299 (n + 10) : ℚ) / (A008299 (n + 8) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224541.P2884472905881150252

/-! ## A224541.P15218037623964090479

`6*A134991(A167614(n+1))`
-/

namespace A224541.P15218037623964090479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A134991 (A167614 (n + 1)).toNat

end

end A224541.P15218037623964090479

/-! ## A224541.P9160812790871141941

`record[A200091(n+10)/A200091(n+8)]`
-/

namespace A224541.P9160812790871141941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200091 (n + 10) : ℚ) / (A200091 (n + 8) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224541.P9160812790871141941

/-!
# A224542: Number of doubly-surjective functions f:[n]->[4].

The programs for A224542, there is no canonical definition to state claims against.
-/

/-! ## A224542.P12257356783833513726

`24*A058844(n+8)`
-/

namespace A224542.P12257356783833513726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A058844 (n + 8)

end

end A224542.P12257356783833513726

/-! ## A224542.P13936627252962133943

`24*A008299(A002620(n+9)-(n+3))`
-/

namespace A224542.P13936627252962133943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A008299 (A002620 (n + 9) - (n + 3 : ℤ)).toNat

end

end A224542.P13936627252962133943

/-! ## A224542.P3507362299337479865

`24*record[A008299(n+17)/A008299(n+14)]`
-/

namespace A224542.P3507362299337479865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008299 (n + 17) : ℚ) / (A008299 (n + 14) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224542.P3507362299337479865

/-! ## A224542.P14390986933903013645

`24*A134991(A052905(n)+9)`
-/

namespace A224542.P14390986933903013645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A134991 (A052905 n + 9).toNat

end

end A224542.P14390986933903013645

/-! ## A224542.P13335163661709711065

`24*A134991(A167614(n+2)+1)`
-/

namespace A224542.P13335163661709711065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A134991 (A167614 (n + 2) + 1).toNat

end

end A224542.P13335163661709711065

/-! ## A224542.P16989544953770504153

`24*A134991(A000096(n+2)+5)`
-/

namespace A224542.P16989544953770504153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A134991 (A000096 (n + 2) + 5).toNat

end

end A224542.P16989544953770504153

/-!
# A224543: Number of (n+1) X (n+1) 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224543, there is no canonical definition to state claims against.
-/

/-! ## A224543.P1630999384489171279

`A224550(∑[4*n]+1)`
-/

namespace A224543.P1630999384489171279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224543.P1630999384489171279

/-! ## A224543.P10140773049754685454

`lcm(2, A224550(A001844(n)))`
-/

namespace A224543.P10140773049754685454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224550 (A001844 n).toNat)

end

end A224543.P10140773049754685454

/-! ## A224543.P1744030930994500784

`A224550(n²+(n+1)²)+A024155(2*n+1)`
-/

namespace A224543.P1744030930994500784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (n ^ 2 + (n + 1) ^ 2) + A024155 (2 * n + 1)

end

end A224543.P1744030930994500784

/-! ## A224543.P10749081377312533387

`A224550(A001844(n))%A305165(n)`
-/

namespace A224543.P10749081377312533387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224550 (A001844 n).toNat) (A305165 n)

end

end A224543.P10749081377312533387

/-! ## A224543.P2717215292192148966

`A007318(∑[n])*A224550(A001844(n))`
-/

namespace A224543.P2717215292192148966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224550 (A001844 n).toNat

end

end A224543.P2717215292192148966

/-!
# A224544: Number of (n+1) X 3 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224544, the canonical program `A224544.P4555445662633383526` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224544 has offset 1).

The definition of A224544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224544.P4555445662633383526

`A055998(n)+A022124(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A224544

/-- `A055998(n)+A022124(n+2)` -/
def P4555445662633383526.Spec : Prop :=
  ∀ n, P4555445662633383526.a n = A224544 (n + 1)

theorem P4555445662633383526.correct : P4555445662633383526.Spec := by
  intro n
  simp only [A224544, Nat.add_sub_cancel]

end A224544

/-! ## A224544.P3961614402837569241

`A224669(n+1)+A000124(n+2)`
-/

namespace A224544.P3961614402837569241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224669 (n + 1) + A000124 (n + 2)

end

end A224544.P3961614402837569241

namespace A224544

/-- `A224669(n+1)+A000124(n+2)` -/
def P3961614402837569241.Spec : Prop :=
  ∀ n, P3961614402837569241.a n = A224544 (n + 1)

end A224544

/-! ## A224544.P10143016350591193776

`A224669(n+1)+A055998(n)+4`
-/

namespace A224544.P10143016350591193776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224669 (n + 1) + (A055998 n + 4)

end

end A224544.P10143016350591193776

namespace A224544

/-- `A224669(n+1)+A055998(n)+4` -/
def P10143016350591193776.Spec : Prop :=
  ∀ n, P10143016350591193776.a n = A224544 (n + 1)

end A224544

/-! ## A224544.P11046580723005329870

`A224669(n+1)+A046691(n)+5`
-/

namespace A224544.P11046580723005329870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224669 (n + 1) + (A046691 n + 5)

end

end A224544.P11046580723005329870

namespace A224544

/-- `A224669(n+1)+A046691(n)+5` -/
def P11046580723005329870.Spec : Prop :=
  ∀ n, P11046580723005329870.a n = A224544 (n + 1)

end A224544

/-! ## A224544.P4673320158021130103

`A022124(n+2)+A000096(n)+n`
-/

namespace A224544.P4673320158021130103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 (n + 2) + (A000096 n + (n : ℤ))

end

end A224544.P4673320158021130103

namespace A224544

/-- `A022124(n+2)+A000096(n)+n` -/
def P4673320158021130103.Spec : Prop :=
  ∀ n, P4673320158021130103.a n = A224544 (n + 1)

end A224544

/-! ## A224544.P14208238304972421533

`A034856(n+1)+A224669(n+1)+3`
-/

namespace A224544.P14208238304972421533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + (A224669 (n + 1) + 3)

end

end A224544.P14208238304972421533

namespace A224544

/-- `A034856(n+1)+A224669(n+1)+3` -/
def P14208238304972421533.Spec : Prop :=
  ∀ n, P14208238304972421533.a n = A224544 (n + 1)

end A224544

/-! ## A224544.P1777936436319181483

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=16, a(1)=32, a(2)=52, a(3)=86, a(4)=137`
-/

namespace A224544.P1777936436319181483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 32, 52, 86, 137] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + a (n - 3) + 2 * a (n - 4) - a (n - 5)

end

end A224544.P1777936436319181483

namespace A224544

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P1777936436319181483.Spec : Prop :=
  ∀ n, P1777936436319181483.a n = A224544 (n + 1)

end A224544

/-!
# A224545: Number of (n+1) X 4 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224545, the canonical program `A224545.P672363756453584672` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224545 has offset 1).

The definition of A224545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224545.P12049242674792463627

`A224670(n+1)+A020639(A160713(n))`
-/

namespace A224545.P12049242674792463627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224670 (n + 1) + A020639 (A160713 n).toNat

end

end A224545.P12049242674792463627

namespace A224545

/-- `A224670(n+1)+A020639(A160713(n))` -/
def P12049242674792463627.Spec : Prop :=
  ∀ n, P12049242674792463627.a n = A224545 (n + 1)

end A224545

/-! ## A224545.P2375457133673233919

`A224670(n+1)+A020639(A031131(n+1))`
-/

namespace A224545.P2375457133673233919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224670 (n + 1) + A020639 (A031131 (n + 1)).toNat

end

end A224545.P2375457133673233919

namespace A224545

/-- `A224670(n+1)+A020639(A031131(n+1))` -/
def P2375457133673233919.Spec : Prop :=
  ∀ n, P2375457133673233919.a n = A224545 (n + 1)

end A224545

/-! ## A224545.P18134488584628909355

`A224670(n+1)+A053669(A000040(n+1))`
-/

namespace A224545.P18134488584628909355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224670 (n + 1) + A053669 (A000040 (n + 1)).toNat

end

end A224545.P18134488584628909355

namespace A224545

/-- `A224670(n+1)+A053669(A000040(n+1))` -/
def P18134488584628909355.Spec : Prop :=
  ∀ n, P18134488584628909355.a n = A224545 (n + 1)

end A224545

/-! ## A224545.P121101777036446088

`A224670(n+1)+A053669(A003627(n+1))`
-/

namespace A224545.P121101777036446088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224670 (n + 1) + A053669 (A003627 (n + 1)).toNat

end

end A224545.P121101777036446088

namespace A224545

/-- `A224670(n+1)+A053669(A003627(n+1))` -/
def P121101777036446088.Spec : Prop :=
  ∀ n, P121101777036446088.a n = A224545 (n + 1)

end A224545

/-! ## A224545.P672363756453584672

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=28, a(1)=52, a(2)=78, a(3)=125, a(4)=193, a(5)=302`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224545

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P672363756453584672.Spec : Prop :=
  ∀ n, P672363756453584672.a n = A224545 (n + 1)

theorem P672363756453584672.correct : P672363756453584672.Spec := by
  intro n
  simp only [A224545, Nat.add_sub_cancel]

end A224545

/-! ## A224545.P5081781999028341084

`A224670(n+1)+A178815(n+1)`
-/

namespace A224545.P5081781999028341084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224670 (n + 1) + A178815 (n + 1)

end

end A224545.P5081781999028341084

namespace A224545

/-- `A224670(n+1)+A178815(n+1)` -/
def P5081781999028341084.Spec : Prop :=
  ∀ n, P5081781999028341084.a n = A224545 (n + 1)

end A224545

/-!
# A224546: Number of (n+1) X 5 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224546, the canonical program `A224546.P5631034850217814205` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224546 has offset 1).

The definition of A224546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224546.P5631034850217814205

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=48, a(1)=86, a(2)=125, a(3)=196, a(4)=294, a(5)=448`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224546

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P5631034850217814205.Spec : Prop :=
  ∀ n, P5631034850217814205.a n = A224546 (n + 1)

theorem P5631034850217814205.correct : P5631034850217814205.Spec := by
  intro n
  simp only [A224546, Nat.add_sub_cancel]

end A224546

/-! ## A224546.P10224607507929731098

`A224550(∑[n+3]+7)`
-/

namespace A224546.P10224607507929731098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224546.P10224607507929731098

namespace A224546

/-- `A224550(∑[n+3]+7)` -/
def P10224607507929731098.Spec : Prop :=
  ∀ n, P10224607507929731098.a n = A224546 (n + 1)

end A224546

/-! ## A224546.P10174255270640006419

`or(char[2], A224550(A112355(n+1)+4))`
-/

namespace A224546.P10174255270640006419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224550 (A112355 (n + 1) + 4).toNat)

end

end A224546.P10174255270640006419

namespace A224546

/-- `or(char[2], A224550(A112355(n+1)+4))` -/
def P10174255270640006419.Spec : Prop :=
  ∀ n, P10174255270640006419.a n = A224546 (n + 1)

end A224546

/-! ## A224546.P3924719911132866916

`A224550(A112355(n+1)+4)%A000032(n+9)`
-/

namespace A224546.P3924719911132866916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224550 (A112355 (n + 1) + 4).toNat) (A000032 (n + 9))

end

end A224546.P3924719911132866916

namespace A224546

/-- `A224550(A112355(n+1)+4)%A000032(n+9)` -/
def P3924719911132866916.Spec : Prop :=
  ∀ n, P3924719911132866916.a n = A224546 (n + 1)

end A224546

/-! ## A224546.P11561081480645975424

`A007318(C(2, n))*A224550(A112355(n+1)+4)`
-/

namespace A224546.P11561081480645975424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224550 (A112355 (n + 1) + 4).toNat

end

end A224546.P11561081480645975424

namespace A224546

/-- `A007318(C(2, n))*A224550(A112355(n+1)+4)` -/
def P11561081480645975424.Spec : Prop :=
  ∀ n, P11561081480645975424.a n = A224546 (n + 1)

end A224546

/-!
# A224547: Number of (n+1) X 6 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224547, the canonical program `A224547.P4642489977250143076` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224547 has offset 1).

The definition of A224547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224547.P4642489977250143076

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=80, a(1)=137, a(2)=193, a(3)=294, a(4)=428, a(5)=635`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224547

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P4642489977250143076.Spec : Prop :=
  ∀ n, P4642489977250143076.a n = A224547 (n + 1)

theorem P4642489977250143076.correct : P4642489977250143076.Spec := by
  intro n
  simp only [A224547, Nat.add_sub_cancel]

end A224547

/-! ## A224547.P8695367341127473441

`A224550(∑[n+4]+11)`
-/

namespace A224547.P8695367341127473441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A224547.P8695367341127473441

namespace A224547

/-- `A224550(∑[n+4]+11)` -/
def P8695367341127473441.Spec : Prop :=
  ∀ n, P8695367341127473441.a n = A224547 (n + 1)

end A224547

/-! ## A224547.P7531603437466757516

`A224550(A374005(n+1))%A002721(n+3)`
-/

namespace A224547.P7531603437466757516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224550 (A374005 (n + 1)).toNat) (A002721 (n + 3))

end

end A224547.P7531603437466757516

namespace A224547

/-- `A224550(A374005(n+1))%A002721(n+3)` -/
def P7531603437466757516.Spec : Prop :=
  ∀ n, P7531603437466757516.a n = A224547 (n + 1)

end A224547

/-! ## A224547.P6862536699055822814

`or(char[1], A224550(A000124(n+5)-5))`
-/

namespace A224547.P6862536699055822814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224550 (A000124 (n + 5) - 5).toNat)

end

end A224547.P6862536699055822814

namespace A224547

/-- `or(char[1], A224550(A000124(n+5)-5))` -/
def P6862536699055822814.Spec : Prop :=
  ∀ n, P6862536699055822814.a n = A224547 (n + 1)

end A224547

/-! ## A224547.P11366796095699643536

`lcm(1-and(2, n), A224550(A046691(n+3)))`
-/

namespace A224547.P11366796095699643536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A224550 (A046691 (n + 3)).toNat)

end

end A224547.P11366796095699643536

namespace A224547

/-- `lcm(1-and(2, n), A224550(A046691(n+3)))` -/
def P11366796095699643536.Spec : Prop :=
  ∀ n, (P11366796095699643536.a n : ℤ) = A224547 (n + 1)

end A224547

/-!
# A224548: Number of (n+1) X 7 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224548, the canonical program `A224548.P1909088531795576861` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224548 has offset 1).

The definition of A224548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224548.P1909088531795576861

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=132, a(1)=218, a(2)=302, a(3)=448, a(4)=635, a(5)=916`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224548

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P1909088531795576861.Spec : Prop :=
  ∀ n, P1909088531795576861.a n = A224548 (n + 1)

theorem P1909088531795576861.correct : P1909088531795576861.Spec := by
  intro n
  simp only [A224548, Nat.add_sub_cancel]

end A224548

/-! ## A224548.P889767660409845558

`A224550(A374007(n+1))`
-/

namespace A224548.P889767660409845558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (A374007 (n + 1)).toNat

end

end A224548.P889767660409845558

namespace A224548

/-- `A224550(A374007(n+1))` -/
def P889767660409845558.Spec : Prop :=
  ∀ n, P889767660409845558.a n = A224548 (n + 1)

end A224548

/-! ## A224548.P11079480397024509601

`A224550(A166136(n+4))`
-/

namespace A224548.P11079480397024509601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (A166136 (n + 4)).toNat

end

end A224548.P11079480397024509601

namespace A224548

/-- `A224550(A166136(n+4))` -/
def P11079480397024509601.Spec : Prop :=
  ∀ n, P11079480397024509601.a n = A224548 (n + 1)

end A224548

/-! ## A224548.P2035134441624792792

`A224550(A167499(n+4)+1)`
-/

namespace A224548.P2035134441624792792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (A167499 (n + 4) + 1).toNat

end

end A224548.P2035134441624792792

namespace A224548

/-- `A224550(A167499(n+4)+1)` -/
def P2035134441624792792.Spec : Prop :=
  ∀ n, P2035134441624792792.a n = A224548 (n + 1)

end A224548

/-! ## A224548.P8619716282465479934

`A224550(A167614(n+4)+3)`
-/

namespace A224548.P8619716282465479934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (A167614 (n + 4) + 3).toNat

end

end A224548.P8619716282465479934

namespace A224548

/-- `A224550(A167614(n+4)+3)` -/
def P8619716282465479934.Spec : Prop :=
  ∀ n, P8619716282465479934.a n = A224548 (n + 1)

end A224548

/-!
# A224549: Number of (n+1) X 8 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224549, there is no canonical definition to state claims against.
-/

/-! ## A224549.P16825274957608158271

`A224550(A374008(n+1))`
-/

namespace A224549.P16825274957608158271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (A374008 (n + 1)).toNat

end

end A224549.P16825274957608158271

/-! ## A224549.P16913669539630034533

`A224550(A167487(n+5))`
-/

namespace A224549.P16913669539630034533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (A167487 (n + 5)).toNat

end

end A224549.P16913669539630034533

/-! ## A224549.P2720610031362063391

`A224550(A056119(n)+28)`
-/

namespace A224549.P2720610031362063391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (A056119 n + 28).toNat

end

end A224549.P2720610031362063391

/-! ## A224549.P3987303881751869189

`A224550(A167614(n+5)+4)`
-/

namespace A224549.P3987303881751869189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (A167614 (n + 5) + 4).toNat

end

end A224549.P3987303881751869189

/-! ## A224549.P4997512354062799143

`A224550(A000124(n+6)+6)`
-/

namespace A224549.P4997512354062799143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (A000124 (n + 6) + 6).toNat

end

end A224549.P4997512354062799143

/-!
# A224550: T(n,k)=Number of (n+1)X(k+1) 0..1 matrices with each 2X2 subblock idempotent.

The programs for A224550, there is no canonical definition to state claims against.
-/

/-! ## A224550.P4012733784446159606

`A204651(n+1)-A355432(A207535(n+1))`
-/

namespace A224550.P4012733784446159606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (n + 1) - A355432 (A207535 (n + 1)).toNat

end

end A224550.P4012733784446159606

/-! ## A224550.P2925765715424078232

`A204651(n+1)-A326683(A281139(n+1))`
-/

namespace A224550.P2925765715424078232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (n + 1) - A326683 (A281139 (n + 1)).toNat

end

end A224550.P2925765715424078232

/-!
# A224551: Number of (n+2)X(n+2) 0..1 matrices with each 3X3 subblock idempotent.

The programs for A224551, there is no canonical definition to state claims against.
-/

/-! ## A224551.P10100565511122885161

`A224559(∑[4*n]+1)`
-/

namespace A224551.P10100565511122885161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224551.P10100565511122885161

/-! ## A224551.P4857699462659418317

`lcm(2, A224559(A001844(n)))`
-/

namespace A224551.P4857699462659418317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224559 (A001844 n).toNat)

end

end A224551.P4857699462659418317

/-! ## A224551.P10293844024590743779

`record[A224559(A152271((n+1)²))]`
-/

namespace A224551.P10293844024590743779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A152271 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224551.P10293844024590743779

/-! ## A224551.P9331459678560631953

`record[A003982(n)*A224559(n+1)]`
-/

namespace A224551.P9331459678560631953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224551.P9331459678560631953

/-! ## A224551.P500726857554859454

`A224559(n²+(n+1)²)%A024523(3*n+5)`
-/

namespace A224551.P500726857554859454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224559 (n ^ 2 + (n + 1) ^ 2)) (A024523 (3 * n + 5))

end

end A224551.P500726857554859454

/-!
# A224552: Number of (n+2) X 3 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224552, there is no canonical definition to state claims against.
-/

/-! ## A224552.P6758679126817032096

`A224559(∑[n]+1)`
-/

namespace A224552.P6758679126817032096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224552.P6758679126817032096

/-! ## A224552.P9021392925167752648

`record[A224559(n+1)]`
-/

namespace A224552.P9021392925167752648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224552.P9021392925167752648

/-! ## A224552.P765784367301923561

`and(-1, A224559(A000124(n)))`
-/

namespace A224552.P765784367301923561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224559 (A000124 n).toNat)

end

end A224552.P765784367301923561

/-! ## A224552.P3956415253183707982

`lcm(A033999(n), A224559(A000124(n)))`
-/

namespace A224552.P3956415253183707982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224559 (A000124 n).toNat)

end

end A224552.P3956415253183707982

/-! ## A224552.P11651002617955577168

`A007318(∑[n])*A224559(A000124(n))`
-/

namespace A224552.P11651002617955577168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224559 (A000124 n).toNat

end

end A224552.P11651002617955577168

/-! ## A224552.P9292455781749191628

`A224559(A000124(n))+A000007(n+1)`
-/

namespace A224552.P9292455781749191628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A000124 n).toNat + A000007 (n + 1)

end

end A224552.P9292455781749191628

/-! ## A224552.P990391146532119666

`A224559(A000124(n))+A000035(2*n)`
-/

namespace A224552.P990391146532119666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A000124 n).toNat + A000035 (2 * n)

end

end A224552.P990391146532119666

/-! ## A224552.P1127504602136691527

`A224559(A000124(n))%A000045(n+10)`
-/

namespace A224552.P1127504602136691527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224559 (A000124 n).toNat) (A000045 (n + 10))

end

end A224552.P1127504602136691527

/-! ## A224552.P1696897969525947296

`A000035(Δ[n²])*A224559(A000124(n))`
-/

namespace A224552.P1696897969525947296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A224559 (A000124 n).toNat

end

end A224552.P1696897969525947296

/-! ## A224552.P13818448801389977100

`A224559(A000124(n))+A000045(C(n, n+2))`
-/

namespace A224552.P13818448801389977100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A000124 n).toNat + A000045 (Nat.choose n (n + 2))

end

end A224552.P13818448801389977100

/-!
# A224553: Number of (n+2) X 4 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224553, there is no canonical definition to state claims against.
-/

/-! ## A224553.P8365042566236353099

`A224559(∑[n+1]+2)`
-/

namespace A224553.P8365042566236353099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224553.P8365042566236353099

/-! ## A224553.P8236800271696931959

`record[A224559(A133263(abs(1-n)))]`
-/

namespace A224553.P8236800271696931959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224553.P8236800271696931959

/-! ## A224553.P11682247174278948000

`or(char[2], A224559(A133263(n+1)))`
-/

namespace A224553.P11682247174278948000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224559 (A133263 (n + 1)).toNat)

end

end A224553.P11682247174278948000

/-! ## A224553.P13504864379621284393

`lcm(A033999(n), A224559(A133263(n+1)))`
-/

namespace A224553.P13504864379621284393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224559 (A133263 (n + 1)).toNat)

end

end A224553.P13504864379621284393

/-! ## A224553.P17301574009734908725

`A087960(n)²*A224559(A133263(n+1))`
-/

namespace A224553.P17301574009734908725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A224559 (A133263 (n + 1)).toNat

end

end A224553.P17301574009734908725

/-! ## A224553.P7129672790904402727

`A094497(n)!*A224559(A133263(n+1))`
-/

namespace A224553.P7129672790904402727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A094497 n).toNat : ℤ) * A224559 (A133263 (n + 1)).toNat

end

end A224553.P7129672790904402727

/-! ## A224553.P12017126439739540890

`A033999(2*n)*A224559(A133263(n+1))`
-/

namespace A224553.P12017126439739540890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A224559 (A133263 (n + 1)).toNat

end

end A224553.P12017126439739540890

/-! ## A224553.P6587230102524441001

`A007318(C(2, n))*A224559(A133263(n+1))`
-/

namespace A224553.P6587230102524441001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224559 (A133263 (n + 1)).toNat

end

end A224553.P6587230102524441001

/-! ## A224553.P14107041373265765407

`A007318(and(1, -n))*A224559(A133263(n+1))`
-/

namespace A224553.P14107041373265765407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A224559 (A133263 (n + 1)).toNat

end

end A224553.P14107041373265765407

/-! ## A224553.P2239297662043410733

`A224559(A133263(n+1))+char[A224559(n+2)]`
-/

namespace A224553.P2239297662043410733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224553.P2239297662043410733

/-!
# A224554: Number of (n+2) X 5 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224554, there is no canonical definition to state claims against.
-/

/-! ## A224554.P15779562430651833128

`A224559(∑[n+2]+4)`
-/

namespace A224554.P15779562430651833128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224554.P15779562430651833128

/-! ## A224554.P4613169561959092815

`or(char[1], A224559(A167614(n+1)))`
-/

namespace A224554.P4613169561959092815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224559 (A167614 (n + 1)).toNat)

end

end A224554.P4613169561959092815

/-! ## A224554.P5305640703658491576

`or(char[1], A224559(A055998(n)+6))`
-/

namespace A224554.P5305640703658491576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224559 (A055998 n + 6).toNat)

end

end A224554.P5305640703658491576

/-! ## A224554.P5427457004808275536

`and(1, n)!*A224559(A046691(n)+7)`
-/

namespace A224554.P5427457004808275536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A224559 (A046691 n + 7).toNat

end

end A224554.P5427457004808275536

/-! ## A224554.P3943334685972590756

`char[A180201(n)]*A224559(A167614(n+1))`
-/

namespace A224554.P3943334685972590756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224559 (A167614 (n + 1)).toNat

end

end A224554.P3943334685972590756

/-! ## A224554.P12803369100398917638

`char[A057889(n)]*A224559(A055998(n)+6)`
-/

namespace A224554.P12803369100398917638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224559 (A055998 n + 6).toNat

end

end A224554.P12803369100398917638

/-! ## A224554.P1893520965301665245

`A007318(C(2, n))*A224559(A167614(n+1))`
-/

namespace A224554.P1893520965301665245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224559 (A167614 (n + 1)).toNat

end

end A224554.P1893520965301665245

/-! ## A224554.P17697699200185633419

`A224559(A167614(n+1))%A000045(n+13)`
-/

namespace A224554.P17697699200185633419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224559 (A167614 (n + 1)).toNat) (A000045 (n + 13))

end

end A224554.P17697699200185633419

/-! ## A224554.P18218697041440859312

`A007318(C(2, n))*A224559(A046691(n)+7)`
-/

namespace A224554.P18218697041440859312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224559 (A046691 n + 7).toNat

end

end A224554.P18218697041440859312

/-! ## A224554.P14335843028757842243

`A000041(C(2, n+2))*A224559(A167614(n+1))`
-/

namespace A224554.P14335843028757842243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A224559 (A167614 (n + 1)).toNat

end

end A224554.P14335843028757842243

/-!
# A224555: Number of (n+2) X 6 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224555, there is no canonical definition to state claims against.
-/

/-! ## A224555.P7692151284921649658

`A224559(∑[n+3]+7)`
-/

namespace A224555.P7692151284921649658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224555.P7692151284921649658

/-! ## A224555.P12053797916829103679

`xor(1, xor(1, A224559(A055999(n)+10)))`
-/

namespace A224555.P12053797916829103679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A224559 (A055999 n + 10).toNat))

end

end A224555.P12053797916829103679

/-! ## A224555.P1185505449824510101

`xor(1, xor(1, A224559(A167614(n+2)+1)))`
-/

namespace A224555.P1185505449824510101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A224559 (A167614 (n + 2) + 1).toNat))

end

end A224555.P1185505449824510101

/-! ## A224555.P14376987278862176235

`A033999(4*n)*A224559(A055999(n)+10)`
-/

namespace A224555.P14376987278862176235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (4 * n) * A224559 (A055999 n + 10).toNat

end

end A224555.P14376987278862176235

/-! ## A224555.P1067713518393782939

`A007318(C(2, n))*A224559(A055999(n)+10)`
-/

namespace A224555.P1067713518393782939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224559 (A055999 n + 10).toNat

end

end A224555.P1067713518393782939

/-! ## A224555.P9430864064681453769

`A046983(C(2, n))*A224559(A055999(n)+10)`
-/

namespace A224555.P9430864064681453769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046983 (Nat.choose 2 n) * A224559 (A055999 n + 10).toNat

end

end A224555.P9430864064681453769

/-! ## A224555.P14428652130084542349

`A224559(A055999(n)+10)*A318717(C(2, n))`
-/

namespace A224555.P14428652130084542349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A055999 n + 10).toNat * A318717 (Nat.choose 2 n)

end

end A224555.P14428652130084542349

/-! ## A224555.P2335029799412933811

`A224559(A055999(n)+10)/A007318(C(n, 2))`
-/

namespace A224555.P2335029799412933811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224559 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A224555.P2335029799412933811

/-! ## A224555.P3676767058009995664

`ceil(1/A007318(n))*A224559(A055999(n)+10)`
-/

namespace A224555.P3676767058009995664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A224559 (A055999 n + 10).toNat

end

end A224555.P3676767058009995664

/-! ## A224555.P7258687454091055752

`A007318(C(n, 2))*A224559(A167614(n+2)+1)`
-/

namespace A224555.P7258687454091055752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224559 (A167614 (n + 2) + 1).toNat

end

end A224555.P7258687454091055752

/-!
# A224556: Number of (n+2) X 7 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224556, there is no canonical definition to state claims against.
-/

/-! ## A224556.P15974806408126677117

`A224559(∑[n+5-ceil(n/63)]+10)`
-/

namespace A224556.P15974806408126677117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) - ⌈(n : ℚ) / 63⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A224556.P15974806408126677117

/-! ## A224556.P7958678294586114563

`A224559(A167499(n+3))+A000007(n+3)`
-/

namespace A224556.P7958678294586114563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A167499 (n + 3)).toNat + A000007 (n + 3)

end

end A224556.P7958678294586114563

/-! ## A224556.P10654694396358091231

`abs(1-A224559(A046691(n+3)))+1`
-/

namespace A224556.P10654694396358091231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A224559 (A046691 (n + 3)).toNat| + 1

end

end A224556.P10654694396358091231

/-! ## A224556.P663011945486414098

`A224559(A046691(n+3))+char[A017480(n)]`
-/

namespace A224556.P663011945486414098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017480 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224556.P663011945486414098

/-! ## A224556.P11125231169722529207

`A224559(A046691(n+3))%A096498(n+6)`
-/

namespace A224556.P11125231169722529207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224559 (A046691 (n + 3)).toNat) (A096498 (n + 6))

end

end A224556.P11125231169722529207

/-! ## A224556.P15793345977404444729

`A224559(A046691(n+3))-floor(A036987(n)/3)`
-/

namespace A224556.P15793345977404444729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A046691 (n + 3)).toNat - ⌊(A036987 n : ℚ) / 3⌋

end

end A224556.P15793345977404444729

/-! ## A224556.P10790057690051014416

`A224559(A046691(n+3))-char[A152932(n+1)]`
-/

namespace A224556.P10790057690051014416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152932 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A046691 (n + 3)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224556.P10790057690051014416

/-! ## A224556.P3206861326520978536

`A224559(A046691(n+3))-char[A234549(n+1)]`
-/

namespace A224556.P3206861326520978536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A046691 (n + 3)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224556.P3206861326520978536

/-! ## A224556.P15027654376291878057

`A224559(A046691(n+3))-char[A000182(n+4)]`
-/

namespace A224556.P15027654376291878057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000182 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A046691 (n + 3)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224556.P15027654376291878057

/-! ## A224556.P8258272133944426506

`A014963(12*(n+1))*A224559(A046691(n+3))`
-/

namespace A224556.P8258272133944426506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A224559 (A046691 (n + 3)).toNat

end

end A224556.P8258272133944426506

/-!
# A224557: Number of (n+2) X 8 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224557, there is no canonical definition to state claims against.
-/

/-! ## A224557.P3617055233798889215

`A224559(C(n+6, 2)+6)`
-/

namespace A224557.P3617055233798889215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (Nat.choose (n + 6) 2 + 6)

end

end A224557.P3617055233798889215

/-! ## A224557.P9806432504248237145

`A224559(A166136(n+4))`
-/

namespace A224557.P9806432504248237145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A166136 (n + 4)).toNat

end

end A224557.P9806432504248237145

/-! ## A224557.P4809416540818524089

`A224559(A056115(n)+21)`
-/

namespace A224557.P4809416540818524089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A056115 n + 21).toNat

end

end A224557.P4809416540818524089

/-! ## A224557.P15293931779374345671

`A224559(A167614(n+4)+3)`
-/

namespace A224557.P15293931779374345671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A167614 (n + 4) + 3).toNat

end

end A224557.P15293931779374345671

/-! ## A224557.P14200969425737982982

`A224559(A133263(n+5)+4)`
-/

namespace A224557.P14200969425737982982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A133263 (n + 5) + 4).toNat

end

end A224557.P14200969425737982982

/-! ## A224557.P520392706798085514

`A224559(A000124(n+5)+5)`
-/

namespace A224557.P520392706798085514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A000124 (n + 5) + 5).toNat

end

end A224557.P520392706798085514

/-! ## A224557.P13432404014196454321

`A224559(A000096(n+4)+7)`
-/

namespace A224557.P13432404014196454321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A000096 (n + 4) + 7).toNat

end

end A224557.P13432404014196454321

/-! ## A224557.P4455325372726871057

`A224559(A000217(n+5)+6)`
-/

namespace A224557.P4455325372726871057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A000217 (n + 5) + 6).toNat

end

end A224557.P4455325372726871057

/-! ## A224557.P7938809278144260200

`A224559(A055998(n+3)+9)`
-/

namespace A224557.P7938809278144260200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A055998 (n + 3) + 9).toNat

end

end A224557.P7938809278144260200

/-! ## A224557.P15778065623459338006

`A224559(A046691(n+3)+10)`
-/

namespace A224557.P15778065623459338006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A046691 (n + 3) + 10).toNat

end

end A224557.P15778065623459338006

/-!
# A224558: Number of (n+2) X 9 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224558, there is no canonical definition to state claims against.
-/

/-! ## A224558.P5230358141541300886

`A224559(A167487(n+5))`
-/

namespace A224558.P5230358141541300886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A167487 (n + 5)).toNat

end

end A224558.P5230358141541300886

/-! ## A224558.P1525289284408900642

`A224559(A056119(n)+28)`
-/

namespace A224558.P1525289284408900642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A056119 n + 28).toNat

end

end A224558.P1525289284408900642

/-! ## A224558.P223928598670653824

`A224559(A166136(n+5)+1)`
-/

namespace A224558.P223928598670653824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A166136 (n + 5) + 1).toNat

end

end A224558.P223928598670653824

/-! ## A224558.P7413726006365436100

`A224559(A167499(n+5)+2)`
-/

namespace A224558.P7413726006365436100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A167499 (n + 5) + 2).toNat

end

end A224558.P7413726006365436100

/-! ## A224558.P15922387336076217253

`A224559(A133263(n+6)+5)`
-/

namespace A224558.P15922387336076217253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A133263 (n + 6) + 5).toNat

end

end A224558.P15922387336076217253

/-! ## A224558.P6433447964255615485

`A224559(A000124(n+6)+6)`
-/

namespace A224558.P6433447964255615485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A000124 (n + 6) + 6).toNat

end

end A224558.P6433447964255615485

/-! ## A224558.P6094511283090242917

`A224559(A000096(n+5)+8)`
-/

namespace A224558.P6094511283090242917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A000096 (n + 5) + 8).toNat

end

end A224558.P6094511283090242917

/-! ## A224558.P16927039799313674010

`A224559(A000217(n+6)+7)`
-/

namespace A224558.P16927039799313674010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A000217 (n + 6) + 7).toNat

end

end A224558.P16927039799313674010

/-! ## A224558.P18394350732315655761

`A224559(A027379(n+4)+10)`
-/

namespace A224558.P18394350732315655761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A027379 (n + 4) + 10).toNat

end

end A224558.P18394350732315655761

/-! ## A224558.P2410590418779041591

`A224559(A055998(n+4)+10)`
-/

namespace A224558.P2410590418779041591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A055998 (n + 4) + 10).toNat

end

end A224558.P2410590418779041591

/-!
# A224560: Number of (n+3)X(n+3) 0..1 matrices with each 4X4 subblock idempotent.

The programs for A224560, there is no canonical definition to state claims against.
-/

/-! ## A224560.P18035071845278548736

`A224568(∑[4*n]+1)`
-/

namespace A224560.P18035071845278548736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224560.P18035071845278548736

/-! ## A224560.P6211404467616863013

`lcm(2, A224568(n²+(n+1)²))`
-/

namespace A224560.P6211404467616863013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224568 (n ^ 2 + (n + 1) ^ 2))

end

end A224560.P6211404467616863013

/-! ## A224560.P13637886721015928985

`A007318(∑[n])*A224568(A001844(n))`
-/

namespace A224560.P13637886721015928985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224568 (A001844 n).toNat

end

end A224560.P13637886721015928985

/-! ## A224560.P13514689737749248858

`A224568(A001844(n))/A007318(C(2, n))`
-/

namespace A224560.P13514689737749248858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224568 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A224560.P13514689737749248858

/-! ## A224560.P13583248683929473841

`A224568(A001844(n))+A000045(n)%-1`
-/

namespace A224560.P13583248683929473841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A001844 n).toNat + Int.tmod (A000045 n) (-1)

end

end A224560.P13583248683929473841

/-!
# A224561: Number of (n+3) X 4 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224561, there is no canonical definition to state claims against.
-/

/-! ## A224561.P16006259067837912495

`A224568(∑[n]+1)`
-/

namespace A224561.P16006259067837912495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224561.P16006259067837912495

/-! ## A224561.P7150972060118307602

`A224568(C(n+1, 2)+1)+C(n, 64)`
-/

namespace A224561.P7150972060118307602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (Nat.choose (n + 1) 2 + 1) + (Nat.choose n 64 : ℤ)

end

end A224561.P7150972060118307602

/-! ## A224561.P10381027255967058612

`or(char[3], A224568(A000124(n)))`
-/

namespace A224561.P10381027255967058612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224568 (A000124 n).toNat)

end

end A224561.P10381027255967058612

/-! ## A224561.P9838147524200964699

`A224568(A000217(n)+1)+C(n, 64)`
-/

namespace A224561.P9838147524200964699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A000217 n + 1).toNat + (Nat.choose n 64 : ℤ)

end

end A224561.P9838147524200964699

/-! ## A224561.P8266689709868014672

`A000034(2*n)*A224568(A000124(n))`
-/

namespace A224561.P8266689709868014672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A224568 (A000124 n).toNat

end

end A224561.P8266689709868014672

/-! ## A224561.P10591566262260894209

`A007318(C(2, n))*A224568(A000124(n))`
-/

namespace A224561.P10591566262260894209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224568 (A000124 n).toNat

end

end A224561.P10591566262260894209

/-! ## A224561.P3251124047417322517

`A224568(A000124(n))/A007318(C(3, n))`
-/

namespace A224561.P3251124047417322517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224568 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A224561.P3251124047417322517

/-! ## A224561.P11900278840183327888

`A224568(A000124(n))+A000045(C(n, 64))`
-/

namespace A224561.P11900278840183327888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A000124 n).toNat + A000045 (Nat.choose n 64)

end

end A224561.P11900278840183327888

/-! ## A224561.P1964738110831819080

`A224568(A000124(n))/(A000045(n)%2)!`
-/

namespace A224561.P1964738110831819080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224568 (A000124 n).toNat : ℚ) / (Nat.factorial (Int.tmod (A000045 n) 2).toNat : ℚ)

end

end A224561.P1964738110831819080

/-! ## A224561.P5279531360609165213

`A000010(C(2, n)!)*A224568(A000124(n))`
-/

namespace A224561.P5279531360609165213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A224568 (A000124 n).toNat

end

end A224561.P5279531360609165213

/-!
# A224562: Number of (n+3) X 5 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224562, there is no canonical definition to state claims against.
-/

/-! ## A224562.P15666485720375270017

`A224568(∑[n+1]+2)`
-/

namespace A224562.P15666485720375270017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224562.P15666485720375270017

/-! ## A224562.P8361895119088700432

`or(char[3], A224568(A133263(n+1)))`
-/

namespace A224562.P8361895119088700432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224568 (A133263 (n + 1)).toNat)

end

end A224562.P8361895119088700432

/-! ## A224562.P5452332864294737117

`A224568(A000124(n+1)+1)+C(n, 64)`
-/

namespace A224562.P5452332864294737117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A000124 (n + 1) + 1).toNat + (Nat.choose n 64 : ℤ)

end

end A224562.P5452332864294737117

/-! ## A224562.P10521536141861910843

`A224568(A000217(n+1)+2)+C(n, 64)`
-/

namespace A224562.P10521536141861910843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A000217 (n + 1) + 2).toNat + (Nat.choose n 64 : ℤ)

end

end A224562.P10521536141861910843

/-! ## A224562.P4513909601339775980

`A224568(A133263(n+1))*A304042(n)`
-/

namespace A224562.P4513909601339775980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A133263 (n + 1)).toNat * A304042 n

end

end A224562.P4513909601339775980

/-! ## A224562.P16847844190304398371

`lcm(A033999(n), A224568(A133263(n+1)))`
-/

namespace A224562.P16847844190304398371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224568 (A133263 (n + 1)).toNat)

end

end A224562.P16847844190304398371

/-! ## A224562.P3651084742452622498

`A224568(A133263(n+1))+A000007(n+1)`
-/

namespace A224562.P3651084742452622498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A224562.P3651084742452622498

/-! ## A224562.P9791355695654460841

`A224568(A133263(n+1))/A304042(n+1)`
-/

namespace A224562.P9791355695654460841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224568 (A133263 (n + 1)).toNat : ℚ) / (A304042 (n + 1) : ℚ)

end

end A224562.P9791355695654460841

/-! ## A224562.P2722021044819642488

`A033999(2*n)*A224568(A133263(n+1))`
-/

namespace A224562.P2722021044819642488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A224568 (A133263 (n + 1)).toNat

end

end A224562.P2722021044819642488

/-! ## A224562.P3256958089239031714

`A007318(C(2, n))*A224568(A133263(n+1))`
-/

namespace A224562.P3256958089239031714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224568 (A133263 (n + 1)).toNat

end

end A224562.P3256958089239031714

/-!
# A224563: Number of (n+3) X 6 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224563, there is no canonical definition to state claims against.
-/

/-! ## A224563.P4108035643628883273

`A224568(∑[n+2]+4)`
-/

namespace A224563.P4108035643628883273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224563.P4108035643628883273

/-! ## A224563.P15129480383886529844

`or(char[3], A224568(A167614(n+1)))`
-/

namespace A224563.P15129480383886529844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224568 (A167614 (n + 1)).toNat)

end

end A224563.P15129480383886529844

/-! ## A224563.P14563550963479081279

`Δ[A224568(A167614(n))+a(n-1)]` with `a(0)=0`
-/

namespace A224563.P14563550963479081279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A224568 (A167614 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224563.P14563550963479081279

/-! ## A224563.P15187769705284639600

`A224568(A167614(C(n+1, n)))+C(n, 64)`
-/

namespace A224563.P15187769705284639600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A167614 (Nat.choose (n + 1) n)).toNat + (Nat.choose n 64 : ℤ)

end

end A224563.P15187769705284639600

/-! ## A224563.P2397839101176176731

`lcm(A033999(n), A224568(A167614(n+1)))`
-/

namespace A224563.P2397839101176176731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224568 (A167614 (n + 1)).toNat)

end

end A224563.P2397839101176176731

/-! ## A224563.P18010067028944425615

`A224568(A167614(n+1))+A000007(n+1)`
-/

namespace A224563.P18010067028944425615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A224563.P18010067028944425615

/-! ## A224563.P3363153616553620291

`A033999(2*n)*A224568(A167614(n+1))`
-/

namespace A224563.P3363153616553620291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A224568 (A167614 (n + 1)).toNat

end

end A224563.P3363153616553620291

/-! ## A224563.P10054150292445368650

`A224568(A167614(n+1))%A224564(n+1)`
-/

namespace A224563.P10054150292445368650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224568 (A167614 (n + 1)).toNat) (A224564 (n + 1))

end

end A224563.P10054150292445368650

/-! ## A224563.P15365218036544803820

`A224568(A167614(n+1))/A335266(n)%2`
-/

namespace A224563.P15365218036544803820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224568 (A167614 (n + 1)).toNat : ℚ) / (Int.tmod (A335266 n) 2 : ℚ)

end

end A224563.P15365218036544803820

/-! ## A224563.P14963619959462610838

`A224568(A167614(n+1))+A000045(C(n, 64))`
-/

namespace A224563.P14963619959462610838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A167614 (n + 1)).toNat + A000045 (Nat.choose n 64)

end

end A224563.P14963619959462610838

/-!
# A224564: Number of (n+3) X 7 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224564, there is no canonical definition to state claims against.
-/

/-! ## A224564.P8899247736225266358

`A224568(∑[n+3]+7)`
-/

namespace A224564.P8899247736225266358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224564.P8899247736225266358

/-! ## A224564.P289401030157416629

`or(char[1], A224568(A055999(n)+10))`
-/

namespace A224564.P289401030157416629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224568 (A055999 n + 10).toNat)

end

end A224564.P289401030157416629

/-! ## A224564.P2860195448220321104

`A224568(A167614(n+2)+1)+C(n, 64)`
-/

namespace A224564.P2860195448220321104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A167614 (n + 2) + 1).toNat + (Nat.choose n 64 : ℤ)

end

end A224564.P2860195448220321104

/-! ## A224564.P13010643147671196886

`lcm(A033999(n), A224568(A055999(n)+10))`
-/

namespace A224564.P13010643147671196886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224568 (A055999 n + 10).toNat)

end

end A224564.P13010643147671196886

/-! ## A224564.P13484965050443239776

`char[A025480(n)]*A224568(A055999(n)+10)`
-/

namespace A224564.P13484965050443239776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224568 (A055999 n + 10).toNat

end

end A224564.P13484965050443239776

/-! ## A224564.P18219822369936882962

`char[A053985(n)]*A224568(A055999(n)+10)`
-/

namespace A224564.P18219822369936882962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224568 (A055999 n + 10).toNat

end

end A224564.P18219822369936882962

/-! ## A224564.P11192123014383097612

`A007318(C(2, n))*A224568(A055999(n)+10)`
-/

namespace A224564.P11192123014383097612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224568 (A055999 n + 10).toNat

end

end A224564.P11192123014383097612

/-! ## A224564.P13554744391672411728

`A224568(A055999(n)+10)/A007318(C(n, 2))`
-/

namespace A224564.P13554744391672411728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224568 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A224564.P13554744391672411728

/-! ## A224564.P10886188584878487987

`A224568(A055999(n)+10)+A000045(n)%-1`
-/

namespace A224564.P10886188584878487987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A055999 n + 10).toNat + Int.tmod (A000045 n) (-1)

end

end A224564.P10886188584878487987

/-! ## A224564.P519736930877717708

`A224568(A055999(n)+10)+A008683(4*(n+1))`
-/

namespace A224564.P519736930877717708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A055999 n + 10).toNat + A008683 (4 * (n + 1))

end

end A224564.P519736930877717708

/-!
# A224565: Number of (n+3) X 8 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224565, there is no canonical definition to state claims against.
-/

/-! ## A224565.P7754716609628010623

`A224568(∑[n+4]+11)`
-/

namespace A224565.P7754716609628010623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A224565.P7754716609628010623

/-! ## A224565.P16028522266882072746

`abs(1-A224568(A056115(n)+11))+1`
-/

namespace A224565.P16028522266882072746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A224568 (A056115 n + 11).toNat| + 1

end

end A224565.P16028522266882072746

/-! ## A224565.P761870721870839784

`A057427(n+1)*A224568(A056115(n)+11)`
-/

namespace A224565.P761870721870839784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A224568 (A056115 n + 11).toNat

end

end A224565.P761870721870839784

/-! ## A224565.P8799479310890719652

`A224568(A056115(n)+11)+A140080(3*(n+1))`
-/

namespace A224565.P8799479310890719652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A056115 n + 11).toNat + A140080 (3 * (n + 1))

end

end A224565.P8799479310890719652

/-! ## A224565.P15559345366844705454

`A224568(A056115(n)+11)%(C(A376143(n+1), 2)-n)`
-/

namespace A224565.P15559345366844705454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224568 (A056115 n + 11).toNat) ((Nat.choose (A376143 (n + 1)).toNat 2 : ℤ) - (n : ℤ))

end

end A224565.P15559345366844705454

/-! ## A224565.P18106930535754869061

`A349354(A235482(n+1))+A224568(A056115(n)+11)`
-/

namespace A224565.P18106930535754869061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349354 (A235482 (n + 1)).toNat + A224568 (A056115 n + 11).toNat

end

end A224565.P18106930535754869061

/-! ## A224565.P1101715207891286982

`A014973(A043343(n+4))*A224568(A056115(n)+11)`
-/

namespace A224565.P1101715207891286982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A043343 (n + 4)).toNat * A224568 (A056115 n + 11).toNat

end

end A224565.P1101715207891286982

/-! ## A224565.P9395035737730776786

`A014973(A057339(n+5))*A224568(A056115(n)+11)`
-/

namespace A224565.P9395035737730776786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A057339 (n + 5)).toNat * A224568 (A056115 n + 11).toNat

end

end A224565.P9395035737730776786

/-!
# A224566: Number of (n+3) X 9 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224566, there is no canonical definition to state claims against.
-/

/-! ## A224566.P6465274785228964960

`A224568(∑[n+5]+16)`
-/

namespace A224566.P6465274785228964960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A224566.P6465274785228964960

/-! ## A224566.P13627101846678388709

`abs(1-A224568(A056115(n)+21))+1`
-/

namespace A224566.P13627101846678388709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A224568 (A056115 n + 21).toNat| + 1

end

end A224566.P13627101846678388709

/-! ## A224566.P6302417978915322221

`A224568(A056115(n)+21)+A014707(n²)`
-/

namespace A224566.P6302417978915322221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A056115 n + 21).toNat + A014707 (n ^ 2)

end

end A224566.P6302417978915322221

/-! ## A224566.P11426582833998678196

`lcm(A049347(n²), A224568(A056115(n)+21))`
-/

namespace A224566.P11426582833998678196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049347 (n ^ 2)) (A224568 (A056115 n + 21).toNat)

end

end A224566.P11426582833998678196

/-! ## A224566.P15972345110221550630

`A224568(A056115(n)+21)+A000007(n+3)`
-/

namespace A224566.P15972345110221550630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A056115 n + 21).toNat + A000007 (n + 3)

end

end A224566.P15972345110221550630

/-! ## A224566.P13360971488829537667

`A224568(A056115(n)+21)+A080425(3*n)`
-/

namespace A224566.P13360971488829537667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A056115 n + 21).toNat + A080425 (3 * n)

end

end A224566.P13360971488829537667

/-! ## A224566.P15285265067528020984

`A224568(A056115(n)+21)+A124080(n)%2`
-/

namespace A224566.P15285265067528020984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A056115 n + 21).toNat + Int.tmod (A124080 n) 2

end

end A224566.P15285265067528020984

/-! ## A224566.P6904779312616396760

`A224568(A056115(n)+21)+A218858(n)%2`
-/

namespace A224566.P6904779312616396760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A056115 n + 21).toNat + Int.tmod (A218858 n) 2

end

end A224566.P6904779312616396760

/-! ## A224566.P9695195805548771643

`A224568(A056115(n)+21)+A000045(C(n, 64))`
-/

namespace A224566.P9695195805548771643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A056115 n + 21).toNat + A000045 (Nat.choose n 64)

end

end A224566.P9695195805548771643

/-! ## A224566.P13568598026996934970

`A010123(2*n+3)*A224568(A056115(n)+21)`
-/

namespace A224566.P13568598026996934970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (2 * n + 3) * A224568 (A056115 n + 21).toNat

end

end A224566.P13568598026996934970

/-!
# A224567: Number of (n+3) X 10 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224567, there is no canonical definition to state claims against.
-/

/-! ## A224567.P15616227316763525908

`A224568(A167487(n+5))`
-/

namespace A224567.P15616227316763525908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A167487 (n + 5)).toNat

end

end A224567.P15616227316763525908

/-! ## A224567.P4005752739230338512

`A224568(A056119(n)+28)`
-/

namespace A224567.P4005752739230338512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A056119 n + 28).toNat

end

end A224567.P4005752739230338512

/-! ## A224567.P9413091880898099724

`A224568(A166136(n+5)+1)`
-/

namespace A224567.P9413091880898099724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A166136 (n + 5) + 1).toNat

end

end A224567.P9413091880898099724

/-! ## A224567.P9698154632844486801

`A224568(A167499(n+5)+2)`
-/

namespace A224567.P9698154632844486801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A167499 (n + 5) + 2).toNat

end

end A224567.P9698154632844486801

/-! ## A224567.P8882204457675989120

`A224568(A167614(n+5)+4)`
-/

namespace A224567.P8882204457675989120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A167614 (n + 5) + 4).toNat

end

end A224567.P8882204457675989120

/-! ## A224567.P8159945260536315561

`A224568(A000124(n+6)+6)`
-/

namespace A224567.P8159945260536315561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A000124 (n + 6) + 6).toNat

end

end A224567.P8159945260536315561

/-! ## A224567.P2442294991807372742

`A224568(A000096(n+5)+8)`
-/

namespace A224567.P2442294991807372742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A000096 (n + 5) + 8).toNat

end

end A224567.P2442294991807372742

/-! ## A224567.P12298307105051420100

`A224568(A000217(n+6)+7)`
-/

namespace A224567.P12298307105051420100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A000217 (n + 6) + 7).toNat

end

end A224567.P12298307105051420100

/-! ## A224567.P3730964868686854348

`A224568(A034856(n+5)+9)`
-/

namespace A224567.P3730964868686854348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A034856 (n + 5) + 9).toNat

end

end A224567.P3730964868686854348

/-! ## A224567.P14953514804947868740

`A224568(A055998(n+4)+10)`
-/

namespace A224567.P14953514804947868740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A055998 (n + 4) + 10).toNat

end

end A224567.P14953514804947868740

/-!
# A224569: Number of (n+5)X(n+5) 0..1 matrices with each 6X6 subblock idempotent.

The programs for A224569, there is no canonical definition to state claims against.
-/

/-! ## A224569.P7285203037221282140

`A224577(∑[4*n]+1)`
-/

namespace A224569.P7285203037221282140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224569.P7285203037221282140

/-! ## A224569.P13978787366709562131

`lcm(2, A224577(A001844(n)))`
-/

namespace A224569.P13978787366709562131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224577 (A001844 n).toNat)

end

end A224569.P13978787366709562131

/-! ## A224569.P17439748160106377875

`A224577(A001844(n))+A000007(n+3)`
-/

namespace A224569.P17439748160106377875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A001844 n).toNat + A000007 (n + 3)

end

end A224569.P17439748160106377875

/-! ## A224569.P8677133895054565539

`A224577(A001844(n))%A224581(n+1)`
-/

namespace A224569.P8677133895054565539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224577 (A001844 n).toNat) (A224581 (n + 1))

end

end A224569.P8677133895054565539

/-! ## A224569.P1759549757186668121

`A007318(C(2, n))*A224577(A001844(n))`
-/

namespace A224569.P1759549757186668121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224577 (A001844 n).toNat

end

end A224569.P1759549757186668121

/-!
# A224570: Number of (n+5)X6 0..1 matrices with each 6X6 subblock idempotent.

The programs for A224570, there is no canonical definition to state claims against.
-/

/-! ## A224570.P8410630443133039369

`A224577(∑[n]+1)`
-/

namespace A224570.P8410630443133039369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224570.P8410630443133039369

/-! ## A224570.P8048564413984686203

`and(-1, A224577(A000124(n)))`
-/

namespace A224570.P8048564413984686203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224577 (A000124 n).toNat)

end

end A224570.P8048564413984686203

/-! ## A224570.P6082953409875009359

`lcm(A033999(n), A224577(A000124(n)))`
-/

namespace A224570.P6082953409875009359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224577 (A000124 n).toNat)

end

end A224570.P6082953409875009359

/-! ## A224570.P596159746831868560

`A007318(∑[n])*A224577(A000124(n))`
-/

namespace A224570.P596159746831868560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224577 (A000124 n).toNat

end

end A224570.P596159746831868560

/-! ## A224570.P16566717600927022909

`A224577(A000124(n))+A209229(3*n)`
-/

namespace A224570.P16566717600927022909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A000124 n).toNat + A209229 (3 * n)

end

end A224570.P16566717600927022909

/-! ## A224570.P7818054187105576827

`A033999(2*n)*A224577(A000124(n))`
-/

namespace A224570.P7818054187105576827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A224577 (A000124 n).toNat

end

end A224570.P7818054187105576827

/-! ## A224570.P18320740874934258347

`A224577(A000124(n))/A007318(C(2, n))`
-/

namespace A224570.P18320740874934258347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224577 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A224570.P18320740874934258347

/-! ## A224570.P17531945261489404356

`∏{p}[n, A001221(#)]*A224577(A000124(n))`
-/

namespace A224570.P17531945261489404356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A224577 (A000124 n).toNat

end

end A224570.P17531945261489404356

/-! ## A224570.P14961084999211902912

`A224577(A000124(n))+∏{d}[n+1, A001222(#)]`
-/

namespace A224570.P14961084999211902912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A000124 n).toNat + ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A224570.P14961084999211902912

/-! ## A224570.P12920163412845751044

`A224577(A000124(n))+2%A020639(lcm(2, n+1))`
-/

namespace A224570.P12920163412845751044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A000124 n).toNat + Int.tmod 2 (A020639 (Nat.lcm 2 (n + 1)))

end

end A224570.P12920163412845751044

/-!
# A224571: Number of (n+5)X7 0..1 matrices with each 6X6 subblock idempotent.

The programs for A224571, there is no canonical definition to state claims against.
-/

/-! ## A224571.P12270540645167052076

`A224577(∑[n+1]+2)`
-/

namespace A224571.P12270540645167052076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224571.P12270540645167052076

/-! ## A224571.P12075472502848222400

`A224577(A238531(n+2))+A063524(n+2)`
-/

namespace A224571.P12075472502848222400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A238531 (n + 2)).toNat + A063524 (n + 2)

end

end A224571.P12075472502848222400

/-! ## A224571.P750428761477739078

`A224577(A238531(n+2))%A201251(n+1)`
-/

namespace A224571.P750428761477739078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224577 (A238531 (n + 2)).toNat) (A201251 (n + 1))

end

end A224571.P750428761477739078

/-! ## A224571.P11930039046135294448

`A224577(A238531(n+2))/A038500(3*n+2)`
-/

namespace A224571.P11930039046135294448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224577 (A238531 (n + 2)).toNat : ℚ) / (A038500 (3 * n + 2) : ℚ)

end

end A224571.P11930039046135294448

/-! ## A224571.P5142132565190536346

`and(-1, A224577(A000096(n+1)))`
-/

namespace A224571.P5142132565190536346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224577 (A000096 (n + 1)).toNat)

end

end A224571.P5142132565190536346

/-! ## A224571.P14573902843957081971

`lcm(A033999(n), A224577(A000096(n+1)))`
-/

namespace A224571.P14573902843957081971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224577 (A000096 (n + 1)).toNat)

end

end A224571.P14573902843957081971

/-! ## A224571.P13206632175951505064

`A224577(A000096(n+1))+A000038(n+1)`
-/

namespace A224571.P13206632175951505064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A224571.P13206632175951505064

/-! ## A224571.P10302496091458984327

`A033999(2*n)*A224577(A000096(n+1))`
-/

namespace A224571.P10302496091458984327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A224577 (A000096 (n + 1)).toNat

end

end A224571.P10302496091458984327

/-! ## A224571.P1799562475222175920

`A224577(A000096(n+1))%A224570(n+1)`
-/

namespace A224571.P1799562475222175920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224577 (A000096 (n + 1)).toNat) (A224570 (n + 1))

end

end A224571.P1799562475222175920

/-!
# A224572: Number of (n+5) X 8 0..1 matrices with each 6 X 6 subblock idempotent.

The programs for A224572, there is no canonical definition to state claims against.
-/

/-! ## A224572.P12921257346393206344

`A224577(∑[n+2]+4)`
-/

namespace A224572.P12921257346393206344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224572.P12921257346393206344

/-! ## A224572.P12285545363140264045

`and(-1, A224577(A167614(n+1)))`
-/

namespace A224572.P12285545363140264045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224577 (A167614 (n + 1)).toNat)

end

end A224572.P12285545363140264045

/-! ## A224572.P17192915154345887521

`or(char[3], A224577(A000217(n+2)+3))`
-/

namespace A224572.P17192915154345887521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224577 (A000217 (n + 2) + 3).toNat)

end

end A224572.P17192915154345887521

/-! ## A224572.P14431477785781878796

`A224577(A167614(n+1))+A173728(n)%2`
-/

namespace A224572.P14431477785781878796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A167614 (n + 1)).toNat + Int.tmod (A173728 (n + 12)) 2

end

end A224572.P14431477785781878796

/-! ## A224572.P13090390498721897119

`A224577(A167614(n+1))+A007814(or(1, n))`
-/

namespace A224572.P13090390498721897119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A167614 (n + 1)).toNat + A007814 (Nat.lor 1 n)

end

end A224572.P13090390498721897119

/-! ## A224572.P1587665619133685789

`A224577(A167614(n+1))%A000045(n+28)`
-/

namespace A224572.P1587665619133685789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224577 (A167614 (n + 1)).toNat) (A000045 (n + 28))

end

end A224572.P1587665619133685789

/-! ## A224572.P8960598697526919022

`lcm(A000038(n)!, A224577(A000217(n+2)+3))`
-/

namespace A224572.P8960598697526919022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000038 n).toNat : ℤ) (A224577 (A000217 (n + 2) + 3).toNat)

end

end A224572.P8960598697526919022

/-! ## A224572.P15788083848104090779

`A007318(C(2, n))*A224577(A000217(n+2)+3)`
-/

namespace A224572.P15788083848104090779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224577 (A000217 (n + 2) + 3).toNat

end

end A224572.P15788083848104090779

/-! ## A224572.P328602509171025628

`A224577(A000217(n+2)+3)+A000045(C(n, 64))`
-/

namespace A224572.P328602509171025628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A000217 (n + 2) + 3).toNat + A000045 (Nat.choose n 64)

end

end A224572.P328602509171025628

/-! ## A224572.P12758563394001631769

`A000041(C(n, 64))*A224577(A000217(n+2)+3)`
-/

namespace A224572.P12758563394001631769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A224577 (A000217 (n + 2) + 3).toNat

end

end A224572.P12758563394001631769

/-!
# A224573: Number of (n+5)X9 0..1 matrices with each 6X6 subblock idempotent.

The programs for A224573, there is no canonical definition to state claims against.
-/

/-! ## A224573.P5464466729580612721

`A224577(∑[n+3]+7)`
-/

namespace A224573.P5464466729580612721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224573.P5464466729580612721

/-! ## A224573.P10247272141542837012

`or(char[1], A224577(A052905(n)+9))`
-/

namespace A224573.P10247272141542837012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224577 (A052905 n + 9).toNat)

end

end A224573.P10247272141542837012

/-! ## A224573.P9913496691048382240

`or(char[1], A224577(A055999(n)+10))`
-/

namespace A224573.P9913496691048382240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224577 (A055999 n + 10).toNat)

end

end A224573.P9913496691048382240

/-! ## A224573.P12143260864622097624

`lcm(log2(1/2), A224577(A167614(n+2)+1))`
-/

namespace A224573.P12143260864622097624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A224577 (A167614 (n + 2) + 1).toNat)

end

end A224573.P12143260864622097624

/-! ## A224573.P8740715376303828086

`A007318(C(n, 2))*A224577(A055999(n)+10)`
-/

namespace A224573.P8740715376303828086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224577 (A055999 n + 10).toNat

end

end A224573.P8740715376303828086

/-!
# A224574: Number of (n+5) X 10 0..1 matrices with each 6 X 6 subblock idempotent.

The programs for A224574, there is no canonical definition to state claims against.
-/

/-! ## A224574.P14579970653984198522

`A224577(∑[n+4]+11)`
-/

namespace A224574.P14579970653984198522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A224574.P14579970653984198522

/-!
# A224575: Number of (n+5) X 11 0..1 matrices with each 6 X 6 subblock idempotent.

The programs for A224575, there is no canonical definition to state claims against.
-/

/-! ## A224575.P8055051544717646326

`A224577(A056115(n)+21)`
-/

namespace A224575.P8055051544717646326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A056115 n + 21).toNat

end

end A224575.P8055051544717646326

/-! ## A224575.P11462516906553317950

`A224577(A167499(n+4)+1)`
-/

namespace A224575.P11462516906553317950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A167499 (n + 4) + 1).toNat

end

end A224575.P11462516906553317950

/-! ## A224575.P10003614595140146481

`A224577(A000124(n+5)+5)`
-/

namespace A224575.P10003614595140146481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A000124 (n + 5) + 5).toNat

end

end A224575.P10003614595140146481

/-! ## A224575.P17305299940491203599

`A224577(A000096(n+4)+7)`
-/

namespace A224575.P17305299940491203599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A000096 (n + 4) + 7).toNat

end

end A224575.P17305299940491203599

/-! ## A224575.P4170818196565451179

`A224577(A000217(n+5)+6)`
-/

namespace A224575.P4170818196565451179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A000217 (n + 5) + 6).toNat

end

end A224575.P4170818196565451179

/-!
# A224576: Number of (n+5)X12 0..1 matrices with each 6X6 subblock idempotent.

The programs for A224576, there is no canonical definition to state claims against.
-/

/-! ## A224576.P11031405831737638557

`A224577(A056119(n)+28)`
-/

namespace A224576.P11031405831737638557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A056119 n + 28).toNat

end

end A224576.P11031405831737638557

/-! ## A224576.P18393123331752506678

`A224577(A167614(n+5)+4)`
-/

namespace A224576.P18393123331752506678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A167614 (n + 5) + 4).toNat

end

end A224576.P18393123331752506678

/-! ## A224576.P430918864671585608

`A224577(A133263(n+6)+5)`
-/

namespace A224576.P430918864671585608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A133263 (n + 6) + 5).toNat

end

end A224576.P430918864671585608

/-! ## A224576.P8220019285339051525

`A224577(A000124(n+6)+6)`
-/

namespace A224576.P8220019285339051525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A000124 (n + 6) + 6).toNat

end

end A224576.P8220019285339051525

/-! ## A224576.P18325996861477534590

`A224577(A000096(n+5)+8)`
-/

namespace A224576.P18325996861477534590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A000096 (n + 5) + 8).toNat

end

end A224576.P18325996861477534590

/-!
# A224580: Number of (n+6)X(n+6) 0..1 matrices with each 7X7 subblock idempotent.

The programs for A224580, there is no canonical definition to state claims against.
-/

/-! ## A224580.P13911428695308238354

`A224588(∑[4*n]+1)`
-/

namespace A224580.P13911428695308238354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224580.P13911428695308238354

/-! ## A224580.P15287860029205828762

`lcm(2, A224588(A001844(n)))`
-/

namespace A224580.P15287860029205828762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224588 (A001844 n).toNat)

end

end A224580.P15287860029205828762

/-! ## A224580.P11278409369299697903

`A224588(A001844(n))+A000007(n+3)`
-/

namespace A224580.P11278409369299697903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A001844 n).toNat + A000007 (n + 3)

end

end A224580.P11278409369299697903

/-! ## A224580.P9761632056023461641

`A224588(A001844(n))%A028965(n+1)`
-/

namespace A224580.P9761632056023461641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224588 (A001844 n).toNat) (A028965 (n + 1))

end

end A224580.P9761632056023461641

/-! ## A224580.P12642315969520044281

`A007318(C(n, 2))*A224588(A001844(n))`
-/

namespace A224580.P12642315969520044281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224588 (A001844 n).toNat

end

end A224580.P12642315969520044281

/-!
# A224581: Number of (n+6)X7 0..1 matrices with each 7X7 subblock idempotent.

The programs for A224581, there is no canonical definition to state claims against.
-/

/-! ## A224581.P3803356002919481875

`A224588(∑[n]+1)`
-/

namespace A224581.P3803356002919481875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224581.P3803356002919481875

/-! ## A224581.P6580058983459119395

`or(char[1], A224588(A000124(n)))`
-/

namespace A224581.P6580058983459119395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224588 (A000124 n).toNat)

end

end A224581.P6580058983459119395

/-! ## A224581.P13108964986755523020

`A224588(A000124(n))+A000007(n+2)`
-/

namespace A224581.P13108964986755523020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A000124 n).toNat + A000007 (n + 2)

end

end A224581.P13108964986755523020

/-! ## A224581.P218407942301912190

`A000108(C(n, 64))*A224588(A000124(n))`
-/

namespace A224581.P218407942301912190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64) * A224588 (A000124 n).toNat

end

end A224581.P218407942301912190

/-! ## A224581.P8337753342812882453

`A224588(A000124(n))+char[A000045(n+19)]`
-/

namespace A224581.P8337753342812882453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 19)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224581.P8337753342812882453

/-!
# A224582: Number of (n+6)X8 0..1 matrices with each 7X7 subblock idempotent.

The programs for A224582, there is no canonical definition to state claims against.
-/

/-! ## A224582.P5646776996402576079

`A224588(∑[n+1]+2)`
-/

namespace A224582.P5646776996402576079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224582.P5646776996402576079

/-! ## A224582.P11923326319406863465

`A224588(A000096(n)+3)+n%-1`
-/

namespace A224582.P11923326319406863465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A000096 n + 3).toNat + Int.tmod (n : ℤ) (-1)

end

end A224582.P11923326319406863465

/-! ## A224582.P9454741669834833748

`A007318(C(n, 2))*A224588(A000096(n)+3)`
-/

namespace A224582.P9454741669834833748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224588 (A000096 n + 3).toNat

end

end A224582.P9454741669834833748

/-! ## A224582.P9143825410051914334

`A224588(A000096(n)+3)/A007318(C(3, n²))`
-/

namespace A224582.P9143825410051914334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224588 (A000096 n + 3).toNat : ℚ) / (A007318 (Nat.choose 3 (n ^ 2)) : ℚ)

end

end A224582.P9143825410051914334

/-! ## A224582.P13124012882651459351

`A000041(C(2, 2*n))*A224588(A000096(n)+3)`
-/

namespace A224582.P13124012882651459351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A224588 (A000096 n + 3).toNat

end

end A224582.P13124012882651459351

/-!
# A224583: Number of (n+6)X9 0..1 matrices with each 7X7 subblock idempotent.

The programs for A224583, there is no canonical definition to state claims against.
-/

/-! ## A224583.P12602687793475939139

`A224588(∑[n+2]+4)`
-/

namespace A224583.P12602687793475939139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224583.P12602687793475939139

/-! ## A224583.P4528118507052915638

`or(char[3], A224588(A167614(n+1)))`
-/

namespace A224583.P4528118507052915638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224588 (A167614 (n + 1)).toNat)

end

end A224583.P4528118507052915638

/-! ## A224583.P11427135552586865334

`A224588(A167614(n+1))%A224586(n+1)`
-/

namespace A224583.P11427135552586865334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224588 (A167614 (n + 1)).toNat) (A224586 (n + 1))

end

end A224583.P11427135552586865334

/-! ## A224583.P17797100185511000262

`A007318(C(n, 2))*A224588(A167614(n+1))`
-/

namespace A224583.P17797100185511000262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224588 (A167614 (n + 1)).toNat

end

end A224583.P17797100185511000262

/-! ## A224583.P5957368282180259615

`A224588(A167614(n+1))/A007318(C(2, n))`
-/

namespace A224583.P5957368282180259615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224588 (A167614 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A224583.P5957368282180259615

/-!
# A224584: Number of (n+6)X10 0..1 matrices with each 7X7 subblock idempotent.

The programs for A224584, there is no canonical definition to state claims against.
-/

/-! ## A224584.P2586881815712981979

`A224588(∑[n+3]+7)`
-/

namespace A224584.P2586881815712981979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224584.P2586881815712981979

/-! ## A224584.P2984048527099763881

`or(char[1], A224588(A052905(n)+9))`
-/

namespace A224584.P2984048527099763881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224588 (A052905 n + 9).toNat)

end

end A224584.P2984048527099763881

/-! ## A224584.P8105130121474042025

`A007318(C(2, n))*A224588(A052905(n)+9)`
-/

namespace A224584.P8105130121474042025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224588 (A052905 n + 9).toNat

end

end A224584.P8105130121474042025

/-! ## A224584.P12812227622595536231

`A007318(C(2, n))*A224588(A055999(n)+10)`
-/

namespace A224584.P12812227622595536231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224588 (A055999 n + 10).toNat

end

end A224584.P12812227622595536231

/-! ## A224584.P634735677476985994

`A224588(A055999(n)+10)^A007318(C(n, 2))`
-/

namespace A224584.P634735677476985994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224588 (A055999 n + 10).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A224584.P634735677476985994

/-!
# A224585: Number of (n+6)X11 0..1 matrices with each 7X7 subblock idempotent.

The programs for A224585, there is no canonical definition to state claims against.
-/

/-! ## A224585.P2842696334263898155

`A224588(A167499(n+3))`
-/

namespace A224585.P2842696334263898155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A167499 (n + 3)).toNat

end

end A224585.P2842696334263898155

/-! ## A224585.P18124208662104922516

`A224588(A155212(n)+13)`
-/

namespace A224585.P18124208662104922516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A155212 n + 13).toNat

end

end A224585.P18124208662104922516

/-! ## A224585.P5602487192781824739

`A224588(A056000(n)+15)`
-/

namespace A224585.P5602487192781824739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A056000 n + 15).toNat

end

end A224585.P5602487192781824739

/-! ## A224585.P1659393587531616267

`A224588(A166136(n+3)-1)`
-/

namespace A224585.P1659393587531616267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A166136 (n + 3) - 1).toNat

end

end A224585.P1659393587531616267

/-! ## A224585.P7179214578551992361

`A224588(A167614(n+3)+2)`
-/

namespace A224585.P7179214578551992361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A167614 (n + 3) + 2).toNat

end

end A224585.P7179214578551992361

/-!
# A224586: Number of (n+6)X12 0..1 matrices with each 7X7 subblock idempotent.

The programs for A224586, there is no canonical definition to state claims against.
-/

/-! ## A224586.P6994289233685369759

`A224588(A056115(n)+21)`
-/

namespace A224586.P6994289233685369759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A056115 n + 21).toNat

end

end A224586.P6994289233685369759

/-! ## A224586.P16101143274030786237

`A224588(A167499(n+4)+1)`
-/

namespace A224586.P16101143274030786237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A167499 (n + 4) + 1).toNat

end

end A224586.P16101143274030786237

/-! ## A224586.P15990855345226354800

`A224588(A167614(n+4)+3)`
-/

namespace A224586.P15990855345226354800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A167614 (n + 4) + 3).toNat

end

end A224586.P15990855345226354800

/-! ## A224586.P8190053986955949765

`A224588(A000124(n+5)+5)`
-/

namespace A224586.P8190053986955949765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A000124 (n + 5) + 5).toNat

end

end A224586.P8190053986955949765

/-! ## A224586.P13808766656889287350

`A224588(A000096(n+4)+7)`
-/

namespace A224586.P13808766656889287350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A000096 (n + 4) + 7).toNat

end

end A224586.P13808766656889287350

/-!
# A224587: Number of (n+6)X13 0..1 matrices with each 7X7 subblock idempotent.

The programs for A224587, there is no canonical definition to state claims against.
-/

/-! ## A224587.P7274088323798988301

`A224588(A056119(n)+28)`
-/

namespace A224587.P7274088323798988301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A056119 n + 28).toNat

end

end A224587.P7274088323798988301

/-! ## A224587.P10780234860506781786

`A224588(A166136(n+5)+1)`
-/

namespace A224587.P10780234860506781786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A166136 (n + 5) + 1).toNat

end

end A224587.P10780234860506781786

/-! ## A224587.P10354824290903619288

`A224588(A167614(n+5)+4)`
-/

namespace A224587.P10354824290903619288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A167614 (n + 5) + 4).toNat

end

end A224587.P10354824290903619288

/-! ## A224587.P11999404670148190042

`A224588(A000124(n+6)+6)`
-/

namespace A224587.P11999404670148190042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A000124 (n + 6) + 6).toNat

end

end A224587.P11999404670148190042

/-! ## A224587.P6872004816009962132

`A224588(A000096(n+5)+8)`
-/

namespace A224587.P6872004816009962132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A000096 (n + 5) + 8).toNat

end

end A224587.P6872004816009962132

/-!
# A224589: Number of (n+7)X(n+7) 0..1 matrices with each 8X8 subblock idempotent.

The programs for A224589, there is no canonical definition to state claims against.
-/

/-! ## A224589.P6384073837206534311

`A224597(∑[4*n]+1)`
-/

namespace A224589.P6384073837206534311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224589.P6384073837206534311

/-! ## A224589.P2919510418540879983

`lcm(2, A224597(A001844(n)))`
-/

namespace A224589.P2919510418540879983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224597 (A001844 n).toNat)

end

end A224589.P2919510418540879983

/-! ## A224589.P14465523748235253441

`A007318(∑[n])*A224597(A001844(n))`
-/

namespace A224589.P14465523748235253441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224597 (A001844 n).toNat

end

end A224589.P14465523748235253441

/-! ## A224589.P16822325803938049718

`A224597(A001844(n))+A217149(n+1)`
-/

namespace A224589.P16822325803938049718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A001844 n).toNat + A217149 (n + 1)

end

end A224589.P16822325803938049718

/-! ## A224589.P5935375491951783952

`A224597(A001844(n))*A340369(n+1)`
-/

namespace A224589.P5935375491951783952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A001844 n).toNat * A340369 (n + 1)

end

end A224589.P5935375491951783952

/-!
# A224590: Number of (n+7)X8 0..1 matrices with each 8X8 subblock idempotent.

The programs for A224590, there is no canonical definition to state claims against.
-/

/-! ## A224590.P12328900376211678610

`A224597(∑[n]+1)`
-/

namespace A224590.P12328900376211678610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224590.P12328900376211678610

/-! ## A224590.P11942736206455347888

`or(char[2], A224597(A000124(n)))`
-/

namespace A224590.P11942736206455347888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224597 (A000124 n).toNat)

end

end A224590.P11942736206455347888

/-! ## A224590.P15547389301045561611

`A007318(∑[n])*A224597(A000124(n))`
-/

namespace A224590.P15547389301045561611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224597 (A000124 n).toNat

end

end A224590.P15547389301045561611

/-! ## A224590.P17268816825315307693

`A224597(A000124(n))/A007318(C(n, 2))`
-/

namespace A224590.P17268816825315307693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224597 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A224590.P17268816825315307693

/-! ## A224590.P9295138323623950734

`A224597(A000124(n))+A014063(3*n+4)`
-/

namespace A224590.P9295138323623950734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A000124 n).toNat + A014063 (3 * n + 4)

end

end A224590.P9295138323623950734

/-!
# A224591: Number of (n+7)X9 0..1 matrices with each 8X8 subblock idempotent.

The programs for A224591, there is no canonical definition to state claims against.
-/

/-! ## A224591.P12169314705032694313

`A224597(∑[n+1]+2)`
-/

namespace A224591.P12169314705032694313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224591.P12169314705032694313

/-! ## A224591.P10363066670874403516

`(A224597(A000096(n)+3)^(1/2))²`
-/

namespace A224591.P10363066670874403516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A224597 (A000096 n + 3).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A224591.P10363066670874403516

/-! ## A224591.P8438576485098367702

`A007318(C(n, 2))*A224597(A000096(n)+3)`
-/

namespace A224591.P8438576485098367702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224597 (A000096 n + 3).toNat

end

end A224591.P8438576485098367702

/-! ## A224591.P14062685416997556646

`A000041(and(1, -n))*A224597(A000096(n)+3)`
-/

namespace A224591.P14062685416997556646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A224597 (A000096 n + 3).toNat

end

end A224591.P14062685416997556646

/-! ## A224591.P18203893931069432493

`A007318(and(3, -n))*A224597(A000096(n)+3)`
-/

namespace A224591.P18203893931069432493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A224597 (A000096 n + 3).toNat

end

end A224591.P18203893931069432493

/-!
# A224592: Number of (n+7)X10 0..1 matrices with each 8X8 subblock idempotent.

The programs for A224592, there is no canonical definition to state claims against.
-/

/-! ## A224592.P18339838916800625576

`A224597(∑[n+2]+4)`
-/

namespace A224592.P18339838916800625576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224592.P18339838916800625576

/-! ## A224592.P864881160478340786

`or(char[1], A224597(A167614(n+1)))`
-/

namespace A224592.P864881160478340786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224597 (A167614 (n + 1)).toNat)

end

end A224592.P864881160478340786

/-! ## A224592.P12211541077079661638

`lcm((-1)^n, A224597(A167499(n)+n))`
-/

namespace A224592.P12211541077079661638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A224597 (A167499 n + (n : ℤ)).toNat)

end

end A224592.P12211541077079661638

/-! ## A224592.P18308576446531211849

`A224597(A167614(n+1))+A034461(n+1)`
-/

namespace A224592.P18308576446531211849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A167614 (n + 1)).toNat + A034461 (n + 1)

end

end A224592.P18308576446531211849

/-! ## A224592.P17080754003570270946

`A007318(C(n, 2))*A224597(A167614(n+1))`
-/

namespace A224592.P17080754003570270946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224597 (A167614 (n + 1)).toNat

end

end A224592.P17080754003570270946

/-!
# A224593: Number of (n+7)X11 0..1 matrices with each 8X8 subblock idempotent.

The programs for A224593, there is no canonical definition to state claims against.
-/

/-! ## A224593.P4508641334377715322

`A224597(∑[n+3]+7)`
-/

namespace A224593.P4508641334377715322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224593.P4508641334377715322

/-! ## A224593.P11626953608836775026

`or(char[1], A224597(A052905(n)+9))`
-/

namespace A224593.P11626953608836775026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224597 (A052905 n + 9).toNat)

end

end A224593.P11626953608836775026

/-! ## A224593.P4548367390106190012

`or(char[1], A224597(A055999(n)+10))`
-/

namespace A224593.P4548367390106190012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224597 (A055999 n + 10).toNat)

end

end A224593.P4548367390106190012

/-! ## A224593.P13678480950046295186

`A007318(C(2, n))*A224597(A052905(n)+9)`
-/

namespace A224593.P13678480950046295186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224597 (A052905 n + 9).toNat

end

end A224593.P13678480950046295186

/-! ## A224593.P10175778930802571542

`A007318(C(2, n))*A224597(A055999(n)+10)`
-/

namespace A224593.P10175778930802571542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224597 (A055999 n + 10).toNat

end

end A224593.P10175778930802571542

/-!
# A224594: Number of (n+7)X12 0..1 matrices with each 8X8 subblock idempotent.

The programs for A224594, there is no canonical definition to state claims against.
-/

/-! ## A224594.P2576640394821714534

`A224597(A374005(n+1))`
-/

namespace A224594.P2576640394821714534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A374005 (n + 1)).toNat

end

end A224594.P2576640394821714534

/-! ## A224594.P9110754088622292999

`A224597(A167499(n+3))`
-/

namespace A224594.P9110754088622292999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A167499 (n + 3)).toNat

end

end A224594.P9110754088622292999

/-! ## A224594.P5419231573158842314

`A224597(A155212(n)+13)`
-/

namespace A224594.P5419231573158842314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A155212 n + 13).toNat

end

end A224594.P5419231573158842314

/-! ## A224594.P18072734650283597265

`A224597(A056000(n)+15)`
-/

namespace A224594.P18072734650283597265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A056000 n + 15).toNat

end

end A224594.P18072734650283597265

/-! ## A224594.P18328322145637677372

`A224597(A167614(n+3)+2)`
-/

namespace A224594.P18328322145637677372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A167614 (n + 3) + 2).toNat

end

end A224594.P18328322145637677372

/-!
# A224595: Number of (n+7)X13 0..1 matrices with each 8X8 subblock idempotent.

The programs for A224595, there is no canonical definition to state claims against.
-/

/-! ## A224595.P3285035391648207303

`A224597(∑[n+5]+16)`
-/

namespace A224595.P3285035391648207303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A224595.P3285035391648207303

/-! ## A224595.P13653460692077036013

`and(1, n)!*A224597(A000124(n+5)+5)`
-/

namespace A224595.P13653460692077036013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A224597 (A000124 (n + 5) + 5).toNat

end

end A224595.P13653460692077036013

/-! ## A224595.P4723374471696472538

`A007318(C(2, n))*A224597(A000124(n+5)+5)`
-/

namespace A224595.P4723374471696472538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224597 (A000124 (n + 5) + 5).toNat

end

end A224595.P4723374471696472538

/-! ## A224595.P11604910576181890750

`A007318(and(1, -n))*A224597(A000124(n+5)+5)`
-/

namespace A224595.P11604910576181890750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A224597 (A000124 (n + 5) + 5).toNat

end

end A224595.P11604910576181890750

/-! ## A224595.P3008932586355278469

`A224597(A000124(n+5)+5)+A008683(8*(n+1))`
-/

namespace A224595.P3008932586355278469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A000124 (n + 5) + 5).toNat + A008683 (8 * (n + 1))

end

end A224595.P3008932586355278469

/-!
# A224596: Number of (n+7) X 14 0..1 matrices with each 8 X 8 subblock idempotent.

The programs for A224596, there is no canonical definition to state claims against.
-/

/-! ## A224596.P6182989914837247421

`A224597(A374008(n+1))`
-/

namespace A224596.P6182989914837247421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A374008 (n + 1)).toNat

end

end A224596.P6182989914837247421

/-! ## A224596.P12329246599062877307

`A224597(A056119(n)+28)`
-/

namespace A224596.P12329246599062877307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A056119 n + 28).toNat

end

end A224596.P12329246599062877307

/-! ## A224596.P1784284085396825774

`A224597(A167499(n+5)+2)`
-/

namespace A224596.P1784284085396825774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A167499 (n + 5) + 2).toNat

end

end A224596.P1784284085396825774

/-! ## A224596.P17754771417513876698

`A224597(A000124(n+6)+6)`
-/

namespace A224596.P17754771417513876698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A000124 (n + 6) + 6).toNat

end

end A224596.P17754771417513876698

/-! ## A224596.P18251908251574969252

`A224597(A055999(n+4))`
-/

namespace A224596.P18251908251574969252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (A055999 (n + 4)).toNat

end

end A224596.P18251908251574969252

/-!
# A224598: Number of (n+2)X(n+2) 0..2 matrices with each 3X3 subblock idempotent.

The programs for A224598, there is no canonical definition to state claims against.
-/

/-! ## A224598.P4397881732273674184

`A224606(∑[4*n]+1)`
-/

namespace A224598.P4397881732273674184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224598.P4397881732273674184

/-! ## A224598.P7560853077263646441

`lcm(2, A224606(A001844(n)))`
-/

namespace A224598.P7560853077263646441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224606 (A001844 n).toNat)

end

end A224598.P7560853077263646441

/-! ## A224598.P14770548685532014857

`record[gcd(A114327(n), A224606(n+1))]`
-/

namespace A224598.P14770548685532014857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A224606 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224598.P14770548685532014857

/-! ## A224598.P3216310546471536537

`or(A000038(n), A224606(A001844(n)))`
-/

namespace A224598.P3216310546471536537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A224606 (A001844 n).toNat)

end

end A224598.P3216310546471536537

/-! ## A224598.P16625821925398456697

`A007318(∑[n])*A224606(A001844(n))`
-/

namespace A224598.P16625821925398456697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224606 (A001844 n).toNat

end

end A224598.P16625821925398456697

/-!
# A224599: Number of (n+2) X 3 0..2 matrices with each 3 X 3 subblock idempotent.

The programs for A224599, there is no canonical definition to state claims against.
-/

/-! ## A224599.P10216150347572426970

`A224606(∑[n]+1)`
-/

namespace A224599.P10216150347572426970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224599.P10216150347572426970

/-! ## A224599.P2032562728816398615

`record[A224606(n+1)]`
-/

namespace A224599.P2032562728816398615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224599.P2032562728816398615

/-! ## A224599.P16035783202569582926

`or(char[2], A224606(A000124(n)))`
-/

namespace A224599.P16035783202569582926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224606 (A000124 n).toNat)

end

end A224599.P16035783202569582926

/-! ## A224599.P15294072496203164380

`A033999(n)²*A224606(A000124(n))`
-/

namespace A224599.P15294072496203164380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A224606 (A000124 n).toNat

end

end A224599.P15294072496203164380

/-! ## A224599.P12119250280886654452

`A007318(∑[n])*A224606(A000124(n))`
-/

namespace A224599.P12119250280886654452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224606 (A000124 n).toNat

end

end A224599.P12119250280886654452

/-! ## A224599.P13008811085492705575

`A224606(A000124(n))/A007318(C(2, n))`
-/

namespace A224599.P13008811085492705575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224606 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A224599.P13008811085492705575

/-! ## A224599.P9484989284379672342

`A224606(A000124(n))+char[A224606(n+1)]`
-/

namespace A224599.P9484989284379672342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224599.P9484989284379672342

/-! ## A224599.P17357644329351764618

`A224606(A000124(n))+A008683(8*(n+1))`
-/

namespace A224599.P17357644329351764618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A000124 n).toNat + A008683 (8 * (n + 1))

end

end A224599.P17357644329351764618

/-! ## A224599.P6912296300844274461

`A000041(C(2, 2*n))*A224606(A000124(n))`
-/

namespace A224599.P6912296300844274461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A224606 (A000124 n).toNat

end

end A224599.P6912296300844274461

/-! ## A224599.P12601771023635220535

`ceil((1/A000032(n))²)*A224606(A000124(n))`
-/

namespace A224599.P12601771023635220535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / (A000032 n : ℚ)) ^ 2⌉ * A224606 (A000124 n).toNat

end

end A224599.P12601771023635220535

