import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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

/-! ## A394400.P4564883537311545324

`A127321(C(A161580(n+1), A077285(n)))`
-/

namespace A394400.P4564883537311545324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (Nat.choose (A161580 (n + 1)).toNat (A077285 n).toNat)

end

end A394400.P4564883537311545324

/-!
# A394401: A sequence constructed by greedily sampling the probability distribution given by 1/log_2(i+1) - 1/log_2(i+2) to minimize discrepancy.

The programs for A394401, there is no canonical definition to state claims against.
-/

/-! ## A394401.P12547101699944314857

`A055396(A001913(3*n+1)*A321453(n+2))`
-/

namespace A394401.P12547101699944314857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A001913 (3 * n + 1) * A321453 (n + 2)).toNat

end

end A394401.P12547101699944314857

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

/-! ## A394405.P12694324841706740980

`A395256(n)-A376064(n)`
-/

namespace A394405.P12694324841706740980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395256 n - A376064 n

end

end A394405.P12694324841706740980

/-! ## A394405.P9694155870011179785

`A395702(n)+Δ[A000110(n)]`
-/

namespace A394405.P9694155870011179785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395702 n + (f1 (n + 1) - f1 n)

end

end A394405.P9694155870011179785

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

/-! ## A394405.P17574966602656761765

`∑[A348151(A028310(n))]-A000798(n)`
-/

namespace A394405.P17574966602656761765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348151 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000798 n

end

end A394405.P17574966602656761765

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

/-! ## A394406.P4359925019547187834

`ceil(A087686(A290718(n+1))/24)`
-/

namespace A394406.P4359925019547187834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087686 (A290718 (n + 1)).toNat : ℚ) / 24⌉

end

end A394406.P4359925019547187834

/-!
# A394407: Positive integers k such that there is no m < k with phi(m)/tau(m) = phi(k)/tau(k).

The programs for A394407, there is no canonical definition to state claims against.
-/

/-! ## A394407.P6772796460103723388

`lt[A379308(A062863(n)), A255565(2*n)]`
-/

namespace A394407.P6772796460103723388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379308 (A062863 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255565 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394407.P6772796460103723388

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

/-! ## A394407.P12270291056749944

`A028740(A129657(n+1))-1`
-/

namespace A394407.P12270291056749944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028740 (A129657 (n + 1)).toNat - 1

end

end A394407.P12270291056749944

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

/-!
# A394408: Lesser of two consecutive numbers of the form 2^i*5^j with i, j >= 0, that are coprime.

The programs for A394408, there is no canonical definition to state claims against.
-/

/-! ## A394408.P15106046914796724045

`A003592(eq[1, A393164(n+1)]+1)`
-/

namespace A394408.P15106046914796724045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A394408.P15106046914796724045

/-! ## A394408.P3503619904484561847

`record[A003592(n+1)/A393164(n+1)]`
-/

namespace A394408.P3503619904484561847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003592 (n + 1) : ℚ) / (A393164 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394408.P3503619904484561847

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

/-! ## A394411.P15350504393417802034

`row(A268335(A385028(n)))`
-/

namespace A394411.P15350504393417802034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A268335 (A385028 n).toNat).toNat

end

end A394411.P15350504393417802034

/-! ## A394411.P852767533176502653

`A023193(A148479(n+1))`
-/

namespace A394411.P852767533176502653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148479 (n + 1)).toNat

end

end A394411.P852767533176502653

/-!
# A394412: Number of homomorphisms from the figure-eight knot group to the symmetric group S_n.

The programs for A394412, there is no canonical definition to state claims against.
-/

/-! ## A394412.P14391369421098577962

`A052717(n)+A226964(n+1)%2`
-/

namespace A394412.P14391369421098577962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052717 n + Int.tmod (A226964 (n + 1)) 2

end

end A394412.P14391369421098577962

/-! ## A394412.P17001487367758401898

`n!*A008621(A110880(2*n+3))`
-/

namespace A394412.P17001487367758401898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A008621 (A110880 (2 * n + 3)).toNat

end

end A394412.P17001487367758401898

/-! ## A394412.P2114330627061046774

`A052717(n)+A010054(A004254(n))`
-/

namespace A394412.P2114330627061046774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052717 n + A010054 (A004254 n).toNat

end

end A394412.P2114330627061046774

/-!
# A394413: a(1) = 1, a(2) = 2; for n > 2, a(n) is an unused positive number that shares a factor with a(n-1) while being as close as possible to a(n-2). If two such numbers exist then the smaller is chosen.

The programs for A394413, there is no canonical definition to state claims against.
-/

/-! ## A394413.P5850460031085198530

`A394514(n+1)%A157426(3*n+4)`
-/

namespace A394413.P5850460031085198530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394514 (n + 1)) (A157426 (3 * n + 4))

end

end A394413.P5850460031085198530

