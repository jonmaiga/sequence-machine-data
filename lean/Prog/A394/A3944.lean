import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
# A394400: Number of graphs with n vertices that have no induced regular subgraph of order 4 or greater.

The programs for A394400, there is no canonical definition to state claims against.
-/

/-! ## A394400.P5920629042101119731

`A127321(C(A161580(n+1), A000009(2*(n+1))))`
-/

namespace A394400.P5920629042101119731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (Nat.choose (A161580 (n + 1)).toNat (A000009 (2 * (n + 1))).toNat)

end

end A394400.P5920629042101119731

/-!
# A394405: Number of transitive relations, on an n-set, that are not quasi-orders.

The programs for A394405, there is no canonical definition to state claims against.
-/

/-! ## A394405.P13103757789143873682

`A006905(n)-A000798(n)`
-/

namespace A394405.P13103757789143873682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A000798 n

end

end A394405.P13103757789143873682

/-! ## A394405.P3389309350028413398

`A006905(n)-A245767(∑[n]+n)`
-/

namespace A394405.P3389309350028413398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A245767 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A394405.P3389309350028413398

/-! ## A394405.P10753193196245700270

`A006905(n)-(A122836(n)+A122835(n))`
-/

namespace A394405.P10753193196245700270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - (A122836 n + A122835 n)

end

end A394405.P10753193196245700270

/-! ## A394405.P3886219374650344313

`A006905(n)-(A376064(n)+A001035(n))`
-/

namespace A394405.P3886219374650344313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - (A376064 n + A001035 n)

end

end A394405.P3886219374650344313

/-! ## A394405.P4385592865388741476

`A006905(n)-(A326909(n)-A006058(n))`
-/

namespace A394405.P4385592865388741476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - (A326909 n - A006058 n)

end

end A394405.P4385592865388741476

/-!
# A394406: Number of ordered rooted trees with non-root node weights summing to n such that the root has weight 0, non-root nodes have positive integer weights, and only non-root nodes of odd weight can have branches.

The programs for A394406, there is no canonical definition to state claims against.
-/

/-! ## A394406.P7169257969645012735

`A142727(3*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A394406.P7169257969645012735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A142727 (3 * a (n - 1)).toNat

end

end A394406.P7169257969645012735

/-! ## A394406.P987704462056597767

`A157271(A148460(n+1))`
-/

namespace A394406.P987704462056597767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148460 (n + 1)).toNat

end

end A394406.P987704462056597767

/-! ## A394406.P13446524647780856432

`A105517(A128761(2*(n+1)))+A059015(n)`
-/

namespace A394406.P13446524647780856432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A128761 (2 * (n + 1))).toNat + A059015 n

end

end A394406.P13446524647780856432

/-!
# A394407: Positive integers k such that there is no m < k with phi(m)/tau(m) = phi(k)/tau(k).

The programs for A394407, there is no canonical definition to state claims against.
-/

/-! ## A394407.P16762694750041350122

`∑[A226173(3*n+5)]+n`
-/

namespace A394407.P16762694750041350122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226173 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A394407.P16762694750041350122

/-! ## A394407.P3046771477795013490

`A274384(A359527(n+2))`
-/

namespace A394407.P3046771477795013490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (A359527 (n + 2)).toNat

end

end A394407.P3046771477795013490

/-! ## A394407.P5265115087671494273

`eq[A011655(n), A040005(A301615(n+4))]`
-/

namespace A394407.P5265115087671494273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (A301615 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394407.P5265115087671494273

/-! ## A394407.P14689468109228255808

`eq[A010060(n), A086694(A325830(n+4))]`
-/

namespace A394407.P14689468109228255808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086694 (A325830 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394407.P14689468109228255808

/-! ## A394407.P1142609047826069177

`lt[A279286(n+1), A279286(A389553(2*n+1))]`
-/

namespace A394407.P1142609047826069177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279286 (A389553 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394407.P1142609047826069177

/-!
# A394408: Lesser of two consecutive numbers of the form 2^i*5^j with i, j >= 0, that are coprime.

The programs for A394408, there is no canonical definition to state claims against.
-/

/-! ## A394408.P7923164673817134338

`A353384(eq[A353382(3*n+1), A353426(n)])`
-/

namespace A394408.P7923164673817134338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353382 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353384 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A394408.P7923164673817134338

/-!
# A394410: Quadratic recurrence sequence with a(1)=1, a(2)=3, and a(n) = (a(n-1)^2 + a(n-2)^2)/2 for n > 2.

The programs for A394410, the canonical program `A394410.P1684294186342874645` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394410 has offset 1).

The definition of A394410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394410.P1684294186342874645

`(a(n-1)²+a(n-2)²)/2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394410

/-- `(a(n-1)²+a(n-2)²)/2` -/
def P1684294186342874645.Spec : Prop :=
  ∀ n, P1684294186342874645.a n = (A394410 (n + 1) : ℚ)

end A394410

/-! ## A394410.P12250522180729457938

`(a(n-1)*a(n-1)+a(n-2)*a(n-2))/2` with `a(0)=1, a(1)=3`
-/

namespace A394410.P12250522180729457938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) * a (n - 1) + a (n - 2) * a (n - 2)) / 2

end

end A394410.P12250522180729457938

namespace A394410

/-- `(a(n-1)*a(n-1)+a(n-2)*a(n-2))/2` -/
def P12250522180729457938.Spec : Prop :=
  ∀ n, P12250522180729457938.a n = (A394410 (n + 1) : ℚ)

end A394410

/-!
# A394411: Number of ordered rooted trees with node weights summing to n such that the root has weight 0, non-root nodes have positive integer weights, and no two adjacent sibling nodes have the same weight.

The programs for A394411, there is no canonical definition to state claims against.
-/

/-! ## A394411.P7534972861716832710

`A248562(A004114(n+1))`
-/

namespace A394411.P7534972861716832710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (A004114 (n + 1)).toNat

end

end A394411.P7534972861716832710

/-! ## A394411.P852767533176502653

`A023193(A148479(n+1))`
-/

namespace A394411.P852767533176502653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148479 (n + 1)).toNat

end

end A394411.P852767533176502653

/-! ## A394411.P16996258945871831161

`row(A000201(row(A351280(n))))`
-/

namespace A394411.P16996258945871831161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A000201 (SequenceMachineLib.triRow (A351280 n).toNat)).toNat

end

end A394411.P16996258945871831161

/-!
# A394412: Number of homomorphisms from the figure-eight knot group to the symmetric group S_n.

The programs for A394412, there is no canonical definition to state claims against.
-/

/-! ## A394412.P2114330627061046774

`A052717(n)+A010054(A004254(n))`
-/

namespace A394412.P2114330627061046774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052717 n + A010054 (A004254 n).toNat

end

end A394412.P2114330627061046774

/-! ## A394412.P15621276189891940679

`A121373(A000670(n))+A052717(n)`
-/

namespace A394412.P15621276189891940679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A000670 n).toNat + A052717 n

end

end A394412.P15621276189891940679

/-! ## A394412.P10578707821338012423

`A324822(A002110(n))+A052717(n)`
-/

namespace A394412.P10578707821338012423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324822 (A002110 n).toNat + A052717 n

end

end A394412.P10578707821338012423

/-!
# A394413: a(1) = 1, a(2) = 2; for n > 2, a(n) is an unused positive number that shares a factor with a(n-1) while being as close as possible to a(n-2). If two such numbers exist then the smaller is chosen.

The programs for A394413, there is no canonical definition to state claims against.
-/

/-! ## A394413.P14472565392302870549

`A394514(n+1)+A048298(A060947(n+1))`
-/

namespace A394413.P14472565392302870549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394514 (n + 1) + A048298 (A060947 (n + 1)).toNat

end

end A394413.P14472565392302870549

/-! ## A394413.P6094373561272743387

`A394514(n+1)%A396408(A121445(n+1))`
-/

namespace A394413.P6094373561272743387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394514 (n + 1)) (A396408 (A121445 (n + 1)).toNat)

end

end A394413.P6094373561272743387

/-! ## A394413.P3325698849838008445

`A394514(n+1)+A010815(A154495(2*(n+2)))`
-/

namespace A394413.P3325698849838008445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394514 (n + 1) + A010815 (A154495 (2 * (n + 2))).toNat

end

end A394413.P3325698849838008445

/-! ## A394413.P13700496785518334378

`A256122(A336297(3*n+5))*A394514(n+1)`
-/

namespace A394413.P13700496785518334378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256122 (A336297 (3 * n + 5)).toNat * A394514 (n + 1)

