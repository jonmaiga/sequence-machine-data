import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A224500: Number of ordered full binary trees with labels from a set of at most n labels.

The programs for A224500, the canonical program `A224500.P15378464131859936980` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224500 has offset 1).

The definition of A224500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224500.P15378464131859936980

`(4*(n+1)-5)*a(n-1)-(4*(n+1)-4)*a(n-2)+1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224500

/-- `(4*(n+1)-5)*a(n-1)-(4*(n+1)-4)*a(n-2)+1` -/
def P15378464131859936980.Spec : Prop :=
  ∀ n, P15378464131859936980.a n = A224500 (n + 1)

theorem P15378464131859936980.correct : P15378464131859936980.Spec := by
  intro n
  simp only [A224500, Nat.add_sub_cancel]

end A224500

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

namespace A224500

/-- `∑[A052143(n)]` -/
def P2999373716041220449.Spec : Prop :=
  ∀ n, P2999373716041220449.a n = A224500 (n + 1)

end A224500

/-! ## A224500.P12055500178454595579

`(n+1)*A349640(n)`
-/

namespace A224500.P12055500178454595579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A349640 n

end

end A224500.P12055500178454595579

namespace A224500

/-- `(n+1)*A349640(n)` -/
def P12055500178454595579.Spec : Prop :=
  ∀ n, P12055500178454595579.a n = A224500 (n + 1)

end A224500

/-! ## A224500.P16439243799770418309

`a(n-1)+A052143(n)+A008683(3*(n+1)²)` with `a(0)=1`
-/

namespace A224500.P16439243799770418309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A052143 n + A008683 (3 * (n + 1) ^ 2))

end

end A224500.P16439243799770418309

namespace A224500

/-- `a(n-1)+A052143(n)+A008683(3*(n+1)²)` -/
def P16439243799770418309.Spec : Prop :=
  ∀ n, P16439243799770418309.a n = A224500 (n + 1)

end A224500

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

namespace A224500

/-- `record[A185946(n)]` -/
def P10842636635290202024.Spec : Prop :=
  ∀ n, P10842636635290202024.a n = A224500 (n + 1)

end A224500

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

The programs for A224508, the canonical program `A224508.P101396537568610900` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224508 has offset 0).

The definition of A224508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224508.P11102252426827174512

`ogf((x+3x^2)/(1+x-3x^2-2x^3))`
-/

namespace A224508.P11102252426827174512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, 1, -3, -2] n

end

end A224508.P11102252426827174512

namespace A224508

/-- `ogf((x+3x^2)/(1+x-3x^2-2x^3))` -/
def P11102252426827174512.Spec : Prop :=
  ∀ n, P11102252426827174512.a n = A224508 n

end A224508

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

The canonical program, it is in `Seq.B001.C010`.
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

/-! ## A224508.P5075227229613134203

`∑{#}[n, (-1)^(n-#)*C(n, #)*A192879(#)]`
-/

namespace A224508.P5075227229613134203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A192879 k : ℚ)

end

end A224508.P5075227229613134203

namespace A224508

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A192879(#)]` -/
def P5075227229613134203.Spec : Prop :=
  ∀ n, P5075227229613134203.a n = (A224508 n : ℚ)

end A224508

/-!
# A224509: Expansion of (1-x)*(1-2*x)*(1-3*x)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A224509, the canonical program `A224509.P935142278126888776` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224509 has offset 0).

The definition of A224509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+11x^2-6x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A224509.P935142278126888776`, by `A224509.P935142278126888776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224509.P935142278126888776

`ogf((1-6x+11x^2-6x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224509

/-- `ogf((1-6x+11x^2-6x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P935142278126888776.Spec : Prop :=
  ∀ n, P935142278126888776.a n = A224509 n

theorem P935142278126888776.correct : P935142278126888776.Spec := by
  intro n
  simp only [A224509]

end A224509

/-! ## A224509.P7681600021664512821

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=35, a(4)=125`
-/

namespace A224509.P7681600021664512821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 35, 125] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 35 * a (n - 3) - 15 * a (n - 4) + a (n - 5)

end

end A224509.P7681600021664512821

namespace A224509

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P7681600021664512821.Spec : Prop :=
  ∀ n, P7681600021664512821.a n = A224509 n

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

/-!
# A224510: Number of simple labeled graphs on {1,2,...,n} such that the node labeled with 1 is in the same component as the node labeled with 2.

The programs for A224510, there is no canonical definition to state claims against.
-/

/-! ## A224510.P5347540440935523507

`∑{#}[n-2, C(n-2, #)*A001187(#+2)*A006125(n-#-2)]`
-/

namespace A224510.P5347540440935523507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - 2).toNat k : ℤ) * A001187 (k + 2) * A006125 ((n : ℤ) - (k : ℤ) - 2).toNat

end

end A224510.P5347540440935523507

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

/-! ## A224512.P6008385393212186010

`floor(4*3^A005811(n)/3)`
-/

namespace A224512.P6008385393212186010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((3 : ℚ) ^ (A005811 n : ℤ) / 3)⌋

end

end A224512.P6008385393212186010

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

The programs for A224514, the canonical program `A224514.P17659718579249174996` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224514 has offset 0).

The definition of A224514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x+16x^2-13x^3+3x^4)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A224514.P17659718579249174996`, by `A224514.P17659718579249174996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224514.P17659718579249174996