/-! ## A394413.P9320027262542370865

`A394514(n+1)+A000007(A327000(n))`
-/

namespace A394413.P9320027262542370865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394514 (n + 1) + A000007 (A327000 n).toNat

end

end A394413.P9320027262542370865

/-! ## A394413.P10778281062037466762

`A394514(n+1)%A008486(A001405(n))`
-/

namespace A394413.P10778281062037466762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394514 (n + 1)) (A008486 (A001405 n).toNat)

end

end A394413.P10778281062037466762

/-! ## A394413.P6199556249276577657

`A394514(n+1)+A000007(A060947(n+1))`
-/

namespace A394413.P6199556249276577657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394514 (n + 1) + A000007 (A060947 (n + 1)).toNat

end

end A394413.P6199556249276577657

/-! ## A394413.P8705630970200940755

`A394514(n+1)+A318515(A075101(n+1))`
-/

namespace A394413.P8705630970200940755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394514 (n + 1) + A318515 (A075101 (n + 1)).toNat

end

end A394413.P8705630970200940755

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

/-! ## A394417.P5607531373833592197

`A394422(n+1)%A394399(2*(n+2))`
-/

namespace A394417.P5607531373833592197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394422 (n + 1)) (A394399 (2 * (n + 2)))

end

end A394417.P5607531373833592197

/-! ## A394417.P6144397060279767027

`A394422(n+1)+A342656(A394414(n+2))`
-/

namespace A394417.P6144397060279767027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394422 (n + 1) + A342656 (A394414 (n + 2)).toNat

end

end A394417.P6144397060279767027

/-! ## A394417.P12583636735492837107

`A394422(n+1)*A394426(A344741(n+2))`
-/

namespace A394417.P12583636735492837107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394422 (n + 1) * A394426 (A344741 (n + 2)).toNat

end

end A394417.P12583636735492837107

/-! ## A394417.P11042435146974041911

`A394422(n+1)%A002385(A089085(n+1))`
-/

namespace A394417.P11042435146974041911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394422 (n + 1)) (A002385 (A089085 (n + 1)).toNat)

end

end A394417.P11042435146974041911

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

/-! ## A394421.P13903693650183340687

`A394416(n+1)%A061931(n+2)`
-/

namespace A394421.P13903693650183340687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394416 (n + 1)) (A061931 (n + 2))

end

end A394421.P13903693650183340687

/-! ## A394421.P1318803665264297392

`A394416(n+1)%A185413(A005893(n))`
-/

namespace A394421.P1318803665264297392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394416 (n + 1)) (A185413 (A005893 n).toNat)

end

end A394421.P1318803665264297392

/-! ## A394421.P17238806498110162697

`A394416(n+1)+A000007(A000127(n+1))`
-/

namespace A394421.P17238806498110162697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394416 (n + 1) + A000007 (A000127 (n + 1)).toNat

end

end A394421.P17238806498110162697

/-! ## A394421.P7027030132168958418

`A394416(n+1)+A000007(A324509(n+1))`
-/

namespace A394421.P7027030132168958418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394416 (n + 1) + A000007 (A324509 (n + 1)).toNat

end

end A394421.P7027030132168958418

/-! ## A394421.P16301997608855568834

`A394416(n+1)+A347244(A280752(n+1))`
-/

namespace A394421.P16301997608855568834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394416 (n + 1) + A347244 (A280752 (n + 1)).toNat

end

end A394421.P16301997608855568834

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

/-! ## A394424.P15738835104470146472

`∏{e}[A268335(n+1), A001227(#)]`
-/

namespace A394424.P15738835104470146472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001227 (Nat.factorization (f1 n).natAbs p)

end

end A394424.P15738835104470146472

namespace A394424

/-- `∏{e}[A268335(n+1), A001227(#)]` -/
def P15738835104470146472.Spec : Prop :=
  ∀ n, P15738835104470146472.a n = A394424 (n + 1)

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

/-! ## A394424.P4656648221883272189

`∏{e}[A268335(n+1), A112329(#)]`
-/

namespace A394424.P4656648221883272189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A112329 (Nat.factorization (f1 n).natAbs p)

end

end A394424.P4656648221883272189

namespace A394424

/-- `∏{e}[A268335(n+1), A112329(#)]` -/
def P4656648221883272189.Spec : Prop :=
  ∀ n, P4656648221883272189.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P7013323883206363222

`∏{e}[A268335(n+1), A237271(#)]`
-/

namespace A394424.P7013323883206363222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A237271 (Nat.factorization (f1 n).natAbs p)

end

end A394424.P7013323883206363222

namespace A394424

/-- `∏{e}[A268335(n+1), A237271(#)]` -/
def P7013323883206363222.Spec : Prop :=
  ∀ n, P7013323883206363222.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P11103109781883686422

`∏{e}[record[A331737(1+n)], A000005(#)]`
-/