end

end A394413.P13700496785518334378

/-! ## A394413.P2692227736843505108

`A394514(A187829(n+1))`
-/

namespace A394413.P2692227736843505108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394514 (A187829 (n + 1)).toNat

end

end A394413.P2692227736843505108

/-!
# A394414: The prime terms in A394413, in order of appearance.

The programs for A394414, there is no canonical definition to state claims against.
-/

/-! ## A394414.P4760110490160978098

`A009571(A123761(n))`
-/

namespace A394414.P4760110490160978098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009571 (A123761 n).toNat

end

end A394414.P4760110490160978098

/-!
# A394417: The radical value of the product of adjacent terms of A394416.

The programs for A394417, there is no canonical definition to state claims against.
-/

/-! ## A394417.P2693364739250648609

`A007947(A394416(n+1)*A394416(n+2))`
-/

namespace A394417.P2693364739250648609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A394416 (n + 1) * A394416 (n + 2)).toNat

end

end A394417.P2693364739250648609

/-! ## A394417.P6144397060279767027

`A394422(n+1)+A342656(A394414(n+2))`
-/

namespace A394417.P6144397060279767027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394422 (n + 1) + A342656 (A394414 (n + 2)).toNat

end

end A394417.P6144397060279767027

/-! ## A394417.P17465767437928265561

`A394422(n+1)%A006003(A225507(n+1))`
-/

namespace A394417.P17465767437928265561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394422 (n + 1)) (A006003 (A225507 (n + 1)).toNat)

end

end A394417.P17465767437928265561

/-! ## A394417.P11377927105742396497

`A352780(A394458(2*n+5))*A394422(n+1)`
-/

namespace A394417.P11377927105742396497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352780 (A394458 (2 * n + 5)).toNat * A394422 (n + 1)

end

end A394417.P11377927105742396497

/-! ## A394417.P12571135306264759523

`A394436(A394447(2*(n+1)))+A394422(n+1)`
-/

namespace A394417.P12571135306264759523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394436 (A394447 (2 * (n + 1))).toNat + A394422 (n + 1)

end

end A394417.P12571135306264759523

/-!
# A394419: The prime terms in A394418, in order of appearance.

The programs for A394419, there is no canonical definition to state claims against.
-/

/-! ## A394419.P9813146049401557243

`A000040(C(A384646(n), ∑{e}[n+1, #]))`
-/

namespace A394419.P9813146049401557243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (A384646 n).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A394419.P9813146049401557243

/-!
# A394420: Primes not on any previously drawn infinite lines in A394415.

The programs for A394420, there is no canonical definition to state claims against.
-/

/-! ## A394420.P3242586100857362419

`∩[A395217(n+1), A138234(n)]`
-/

namespace A394420.P3242586100857362419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394420.P3242586100857362419

/-!
# A394421: a(1) = 1, a(2) = 2; for n > 2, a(n) is an unused number that is as close as possible to a(n-1), shares a factor with a(n-1), and rad(a(n)*a(n-1)) has not previously occurred as the rad value of the product of adjacent terms, where rad(k) = A007947(k). If two such numbers exist then the smaller is chosen.

The programs for A394421, there is no canonical definition to state claims against.
-/

/-! ## A394421.P16104664245116936769

`A394416(n+1)%A157426(A394409(n+5))`
-/

namespace A394421.P16104664245116936769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394416 (n + 1)) (A157426 (A394409 (n + 5)).toNat)

end

end A394421.P16104664245116936769

/-! ## A394421.P8064849933116406824

`A394416(n+1)+A000007(A181821(3*(n+1)))`
-/

namespace A394421.P8064849933116406824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394416 (n + 1) + A000007 (A181821 (3 * (n + 1))).toNat

end

end A394421.P8064849933116406824

/-! ## A394421.P18138369516680125064

`A394416(n+1)%A006003(A225507(n+1))`
-/

namespace A394421.P18138369516680125064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394416 (n + 1)) (A006003 (A225507 (n + 1)).toNat)

end

end A394421.P18138369516680125064

/-! ## A394421.P12222727314661274055

`A352780(A394458(2*n+5))*A394416(n+1)`
-/

namespace A394421.P12222727314661274055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352780 (A394458 (2 * n + 5)).toNat * A394416 (n + 1)

end

end A394421.P12222727314661274055

/-! ## A394421.P5745492885447112134

`A394439(A394447(2*n))+A394416(n+1)`
-/

namespace A394421.P5745492885447112134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394439 (A394447 (2 * n)).toNat + A394416 (n + 1)

end

end A394421.P5745492885447112134

/-!
# A394422: The radical value of the product of adjacent terms of A394421.

The programs for A394422, there is no canonical definition to state claims against.
-/

/-! ## A394422.P11901583667181047965

`A007947(A394421(n+1)*A394421(n+2))`
-/

namespace A394422.P11901583667181047965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A394421 (n + 1) * A394421 (n + 2)).toNat

end

end A394422.P11901583667181047965

/-!
# A394424: The number of exponential divisors of the exponentially odd numbers.

The programs for A394424, the canonical program `A394424.P3558969678185483521` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394424 has offset 1).

The definition of A394424 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394424.P3558969678185483521

`A049419(A268335(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A394424

/-- `A049419(A268335(n+1))` -/
def P3558969678185483521.Spec : Prop :=
  ∀ n, P3558969678185483521.a n = A394424 (n + 1)

theorem P3558969678185483521.correct : P3558969678185483521.Spec := by
  intro n
  simp only [A394424, Nat.add_sub_cancel]

end A394424

/-! ## A394424.P8645211932205789154

`∏{e}[A268335(n+1), A000005(#)]`
-/

namespace A394424.P8645211932205789154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A394424.P8645211932205789154

namespace A394424

/-- `∏{e}[A268335(n+1), A000005(#)]` -/
def P8645211932205789154.Spec : Prop :=
  ∀ n, P8645211932205789154.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P17683237449086021630

`∏{e}[A268335(n+1), A073184(#)]`
-/

namespace A394424.P17683237449086021630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A073184 (Nat.factorization (f1 n).natAbs p)

end

end A394424.P17683237449086021630

namespace A394424

/-- `∏{e}[A268335(n+1), A073184(#)]` -/
def P17683237449086021630.Spec : Prop :=
  ∀ n, P17683237449086021630.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P6839047659908494433

`A368979(A268335(2*n+1-n))`
-/

namespace A394424.P6839047659908494433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368979 (A268335 (2 * n + 1 - n)).toNat

end

end A394424.P6839047659908494433

namespace A394424

/-- `A368979(A268335(2*n+1-n))` -/
def P6839047659908494433.Spec : Prop :=
  ∀ n, P6839047659908494433.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P10671024090812648848

`A001221(A230627(n+2)*A368472(n+1))`
-/

namespace A394424.P10671024090812648848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A230627 (n + 2) * A368472 (n + 1)).toNat

end

end A394424.P10671024090812648848

namespace A394424

/-- `A001221(A230627(n+2)*A368472(n+1))` -/
def P10671024090812648848.Spec : Prop :=
  ∀ n, P10671024090812648848.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P18344095413980211804

`A007424(A000040(n+1)*A268335(n+1))`
-/

namespace A394424.P18344095413980211804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A000040 (n + 1) * A268335 (n + 1)).toNat

end

end A394424.P18344095413980211804

namespace A394424

/-- `A007424(A000040(n+1)*A268335(n+1))` -/
def P18344095413980211804.Spec : Prop :=
  ∀ n, P18344095413980211804.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P8668207270817417105

`A356733(A000040(3*n+4)*A367418(n+1))`
-/

namespace A394424.P8668207270817417105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356733 (A000040 (3 * n + 4) * A367418 (n + 1)).toNat

end

end A394424.P8668207270817417105

namespace A394424

/-- `A356733(A000040(3*n+4)*A367418(n+1))` -/
def P8668207270817417105.Spec : Prop :=
  ∀ n, P8668207270817417105.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P2186611329268457234

`A061704(A006530(n+1)*A268335(n+1))`
-/

namespace A394424.P2186611329268457234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A006530 (n + 1) * A268335 (n + 1)).toNat

end

end A394424.P2186611329268457234

namespace A394424

/-- `A061704(A006530(n+1)*A268335(n+1))` -/
def P2186611329268457234.Spec : Prop :=
  ∀ n, P2186611329268457234.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P9811916651898783583

`A063775(A367406(n+1))`
-/