`ogf((1-7x+16x^2-13x^3+3x^4)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224514

/-- `ogf((1-7x+16x^2-13x^3+3x^4)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P17659718579249174996.Spec : Prop :=
  ∀ n, P17659718579249174996.a n = A224514 n

theorem P17659718579249174996.correct : P17659718579249174996.Spec := by
  intro n
  simp only [A224514]

end A224514

/-! ## A224514.P523680564005807271

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20, a(4)=70`
-/

namespace A224514.P523680564005807271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 20, 70] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 35 * a (n - 3) - 15 * a (n - 4) + a (n - 5)

end

end A224514.P523680564005807271

namespace A224514

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P523680564005807271.Spec : Prop :=
  ∀ n, P523680564005807271.a n = A224514 n

end A224514

/-! ## A224514.P10794733091961291629

`A223968(C(n+n+1, 2)+n)`
-/

namespace A224514.P10794733091961291629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223968 (Nat.choose (n + n + 1) 2 + n)

end

end A224514.P10794733091961291629

namespace A224514

/-- `A223968(C(n+n+1, 2)+n)` -/
def P10794733091961291629.Spec : Prop :=
  ∀ n, P10794733091961291629.a n = A224514 n

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

/-!
# A224516: Number of solutions to x^4 - x == 0 (mod n).

The programs for A224516, the canonical program `A224516.P10263178331303486740` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224516 has offset 1).

The definition of A224516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224516.P15297084379048302375

`A061142(3^A357905(1+n)*∏{p}[n+1, 2%#²])`
-/

namespace A224516.P15297084379048302375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A357905 (1 + n) : ℤ) * ((∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 : ℕ) : ℚ))).toNat

end

end A224516.P15297084379048302375

namespace A224516

/-- `A061142(3^A357905(1+n)*∏{p}[n+1, 2%#²])` -/
def P15297084379048302375.Spec : Prop :=
  ∀ n, P15297084379048302375.a n = A224516 (n + 1)

end A224516

/-! ## A224516.P10263178331303486740

`A002487(A060839(1+n))*A034444(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A224516

/-- `A002487(A060839(1+n))*A034444(n+1)` -/
def P10263178331303486740.Spec : Prop :=
  ∀ n, P10263178331303486740.a n = A224516 (n + 1)

theorem P10263178331303486740.correct : P10263178331303486740.Spec := by
  intro n
  simp only [A224516, Nat.add_sub_cancel]

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

/-! ## A224517.P2046860263942810784

`lt[A220945(1+n), 1]+1`
-/

namespace A224517.P2046860263942810784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220945 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A224517.P2046860263942810784

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

/-! ## A224519.P6499968729181791377

`(A056899(n+4)-A056899(n+3))/72`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A224519.P6499968729181791377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056899 (n + 4) - A056899 (n + 3) : ℚ) / 72

end

end A224519.P6499968729181791377

/-! ## A224519.P3592631453143404774

`Δ[∑{#}[A056900(n), #]]`
-/

namespace A224519.P3592631453143404774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056900 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1).toNat, k

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A224519.P3592631453143404774

/-! ## A224519.P17168362794588261169

`Δ[C(A091199(1+n), 2)]`
-/

namespace A224519.P17168362794588261169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091199 (1 + n)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A224519.P17168362794588261169

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

/-!
# A224520: Numbers a(n) with property a(n) + a(n+4) = 2^(n+4) - 1 = A000225(n+4).

The programs for A224520, the canonical program `A224520.P18365774479045530183` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224520 has offset 0).

The definition of A224520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224520.P5664732595645651453

`ogf(x/(1-3x+2x^2+x^4-3x^5+2x^6))`
-/

namespace A224520.P5664732595645651453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 2, 0, 1, -3, 2] n

end

end A224520.P5664732595645651453

namespace A224520

/-- `ogf(x/(1-3x+2x^2+x^4-3x^5+2x^6))` -/
def P5664732595645651453.Spec : Prop :=
  ∀ n, P5664732595645651453.a n = A224520 n

end A224520

/-! ## A224520.P18365774479045530183

`floor(2^(n+4)/17)`

The canonical program, it is in `Seq.B000.C036`.
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

The programs for A224521, the canonical program `A224521.P1292483461684483283` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224521 has offset 0).

The definition of A224521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224521.P12413711537907836323

`ogf(x/(1-3x+2x^2+x^5-3x^6+2x^7))`
-/

namespace A224521.P12413711537907836323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 2, 0, 0, 1, -3, 2] n

end

end A224521.P12413711537907836323

namespace A224521

/-- `ogf(x/(1-3x+2x^2+x^5-3x^6+2x^7))` -/
def P12413711537907836323.Spec : Prop :=
  ∀ n, P12413711537907836323.a n = A224521 n

end A224521

/-! ## A224521.P1292483461684483283

`floor(2^(n+5)/33)`

The canonical program, it is in `Seq.B000.C036`.
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

/-! ## A224522.P18051895035252957727

`A140791(3*(n+1))`
-/