namespace A394424.P11103109781883686422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A394424.P11103109781883686422

namespace A394424

/-- `∏{e}[record[A331737(1+n)], A000005(#)]` -/
def P11103109781883686422.Spec : Prop :=
  ∀ n, P11103109781883686422.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P8337995832531916578

`∏{e}[eq[1, A336643(n+1)]+1, A000005(#)]`
-/

namespace A394424.P8337995832531916578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p)

end

end A394424.P8337995832531916578

namespace A394424

/-- `∏{e}[eq[1, A336643(n+1)]+1, A000005(#)]` -/
def P8337995832531916578.Spec : Prop :=
  ∀ n, P8337995832531916578.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P10919867670451928162

`A368979(sqrt(A374458(n+1)))`
-/

namespace A394424.P10919867670451928162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368979 (SequenceMachineLib.roundAway (Real.sqrt (A374458 (n + 1) : ℝ))).toNat

end

end A394424.P10919867670451928162

namespace A394424

/-- `A368979(sqrt(A374458(n+1)))` -/
def P10919867670451928162.Spec : Prop :=
  ∀ n, P10919867670451928162.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P10843485126699757401

`A368979(record[A331737(n+1)])`
-/

namespace A394424.P10843485126699757401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A394424.P10843485126699757401

namespace A394424

/-- `A368979(record[A331737(n+1)])` -/
def P10843485126699757401.Spec : Prop :=
  ∀ n, P10843485126699757401.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P10063782208147415493

`A368979(record[A350389(n+1)])`
-/

namespace A394424.P10063782208147415493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A394424.P10063782208147415493

namespace A394424

/-- `A368979(record[A350389(n+1)])` -/
def P10063782208147415493.Spec : Prop :=
  ∀ n, P10063782208147415493.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P7444358977298660806

`A049419(eq[1, A056624(n+1)]+1)`
-/

namespace A394424.P7444358977298660806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A394424.P7444358977298660806

namespace A394424

/-- `A049419(eq[1, A056624(n+1)]+1)` -/
def P7444358977298660806.Spec : Prop :=
  ∀ n, P7444358977298660806.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P7336059181500396737

`A049419(eq[1, A350388(n+1)]+1)`
-/

namespace A394424.P7336059181500396737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A394424.P7336059181500396737

namespace A394424

/-- `A049419(eq[1, A350388(n+1)]+1)` -/
def P7336059181500396737.Spec : Prop :=
  ∀ n, P7336059181500396737.a n = A394424 (n + 1)

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

/-! ## A394424.P1009769590579035356

`A368979(A268335(n+1)%A192297(n+5))`
-/

namespace A394424.P1009769590579035356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368979 (Int.tmod (A268335 (n + 1)) (A192297 (n + 5))).toNat

end

end A394424.P1009769590579035356

namespace A394424

/-- `A368979(A268335(n+1)%A192297(n+5))` -/
def P1009769590579035356.Spec : Prop :=
  ∀ n, P1009769590579035356.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P12025468560257219209

`A368979(lcm(2, A268335(n+1)))`
-/

namespace A394424.P12025468560257219209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368979 (Int.lcm 2 (A268335 (n + 1)))

end

end A394424.P12025468560257219209

namespace A394424

/-- `A368979(lcm(2, A268335(n+1)))` -/
def P12025468560257219209.Spec : Prop :=
  ∀ n, P12025468560257219209.a n = A394424 (n + 1)

end A394424

/-! ## A394424.P10576774486212027565

`ceil(root(A367418(n+1), A383720(n)-1))`
-/

namespace A394424.P10576774486212027565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A367418 (n + 1) : ℝ) ^ (1 / (A383720 n - 1 : ℝ))⌉

end

end A394424.P10576774486212027565

namespace A394424

/-- `ceil(root(A367418(n+1), A383720(n)-1))` -/
def P10576774486212027565.Spec : Prop :=
  ∀ n, P10576774486212027565.a n = A394424 (n + 1)

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

/-! ## A394425.P11981716307478960613

`2^A382425(1+n)`
-/

namespace A394425.P11981716307478960613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A382425 (1 + n) : ℤ)

end

end A394425.P11981716307478960613

namespace A394425

/-- `2^A382425(1+n)` -/
def P11981716307478960613.Spec : Prop :=
  ∀ n, P11981716307478960613.a n = (A394425 (n + 1) : ℚ)

end A394425

/-! ## A394425.P17921100599879902750

`∏{e}[A382902(1+n), #]`
-/

namespace A394425.P17921100599879902750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382902 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A394425.P17921100599879902750

namespace A394425

/-- `∏{e}[A382902(1+n), #]` -/
def P17921100599879902750.Spec : Prop :=
  ∀ n, (P17921100599879902750.a n : ℤ) = A394425 (n + 1)

end A394425