namespace A394424.P9811916651898783583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A367406 (n + 1)).toNat

end

end A394424.P9811916651898783583

namespace A394424

/-- `A063775(A367406(n+1))` -/
def P9811916651898783583.Spec : Prop :=
  ∀ n, P9811916651898783583.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P12357657582659078203

`A307428(A374458(n+1))`
-/

namespace A394424.P12357657582659078203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A374458 (n + 1)).toNat

end

end A394424.P12357657582659078203

namespace A394424

/-- `A307428(A374458(n+1))` -/
def P12357657582659078203.Spec : Prop :=
  ∀ n, P12357657582659078203.a n = A394424 (n + 1)

end A394424

/-!
# A394425: The number of exponential divisors of the biquadratefree numbers.

The programs for A394425, the canonical program `A394425.P13849324502405230266` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394425 has offset 1).

The definition of A394425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394425.P13849324502405230266

`A049419(A046100(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A394425

/-- `A049419(A046100(n+1))` -/
def P13849324502405230266.Spec : Prop :=
  ∀ n, P13849324502405230266.a n = A394425 (n + 1)

theorem P13849324502405230266.correct : P13849324502405230266.Spec := by
  intro n
  simp only [A394425, Nat.add_sub_cancel]

end A394425

/-! ## A394425.P13968998833415744890

`2^A382425(n+1)`
-/

namespace A394425.P13968998833415744890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A382425 (n + 1) : ℤ)

end

end A394425.P13968998833415744890

namespace A394425

/-- `2^A382425(n+1)` -/
def P13968998833415744890.Spec : Prop :=
  ∀ n, P13968998833415744890.a n = (A394425 (n + 1) : ℚ)

end A394425

/-! ## A394425.P9665330244244718537

`∏{e}[A382902(n+1), #]`
-/

namespace A394425.P9665330244244718537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382902 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A394425.P9665330244244718537

namespace A394425

/-- `∏{e}[A382902(n+1), #]` -/
def P9665330244244718537.Spec : Prop :=
  ∀ n, (P9665330244244718537.a n : ℤ) = A394425 (n + 1)

end A394425

/-! ## A394425.P7963440965858253750

`A252505(A007947(A382906(n+1)))`
-/

namespace A394425.P7963440965858253750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252505 (A007947 (A382906 (n + 1)).toNat).toNat

end

end A394425.P7963440965858253750

namespace A394425

/-- `A252505(A007947(A382906(n+1)))` -/
def P7963440965858253750.Spec : Prop :=
  ∀ n, P7963440965858253750.a n = A394425 (n + 1)

end A394425

/-! ## A394425.P8810579077691773800

`A034444(A382906(n+1))`
-/

namespace A394425.P8810579077691773800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A382906 (n + 1)).toNat

end

end A394425.P8810579077691773800

namespace A394425

/-- `A034444(A382906(n+1))` -/
def P8810579077691773800.Spec : Prop :=
  ∀ n, P8810579077691773800.a n = A394425 (n + 1)

end A394425

/-! ## A394425.P2462199859419524740

`A046951(A046100(n+1))`
-/

namespace A394425.P2462199859419524740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A046100 (n + 1)).toNat

end

end A394425.P2462199859419524740

namespace A394425

/-- `A046951(A046100(n+1))` -/
def P2462199859419524740.Spec : Prop :=
  ∀ n, P2462199859419524740.a n = A394425 (n + 1)

end A394425

/-! ## A394425.P5048639418112736100

`A000688(A382902(n+1))`
-/

namespace A394425.P5048639418112736100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A382902 (n + 1)).toNat

end

end A394425.P5048639418112736100

namespace A394425

/-- `A000688(A382902(n+1))` -/
def P5048639418112736100.Spec : Prop :=
  ∀ n, P5048639418112736100.a n = A394425 (n + 1)

end A394425

/-! ## A394425.P12351060239786509468

`A331109(A384913(A046100(n+1))²)`
-/

namespace A394425.P12351060239786509468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331109 (A384913 (A046100 (n + 1)).toNat ^ 2).toNat

end

end A394425.P12351060239786509468

namespace A394425

/-- `A331109(A384913(A046100(n+1))²)` -/
def P12351060239786509468.Spec : Prop :=
  ∀ n, P12351060239786509468.a n = A394425 (n + 1)

end A394425

/-! ## A394425.P2678560685304895648

`A384913(A384913(A046100(n+1))²)`
-/

namespace A394425.P2678560685304895648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384913 (A384913 (A046100 (n + 1)).toNat ^ 2).toNat

end

end A394425.P2678560685304895648

namespace A394425

/-- `A384913(A384913(A046100(n+1))²)` -/
def P2678560685304895648.Spec : Prop :=
  ∀ n, P2678560685304895648.a n = A394425 (n + 1)

end A394425

/-! ## A394425.P13348819173828134951

`A063775(A046100(n+1)²)`
-/

namespace A394425.P13348819173828134951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A046100 (n + 1) ^ 2).toNat

end

end A394425.P13348819173828134951

namespace A394425

/-- `A063775(A046100(n+1)²)` -/
def P13348819173828134951.Spec : Prop :=
  ∀ n, P13348819173828134951.a n = A394425 (n + 1)

end A394425

/-!
# A394426: The number of exponential divisors of the numbers whose exponents in their prime factorization are squares (A197680).

The programs for A394426, the canonical program `A394426.P7725940493784829555` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394426 has offset 1).

The definition of A394426 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394426.P7725940493784829555

`A049419(A197680(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A394426

/-- `A049419(A197680(n+1))` -/
def P7725940493784829555.Spec : Prop :=
  ∀ n, P7725940493784829555.a n = A394426 (n + 1)

theorem P7725940493784829555.correct : P7725940493784829555.Spec := by
  intro n
  simp only [A394426, Nat.add_sub_cancel]

end A394426

/-! ## A394426.P7055993455876995610

`A003602(A368474(n+1)+1)`
-/

namespace A394426.P7055993455876995610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A368474 (n + 1) + 1).toNat

end

end A394426.P7055993455876995610

namespace A394426

/-- `A003602(A368474(n+1)+1)` -/
def P7055993455876995610.Spec : Prop :=
  ∀ n, P7055993455876995610.a n = A394426 (n + 1)

end A394426

/-! ## A394426.P15732381485586856001

`filter[A049419(n+1), A000035(#)]`
-/

namespace A394426.P15732381485586856001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A394426.P15732381485586856001

namespace A394426

/-- `filter[A049419(n+1), A000035(#)]` -/
def P15732381485586856001.Spec : Prop :=
  ∀ n, P15732381485586856001.a n = A394426 (n + 1)

end A394426

/-! ## A394426.P4309233443148115106

`filter[A049419(n+1), A087032(#)]`
-/

namespace A394426.P4309233443148115106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087032 (f1 j).toNat = 1) n)

end

end A394426.P4309233443148115106

namespace A394426

/-- `filter[A049419(n+1), A087032(#)]` -/
def P4309233443148115106.Spec : Prop :=
  ∀ n, P4309233443148115106.a n = A394426 (n + 1)

end A394426

/-! ## A394426.P16961047748531103068

`filter[A049419(n+1), A328479(#)]`
-/

namespace A394426.P16961047748531103068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328479 (f1 j).toNat = 1) n)

end

end A394426.P16961047748531103068

namespace A394426

/-- `filter[A049419(n+1), A328479(#)]` -/
def P16961047748531103068.Spec : Prop :=
  ∀ n, P16961047748531103068.a n = A394426 (n + 1)

end A394426

/-! ## A394426.P15376895615730732375

`A034968(A368474(n+1)%record[A048784(n)]+1)`
-/

namespace A394426.P15376895615730732375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.tmod (A368474 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1).toNat

end

end A394426.P15376895615730732375

namespace A394426

/-- `A034968(A368474(n+1)%record[A048784(n)]+1)` -/
def P15376895615730732375.Spec : Prop :=
  ∀ n, P15376895615730732375.a n = A394426 (n + 1)

end A394426

/-! ## A394426.P6104285260911358519

`A007895(A374325(n+1)^A034968(n))`
-/

namespace A394426.P6104285260911358519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A374325 (n + 1) : ℚ) ^ (A034968 n : ℤ))).toNat

end

end A394426.P6104285260911358519

namespace A394426

/-- `A007895(A374325(n+1)^A034968(n))` -/
def P6104285260911358519.Spec : Prop :=
  ∀ n, P6104285260911358519.a n = A394426 (n + 1)

end A394426

/-! ## A394426.P12542751483778879931