namespace A224522.P18051895035252957727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140791 (3 * (n + 1))

end

end A224522.P18051895035252957727

/-! ## A224522.P10703385599601483503

`A045881(15*(n+1))-1`
-/

namespace A224522.P10703385599601483503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (15 * (n + 1)) - 1

end

end A224522.P10703385599601483503

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

/-! ## A224524.P14275800215467952364

`A002260(A032555(n+1))*A193710(n+1)`
-/

namespace A224524.P14275800215467952364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A032555 (n + 1)).toNat * A193710 (n + 1)

end

end A224524.P14275800215467952364

/-!
# A224525: Number of idempotent 3 X 3 0..n matrices of rank 1.

The programs for A224525, the canonical program `A224525.P7370046672617577056` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224525 has offset 1).

The definition of A224525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224525.P7370046672617577056

`6*(n+1)²+18*(n+1)+3+6*A002541(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A224525

/-- `6*(n+1)²+18*(n+1)+3+6*A002541(n+1)` -/
def P7370046672617577056.Spec : Prop :=
  ∀ n, P7370046672617577056.a n = A224525 (n + 1)

theorem P7370046672617577056.correct : P7370046672617577056.Spec := by
  intro n
  simp only [A224525, Nat.add_sub_cancel]

end A224525

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

namespace A224525

/-- `A224524(∑[n+2]+4)` -/
def P16872762564740650557.Spec : Prop :=
  ∀ n, P16872762564740650557.a n = A224525 (n + 1)

end A224525

/-! ## A224525.P14645566781910778771

`A224118(A167614(n+1))`
-/

namespace A224525.P14645566781910778771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (A167614 (n + 1)).toNat

end

end A224525.P14645566781910778771

namespace A224525

/-- `A224118(A167614(n+1))` -/
def P14645566781910778771.Spec : Prop :=
  ∀ n, P14645566781910778771.a n = A224525 (n + 1)

end A224525

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

/-!
# A224529: Sequence f_n from a paper by Robert Osburn and Brundaban Sahu.

The programs for A224529, there is no canonical definition to state claims against.
-/

/-! ## A224529.P5286719442831690294

`A103221(5*A366266(n))`
-/

namespace A224529.P5286719442831690294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (5 * A366266 n).toNat

end

end A224529.P5286719442831690294

/-! ## A224529.P9892980113091834154

`floor(A225589(A396632(n+1))/2)+1`
-/

namespace A224529.P9892980113091834154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225589 (A396632 (n + 1)).toNat : ℚ) / 2⌋ + 1

end

end A224529.P9892980113091834154

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

/-! ## A224532.P13195290859233544616

`A224531(C(3+n, 2))`
-/

namespace A224532.P13195290859233544616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224531 (Nat.choose (3 + n) 2)

end

end A224532.P13195290859233544616

/-! ## A224532.P12948637887319838461

`A319048(A007374(n+2))`
-/

namespace A224532.P12948637887319838461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A007374 (n + 2)).toNat

end

end A224532.P12948637887319838461

/-! ## A224532.P10971329821702957839

`A057635(A007374(n+2))`
-/

namespace A224532.P10971329821702957839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A007374 (n + 2)).toNat

end

end A224532.P10971329821702957839

/-! ## A224532.P642088316665029318

`A028476(A066420(n+2))`
-/

namespace A224532.P642088316665029318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A066420 (n + 2)).toNat

end

end A224532.P642088316665029318

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

/-! ## A224534.P8854844140998240520

`A071621(2+n)`
-/

namespace A224534.P8854844140998240520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (2 + n)

end

end A224534.P8854844140998240520

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

/-! ## A224534.P3374717287983096663

`A108719(n+5)`
-/

namespace A224534.P3374717287983096663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 5)

end

end A224534.P3374717287983096663

/-! ## A224534.P3924248464542119914

`A140461(5+n)`
-/

namespace A224534.P3924248464542119914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (5 + n)

end

end A224534.P3924248464542119914

/-!
# A224535: Odd numbers that are the sum of three distinct prime numbers.

The programs for A224535, there is no canonical definition to state claims against.
-/

/-! ## A224535.P6409308766201113242

`2+a(n-1)` with `a(0)=15, a(1)=19`
-/

namespace A224535.P6409308766201113242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15, 19] fun n a =>
  2 + a (n - 1)

end

end A224535.P6409308766201113242

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

The programs for A224541, the canonical program `A224541.P3553554142965772182` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224541 has offset 6).

The definition of A224541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224541.P3553554142965772182

`3^(n+6)-3*2^(n+6)-3*(n+6)*2^(n+5)+3+3*(n+6)+3*(n+6)²`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224541

/-- `3^(n+6)-3*2^(n+6)-3*(n+6)*2^(n+5)+3+3*(n+6)+3*(n+6)²` -/
def P3553554142965772182.Spec : Prop :=
  ∀ n, P3553554142965772182.a n = A224541 (n + 6)

theorem P3553554142965772182.correct : P3553554142965772182.Spec := by
  intro n
  simp only [A224541, Nat.add_sub_cancel]

end A224541

/-! ## A224541.P16218072131154929466

`6*A000478(n+6)`
-/

namespace A224541.P16218072131154929466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000478 (n + 6)

end

end A224541.P16218072131154929466

namespace A224541

/-- `6*A000478(n+6)` -/
def P16218072131154929466.Spec : Prop :=
  ∀ n, P16218072131154929466.a n = A224541 (n + 6)

end A224541

/-! ## A224541.P12453924769078230346

`ogf((90-270x+240x^2-72x^3)/(1-10x+40x^2-82x^3+91x^4-52x^5+12x^6))`
-/

namespace A224541.P12453924769078230346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [90, -270, 240, -72] [1, -10, 40, -82, 91, -52, 12] n

end

end A224541.P12453924769078230346

namespace A224541

/-- `ogf((90-270x+240x^2-72x^3)/(1-10x+40x^2-82x^3+91x^4-52x^5+12x^6))` -/
def P12453924769078230346.Spec : Prop :=
  ∀ n, P12453924769078230346.a n = A224541 (n + 6)

end A224541

/-! ## A224541.P4282299309269955455

`6*A008299(A002620(n+7)-(n+2))`
-/

namespace A224541.P4282299309269955455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008299 (A002620 (n + 7) - (n + 2 : ℤ)).toNat

end

end A224541.P4282299309269955455

namespace A224541

/-- `6*A008299(A002620(n+7)-(n+2))` -/
def P4282299309269955455.Spec : Prop :=
  ∀ n, P4282299309269955455.a n = A224541 (n + 6)

end A224541

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

namespace A224541

/-- `6*record[A008299(n+10)/A008299(n+8)]` -/
def P2884472905881150252.Spec : Prop :=
  ∀ n, P2884472905881150252.a n = (A224541 (n + 6) : ℚ)

end A224541

/-! ## A224541.P15218037623964090479

`6*A134991(A167614(n+1))`
-/

namespace A224541.P15218037623964090479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A134991 (A167614 (n + 1)).toNat

end

end A224541.P15218037623964090479

namespace A224541

/-- `6*A134991(A167614(n+1))` -/
def P15218037623964090479.Spec : Prop :=
  ∀ n, P15218037623964090479.a n = A224541 (n + 6)

end A224541

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

The programs for A224543, the canonical program `A224543.P17766201501149485277` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224543 has offset 1).

The definition of A224543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224543.P17766201501149485277

`ogf((8-16x-18x^2+72x^3-68x^4+22x^5-10x^6+14x^7+2x^8)/(1-6x+12x^2-5x^3-12x^4+12x^5+3x^6-6x^7+x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224543

/-- `ogf((8-16x-18x^2+72x^3-68x^4+22x^5-10x^6+14x^7+2x^8)/(1-6x+12x^2-5x^3-12x^4+12x^5+3x^6-6x^7+x^9))` -/
def P17766201501149485277.Spec : Prop :=
  ∀ n, P17766201501149485277.a n = A224543 (n + 1)

theorem P17766201501149485277.correct : P17766201501149485277.Spec := by
  intro n
  simp only [A224543, Nat.add_sub_cancel]

end A224543

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

namespace A224543

/-- `A224550(∑[4*n]+1)` -/
def P1630999384489171279.Spec : Prop :=
  ∀ n, P1630999384489171279.a n = A224543 (n + 1)

end A224543

/-! ## A224543.P7072440739662800691

`A224665(C(n+3, 2))`
-/

namespace A224543.P7072440739662800691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (Nat.choose (n + 3) 2)

end

end A224543.P7072440739662800691

namespace A224543

/-- `A224665(C(n+3, 2))` -/
def P7072440739662800691.Spec : Prop :=
  ∀ n, P7072440739662800691.a n = A224543 (n + 1)

end A224543

/-!
# A224544: Number of (n+1) X 3 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224544, the canonical program `A224544.P4555445662633383526` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224544 has offset 1).

The definition of A224544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224544.P4555445662633383526

`A055998(n)+A022124(n+2)`

The canonical program, it is in `Seq.B002.C005`.
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

/-! ## A224544.P17957467495592019776

`ogf((16-32x+4x^2+22x^3-11x^4)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A224544.P17957467495592019776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -32, 4, 22, -11] [1, -4, 5, -1, -2, 1] n

end

end A224544.P17957467495592019776

namespace A224544

/-- `ogf((16-32x+4x^2+22x^3-11x^4)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P17957467495592019776.Spec : Prop :=
  ∀ n, P17957467495592019776.a n = A224544 (n + 1)

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

The programs for A224545, the canonical program `A224545.P672363756453584672` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224545 has offset 1).

The definition of A224545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224545.P13882785861706099321

`ogf((28-60x+10x^2+45x^3-25x^4+x^5)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A224545.P13882785861706099321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [28, -60, 10, 45, -25, 1] [1, -4, 5, -1, -2, 1] n

end

end A224545.P13882785861706099321

namespace A224545

/-- `ogf((28-60x+10x^2+45x^3-25x^4+x^5)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P13882785861706099321.Spec : Prop :=
  ∀ n, P13882785861706099321.a n = A224545 (n + 1)

end A224545

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

The canonical program, it is in `Seq.B000.C036`.
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

The programs for A224546, the canonical program `A224546.P5631034850217814205` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224546 has offset 1).

The definition of A224546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224546.P11210100250452509629

`ogf((48-106x+21x^2+78x^3-47x^4+3x^5)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A224546.P11210100250452509629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [48, -106, 21, 78, -47, 3] [1, -4, 5, -1, -2, 1] n

end

end A224546.P11210100250452509629

namespace A224546

/-- `ogf((48-106x+21x^2+78x^3-47x^4+3x^5)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P11210100250452509629.Spec : Prop :=
  ∀ n, P11210100250452509629.a n = A224546 (n + 1)

end A224546

/-! ## A224546.P5631034850217814205

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=48, a(1)=86, a(2)=125, a(3)=196, a(4)=294, a(5)=448`

The canonical program, it is in `Seq.B000.C036`.
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

/-!
# A224547: Number of (n+1) X 6 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224547, the canonical program `A224547.P4642489977250143076` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224547 has offset 1).

The definition of A224547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224547.P15533219215203541327

`ogf((80-183x+45x^2+127x^3-80x^4+6x^5)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A224547.P15533219215203541327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [80, -183, 45, 127, -80, 6] [1, -4, 5, -1, -2, 1] n

end

end A224547.P15533219215203541327

namespace A224547

/-- `ogf((80-183x+45x^2+127x^3-80x^4+6x^5)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P15533219215203541327.Spec : Prop :=
  ∀ n, P15533219215203541327.a n = A224547 (n + 1)

end A224547

/-! ## A224547.P4642489977250143076

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=80, a(1)=137, a(2)=193, a(3)=294, a(4)=428, a(5)=635`

The canonical program, it is in `Seq.B000.C036`.
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

/-!
# A224548: Number of (n+1) X 7 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224548, the canonical program `A224548.P1909088531795576861` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224548 has offset 1).

The definition of A224548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224548.P510616426653538498

`ogf((132-310x+90x^2+198x^3-129x^4+10x^5)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A224548.P510616426653538498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [132, -310, 90, 198, -129, 10] [1, -4, 5, -1, -2, 1] n

end

end A224548.P510616426653538498

namespace A224548

/-- `ogf((132-310x+90x^2+198x^3-129x^4+10x^5)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P510616426653538498.Spec : Prop :=
  ∀ n, P510616426653538498.a n = A224548 (n + 1)

end A224548

/-! ## A224548.P1909088531795576861

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=132, a(1)=218, a(2)=302, a(3)=448, a(4)=635, a(5)=916`

The canonical program, it is in `Seq.B000.C036`.
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

/-!
# A224549: Number of (n+1) X 8 0..1 matrices with each 2 X 2 subblock idempotent.

The programs for A224549, the canonical program `A224549.P5419821870772061280` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224549 has offset 1).

The definition of A224549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224549.P5419821870772061280

`ogf((216-519x+172x^2+303x^3-202x^4+15x^5)/(1-4x+5x^2-x^3-2x^4+x^5))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224549

/-- `ogf((216-519x+172x^2+303x^3-202x^4+15x^5)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P5419821870772061280.Spec : Prop :=
  ∀ n, P5419821870772061280.a n = A224549 (n + 1)

theorem P5419821870772061280.correct : P5419821870772061280.Spec := by
  intro n
  simp only [A224549, Nat.add_sub_cancel]

end A224549

/-! ## A224549.P16825274957608158271

`A224550(A374008(n+1))`
-/

namespace A224549.P16825274957608158271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224550 (A374008 (n + 1)).toNat

end

end A224549.P16825274957608158271

namespace A224549

/-- `A224550(A374008(n+1))` -/
def P16825274957608158271.Spec : Prop :=
  ∀ n, P16825274957608158271.a n = A224549 (n + 1)

end A224549

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

/-! ## A224551.P3823529198948627942

`A224559(1+∑[4*n])`
-/

namespace A224551.P3823529198948627942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224551.P3823529198948627942

/-! ## A224551.P15581177291585488828

`record[A224559(A152271(n²))]`
-/

namespace A224551.P15581177291585488828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224551.P15581177291585488828

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

/-!
# A224552: Number of (n+2) X 3 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224552, the canonical program `A224552.P5367208131004657667` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224552 has offset 1).

The definition of A224552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224552.P5367208131004657667

`ogf((50-80x+53x^2-57x^3-4x^4+39x^5-7x^6)/(1-3x+3x^2-2x^3+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224552

/-- `ogf((50-80x+53x^2-57x^3-4x^4+39x^5-7x^6)/(1-3x+3x^2-2x^3+x^4+x^5-x^6))` -/
def P5367208131004657667.Spec : Prop :=
  ∀ n, P5367208131004657667.a n = A224552 (n + 1)

theorem P5367208131004657667.correct : P5367208131004657667.Spec := by
  intro n
  simp only [A224552, Nat.add_sub_cancel]

end A224552

/-! ## A224552.P8706927856058395439

`A224559(1+∑[n])`
-/

namespace A224552.P8706927856058395439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224552.P8706927856058395439

namespace A224552

/-- `A224559(1+∑[n])` -/
def P8706927856058395439.Spec : Prop :=
  ∀ n, P8706927856058395439.a n = A224552 (n + 1)

end A224552

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

namespace A224552

/-- `record[A224559(n+1)]` -/
def P9021392925167752648.Spec : Prop :=
  ∀ n, P9021392925167752648.a n = A224552 (n + 1)

end A224552

/-!
# A224553: Number of (n+2) X 4 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224553, the canonical program `A224553.P1682356805312578664` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224553 has offset 1).

The definition of A224553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224553.P1682356805312578664

`ogf((70-116x-9x^2+33x^3+14x^4+70x^5-74x^6+6x^7+4x^8)/(1-3x+2x^2+x^3-x^4+x^5-2x^6+x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224553

/-- `ogf((70-116x-9x^2+33x^3+14x^4+70x^5-74x^6+6x^7+4x^8)/(1-3x+2x^2+x^3-x^4+x^5-2x^6+x^7))` -/
def P1682356805312578664.Spec : Prop :=
  ∀ n, P1682356805312578664.a n = A224553 (n + 1)

theorem P1682356805312578664.correct : P1682356805312578664.Spec := by
  intro n
  simp only [A224553, Nat.add_sub_cancel]

end A224553

/-! ## A224553.P3079794555135021857

`A224559(2+∑[1+n])`
-/

namespace A224553.P3079794555135021857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224553.P3079794555135021857

namespace A224553

/-- `A224559(2+∑[1+n])` -/
def P3079794555135021857.Spec : Prop :=
  ∀ n, P3079794555135021857.a n = A224553 (n + 1)

end A224553

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

namespace A224553

/-- `record[A224559(A133263(abs(1-n)))]` -/
def P8236800271696931959.Spec : Prop :=
  ∀ n, P8236800271696931959.a n = A224553 (n + 1)

end A224553

/-! ## A224553.P8297341950269473672

`record[A224559(C(A065648(n), 2)+2)]`
-/

namespace A224553.P8297341950269473672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (Nat.choose (A065648 n).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224553.P8297341950269473672

namespace A224553

/-- `record[A224559(C(A065648(n), 2)+2)]` -/
def P8297341950269473672.Spec : Prop :=
  ∀ n, P8297341950269473672.a n = A224553 (n + 1)

end A224553

/-!
# A224554: Number of (n+2) X 5 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224554, the canonical program `A224554.P3954261374124489453` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224554 has offset 1).

The definition of A224554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224554.P3954261374124489453

`ogf((113-319x+326x^2-257x^3+267x^4-156x^5+20x^6+5x^7)/(1-4x+6x^2-5x^3+4x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224554

/-- `ogf((113-319x+326x^2-257x^3+267x^4-156x^5+20x^6+5x^7)/(1-4x+6x^2-5x^3+4x^4-3x^5+x^6))` -/
def P3954261374124489453.Spec : Prop :=
  ∀ n, P3954261374124489453.a n = A224554 (n + 1)

theorem P3954261374124489453.correct : P3954261374124489453.Spec := by
  intro n
  simp only [A224554, Nat.add_sub_cancel]

end A224554

/-! ## A224554.P15152447813920818576

`A224559(∑[2+n]+4)`
-/

namespace A224554.P15152447813920818576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224554.P15152447813920818576

namespace A224554

/-- `A224559(∑[2+n]+4)` -/
def P15152447813920818576.Spec : Prop :=
  ∀ n, P15152447813920818576.a n = A224554 (n + 1)

end A224554

/-!
# A224555: Number of (n+2) X 6 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224555, the canonical program `A224555.P11035355005830049516` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224555 has offset 1).

The definition of A224555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224555.P11035355005830049516

`ogf((172-514x+566x^2-450x^3+449x^4-283x^5+55x^6+4x^7)/(1-4x+6x^2-5x^3+4x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224555

/-- `ogf((172-514x+566x^2-450x^3+449x^4-283x^5+55x^6+4x^7)/(1-4x+6x^2-5x^3+4x^4-3x^5+x^6))` -/
def P11035355005830049516.Spec : Prop :=
  ∀ n, P11035355005830049516.a n = A224555 (n + 1)

theorem P11035355005830049516.correct : P11035355005830049516.Spec := by
  intro n
  simp only [A224555, Nat.add_sub_cancel]

end A224555

/-! ## A224555.P17311112973967401559

`A224559(∑[3+n]+7)`
-/

namespace A224555.P17311112973967401559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224555.P17311112973967401559

namespace A224555

/-- `A224559(∑[3+n]+7)` -/
def P17311112973967401559.Spec : Prop :=
  ∀ n, P17311112973967401559.a n = A224555 (n + 1)

end A224555

/-!
# A224556: Number of (n+2) X 7 0..1 matrices with each 3 X 3 subblock idempotent.

The programs for A224556, the canonical program `A224556.P1746633877426393465` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224556 has offset 1).

The definition of A224556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 590 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224556.P1746633877426393465

`ogf((263-806x+914x^2-724x^3+702x^4-455x^5+98x^6+5x^7)/(1-4x+6x^2-5x^3+4x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224556

/-- `ogf((263-806x+914x^2-724x^3+702x^4-455x^5+98x^6+5x^7)/(1-4x+6x^2-5x^3+4x^4-3x^5+x^6))` -/
def P1746633877426393465.Spec : Prop :=
  ∀ n, P1746633877426393465.a n = A224556 (n + 1)

theorem P1746633877426393465.correct : P1746633877426393465.Spec := by
  intro n
  simp only [A224556, Nat.add_sub_cancel]

end A224556

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

namespace A224556

/-- `A224559(∑[n+5-ceil(n/63)]+10)` -/
def P15974806408126677117.Spec : Prop :=
  ∀ n, P15974806408126677117.a n = A224556 (n + 1)

end A224556

/-! ## A224556.P13574878418343460796

`A224559(10+∑[a(n-1)+1])` with `a(0)=1, a(1)=6`
-/

namespace A224556.P13574878418343460796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (10 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224556.P13574878418343460796

namespace A224556

/-- `A224559(10+∑[a(n-1)+1])` -/
def P13574878418343460796.Spec : Prop :=
  ∀ n, P13574878418343460796.a n = A224556 (n + 1)

end A224556

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

/-! ## A224558.P16407503464612222755

`A224559(A374008(n+1))`
-/

namespace A224558.P16407503464612222755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224559 (A374008 (n + 1)).toNat

end

end A224558.P16407503464612222755

/-!
# A224560: Number of (n+3)X(n+3) 0..1 matrices with each 4X4 subblock idempotent.

The programs for A224560, there is no canonical definition to state claims against.
-/

/-! ## A224560.P14964920531432184285

`A224568(1+4*∑[n])`
-/

namespace A224560.P14964920531432184285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (1 + 4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A224560.P14964920531432184285

/-!
# A224561: Number of (n+3) X 4 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224561, the canonical program `A224561.P2887149302579606212` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224561 has offset 1).

The definition of A224561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224561.P2887149302579606212

`ogf((452-986x+758x^2-139x^3-513x^4+614x^5-628x^6+597x^7-168x^8-13x^9)/(1-3x+3x^2-x^3-x^4+2x^5-2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224561

/-- `ogf((452-986x+758x^2-139x^3-513x^4+614x^5-628x^6+597x^7-168x^8-13x^9)/(1-3x+3x^2-x^3-x^4+2x^5-2x^6+2x^7-x^8))` -/
def P2887149302579606212.Spec : Prop :=
  ∀ n, P2887149302579606212.a n = A224561 (n + 1)

theorem P2887149302579606212.correct : P2887149302579606212.Spec := by
  intro n
  simp only [A224561, Nat.add_sub_cancel]

end A224561

/-! ## A224561.P3277717943386963917

`A224568(1+∑[n])`
-/

namespace A224561.P3277717943386963917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224561.P3277717943386963917

namespace A224561

/-- `A224568(1+∑[n])` -/
def P3277717943386963917.Spec : Prop :=
  ∀ n, P3277717943386963917.a n = A224561 (n + 1)

end A224561

/-!
# A224562: Number of (n+3) X 5 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224562, the canonical program `A224562.P12332718408840404813` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224562 has offset 1).

The definition of A224562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224562.P12332718408840404813

`ogf((370-400x+118x^2-369x^3-335x^4+382x^5-102x^6+715x^7-143x^8-23x^9-14x^10-361x^11+119x^12+26x^13+5x^14)/(1-2x+x^2-x^3+2x^5-x^6+2x^7-2x^8-x^11+x^12))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224562

/-- `ogf((370-400x+118x^2-369x^3-335x^4+382x^5-102x^6+715x^7-143x^8-23x^9-14x^10-361x^11+119x^12+26x^13+5x^14)/(1-2x+x^2-x^3+2x^5-x^6+2x^7-2x^8-x^11+x^12))` -/
def P12332718408840404813.Spec : Prop :=
  ∀ n, P12332718408840404813.a n = A224562 (n + 1)

theorem P12332718408840404813.correct : P12332718408840404813.Spec := by
  intro n
  simp only [A224562, Nat.add_sub_cancel]

end A224562

/-! ## A224562.P7424337818565260654

`A224568(2+∑[1+n])`
-/

namespace A224562.P7424337818565260654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224562.P7424337818565260654

namespace A224562

/-- `A224568(2+∑[1+n])` -/
def P7424337818565260654.Spec : Prop :=
  ∀ n, P7424337818565260654.a n = A224562 (n + 1)

end A224562

/-!
# A224563: Number of (n+3) X 6 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224563, there is no canonical definition to state claims against.
-/

/-! ## A224563.P15378946184953685715

`A224568(4+∑[2+n])`
-/

namespace A224563.P15378946184953685715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (4 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224563.P15378946184953685715

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

/-!
# A224564: Number of (n+3) X 7 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224564, there is no canonical definition to state claims against.
-/

/-! ## A224564.P3811829600491638562

`A224568(∑[3+n]+7)`
-/

namespace A224564.P3811829600491638562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224564.P3811829600491638562

/-!
# A224565: Number of (n+3) X 8 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224565, there is no canonical definition to state claims against.
-/

/-! ## A224565.P7755909126587922215

`A224568(∑[4+n]+11)`
-/

namespace A224565.P7755909126587922215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A224565.P7755909126587922215

/-!
# A224566: Number of (n+3) X 9 0..1 matrices with each 4 X 4 subblock idempotent.

The programs for A224566, there is no canonical definition to state claims against.
-/

/-! ## A224566.P5898952918464653745

`A224568(∑[5+n]+16)`
-/

namespace A224566.P5898952918464653745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A224566.P5898952918464653745

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

/-! ## A224567.P13654962120532904976

`A224568(A374008(n+1))`
-/

namespace A224567.P13654962120532904976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224568 (A374008 (n + 1)).toNat

end

end A224567.P13654962120532904976

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

/-!
# A224570: Number of (n+5)X6 0..1 matrices with each 6X6 subblock idempotent.

The programs for A224570, there is no canonical definition to state claims against.
-/

/-! ## A224570.P1556192534281803487

`A224577(1+∑[n])`
-/

namespace A224570.P1556192534281803487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224570.P1556192534281803487

/-!
# A224571: Number of (n+5)X7 0..1 matrices with each 6X6 subblock idempotent.

The programs for A224571, there is no canonical definition to state claims against.
-/

/-! ## A224571.P14579339669186043215

`A224577(∑[1+n]+2)`
-/

namespace A224571.P14579339669186043215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224571.P14579339669186043215

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

/-! ## A224575.P3356039898768131486

`A224577(A374007(n+1))`
-/

namespace A224575.P3356039898768131486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A374007 (n + 1)).toNat

end

end A224575.P3356039898768131486

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

/-! ## A224576.P4310294538184906836

`A224577(A374008(n+1))`
-/

namespace A224576.P4310294538184906836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224577 (A374008 (n + 1)).toNat

end

end A224576.P4310294538184906836

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

/-!
# A224581: Number of (n+6)X7 0..1 matrices with each 7X7 subblock idempotent.

The programs for A224581, there is no canonical definition to state claims against.
-/

/-! ## A224581.P10114556999737530097

`A224588(1+∑[n])`
-/

namespace A224581.P10114556999737530097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224581.P10114556999737530097

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

/-! ## A224585.P4010406696615299945

`A224588(A374005(n+1))`
-/

namespace A224585.P4010406696615299945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A374005 (n + 1)).toNat

end

end A224585.P4010406696615299945

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

/-! ## A224586.P10398430112759930543

`A224588(A374007(n+1))`
-/

namespace A224586.P10398430112759930543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A374007 (n + 1)).toNat

end

end A224586.P10398430112759930543

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

/-! ## A224587.P10226884580114896799

`A224588(A374008(n+1))`
-/

namespace A224587.P10226884580114896799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224588 (A374008 (n + 1)).toNat

end

end A224587.P10226884580114896799

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

/-!
# A224590: Number of (n+7)X8 0..1 matrices with each 8X8 subblock idempotent.

The programs for A224590, there is no canonical definition to state claims against.
-/

/-! ## A224590.P7534751650832846722

`A224597(1+∑[n])`
-/

namespace A224590.P7534751650832846722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224590.P7534751650832846722

/-!
# A224591: Number of (n+7)X9 0..1 matrices with each 8X8 subblock idempotent.

The programs for A224591, there is no canonical definition to state claims against.
-/

/-! ## A224591.P526340753259603234

`A224597(∑[1+n]+2)`
-/

namespace A224591.P526340753259603234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224597 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224591.P526340753259603234

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

/-!
# A224598: Number of (n+2)X(n+2) 0..2 matrices with each 3X3 subblock idempotent.

The programs for A224598, there is no canonical definition to state claims against.
-/

/-! ## A224598.P7146493802122751586

`A224606(1+∑[4*n])`
-/

namespace A224598.P7146493802122751586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224598.P7146493802122751586

/-! ## A224598.P6603195125686185337

`record[A224606(A152271(n²))]`
-/

namespace A224598.P6603195125686185337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224598.P6603195125686185337

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

/-!
# A224599: Number of (n+2) X 3 0..2 matrices with each 3 X 3 subblock idempotent.

The programs for A224599, the canonical program `A224599.P1726993836427994396` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224599 has offset 1).

The definition of A224599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224599.P1726993836427994396

`ogf((122-188x+129x^2-185x^3+37x^4+115x^5-36x^6)/(1-3x+3x^2-2x^3+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224599

/-- `ogf((122-188x+129x^2-185x^3+37x^4+115x^5-36x^6)/(1-3x+3x^2-2x^3+x^4+x^5-x^6))` -/
def P1726993836427994396.Spec : Prop :=
  ∀ n, P1726993836427994396.a n = A224599 (n + 1)

theorem P1726993836427994396.correct : P1726993836427994396.Spec := by
  intro n
  simp only [A224599, Nat.add_sub_cancel]

end A224599

/-! ## A224599.P2367504552774238699

`A224606(1+∑[n])`
-/

namespace A224599.P2367504552774238699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224599.P2367504552774238699

namespace A224599

/-- `A224606(1+∑[n])` -/
def P2367504552774238699.Spec : Prop :=
  ∀ n, P2367504552774238699.a n = A224599 (n + 1)

end A224599

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

namespace A224599

/-- `record[A224606(n+1)]` -/
def P2032562728816398615.Spec : Prop :=
  ∀ n, P2032562728816398615.a n = A224599 (n + 1)

end A224599