/-! ## A394425.P6010247578546611112

`2^∑{e}[∏{e}[A046100(n+1), #], #]`
-/

namespace A394425.P6010247578546611112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A394425.P6010247578546611112

namespace A394425

/-- `2^∑{e}[∏{e}[A046100(n+1), #], #]` -/
def P6010247578546611112.Spec : Prop :=
  ∀ n, (P6010247578546611112.a n : ℤ) = A394425 (n + 1)

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

/-! ## A394426.P14133543160136012842

`A003602(A368474(1+n)+1)`
-/

namespace A394426.P14133543160136012842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A368474 (1 + n) + 1).toNat

end

end A394426.P14133543160136012842

namespace A394426

/-- `A003602(A368474(1+n)+1)` -/
def P14133543160136012842.Spec : Prop :=
  ∀ n, P14133543160136012842.a n = A394426 (n + 1)

end A394426

/-! ## A394426.P12733042886968398876

`filter[A049419(n+1), gcd(2, #)]`
-/

namespace A394426.P12733042886968398876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.gcd 2 (f1 j) = 1) n)

end

end A394426.P12733042886968398876

namespace A394426

/-- `filter[A049419(n+1), gcd(2, #)]` -/
def P12733042886968398876.Spec : Prop :=
  ∀ n, P12733042886968398876.a n = A394426 (n + 1)

end A394426

/-! ## A394426.P10275171891594118007

`A049419(record[A386469(n+1)])`
-/

namespace A394426.P10275171891594118007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A394426.P10275171891594118007

namespace A394426

/-- `A049419(record[A386469(n+1)])` -/
def P10275171891594118007.Spec : Prop :=
  ∀ n, P10275171891594118007.a n = A394426 (n + 1)

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

The programs for A394433, the canonical program `A394433.P11188259402985535920` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394433 has offset 1).

The definition of A394433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394433.P11188259402985535920