`gcd(A353834(n+1)+3, A124389(n))`
-/

namespace A394426.P12542751483778879931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A353834 (n + 1) + 3) (A124389 n)

end

end A394426.P12542751483778879931

namespace A394426

/-- `gcd(A353834(n+1)+3, A124389(n))` -/
def P12542751483778879931.Spec : Prop :=
  ∀ n, (P12542751483778879931.a n : ℤ) = A394426 (n + 1)

end A394426

/-! ## A394426.P1169408218527894111

`gcd(A262430(n), A296240(n+4))`
-/

namespace A394426.P1169408218527894111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A262430 n) (A296240 (n + 4))

end

end A394426.P1169408218527894111

namespace A394426

/-- `gcd(A262430(n), A296240(n+4))` -/
def P1169408218527894111.Spec : Prop :=
  ∀ n, (P1169408218527894111.a n : ℤ) = A394426 (n + 1)

end A394426

/-! ## A394426.P14214478843647123399

`gcd(A111383(A053829(2*n+3)), A115310(2*(n+2)))`
-/

namespace A394426.P14214478843647123399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111383 (A053829 (2 * n + 3)).toNat) (A115310 (2 * (n + 2)))

end

end A394426.P14214478843647123399

namespace A394426

/-- `gcd(A111383(A053829(2*n+3)), A115310(2*(n+2)))` -/
def P14214478843647123399.Spec : Prop :=
  ∀ n, (P14214478843647123399.a n : ℤ) = A394426 (n + 1)

end A394426

/-!
# A394431: The smallest base b < n where the sum of the digits for the number n in the base b is the largest, with 1 < b < n and a(1) = a(2) = 1.

The programs for A394431, there is no canonical definition to state claims against.
-/

/-! ## A394431.P17579892237117823691

`A167866(A020732(n))`
-/

namespace A394431.P17579892237117823691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (A020732 n).toNat

end

end A394431.P17579892237117823691

/-! ## A394431.P3124875673071030191

`A336692(A005418(n+1))`
-/

namespace A394431.P3124875673071030191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336692 (A005418 (n + 1)).toNat

end

end A394431.P3124875673071030191

/-!
# A394433: Numbers k such that gcd(k, phi(k)) is prime.

The programs for A394433, the canonical program `A394433.P13092312073096952237` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394433 has offset 1).

The definition of A394433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394433.P13092312073096952237

`eq[2, A073811(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A394433

/-- `eq[2, A073811(n+1)]+1` -/
def P13092312073096952237.Spec : Prop :=
  ∀ n, (P13092312073096952237.a n : ℤ) = A394433 (n + 1)

theorem P13092312073096952237.correct : P13092312073096952237.Spec := by
  intro n
  simp only [A394433, Nat.add_sub_cancel]

end A394433

/-! ## A394433.P13418524487211887170

`lt[A000045(A140185(n)), A140185(n)]`
-/

namespace A394433.P13418524487211887170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A140185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394433.P13418524487211887170

namespace A394433

/-- `lt[A000045(A140185(n)), A140185(n)]` -/
def P13418524487211887170.Spec : Prop :=
  ∀ n, (P13418524487211887170.a n : ℤ) = A394433 (n + 1)

end A394433

/-!
# A394434: a(n) is the smallest prime factor of Sum_{k=0..n} 10^2k

The programs for A394434, there is no canonical definition to state claims against.
-/

/-! ## A394434.P18205269336124199423

`A077805(A329006(n+2))`
-/

namespace A394434.P18205269336124199423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A329006 (n + 2)).toNat

end

end A394434.P18205269336124199423

/-!
# A394436: Triangle read by rows: Bell-transform of the number of endofunctions on [n].

The programs for A394436, there is no canonical definition to state claims against.
-/

/-! ## A394436.P3150786679918887349

`A007318(n)*A397647(n)`
-/

namespace A394436.P3150786679918887349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A397647 n

end

end A394436.P3150786679918887349

/-! ## A394436.P6920762005644709016

`A091918(n)*A397647(n)`
-/

namespace A394436.P6920762005644709016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A397647 n

end

end A394436.P6920762005644709016

/-! ## A394436.P14905692937333662379

`A132749(n)*A397647(n)`
-/

namespace A394436.P14905692937333662379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A397647 n

end

end A394436.P14905692937333662379

/-! ## A394436.P2373480659977865283

`A135227(n)*A397647(n)`
-/

namespace A394436.P2373480659977865283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A397647 n

end

end A394436.P2373480659977865283

/-! ## A394436.P7288742767362597634

`A183154(n)*A397647(n)`
-/

namespace A394436.P7288742767362597634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A397647 n

end

end A394436.P7288742767362597634

/-! ## A394436.P11855663495495788451

`A206735(n)*A397647(n)`
-/

namespace A394436.P11855663495495788451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A397647 n

end

end A394436.P11855663495495788451

/-!
# A394437: Triangle read by rows: The Bell-transform of the squares.

The programs for A394437, there is no canonical definition to state claims against.
-/

/-! ## A394437.P2317791568427956333

`A007953(A122538(n)*A139459(n))`
-/

namespace A394437.P2317791568427956333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A122538 n * A139459 n).toNat

end

end A394437.P2317791568427956333

/-!
# A394438: Triangle read by rows: The Bell-transform of the triangular numbers.

The programs for A394438, there is no canonical definition to state claims against.
-/

/-! ## A394438.P15135934326580683195

`A086598(A304330(n+1))`
-/

namespace A394438.P15135934326580683195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086598 (A304330 (n + 1)).toNat

end

end A394438.P15135934326580683195

/-! ## A394438.P4500378989248726476

`A056924(A158117(n)*(A245111(n)+1))`
-/

namespace A394438.P4500378989248726476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A158117 n * (A245111 n + 1)).toNat

end

end A394438.P4500378989248726476

/-!
# A394440: a(n) = Sum_{k=0..n} Sum_{j=0..k} 2^(n - j) * j! * Stirling2(n, j). Row sums of A394442.

The programs for A394440, there is no canonical definition to state claims against.
-/

/-! ## A394440.P13525181837863342832

`A028310(A121675(n)-A005043(n))`
-/

namespace A394440.P13525181837863342832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A121675 n - A005043 n).toNat

end

end A394440.P13525181837863342832

/-!
# A394441: a(n) = Sum_{k=0..n} Sum_{j=0..k} (-1)^(k - j)*binomial(k, j)*j^(n - k)*2^j. Row sums of A394444.

The programs for A394441, there is no canonical definition to state claims against.
-/

/-! ## A394441.P16005355933343910239

`A356065(A148072(n))`
-/

namespace A394441.P16005355933343910239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356065 (A148072 n).toNat

end

end A394441.P16005355933343910239

/-! ## A394441.P18254609132306326619

`A356065(A148073(n))`
-/

namespace A394441.P18254609132306326619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356065 (A148073 n).toNat

end

end A394441.P18254609132306326619

/-! ## A394441.P659950808975223712

`A356065(A148074(n))`
-/

namespace A394441.P659950808975223712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356065 (A148074 n).toNat

end

end A394441.P659950808975223712

/-!
# A394443: a(n) = Sum_{k=0..n} Sum_{j=0..k} (-1)^(k - j) * binomial(k, j) * j^n * 2^j.

The programs for A394443, there is no canonical definition to state claims against.
-/

/-! ## A394443.P12315431298321757741

`∑{#}[n, A394444(C(n+#+1, 2)+#)]`
-/

namespace A394443.P12315431298321757741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A394444 (Nat.choose (n + k + 1) 2 + k)

end

end A394443.P12315431298321757741

/-!
# A394444: Array read by ascending antidiagonals: A(n, k) = Sum_{j=0..k} (-1)^(k - j) * binomial(k, j) * j^n * 2^j.

The programs for A394444, there is no canonical definition to state claims against.
-/

/-! ## A394444.P43323933664800897

`A122542(n)+A058348(A157152(n))`
-/

namespace A394444.P43323933664800897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n + A058348 (A157152 n).toNat

end

end A394444.P43323933664800897

/-! ## A394444.P12798425919859106954

`A122542(n)+A058348(A176420(n))`
-/

namespace A394444.P12798425919859106954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n + A058348 (A176420 n).toNat

end

end A394444.P12798425919859106954

/-! ## A394444.P10170292962502506507

`A274581(n)*A343240(A060693(n))`
-/

namespace A394444.P10170292962502506507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 n * A343240 (A060693 n).toNat

end

end A394444.P10170292962502506507

/-! ## A394444.P2348828418021646802

`A122542(n)+A058348(A240840(n))`
-/

namespace A394444.P2348828418021646802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n + A058348 (A240840 n).toNat

end

end A394444.P2348828418021646802

/-! ## A394444.P3783720247808660567

`A098542(n)-A127648(A226322(n))`
-/

namespace A394444.P3783720247808660567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098542 n - A127648 (A226322 n).toNat

end

end A394444.P3783720247808660567

/-!
# A394447: Number of tilings of the crook hexiamond spiral with n crook hexiamond tiles.

The programs for A394447, there is no canonical definition to state claims against.
-/

/-! ## A394447.P2628774046852627546

`A338947(A210632(n+1))`
-/

namespace A394447.P2628774046852627546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338947 (A210632 (n + 1)).toNat

end

end A394447.P2628774046852627546

/-! ## A394447.P1154502123900697871

`A366664(A034497(n+2))`
-/

namespace A394447.P1154502123900697871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366664 (A034497 (n + 2)).toNat

end

end A394447.P1154502123900697871

/-! ## A394447.P4283926871327516687

`comp[A324191(A292739(2*n+1))+28]-n+1`
-/

namespace A394447.P4283926871327516687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324191 (A292739 (2 * n + 1)).toNat + 28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A394447.P4283926871327516687

/-! ## A394447.P10908858977641482966

`A105105(A034529(n+2))`
-/

namespace A394447.P10908858977641482966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105105 (A034529 (n + 2)).toNat

end

end A394447.P10908858977641482966

/-! ## A394447.P5953007892655511989

`A110640(A034555(n+2))`
-/

namespace A394447.P5953007892655511989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110640 (A034555 (n + 2)).toNat

end

end A394447.P5953007892655511989

/-!
# A394449: Number of symmetric relations on an n-set that are neither reflexive nor transitive.

The programs for A394449, the canonical program `A394449.P17526634545928988176` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394449 has offset 0).