`eq[2, A073811(1+n)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A394433

/-- `eq[2, A073811(1+n)]+1` -/
def P11188259402985535920.Spec : Prop :=
  ∀ n, (P11188259402985535920.a n : ℤ) = A394433 (n + 1)

theorem P11188259402985535920.correct : P11188259402985535920.Spec := by
  intro n
  simp only [A394433, Nat.add_sub_cancel]

end A394433

/-! ## A394433.P17275963081849922988

`eq[1, A001222(A009195(n+1))]+1`
-/

namespace A394433.P17275963081849922988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A009195 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A394433.P17275963081849922988

namespace A394433

/-- `eq[1, A001222(A009195(n+1))]+1` -/
def P17275963081849922988.Spec : Prop :=
  ∀ n, (P17275963081849922988.a n : ℤ) = A394433 (n + 1)

end A394433

/-! ## A394433.P16919484475623077909

`eq[2, A000005(A009195(n+2))]+2`
-/

namespace A394433.P16919484475623077909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009195 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A394433.P16919484475623077909

namespace A394433

/-- `eq[2, A000005(A009195(n+2))]+2` -/
def P16919484475623077909.Spec : Prop :=
  ∀ n, (P16919484475623077909.a n : ℤ) = A394433 (n + 1)

end A394433

/-! ## A394433.P8279186190698138459

`lt[A373153(A073811(n+1)!+1), 0]+1`
-/

namespace A394433.P8279186190698138459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (Nat.factorial (A073811 (n + 1)).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A394433.P8279186190698138459

namespace A394433

/-- `lt[A373153(A073811(n+1)!+1), 0]+1` -/
def P8279186190698138459.Spec : Prop :=
  ∀ n, (P8279186190698138459.a n : ℤ) = A394433 (n + 1)

end A394433

/-! ## A394433.P2953044265714343715

`lt[0, A147973(A140185(n))]`
-/

namespace A394433.P2953044265714343715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147973 (A140185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A394433.P2953044265714343715

namespace A394433

/-- `lt[0, A147973(A140185(n))]` -/
def P2953044265714343715.Spec : Prop :=
  ∀ n, (P2953044265714343715.a n : ℤ) = A394433 (n + 1)

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

/-! ## A394436.P16874826799531947870

`C(row(n), col(n))*A397647(n)`
-/

namespace A394436.P16874826799531947870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A397647 n

end

end A394436.P16874826799531947870

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

/-! ## A394438.P3730484448458416217

`lcm(A125668(A298636(n+1)), A364310(n))`
-/

namespace A394438.P3730484448458416217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A125668 (A298636 (n + 1)).toNat) (A364310 n)

end

end A394438.P3730484448458416217

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

/-! ## A394440.P8139297434527920858

`A003002(A005190(n))*A038119(n+1)`
-/

namespace A394440.P8139297434527920858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A005190 n).toNat * A038119 (n + 1)

end

end A394440.P8139297434527920858

/-!
# A394441: a(n) = Sum_{k=0..n} Sum_{j=0..k} (-1)^(k - j)*binomial(k, j)*j^(n - k)*2^j. Row sums of A394444.

The programs for A394441, there is no canonical definition to state claims against.
-/

/-! ## A394441.P16690842633830848235

`A356065(A057513(n))`
-/

namespace A394441.P16690842633830848235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356065 (A057513 n).toNat

end

end A394441.P16690842633830848235

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

/-! ## A394444.P14054678780535612010

`A003650(A119133(n+1))*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1, a(1)=0`
-/

namespace A394444.P14054678780535612010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A003650 (A119133 (n + 1)).toNat * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n

end

end A394444.P14054678780535612010

/-! ## A394444.P43323933664800897

`A122542(n)+A058348(A157152(n))`
-/

namespace A394444.P43323933664800897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n + A058348 (A157152 n).toNat

end

end A394444.P43323933664800897

/-! ## A394444.P1720036780953062018

`A122542(n)+A034331(A185651(n))`
-/

namespace A394444.P1720036780953062018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n + A034331 (A185651 n).toNat

end

end A394444.P1720036780953062018

/-! ## A394444.P12798425919859106954

`A122542(n)+A058348(A176420(n))`
-/

namespace A394444.P12798425919859106954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n + A058348 (A176420 n).toNat

end

end A394444.P12798425919859106954

/-! ## A394444.P13469548641771698225

`A129308(A157149(n))+A122542(n)`
-/

namespace A394444.P13469548641771698225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (A157149 n).toNat + A122542 n

end

end A394444.P13469548641771698225

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

/-! ## A394447.P2064906304348394210

`A080546(floor(A219050(n+1)/A066872(n+1)))`
-/

namespace A394447.P2064906304348394210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080546 ⌊(A219050 (n + 1) : ℚ) / (A066872 (n + 1) : ℚ)⌋.toNat

end

end A394447.P2064906304348394210

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

/-! ## A394449.P10484572286742508365

`Δ[2^((n²-n)/2)-A123081(∑[n])]`
-/

namespace A394449.P10484572286742508365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 : ℝ) - (A123081 (∑ j ∈ Finset.range (n + 1), f2 j) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394449.P10484572286742508365

namespace A394449

/-- `Δ[2^((n²-n)/2)-A123081(∑[n])]` -/
def P10484572286742508365.Spec : Prop :=
  ∀ n, P10484572286742508365.a n = (A394449 n : ℝ)

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

/-! ## A394449.P1769142812872212489

`Δ[A202534(A158821(C(n+1, 2)))]`
-/

namespace A394449.P1769142812872212489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202534 (A158821 (Nat.choose (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394449.P1769142812872212489

namespace A394449

/-- `Δ[A202534(A158821(C(n+1, 2)))]` -/
def P1769142812872212489.Spec : Prop :=
  ∀ n, P1769142812872212489.a n = A394449 n

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

/-! ## A394450.P2770378246931349368

`A000040(A111040(n+1))%A277284(n+1)`
-/

namespace A394450.P2770378246931349368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A111040 (n + 1)).toNat) (A277284 (n + 1))

end

end A394450.P2770378246931349368

/-! ## A394450.P12342680446914217765

`A000040(A282429(n+1)%A162817(n+1))`
-/

namespace A394450.P12342680446914217765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A282429 (n + 1)) (A162817 (n + 1))).toNat

end

end A394450.P12342680446914217765

/-! ## A394450.P8329076507945364956

`A000040(A356449(n+1)%A128069(n+1))`
-/

namespace A394450.P8329076507945364956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A356449 (n + 1)) (A128069 (n + 1))).toNat

end

end A394450.P8329076507945364956

/-!
# A394452: Greater of two consecutive numbers of the form 2^i*5^j with i, j >= 0, that are coprime.

The programs for A394452, there is no canonical definition to state claims against.
-/

/-! ## A394452.P3475062075206696125

`A373735(A000272(n)*A118317(2*(n+1)))`
-/

namespace A394452.P3475062075206696125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373735 (A000272 n * A118317 (2 * (n + 1))).toNat

end

end A394452.P3475062075206696125

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

/-! ## A394454.P3846511620177477976

`2+A008472(A001790(n+1))`
-/

namespace A394454.P3846511620177477976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A008472 (A001790 (n + 1)).toNat

end

end A394454.P3846511620177477976

namespace A394454

/-- `2+A008472(A001790(n+1))` -/
def P3846511620177477976.Spec : Prop :=
  ∀ n, P3846511620177477976.a n = A394454 (n + 1)

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

/-!
# A394462: Number of graphs with n vertices that have no induced regular subgraph of order 6.

The programs for A394462, there is no canonical definition to state claims against.
-/

/-! ## A394462.P1551193336798178369

`A392636(n+1)+A122841(A000272(n))`
-/

namespace A394462.P1551193336798178369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392636 (n + 1) + A122841 (A000272 n).toNat

end

end A394462.P1551193336798178369

/-! ## A394462.P1818899402078564472

`or(A174903(A303033(n)), A392636(n+1))`
-/

namespace A394462.P1818899402078564472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A174903 (A303033 n).toNat) (A392636 (n + 1))

end

end A394462.P1818899402078564472

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

The programs for A394471, the canonical program `A394471.P336955902272775666` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394471 has offset 1).

The definition of A394471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394471.P336955902272775666

`∩[A048448(n)-1, A000040(n+3)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A394471

/-- `∩[A048448(n)-1, A000040(n+3)]` -/
def P336955902272775666.Spec : Prop :=
  ∀ n, (P336955902272775666.a n : ℤ) = A394471 (n + 1)

theorem P336955902272775666.correct : P336955902272775666.Spec := by
  intro n
  simp only [A394471, Nat.add_sub_cancel]

end A394471

/-! ## A394471.P9446346762001445304

`∩[A006093(n+1)+A000040(n+3), A000040(n+1)]`
-/

namespace A394471.P9446346762001445304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000040 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394471.P9446346762001445304

namespace A394471

/-- `∩[A006093(n+1)+A000040(n+3), A000040(n+1)]` -/
def P9446346762001445304.Spec : Prop :=
  ∀ n, (P9446346762001445304.a n : ℤ) = A394471 (n + 1)

end A394471

/-! ## A394471.P17004199441586403216

`∩[A045344(n+1)+A006093(n+4), A045344(n+1)]`
-/

namespace A394471.P17004199441586403216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) + A006093 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394471.P17004199441586403216

namespace A394471

/-- `∩[A045344(n+1)+A006093(n+4), A045344(n+1)]` -/
def P17004199441586403216.Spec : Prop :=
  ∀ n, (P17004199441586403216.a n : ℤ) = A394471 (n + 1)

end A394471

/-! ## A394471.P10470500725641633958

`∩[A048448(n+4)-1, A140826(n+1)]`
-/

namespace A394471.P10470500725641633958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 4) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394471.P10470500725641633958

namespace A394471

/-- `∩[A048448(n+4)-1, A140826(n+1)]` -/
def P10470500725641633958.Spec : Prop :=
  ∀ n, (P10470500725641633958.a n : ℤ) = A394471 (n + 1)

end A394471

/-! ## A394471.P3745572629906372434

`filter[A006093(n+3)+A000040(n+1), A010051(#)]`
-/

namespace A394471.P3745572629906372434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 3) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A394471.P3745572629906372434

namespace A394471

/-- `filter[A006093(n+3)+A000040(n+1), A010051(#)]` -/
def P3745572629906372434.Spec : Prop :=
  ∀ n, P3745572629906372434.a n = A394471 (n + 1)

end A394471

/-!
# A394475: Number of distinct primes not dividing n that are adjacent to a divisor of n.

The programs for A394475, there is no canonical definition to state claims against.
-/

/-! ## A394475.P17010359100307662718

`A055642(A000005(n+1)^A356224(n+1))`
-/

namespace A394475.P17010359100307662718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A000005 (n + 1) : ℚ) ^ (A356224 (n + 1) : ℤ))).toNat

end

end A394475.P17010359100307662718

/-! ## A394475.P8710529140866159188

`A055642(A356224(n+1)^A064097(n+3))`
-/

namespace A394475.P8710529140866159188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A356224 (n + 1) : ℚ) ^ (A064097 (n + 3) : ℤ))).toNat

end

end A394475.P8710529140866159188

/-! ## A394475.P7230770813403606168

`A055642(A034836(2*(n+1))^A356224(n+1))`
-/

namespace A394475.P7230770813403606168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A034836 (2 * (n + 1)) : ℚ) ^ (A356224 (n + 1) : ℤ))).toNat

end

end A394475.P7230770813403606168

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
# A394479: Number of tilings of an n X n square using 1 X 1 squares (monominoes) and stairs hexominoes.

The programs for A394479, there is no canonical definition to state claims against.
-/

/-! ## A394479.P541958509973556731

`A394243(A394221(n+1)-A373671(n+1))`
-/

namespace A394479.P541958509973556731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394243 (A394221 (n + 1) - A373671 (n + 1)).toNat

end

end A394479.P541958509973556731

/-!
# A394481: a(n) = usigma(n) + tau(n) - tau(rad(n)).

The programs for A394481, the canonical program `A394481.P10475431677930788014` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394481 has offset 1).

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