The definition of A394449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394449.P17526634545928988176

`A006125(n+1)-A006125(n)-A000110(n+1)+A000110(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394449

/-- `A006125(n+1)-A006125(n)-A000110(n+1)+A000110(n)` -/
def P17526634545928988176.Spec : Prop :=
  ∀ n, P17526634545928988176.a n = A394449 n

theorem P17526634545928988176.correct : P17526634545928988176.Spec := by
  intro n
  simp only [A394449]

end A394449

/-! ## A394449.P16671987959057113738

`Δ[A202534(A028310(n))]`
-/

namespace A394449.P16671987959057113738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202534 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394449.P16671987959057113738

namespace A394449

/-- `Δ[A202534(A028310(n))]` -/
def P16671987959057113738.Spec : Prop :=
  ∀ n, P16671987959057113738.a n = A394449 n

end A394449

/-! ## A394449.P9249274193886345175

`Δ[A006125(n)-A000110(n)]`
-/

namespace A394449.P9249274193886345175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394449.P9249274193886345175

namespace A394449

/-- `Δ[A006125(n)-A000110(n)]` -/
def P9249274193886345175.Spec : Prop :=
  ∀ n, P9249274193886345175.a n = A394449 n

theorem P9249274193886345175.correct : P9249274193886345175.Spec := by
  intro n
  simp only [A394449, Nat.add_sub_cancel, A394449.P9249274193886345175.f1, A394449.P9249274193886345175.a, A394449.P17526634545928988176.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A394449

/-! ## A394449.P9628959221328187939

`A202534(n+1)-A202534(A028310(n))`
-/

namespace A394449.P9628959221328187939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202534 (n + 1) - A202534 (A028310 n).toNat

end

end A394449.P9628959221328187939

namespace A394449

/-- `A202534(n+1)-A202534(A028310(n))` -/
def P9628959221328187939.Spec : Prop :=
  ∀ n, P9628959221328187939.a n = A394449 n

end A394449

/-!
# A394450: Primes that survive the lucky number sieve when applied to the sequence of primes.

The programs for A394450, there is no canonical definition to state claims against.
-/

/-! ## A394450.P3129449544139457120

`A329607(A269758(n+1))`
-/

namespace A394450.P3129449544139457120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A269758 (n + 1)).toNat

end

end A394450.P3129449544139457120

/-! ## A394450.P13408313419290435938

`A000040(A112886(n+1)^A260526(n))`
-/

namespace A394450.P13408313419290435938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A112886 (n + 1) : ℚ) ^ (A260526 n : ℤ))).toNat

end

end A394450.P13408313419290435938

/-! ## A394450.P12342680446914217765

`A000040(A282429(n+1)%A162817(n+1))`
-/

namespace A394450.P12342680446914217765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A282429 (n + 1)) (A162817 (n + 1))).toNat

end

end A394450.P12342680446914217765

/-! ## A394450.P6245700207145215534

`A000040(A356449(n+1)%A228922(n+1))`
-/

namespace A394450.P6245700207145215534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A356449 (n + 1)) (A228922 (n + 1))).toNat

end

end A394450.P6245700207145215534

/-! ## A394450.P1756099225152022383

`A000040(A262978(n+1)%A103024(n+5))`
-/

namespace A394450.P1756099225152022383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A262978 (n + 1)) (A103024 (n + 5))).toNat

end

end A394450.P1756099225152022383

/-!
# A394452: Greater of two consecutive numbers of the form 2^i*5^j with i, j >= 0, that are coprime.

The programs for A394452, there is no canonical definition to state claims against.
-/

/-! ## A394452.P4126538027029134360

`∑{d}[A201967(n)^3, #%2+1]`
-/

namespace A394452.P4126538027029134360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201967 n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d % 2 + 1)

end

end A394452.P4126538027029134360

/-!
# A394454: Sum of distinct prime divisors of C(2*n, n).

The programs for A394454, the canonical program `A394454.P627526309176184517` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394454 has offset 1).

The definition of A394454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394454.P627526309176184517

`A008472(A000984(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394454

/-- `A008472(A000984(n+1))` -/
def P627526309176184517.Spec : Prop :=
  ∀ n, P627526309176184517.a n = A394454 (n + 1)

theorem P627526309176184517.correct : P627526309176184517.Spec := by
  intro n
  simp only [A394454, Nat.add_sub_cancel]

end A394454

/-! ## A394454.P4210439966318057062

`A064142(2*(n+1))`
-/

namespace A394454.P4210439966318057062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064142 (2 * (n + 1))

end

end A394454.P4210439966318057062

namespace A394454

/-- `A064142(2*(n+1))` -/
def P4210439966318057062.Spec : Prop :=
  ∀ n, P4210439966318057062.a n = A394454 (n + 1)

end A394454

/-! ## A394454.P10682460737561185862

`∑{p}[∏[2/(n+1)-4], #]`
-/

namespace A394454.P10682460737561185862
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) - 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A394454.P10682460737561185862

namespace A394454

/-- `∑{p}[∏[2/(n+1)-4], #]` -/
def P10682460737561185862.Spec : Prop :=
  ∀ n, (P10682460737561185862.a n : ℤ) = A394454 (n + 1)

end A394454

/-! ## A394454.P13178100476738424907

`A004719(∑{p}[A000984(n+1), #])`
-/

namespace A394454.P13178100476738424907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A394454.P13178100476738424907

namespace A394454

/-- `A004719(∑{p}[A000984(n+1), #])` -/
def P13178100476738424907.Spec : Prop :=
  ∀ n, P13178100476738424907.a n = A394454 (n + 1)

end A394454

/-! ## A394454.P6303188963204644532

`∑{p}[A000984(n+1), #]*A184303(n+1)`
-/

namespace A394454.P6303188963204644532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A184303 (n + 1)

end

end A394454.P6303188963204644532

namespace A394454

/-- `∑{p}[A000984(n+1), #]*A184303(n+1)` -/
def P6303188963204644532.Spec : Prop :=
  ∀ n, P6303188963204644532.a n = A394454 (n + 1)

end A394454

/-!
# A394464: Number of graceful Prüfer codes on n vertices whose tree is the path graph and whose last element equals 0.

The programs for A394464, there is no canonical definition to state claims against.
-/

/-! ## A394464.P1347466141236842110

`A112362(n+4)-A394465(n+4)`
-/

namespace A394464.P1347466141236842110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112362 (n + 4) - A394465 (n + 4)

end

end A394464.P1347466141236842110

/-!
# A394465: Number of graceful Prüfer codes on n vertices whose tree is the path graph and whose last element equals 1.