The canonical program, it is in `Seq.B006.C002`.
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
  simp only [A394481, Nat.add_sub_cancel, A394481.P1813443253736398081.a, A394481.P10475431677930788014.a, A000005, A000005.P16091521709108585461.a, A007503, A007503.P13484425310514315912.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P10900256174600810407.f1, A034448.P10900256174600810407.a, A395435, A395435.P18346761836883339857.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A051731, A051731.P11318043630102858095.a, A384050, A384050.P7808103291810137926.a, A000007, A000007.P6599383543502402472.a, A000010, A000010.P4673923239450215316.a, A048158, A048158.P1757030368331788429.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A394481

/-! ## A394481.P4195996256722643622

`A048105(n+1)+A345451(1+n)+1`
-/

namespace A394481.P4195996256722643622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + (A345451 (1 + n) + 1)

end

end A394481.P4195996256722643622

namespace A394481

/-- `A048105(n+1)+A345451(1+n)+1` -/
def P4195996256722643622.Spec : Prop :=
  ∀ n, P4195996256722643622.a n = A394481 (n + 1)

end A394481

/-! ## A394481.P9558468247394851302

`A034448(n+1)+∑{d}[n+1, A107078(#)]`
-/

namespace A394481.P9558468247394851302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A107078 d

end

end A394481.P9558468247394851302

namespace A394481

/-- `A034448(n+1)+∑{d}[n+1, A107078(#)]` -/
def P9558468247394851302.Spec : Prop :=
  ∀ n, P9558468247394851302.a n = A394481 (n + 1)

end A394481

/-! ## A394481.P13582457823865242899

`A048105(n+1)+∑{d}[n+1, A254503(#)]`
-/

namespace A394481.P13582457823865242899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A254503 d

end

end A394481.P13582457823865242899

namespace A394481

/-- `A048105(n+1)+∑{d}[n+1, A254503(#)]` -/
def P13582457823865242899.Spec : Prop :=
  ∀ n, P13582457823865242899.a n = A394481 (n + 1)

end A394481

/-! ## A394481.P9136248609253088339

`A048105(n+1)+A129468(n+1)+2*(n+1)`
-/

namespace A394481.P9136248609253088339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + (A129468 (n + 1) + (2 * (n + 1) : ℤ))

end

end A394481.P9136248609253088339

namespace A394481

/-- `A048105(n+1)+A129468(n+1)+2*(n+1)` -/
def P9136248609253088339.Spec : Prop :=
  ∀ n, P9136248609253088339.a n = A394481 (n + 1)

end A394481

/-! ## A394481.P1194706181439777869

`A034448(n+1)+∏{e}[n+1, #+1]-A034444(n+1)`
-/

namespace A394481.P1194706181439777869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A034444 (n + 1))

end

end A394481.P1194706181439777869

namespace A394481

/-- `A034448(n+1)+∏{e}[n+1, #+1]-A034444(n+1)` -/
def P1194706181439777869.Spec : Prop :=
  ∀ n, P1194706181439777869.a n = A394481 (n + 1)

end A394481

/-! ## A394481.P357348389335625768

`A034448(n+1)+A000005(n+1)-A034444(n+1)`
-/

namespace A394481.P357348389335625768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A000005 (n + 1) - A034444 (n + 1))

end

end A394481.P357348389335625768

namespace A394481

/-- `A034448(n+1)+A000005(n+1)-A034444(n+1)` -/
def P357348389335625768.Spec : Prop :=
  ∀ n, P357348389335625768.a n = A394481 (n + 1)

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
  simp only [A394481, Nat.add_sub_cancel, A394481.P5526202433599525160.a, A394481.P10475431677930788014.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P10900256174600810407.f1, A034448.P10900256174600810407.a, A395435, A395435.P18346761836883339857.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A051731, A051731.P11318043630102858095.a, A384050, A384050.P7808103291810137926.a, A000007, A000007.P6599383543502402472.a, A000010, A000010.P4673923239450215316.a, A048158, A048158.P1757030368331788429.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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

/-! ## A394484.P5986893312707413242

`A126759(lt[A086361(n+1), A166049(3*n+5)])`
-/

namespace A394484.P5986893312707413242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166049 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A394484.P5986893312707413242

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
# A394489: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + 5*x)^(2/5) ).

The programs for A394489, there is no canonical definition to state claims against.
-/

/-! ## A394489.P7287637660131151792

`A138253(n+1)*A204021(A363142(n))`
-/

namespace A394489.P7287637660131151792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138253 (n + 1) * A204021 (A363142 n).toNat

end

end A394489.P7287637660131151792

/-!
# A394491: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + 5*x)^(4/5) ).

The programs for A394491, there is no canonical definition to state claims against.
-/

/-! ## A394491.P5782940477500350548

`A333219(A261584(∑[n]))`
-/

namespace A394491.P5782940477500350548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A261584 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A394491.P5782940477500350548

/-!
# A394492: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - 3*x)^(1/3) ).

The programs for A394492, there is no canonical definition to state claims against.
-/

/-! ## A394492.P14377428049031232668

`A384256(n)/(1+n)`
-/

namespace A394492.P14377428049031232668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384256 n : ℚ) / (1 + n : ℚ)