The programs for A394465, there is no canonical definition to state claims against.
-/

/-! ## A394465.P17950525994576461561

`A112362(n+4)-A394464(n+4)`
-/

namespace A394465.P17950525994576461561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112362 (n + 4) - A394464 (n + 4)

end

end A394465.P17950525994576461561

/-!
# A394470: a(n) = n*tau(n) - (n-1)*Sum_{p|n, p prime} [gcd(p,n/p) = 1], where [ ] is the Iverson bracket.

The programs for A394470, the canonical program `A394470.P12281335905416762997` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394470 has offset 1).

The definition of A394470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394470.P12281335905416762997

`(n+1)*A000005(n+1)-n*A056169(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A394470

/-- `(n+1)*A000005(n+1)-n*A056169(n+1)` -/
def P12281335905416762997.Spec : Prop :=
  ∀ n, P12281335905416762997.a n = A394470 (n + 1)

theorem P12281335905416762997.correct : P12281335905416762997.Spec := by
  intro n
  simp only [A394470, Nat.add_sub_cancel]

end A394470

/-!
# A394471: Primes of the form prime(k) + prime(k+2) - 1, where prime(k) is the k-th prime.

The programs for A394471, the canonical program `A394471.P5852096907617755890` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394471 has offset 1).

The definition of A394471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394471.P5852096907617755890

`∩[A000040(n+1), A048448(n+4)-1]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A394471

/-- `∩[A000040(n+1), A048448(n+4)-1]` -/
def P5852096907617755890.Spec : Prop :=
  ∀ n, (P5852096907617755890.a n : ℤ) = A394471 (n + 1)

theorem P5852096907617755890.correct : P5852096907617755890.Spec := by
  intro n
  simp only [A394471, Nat.add_sub_cancel]

end A394471

/-!
# A394475: Number of distinct primes not dividing n that are adjacent to a divisor of n.

The programs for A394475, there is no canonical definition to state claims against.
-/

/-! ## A394475.P11243291139092315111

`A055642(A137921(2*(n+1))^A356224(n+1))`
-/

namespace A394475.P11243291139092315111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A137921 (2 * (n + 1)) : ℚ) ^ (A356224 (n + 1) : ℤ))).toNat

end

end A394475.P11243291139092315111

/-! ## A394475.P10074939217121244313

`A055642(A185628(n)*A266220(n))`
-/

namespace A394475.P10074939217121244313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A185628 n * A266220 n).toNat

end

end A394475.P10074939217121244313

/-! ## A394475.P12946714670921590239

`A061704(A032528(n+1)*A089898(n))`
-/

namespace A394475.P12946714670921590239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A032528 (n + 1) * A089898 n).toNat

end

end A394475.P12946714670921590239

/-! ## A394475.P14009479318209901945

`gcd(A221531(A000013(n)), A246677(n+1))`
-/

namespace A394475.P14009479318209901945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221531 (A000013 n).toNat) (A246677 (n + 1))

end

end A394475.P14009479318209901945

/-! ## A394475.P4051954126601282683

`gcd(A034836(n+1), A319000(A241916(n+1)))`
-/

namespace A394475.P4051954126601282683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034836 (n + 1)) (A319000 (A241916 (n + 1)).toNat)

end

end A394475.P4051954126601282683

/-!
# A394476: a(n) is the smallest integer k such that the iterated multiplicative-order chain k, ord_k(3), ord_{ord_k(3)}(3), and so on, reaches a multiple of 3 in exactly n steps.

The programs for A394476, there is no canonical definition to state claims against.
-/

/-! ## A394476.P7624959197075457000

`∩[A030086(n+1), A175339(n)]`
-/

namespace A394476.P7624959197075457000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394476.P7624959197075457000

/-!
# A394477: Number of integers k in 1..n such that the numerator of the reduced fraction (n*(n-1) + k)/n is prime.

The programs for A394477, there is no canonical definition to state claims against.
-/

/-! ## A394477.P16103372377374048639

`A302243(A000196(n)*A068911(n+1))`
-/

namespace A394477.P16103372377374048639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A000196 n * A068911 (n + 1)).toNat

end

end A394477.P16103372377374048639

/-!
# A394481: a(n) = usigma(n) + tau(n) - tau(rad(n)).

The programs for A394481, the canonical program `A394481.P10475431677930788014` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394481 has offset 1).

The definition of A394481 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394481.P3743534600693645198

`A034448(n+1)+A000005(n+1)-A034444(n+1)`
-/

namespace A394481.P3743534600693645198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + A000005 (n + 1) - A034444 (n + 1)

end

end A394481.P3743534600693645198

namespace A394481

/-- `A034448(n+1)+A000005(n+1)-A034444(n+1)` -/
def P3743534600693645198.Spec : Prop :=
  ∀ n, P3743534600693645198.a n = A394481 (n + 1)

end A394481

/-! ## A394481.P10475431677930788014

`A034448(n+1)+A000005(n+1)-A000005(A007947(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A394481

/-- `A034448(n+1)+A000005(n+1)-A000005(A007947(n+1))` -/
def P10475431677930788014.Spec : Prop :=
  ∀ n, P10475431677930788014.a n = A394481 (n + 1)

theorem P10475431677930788014.correct : P10475431677930788014.Spec := by
  intro n
  simp only [A394481, Nat.add_sub_cancel]

end A394481

/-! ## A394481.P128357585525803380

`A048105(n+1)+A034448(n+1)`
-/

namespace A394481.P128357585525803380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A034448 (n + 1)

end

end A394481.P128357585525803380

namespace A394481

/-- `A048105(n+1)+A034448(n+1)` -/
def P128357585525803380.Spec : Prop :=
  ∀ n, P128357585525803380.a n = A394481 (n + 1)

end A394481

/-! ## A394481.P1813443253736398081

`A007503(n+1)-A395435(n+1)`
-/

namespace A394481.P1813443253736398081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A395435 (n + 1)

end

end A394481.P1813443253736398081

namespace A394481

/-- `A007503(n+1)-A395435(n+1)` -/
def P1813443253736398081.Spec : Prop :=
  ∀ n, P1813443253736398081.a n = A394481 (n + 1)

theorem P1813443253736398081.correct : P1813443253736398081.Spec := by
  intro n
  simp only [A394481, Nat.add_sub_cancel, A394481.P1813443253736398081.a, A394481.P10475431677930788014.a, A000005, A000005.P16091521709108585461.a, A007503, A007503.P13484425310514315912.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A395435, A395435.P18346761836883339857.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A051731, A051731.P11318043630102858095.a, A384050, A384050.P7808103291810137926.a, A000007, A000007.P6599383543502402472.a, A000010, A000010.P4673923239450215316.a, A048158, A048158.P1757030368331788429.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A394481

/-! ## A394481.P5526202433599525160

`A000005(n+1)+A000203(n+1)-A395435(n+1)`
-/

namespace A394481.P5526202433599525160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000203 (n + 1) - A395435 (n + 1))

end

end A394481.P5526202433599525160

namespace A394481

/-- `A000005(n+1)+A000203(n+1)-A395435(n+1)` -/
def P5526202433599525160.Spec : Prop :=
  ∀ n, P5526202433599525160.a n = A394481 (n + 1)

theorem P5526202433599525160.correct : P5526202433599525160.Spec := by
  intro n
  simp only [A394481, Nat.add_sub_cancel, A394481.P5526202433599525160.a, A394481.P10475431677930788014.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A395435, A395435.P18346761836883339857.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A051731, A051731.P11318043630102858095.a, A384050, A384050.P7808103291810137926.a, A000007, A000007.P6599383543502402472.a, A000010, A000010.P4673923239450215316.a, A048158, A048158.P1757030368331788429.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A394481

/-! ## A394481.P15324118116471707252

`A389162(n+1)+A344465(n+1)`
-/

namespace A394481.P15324118116471707252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389162 (n + 1) + A344465 (n + 1)

end

end A394481.P15324118116471707252

namespace A394481

/-- `A389162(n+1)+A344465(n+1)` -/
def P15324118116471707252.Spec : Prop :=
  ∀ n, P15324118116471707252.a n = A394481 (n + 1)

end A394481

/-!
# A394482: Achilles numbers whose prime power factor multiplicities are not pairwise indivisible.

The programs for A394482, there is no canonical definition to state claims against.
-/

/-! ## A394482.P13459270192367809435

`filter[A378769(n+1), A358769(#)]`
-/

namespace A394482.P13459270192367809435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A394482.P13459270192367809435

/-! ## A394482.P1647083760524228934

`filter[A394000(n+1), A351564(#)]`
-/

namespace A394482.P1647083760524228934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A394482.P1647083760524228934

/-!
# A394483: Expansion of 1/((1-3*x)^2*(1-4*x)^2).

The programs for A394483, the canonical program `A394483.P6091680119963873756` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394483 has offset 0).

The definition of A394483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394483.P6091680119963873756

`(n-5)*4^(n+2)+(n+9)*3^(n+2)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394483

/-- `(n-5)*4^(n+2)+(n+9)*3^(n+2)` -/
def P6091680119963873756.Spec : Prop :=
  ∀ n, P6091680119963873756.a n = A394483 n

theorem P6091680119963873756.correct : P6091680119963873756.Spec := by
  intro n
  simp only [A394483]

end A394483

/-!
# A394484: Chebyshev distance between prime(n) and prime(n+1) on Ulam spiral.

The programs for A394484, there is no canonical definition to state claims against.
-/

/-! ## A394484.P5515338327146287855

`A078703(A088172(n+2)+n)`
-/

namespace A394484.P5515338327146287855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (A088172 (n + 2) + (n : ℤ)).toNat

end

end A394484.P5515338327146287855

/-! ## A394484.P4978412732201361225

`A064547(A198463(3*n+1)+A357368(3*n+1)*(n+1)²)`
-/

namespace A394484.P4978412732201361225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A198463 (3 * n + 1) + A357368 (3 * n + 1) * ((n + 1) ^ 2 : ℤ)).toNat

end

end A394484.P4978412732201361225

/-! ## A394484.P15194923823178939308

`A366742(lt[A057196(n+2), A140778(2*n+1)])`
-/

namespace A394484.P15194923823178939308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057196 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140778 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366742 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A394484.P15194923823178939308

/-! ## A394484.P7471048341264605475

`A335474(A037143(n+1)+A169952(n+1)%A308251(n)+1)`
-/

namespace A394484.P7471048341264605475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (A037143 (n + 1) + (Int.tmod (A169952 (n + 1)) (A308251 n) + 1)).toNat

end

end A394484.P7471048341264605475

/-!
# A394486: Number of horizontally symmetric reduced Latin squares of order 2n representing groups.

The programs for A394486, there is no canonical definition to state claims against.
-/

/-! ## A394486.P13743520172125858268

`∏{e}[∏[∑[(n+1)²]], 2*#]`
-/

namespace A394486.P13743520172125858268
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * Nat.factorization (f1 n) p

end

end A394486.P13743520172125858268

/-!
# A394491: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + 5*x)^(4/5) ).

The programs for A394491, there is no canonical definition to state claims against.
-/

/-! ## A394491.P13744803679739937387

`A070046(A051577(n)+A000079(n))`
-/

namespace A394491.P13744803679739937387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070046 (A051577 n + A000079 n).toNat

end

end A394491.P13744803679739937387

/-!
# A394492: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - 3*x)^(1/3) ).

The programs for A394492, there is no canonical definition to state claims against.
-/

/-! ## A394492.P12533172867055060297

`A384256(n)/(n+1)`
-/

namespace A394492.P12533172867055060297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384256 n : ℚ) / (n + 1 : ℚ)

end

end A394492.P12533172867055060297

/-!
# A394494: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - 4*x)^(1/4) ).

The programs for A394494, there is no canonical definition to state claims against.
-/

/-! ## A394494.P14151468141971627590

`A384258(n)/(n+1)`
-/

namespace A394494.P14151468141971627590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384258 n : ℚ) / (n + 1 : ℚ)