end

end A394492.P14377428049031232668

/-! ## A394492.P5790283752802760053

`floor(A384256(n)/A008619(2*n))`
-/

namespace A394492.P5790283752802760053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A384256 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A394492.P5790283752802760053

/-! ## A394492.P1702150619559395600

`A384256(n)*A394494(n)/A384258(n)`
-/

namespace A394492.P1702150619559395600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384256 n * A394494 n : ℚ) / (A384258 n : ℚ)

end

end A394492.P1702150619559395600

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

/-! ## A394494.P3927877181906549571

`floor(A384258(n)/A008619(2*n))`
-/

namespace A394494.P3927877181906549571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A384258 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A394494.P3927877181906549571

/-! ## A394494.P3796412832803160346

`A384258(n)*A394492(n)/A384256(n)`
-/

namespace A394494.P3796412832803160346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384258 n * A394492 n : ℚ) / (A384256 n : ℚ)

end

end A394494.P3796412832803160346

/-! ## A394494.P3653941005529094414

`A370915(2*(n+1)²)/(n+1)`
-/

namespace A394494.P3653941005529094414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370915 (2 * (n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A394494.P3653941005529094414

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

/-! ## A394497.P7663501200244194391

`(n+1)/(2/3)^val(n+1, 2)`
-/

namespace A394497.P7663501200244194391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((2 : ℚ) / 3) ^ SequenceMachineLib.valuation (n + 1) 2

end

end A394497.P7663501200244194391

namespace A394497

/-- `(n+1)/(2/3)^val(n+1, 2)` -/
def P7663501200244194391.Spec : Prop :=
  ∀ n, P7663501200244194391.a n = (A394497 (n + 1) : ℚ)

end A394497

/-! ## A394497.P10336649187865640381

`1+2*A085062(n)`
-/

namespace A394497.P10336649187865640381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A085062 n

end

end A394497.P10336649187865640381

namespace A394497

/-- `1+2*A085062(n)` -/
def P10336649187865640381.Spec : Prop :=
  ∀ n, P10336649187865640381.a n = A394497 (n + 1)

theorem P10336649187865640381.correct : P10336649187865640381.Spec := by
  intro n
  simp only [A394497, Nat.add_sub_cancel, A394497.P10336649187865640381.a, A394497.P5937869929885374420.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

/-! ## A394498.P16727579229827046247

`A060384(2*A149888(n))`
-/

namespace A394498.P16727579229827046247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (2 * A149888 n).toNat

end

end A394498.P16727579229827046247

/-! ## A394498.P18182991029664961570

`A192728(n)+A005088(A000142(n))`
-/

namespace A394498.P18182991029664961570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192728 n + A005088 (A000142 n).toNat

end

end A394498.P18182991029664961570

/-! ## A394498.P14708805244775202767

`A192728(n)+A185063(A320797(n))`
-/

namespace A394498.P14708805244775202767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192728 n + A185063 (A320797 n).toNat

end

end A394498.P14708805244775202767

/-! ## A394498.P10865302300923060888

`A181734(n)-A050924(A304976(n))`
-/

namespace A394498.P10865302300923060888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181734 n - A050924 (A304976 n).toNat

end

end A394498.P10865302300923060888

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

/-! ## A394499.P4503611231392577137

`gcd(2*(n²+1), C(2, n+2))-Δ[ceil(n/2)]`
-/

namespace A394499.P4503611231392577137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * (n ^ 2 + 1)) (Nat.choose 2 (n + 2)) : ℤ) - (f1 (n + 1) - f1 n)

end

end A394499.P4503611231392577137

namespace A394499

/-- `gcd(2*(n²+1), C(2, n+2))-Δ[ceil(n/2)]` -/
def P4503611231392577137.Spec : Prop :=
  ∀ n, P4503611231392577137.a n = A394499 (n + 1)

end A394499

/-! ## A394499.P8091478946388982362

`A005893(n)-log2(gcd(2, n))`
-/

namespace A394499.P8091478946388982362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005893 n : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A394499.P8091478946388982362

namespace A394499

/-- `A005893(n)-log2(gcd(2, n))` -/
def P8091478946388982362.Spec : Prop :=
  ∀ n, P8091478946388982362.a n = (A394499 (n + 1) : ℝ)

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

/-! ## A394499.P4472446357045143497

`A133263(2*n)-or(1, n)`
-/

namespace A394499.P4472446357045143497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (2 * n) - (Nat.lor 1 n : ℤ)

end

end A394499.P4472446357045143497

namespace A394499

/-- `A133263(2*n)-or(1, n)` -/
def P4472446357045143497.Spec : Prop :=
  ∀ n, P4472446357045143497.a n = A394499 (n + 1)

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