end

end A394494.P14151468141971627590

/-!
# A394495: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - 5*x)^(1/5) ).

The programs for A394495, there is no canonical definition to state claims against.
-/

/-! ## A394495.P17533097400053078795

`A185717(A362765(n+1)/2)`
-/

namespace A394495.P17533097400053078795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185717 (SequenceMachineLib.roundAway ((A362765 (n + 1) : ℚ) / 2)).toNat

end

end A394495.P17533097400053078795

/-!
# A394497: Recurrence: a(2*n + 1) = 2*n + 1, a(2*n) = 3*a(n).

The programs for A394497, the canonical program `A394497.P5937869929885374420` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394497 has offset 1).

The definition of A394497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394497.P13525716391220510350

`(3/2)^val(n+1, 2)*(n+1)`
-/

namespace A394497.P13525716391220510350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2) ^ SequenceMachineLib.valuation (n + 1) 2 * (n + 1 : ℚ)

end

end A394497.P13525716391220510350

namespace A394497

/-- `(3/2)^val(n+1, 2)*(n+1)` -/
def P13525716391220510350.Spec : Prop :=
  ∀ n, P13525716391220510350.a n = (A394497 (n + 1) : ℚ)

end A394497

/-! ## A394497.P5937869929885374420

`2*A085062(n)+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A394497

/-- `2*A085062(n)+1` -/
def P5937869929885374420.Spec : Prop :=
  ∀ n, P5937869929885374420.a n = A394497 (n + 1)

theorem P5937869929885374420.correct : P5937869929885374420.Spec := by
  intro n
  simp only [A394497, Nat.add_sub_cancel]

end A394497

/-! ## A394497.P6584095621795488325

`(3/2)^A007814(n+1)*(n+1)`
-/

namespace A394497.P6584095621795488325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2) ^ (A007814 (n + 1) : ℤ) * (n + 1 : ℚ)

end

end A394497.P6584095621795488325

namespace A394497

/-- `(3/2)^A007814(n+1)*(n+1)` -/
def P6584095621795488325.Spec : Prop :=
  ∀ n, P6584095621795488325.a n = (A394497 (n + 1) : ℚ)

end A394497

/-! ## A394497.P1944045281228483121

`(n+1)/(or(n, n+1)-n)*A003961(and(n+1, -(n+1)))`
-/

namespace A394497.P1944045281228483121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) * (A003961 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat : ℚ)

end

end A394497.P1944045281228483121

namespace A394497

/-- `(n+1)/(or(n, n+1)-n)*A003961(and(n+1, -(n+1)))` -/
def P1944045281228483121.Spec : Prop :=
  ∀ n, P1944045281228483121.a n = (A394497 (n + 1) : ℚ)

end A394497

/-! ## A394497.P9634560847629223713

`(n+1)/(or(n, n+1)-n)*A003961((xor(n, n+1)+1)/2)`
-/

namespace A394497.P9634560847629223713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) * (A003961 (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) + 1 : ℚ) / 2)).toNat : ℚ)

end

end A394497.P9634560847629223713

namespace A394497

/-- `(n+1)/(or(n, n+1)-n)*A003961((xor(n, n+1)+1)/2)` -/
def P9634560847629223713.Spec : Prop :=
  ∀ n, P9634560847629223713.a n = (A394497 (n + 1) : ℚ)

end A394497

/-! ## A394497.P4202585724141683184

`A003961(A079707(n+1))`
-/

namespace A394497.P4202585724141683184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A079707 (n + 1)).toNat

end

end A394497.P4202585724141683184

namespace A394497

/-- `A003961(A079707(n+1))` -/
def P4202585724141683184.Spec : Prop :=
  ∀ n, P4202585724141683184.a n = A394497 (n + 1)

end A394497

/-! ## A394497.P9009707669409283569

`A133205(n+1)/A003960(n+1)`
-/

namespace A394497.P9009707669409283569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133205 (n + 1) : ℚ) / (A003960 (n + 1) : ℚ)

end

end A394497.P9009707669409283569

namespace A394497

/-- `A133205(n+1)/A003960(n+1)` -/
def P9009707669409283569.Spec : Prop :=
  ∀ n, P9009707669409283569.a n = (A394497 (n + 1) : ℚ)

end A394497

/-! ## A394497.P11519913894086045596

`A166624(n+1)/A079065(n+1)`
-/

namespace A394497.P11519913894086045596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166624 (n + 1) : ℚ) / (A079065 (n + 1) : ℚ)

end

end A394497.P11519913894086045596

namespace A394497

/-- `A166624(n+1)/A079065(n+1)` -/
def P11519913894086045596.Spec : Prop :=
  ∀ n, P11519913894086045596.a n = (A394497 (n + 1) : ℚ)

end A394497

/-! ## A394497.P18062097184442503059

`∑{d}[n+1, A000010(#)*A236313((n+1)/#)]`
-/

namespace A394497.P18062097184442503059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A236313 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A394497.P18062097184442503059

namespace A394497

/-- `∑{d}[n+1, A000010(#)*A236313((n+1)/#)]` -/
def P18062097184442503059.Spec : Prop :=
  ∀ n, P18062097184442503059.a n = A394497 (n + 1)

end A394497

/-! ## A394497.P13406440248856312874

`∑{d}[n+1, A123565(#)*A165824((n+1)/#)]`
-/

namespace A394497.P13406440248856312874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A123565 d * A165824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A394497.P13406440248856312874

namespace A394497

/-- `∑{d}[n+1, A123565(#)*A165824((n+1)/#)]` -/
def P13406440248856312874.Spec : Prop :=
  ∀ n, P13406440248856312874.a n = A394497 (n + 1)

end A394497

/-! ## A394497.P2746573503806823806

`∑{d}[n+1, A193356(#)*A259346((n+1)/#)]`
-/

namespace A394497.P2746573503806823806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A259346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A394497.P2746573503806823806

namespace A394497

/-- `∑{d}[n+1, A193356(#)*A259346((n+1)/#)]` -/
def P2746573503806823806.Spec : Prop :=
  ∀ n, P2746573503806823806.a n = A394497 (n + 1)

end A394497

/-! ## A394497.P9103335524673940669

`A003961(A006519(n+1)*A064989(n+1))`
-/

namespace A394497.P9103335524673940669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A006519 (n + 1) * A064989 (n + 1)).toNat

end

end A394497.P9103335524673940669

namespace A394497

/-- `A003961(A006519(n+1)*A064989(n+1))` -/
def P9103335524673940669.Spec : Prop :=
  ∀ n, P9103335524673940669.a n = A394497 (n + 1)

end A394497

/-! ## A394497.P4413276903817382179

`A167338(n+1)/(A003960(n+1)*A061142(n+1))`
-/

namespace A394497.P4413276903817382179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167338 (n + 1) : ℚ) / (A003960 (n + 1) * A061142 (n + 1) : ℚ)

end

end A394497.P4413276903817382179

namespace A394497

/-- `A167338(n+1)/(A003960(n+1)*A061142(n+1))` -/
def P4413276903817382179.Spec : Prop :=
  ∀ n, P4413276903817382179.a n = (A394497 (n + 1) : ℚ)

end A394497

/-! ## A394497.P6270496347351140367

`A289133(A085060(n))`
-/

namespace A394497.P6270496347351140367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A085060 n).toNat

end

end A394497.P6270496347351140367

namespace A394497

/-- `A289133(A085060(n))` -/
def P6270496347351140367.Spec : Prop :=
  ∀ n, P6270496347351140367.a n = A394497 (n + 1)

end A394497

/-! ## A394497.P7783648950297001776

`A000265((n+1)*A003961(A006519(n+1)))`
-/

namespace A394497.P7783648950297001776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1 : ℤ) * A003961 (A006519 (n + 1)).toNat).toNat

end

end A394497.P7783648950297001776

namespace A394497

/-- `A000265((n+1)*A003961(A006519(n+1)))` -/
def P7783648950297001776.Spec : Prop :=
  ∀ n, P7783648950297001776.a n = A394497 (n + 1)

end A394497

/-!
# A394498: Number of ordered rooted trees with total edge weight n such that all groups of sibling edges have weights in standard order.

The programs for A394498, there is no canonical definition to state claims against.
-/

/-! ## A394498.P18182991029664961570

`A192728(n)+A005088(A000142(n))`
-/

namespace A394498.P18182991029664961570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192728 n + A005088 (A000142 n).toNat

end

end A394498.P18182991029664961570

/-!
# A394499: Starting at one corner of n X n grid of dots, the maximum number of edges that can be drawn without lifting the pencil or going over a previously drawn edge.

The programs for A394499, the canonical program `A394499.P7830385450786944049` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394499 has offset 1).

The definition of A394499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394499.P7830385450786944049

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=6`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394499

/-- `∑[∑[8-a(n-1)]]` -/
def P7830385450786944049.Spec : Prop :=
  ∀ n, P7830385450786944049.a n = A394499 (n + 1)

theorem P7830385450786944049.correct : P7830385450786944049.Spec := by
  intro n
  simp only [A394499, Nat.add_sub_cancel]

end A394499

/-! ## A394499.P2049790733803005590

`A005893(n)-char[2*n]`
-/

namespace A394499.P2049790733803005590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A394499.P2049790733803005590

namespace A394499

/-- `A005893(n)-char[2*n]` -/
def P2049790733803005590.Spec : Prop :=
  ∀ n, P2049790733803005590.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P14684949326566032678

`A008253(n)-A097063(n)`
-/

namespace A394499.P14684949326566032678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n - A097063 n

end

end A394499.P14684949326566032678

namespace A394499

/-- `A008253(n)-A097063(n)` -/
def P14684949326566032678.Spec : Prop :=
  ∀ n, P14684949326566032678.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P9574830977822694127

`A049486(n+1)-A060576(n)`
-/

namespace A394499.P9574830977822694127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049486 (n + 1) - A060576 n

end

end A394499.P9574830977822694127

namespace A394499

/-- `A049486(n+1)-A060576(n)` -/
def P9574830977822694127.Spec : Prop :=
  ∀ n, P9574830977822694127.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P17555690822473993217

`∑[A047522(n+1)]-A008574(n)`
-/

namespace A394499.P17555690822473993217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008574 n

end

end A394499.P17555690822473993217

namespace A394499

/-- `∑[A047522(n+1)]-A008574(n)` -/
def P17555690822473993217.Spec : Prop :=
  ∀ n, P17555690822473993217.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P3821342491386871475

`A058331(n)+Δ[A123108(n)]`
-/

namespace A394499.P3821342491386871475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n + (f1 (n + 1) - f1 n)

end

end A394499.P3821342491386871475

namespace A394499

/-- `A058331(n)+Δ[A123108(n)]` -/
def P3821342491386871475.Spec : Prop :=
  ∀ n, P3821342491386871475.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P3939767259147721225

`A046092(n+1)-(A014601(n+1)+A008574(n))`
-/

namespace A394499.P3939767259147721225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1) - (A014601 (n + 1) + A008574 n)

end

end A394499.P3939767259147721225

namespace A394499

/-- `A046092(n+1)-(A014601(n+1)+A008574(n))` -/
def P3939767259147721225.Spec : Prop :=
  ∀ n, P3939767259147721225.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P3907604295407854387

`A194274(2*n+1)-A008574(n)`
-/

namespace A394499.P3907604295407854387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (2 * n + 1) - A008574 n

end

end A394499.P3907604295407854387

namespace A394499

/-- `A194274(2*n+1)-A008574(n)` -/
def P3907604295407854387.Spec : Prop :=
  ∀ n, P3907604295407854387.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P2543164566315106113

`A105812(2*n+1)+A104563(2*n)`
-/

namespace A394499.P2543164566315106113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * n + 1) + A104563 (2 * n)

end

end A394499.P2543164566315106113

namespace A394499

/-- `A105812(2*n+1)+A104563(2*n)` -/
def P2543164566315106113.Spec : Prop :=
  ∀ n, P2543164566315106113.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P16235330101657449385

`∑{#}[n, 2*n-floor(n/2)^C(n, n*#)]`
-/

namespace A394499.P16235330101657449385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((2 * n : ℤ) - ⌊(n : ℚ) / 2⌋ ^ Nat.choose n (n * k))

end

end A394499.P16235330101657449385

namespace A394499

/-- `∑{#}[n, 2*n-floor(n/2)^C(n, n*#)]` -/
def P16235330101657449385.Spec : Prop :=
  ∀ n, P16235330101657449385.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P14403025412767261331

`∑{#}[n, 2*n-C(floor(n/2), C(n, n*#))]`
-/

namespace A394499.P14403025412767261331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((2 * n : ℤ) - (Nat.choose ⌊(n : ℚ) / 2⌋.toNat (Nat.choose n (n * k)) : ℤ))

end

end A394499.P14403025412767261331

namespace A394499

/-- `∑{#}[n, 2*n-C(floor(n/2), C(n, n*#))]` -/
def P14403025412767261331.Spec : Prop :=
  ∀ n, P14403025412767261331.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P12790876660990363200

`A047409(A010000(n))`
-/

namespace A394499.P12790876660990363200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047409 (A010000 n).toNat

end

end A394499.P12790876660990363200

namespace A394499

/-- `A047409(A010000(n))` -/
def P12790876660990363200.Spec : Prop :=
  ∀ n, P12790876660990363200.a n = A394499 (n + 1)

end A394499

