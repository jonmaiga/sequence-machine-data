import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A249400: Numbers n such that n!3 + 3 is prime, where n!3 = n!!! is a triple factorial number (A007661).

The programs for A249400, there is no canonical definition to state claims against.
-/

/-! ## A249400.P5495721834922188977

`lt[A326459(n)+4, A093395(n+3)]`
-/

namespace A249400.P5495721834922188977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326459 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093395 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249400.P5495721834922188977

/-!
# A249402: The number of 3-alternating permutations of [n].

The programs for A249402, there is no canonical definition to state claims against.
-/

/-! ## A249402.P4231373561027671232

`A250261(∑[n+3]+n+3)`
-/

namespace A249402.P4231373561027671232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A249402.P4231373561027671232

/-! ## A249402.P3270078829823801528

`A368070(A155803(n+1))`
-/

namespace A249402.P3270078829823801528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368070 (A155803 (n + 1)).toNat

end

end A249402.P3270078829823801528

/-! ## A249402.P10733873704858171200

`A060351(A200310(2*n+1)-A000225(n))`
-/

namespace A249402.P10733873704858171200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A200310 (2 * n + 1) - A000225 n).toNat

end

end A249402.P10733873704858171200

/-!
# A249404: Number of ISO 8601 weeks associated with the Gregorian year n.

The programs for A249404, there is no canonical definition to state claims against.
-/

/-! ## A249404.P7949314100012007730

`Δ[A248187(Δ[A139272(n)])]`
-/

namespace A249404.P7949314100012007730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139272 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248187 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249404.P7949314100012007730

/-! ## A249404.P3028642316732041181

`Δ[A248187(A017101(2*n))]`
-/

namespace A249404.P3028642316732041181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248187 (A017101 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249404.P3028642316732041181

/-! ## A249404.P898910510968435863

`A046951(A043036(n+1))+51`
-/

namespace A249404.P898910510968435863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A043036 (n + 1)).toNat + 51

end

end A249404.P898910510968435863

/-! ## A249404.P5639510384996810135

`A327109(val(A248983(3*n+1), A014682(n+4))+1)`
-/

namespace A249404.P5639510384996810135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327109 (SequenceMachineLib.valuation (A248983 (3 * n + 1)).toNat (A014682 (n + 4)).toNat + 1)

end

end A249404.P5639510384996810135

/-! ## A249404.P7934391916450047412

`53-A181632(A181625(n+1))`
-/

namespace A249404.P7934391916450047412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  53 - A181632 (A181625 (n + 1)).toNat

end

end A249404.P7934391916450047412

/-!
# A249406: Start with a(1) = 1, and extend by the rule that the next term is the product of the two most recent non-terms of the sequence.

The programs for A249406, there is no canonical definition to state claims against.
-/

/-! ## A249406.P5869478443542179576

`A360598(3*n+1)`
-/

namespace A249406.P5869478443542179576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360598 (3 * n + 1)

end

end A249406.P5869478443542179576

/-! ## A249406.P7247592939042312152

`record[A360598(A265428(n))]`
-/

namespace A249406.P7247592939042312152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360598 (A265428 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249406.P7247592939042312152

/-! ## A249406.P8124861697711395066

`record[A360598(A001651(n+1))]`
-/

namespace A249406.P8124861697711395066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360598 (A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249406.P8124861697711395066

/-! ## A249406.P9288771831681559312

`record[A048671(A360598(n+1))]`
-/

namespace A249406.P9288771831681559312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A360598 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249406.P9288771831681559312

/-! ## A249406.P15120778750414678153

`A179278(record[A360598(n+3)])`
-/

namespace A249406.P15120778750414678153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360598 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179278 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249406.P15120778750414678153

/-!
# A249407: Numbers not in A249406.

The programs for A249407, there is no canonical definition to state claims against.
-/

/-! ## A249407.P9761662700843828371

`comp[A008683(n+1)*A133153(n)]`
-/

namespace A249407.P9761662700843828371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A133153 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249407.P9761662700843828371

/-! ## A249407.P3775583779509044966

`comp[A192016(n+1)+A192000(n+1)]`
-/

namespace A249407.P3775583779509044966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192016 (n + 1) + A192000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249407.P3775583779509044966

/-! ## A249407.P8690881128747744488

`comp[A046523(A272225(2*(n+2)))-(2-n)²]`
-/

namespace A249407.P8690881128747744488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A272225 (2 * (n + 2))).toNat - (2 - (n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249407.P8690881128747744488

/-!
# A249408: Numbers in A249406 that are not of the form m*(m+1).

The programs for A249408, there is no canonical definition to state claims against.
-/

/-! ## A249408.P17151467391914082177

`filter[A249406(n+1), A322980(#)]`
-/

namespace A249408.P17151467391914082177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A249408.P17151467391914082177

/-!
# A249409: E.g.f.: Sum_{n>=0} x^n * (exp(n*x) - 1)^n.

The programs for A249409, there is no canonical definition to state claims against.
-/

/-! ## A249409.P6170943643946443683

`xor(n, A091613(A130293(n+1)))`
-/

namespace A249409.P6170943643946443683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A091613 (A130293 (n + 1)).toNat)

end

end A249409.P6170943643946443683

/-! ## A249409.P18377557436287826523

`A001399(n)*A120697(A002137(n))`
-/

namespace A249409.P18377557436287826523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n * A120697 (A002137 n).toNat

end

end A249409.P18377557436287826523

/-!
# A249410: Primes p such that sigma(p-1) is odd.

The programs for A249410, there is no canonical definition to state claims against.
-/

/-! ## A249410.P7459395892880587182

`∪[A002496(n+1), A090698(n+1)]`
-/

namespace A249410.P7459395892880587182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249410.P7459395892880587182

/-! ## A249410.P5684404043995759346

`∪[A090698(n+1), A163588(n+1)]`
-/

namespace A249410.P5684404043995759346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249410.P5684404043995759346

/-! ## A249410.P15004570867778991995

`∪[A005574(n+1)²+1, A090698(n+1)]`
-/

namespace A249410.P15004570867778991995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249410.P15004570867778991995

/-! ## A249410.P7423663302199614457

`∪[2*A089001(n+1)²+1, A193558(n)+a(n-1)]` with `a(0)=2`
-/

namespace A249410.P7423663302199614457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089001 (n + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A193558 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249410.P7423663302199614457

/-! ## A249410.P7853630835117052380

`∪[(A089593(n+1)+1)²+1, A236767(n+1)+A089001(n+1)²]`
-/

namespace A249410.P7853630835117052380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089593 (n + 1) + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236767 (n + 1) + A089001 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249410.P7853630835117052380

/-! ## A249410.P1167327639573483305

`p?[∪[2*n², n²]+1]`
-/

namespace A249410.P1167327639573483305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A249410.P1167327639573483305

/-! ## A249410.P8841709555245206300

`p?[A028982(n+1)+1]`
-/

namespace A249410.P8841709555245206300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249410.P8841709555245206300

/-! ## A249410.P13093703078945125468

`record[A006530(A028982(n+1)+1)]`
-/

namespace A249410.P13093703078945125468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028982 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249410.P13093703078945125468

/-!
# A249411: Oblong numbers in A249407.

The programs for A249411, there is no canonical definition to state claims against.
-/

/-! ## A249411.P8216807842818970970

`A002378(∑[A014675(A143658(n))])`
-/

namespace A249411.P8216807842818970970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A143658 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249411.P8216807842818970970

/-! ## A249411.P3929837912202622665

`(2*(n+1)-record[A109036(n)])*2*(2*n+1)`
-/

namespace A249411.P3929837912202622665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) * (2 * (2 * n + 1) : ℤ)

end

end A249411.P3929837912202622665

/-! ## A249411.P3316614567362055676

`(A036987((2*n+1)*30*C(n, 3))+n)*(4*n+2)`
-/

namespace A249411.P3316614567362055676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036987 ((2 * n + 1) * (30 * Nat.choose n 3)) + (n : ℤ)) * (4 * n + 2 : ℤ)

end

end A249411.P3316614567362055676

/-! ## A249411.P3327990957102236932

`(2*n+1)*A064289(A008776(n))`
-/

namespace A249411.P3327990957102236932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A064289 (A008776 n).toNat

end

end A249411.P3327990957102236932

/-! ## A249411.P18353905966502726733

`A002378(ceil(log2(A332290(3*n+2))))`
-/

namespace A249411.P18353905966502726733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 ⌈Real.logb 2 (A332290 (3 * n + 2) : ℝ)⌉.toNat

end

end A249411.P18353905966502726733

/-!
# A249413: Primes in the hexanacci numbers sequence A000383.

The programs for A249413, there is no canonical definition to state claims against.
-/

/-! ## A249413.P15349283713426004083

`A000383(A247192(n+1))`
-/

namespace A249413.P15349283713426004083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000383 (A247192 (n + 1)).toNat

end

end A249413.P15349283713426004083

/-!
# A249416: a(n) = core(Sum_{i=0,...,n} core(binomial(n,i))), where core(n) = A007913(n).

The programs for A249416, the canonical program `A249416.P6446667695295982477` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249416 has offset 0).

The definition of A249416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007913(∑{#}[n-0, A007913(C(n, #))])` (program `A249416.P6446667695295982477`, by `A249416.P6446667695295982477.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249416.P6446667695295982477

`A007913(∑{#}[n-0, A007913(C(n, #))])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A249416

/-- `A007913(∑{#}[n-0, A007913(C(n, #))])` -/
def P6446667695295982477.Spec : Prop :=
  ∀ n, P6446667695295982477.a n = A249416 n

theorem P6446667695295982477.correct : P6446667695295982477.Spec := by
  intro n
  simp only [A249416]

end A249416

/-! ## A249416.P1731584470399216753

`A007913(∑{#}[n-0, A007913(C(n, #+0))])`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249416.P1731584470399216753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ k ∈ Finset.range (f1 n + 1).toNat, A007913 (Nat.choose n (k + 0))).toNat

end

end A249416.P1731584470399216753

namespace A249416

/-- `A007913(∑{#}[n-0, A007913(C(n, #+0))])` -/
def P1731584470399216753.Spec : Prop :=
  ∀ n, P1731584470399216753.a n = A249416 n

theorem P1731584470399216753.correct : P1731584470399216753.Spec := by
  intro n
  simp only [A249416, Nat.add_sub_cancel, A249416.P1731584470399216753.f1, A249416.P1731584470399216753.a, A249416.P6446667695295982477.f1, A249416.P6446667695295982477.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A249416

/-! ## A249416.P16517424704618555298

`A265844(A053615(n)^A225640(3*n+1))`
-/

namespace A249416.P16517424704618555298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265844 (SequenceMachineLib.roundAway ((A053615 n : ℚ) ^ (A225640 (3 * n + 1) : ℤ))).toNat

end

end A249416.P16517424704618555298

namespace A249416

/-- `A265844(A053615(n)^A225640(3*n+1))` -/
def P16517424704618555298.Spec : Prop :=
  ∀ n, P16517424704618555298.a n = A249416 n

end A249416

/-! ## A249416.P10834627055118435482

`A377063(A048398(n+1))+A355745(3*n+2)`
-/

namespace A249416.P10834627055118435482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (A048398 (n + 1)).toNat + A355745 (3 * n + 2)

end

end A249416.P10834627055118435482

namespace A249416

/-- `A377063(A048398(n+1))+A355745(3*n+2)` -/
def P10834627055118435482.Spec : Prop :=
  ∀ n, P10834627055118435482.a n = A249416 n

end A249416

/-!
# A249419: Least prime p>=prime(n) such that p + 2 == 0 (mod prime(n)).

The programs for A249419, there is no canonical definition to state claims against.
-/

/-! ## A249419.P14320629234690275605

`p?[A007989(n)]*A249420(n+1)-2`
-/

namespace A249419.P14320629234690275605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A249420 (n + 1) - 2

end

end A249419.P14320629234690275605

/-! ## A249419.P18326620289121107164

`p?[A014681(n)]*A249420(n+1)-2`
-/

namespace A249419.P18326620289121107164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A249420 (n + 1) - 2

end

end A249419.P18326620289121107164

/-! ## A249419.P5794870723632604131

`A000040(1+n)*A249420(n+1)-2`
-/

namespace A249419.P5794870723632604131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + n) * A249420 (n + 1) - 2

end

end A249419.P5794870723632604131

/-! ## A249419.P850931016503231157

`record[A014963(n+2)]*A249420(n+1)-2`
-/

namespace A249419.P850931016503231157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A249420 (n + 1) - 2

end

end A249419.P850931016503231157

/-! ## A249419.P9773538858439698396

`(A008864(n+1)-1)*A249420(n+1)-2`
-/

namespace A249419.P9773538858439698396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A249420 (n + 1) - 2

end

end A249419.P9773538858439698396

/-! ## A249419.P2141515958143653069

`(A014692(n+1)+n)*A249420(n+1)-2`
-/

namespace A249419.P2141515958143653069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A249420 (n + 1) - 2

end

end A249419.P2141515958143653069

/-! ## A249419.P7251948466492664818

`p?[A091203(n)]*A249420(n+1)-2`
-/

namespace A249419.P7251948466492664818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A249420 (n + 1) - 2

end

end A249419.P7251948466492664818

/-! ## A249419.P1611847382265460378

`A289207(p?[A007989(n)]*A249420(n+1))`
-/

namespace A249419.P1611847382265460378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A249420 (n + 1)).toNat

end

end A249419.P1611847382265460378

/-!
# A249420: Least number m>1 such that m*prime(n)-2 is prime.

The programs for A249420, there is no canonical definition to state claims against.
-/

/-! ## A249420.P10814865489854557026

`(A249419(n+1)+2)/A000040(n+1)`
-/

namespace A249420.P10814865489854557026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249419 (n + 1) + 2 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A249420.P10814865489854557026

/-! ## A249420.P7230617616390620125

`floor(A249419(n+1)/A006093(n+1))`
-/

namespace A249420.P7230617616390620125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249419 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ)⌋

end

end A249420.P7230617616390620125

/-! ## A249420.P9213110278887349452

`(A249419(n+1)+2)/p?[A014681(n)]`
-/

namespace A249420.P9213110278887349452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249419 (n + 1) + 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A249420.P9213110278887349452

/-! ## A249420.P4624749524538340282

`(A249419(n+1)+2)/p?[A245057(n)]`
-/

namespace A249420.P4624749524538340282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249419 (n + 1) + 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A249420.P4624749524538340282

/-! ## A249420.P16831562210704391365

`(A249419(n+1)+2)/A008578(n+2)`
-/

namespace A249420.P16831562210704391365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249419 (n + 1) + 2 : ℚ) / (A008578 (n + 2) : ℚ)

end

end A249420.P16831562210704391365

/-! ## A249420.P8456583764025751031

`(A249419(n+1)+2)/p?[A004280(n+1)]`
-/

namespace A249420.P8456583764025751031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249419 (n + 1) + 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A249420.P8456583764025751031

/-! ## A249420.P18024212595919758126

`(A249419(n+1)+2)/record[A006530(n+2)]`
-/

namespace A249420.P18024212595919758126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249419 (n + 1) + 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A249420.P18024212595919758126

/-! ## A249420.P15563360649630025039

`floor(A249419(n+1)/eq[1, A001222(n+1)])`
-/

namespace A249420.P15563360649630025039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249419 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ)⌋

end

end A249420.P15563360649630025039

/-! ## A249420.P10500493945786886581

`(A249419(n+1)+2)/p?[A091203(n)]`
-/

namespace A249420.P10500493945786886581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249419 (n + 1) + 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A249420.P10500493945786886581

/-! ## A249420.P12455288739010268121

`A033676(A249419(n+1)+2)`
-/

namespace A249420.P12455288739010268121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A249419 (n + 1) + 2).toNat

end

end A249420.P12455288739010268121

/-!
# A249421: A(n,k) = exponent of the largest power of n-th prime which divides the product of the elements on row (k-1) of Pascal's triangle; a square array read by antidiagonals.

The programs for A249421, there is no canonical definition to state claims against.
-/

/-! ## A249421.P14589405617309057591

`A249422(∑[char[∑[n]]]²-n)`
-/

namespace A249421.P14589405617309057591
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249422 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A249421.P14589405617309057591

/-!
# A249422: Transpose of square array A249421.

The programs for A249422, there is no canonical definition to state claims against.
-/

/-! ## A249422.P18440284747037618589

`A249421(∑[char[∑[n]]]²-n)`
-/

namespace A249422.P18440284747037618589
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249421 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A249422.P18440284747037618589

/-!
# A249423: Integers k such that A249150(k) = k; integers k such that A249151(k) = k+1.

The programs for A249423, there is no canonical definition to state claims against.
-/

/-! ## A249423.P10332622511109451180

`eq[1, A249431(n)]`
-/

namespace A249423.P10332622511109451180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249423.P10332622511109451180

/-! ## A249423.P8232893906165265415

`eq[n+1, A249151(n)]`
-/

namespace A249423.P8232893906165265415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249423.P8232893906165265415

/-! ## A249423.P10973228621384816796

`eq[A006068(n), A006068(A249151(n)-1)]`
-/

namespace A249423.P10973228621384816796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A249151 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249423.P10973228621384816796

/-! ## A249423.P443185052198658907

`eq[A237616(n), A237616(A249151(n)-1)]`
-/

namespace A249423.P443185052198658907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 (A249151 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249423.P443185052198658907

/-! ## A249423.P11760799664277516729

`eq[A253885(A249151(n)-1), A253885(n)]`
-/

namespace A249423.P11760799664277516729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A249151 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249423.P11760799664277516729

/-! ## A249423.P11907306962083386116

`eq[1, A249151(n)-A057163(A057163(n))]`
-/

namespace A249423.P11907306962083386116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n - A057163 (A057163 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249423.P11907306962083386116

/-! ## A249423.P311176737175807394

`eq[n, A140106(2*A249151(n))]`
-/

namespace A249423.P311176737175807394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A249151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249423.P311176737175807394

/-! ## A249423.P11703513205225793912

`eq[n, A249738(2*A249151(n))]`
-/

namespace A249423.P11703513205225793912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A249151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249423.P11703513205225793912

/-! ## A249423.P5857884036580503402

`eq[n, A279119(2*A249151(n))]`
-/

namespace A249423.P5857884036580503402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A249151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249423.P5857884036580503402

/-! ## A249423.P15457927995411663763

`filter[A249429(n+1), A249431(#)]`
-/

namespace A249423.P15457927995411663763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A249431 (f1 j).toNat = 1) n)

end

end A249423.P15457927995411663763

/-! ## A249423.P12610065707185643096

`filter[A249434(n+1), A249431(#)]`
-/

namespace A249423.P12610065707185643096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A249431 (f1 j).toNat = 1) n)

end

end A249423.P12610065707185643096

/-!
# A249424: Odd integers n such that A249151(n) = (n-1)/2.

The programs for A249424, the canonical program `A249424.P3453167517950869908` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249424 has offset 1).

The definition of A249424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249424.P5371539907313038869

`1+2*A249428(1+n)`
-/

namespace A249424.P5371539907313038869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A249428 (1 + n)

end

end A249424.P5371539907313038869

namespace A249424

/-- `1+2*A249428(1+n)` -/
def P5371539907313038869.Spec : Prop :=
  ∀ n, P5371539907313038869.a n = A249424 (n + 1)

end A249424

/-! ## A249424.P11368829747834364927

`A005408(A249428(1+n))`
-/

namespace A249424.P11368829747834364927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A249428 (1 + n)).toNat

end

end A249424.P11368829747834364927

namespace A249424

/-- `A005408(A249428(1+n))` -/
def P11368829747834364927.Spec : Prop :=
  ∀ n, P11368829747834364927.a n = A249424 (n + 1)

end A249424

/-! ## A249424.P3497618509826043033

`A144396(A249428(n+1))`
-/

namespace A249424.P3497618509826043033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A249428 (n + 1)).toNat

end

end A249424.P3497618509826043033

namespace A249424

/-- `A144396(A249428(n+1))` -/
def P3497618509826043033.Spec : Prop :=
  ∀ n, P3497618509826043033.a n = A249424 (n + 1)

end A249424

/-! ## A249424.P189100093715727012

`eq[A004524(n), A249151(n)]`
-/

namespace A249424.P189100093715727012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P189100093715727012

namespace A249424

/-- `eq[A004524(n), A249151(n)]` -/
def P189100093715727012.Spec : Prop :=
  ∀ n, (P189100093715727012.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P2641028045580656930

`eq[A004526(n), A249151(n)]`
-/

namespace A249424.P2641028045580656930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P2641028045580656930

namespace A249424

/-- `eq[A004526(n), A249151(n)]` -/
def P2641028045580656930.Spec : Prop :=
  ∀ n, (P2641028045580656930.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P2424166116364320328

`eq[A071045(n), A249151(n)]`
-/

namespace A249424.P2424166116364320328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P2424166116364320328

namespace A249424

/-- `eq[A071045(n), A249151(n)]` -/
def P2424166116364320328.Spec : Prop :=
  ∀ n, (P2424166116364320328.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P11571448976661402728

`eq[A071281(n), A249151(n)]`
-/

namespace A249424.P11571448976661402728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P11571448976661402728

namespace A249424

/-- `eq[A071281(n), A249151(n)]` -/
def P11571448976661402728.Spec : Prop :=
  ∀ n, (P11571448976661402728.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P9855743747431910124

`eq[A130472(n), A249431(n)]`
-/

namespace A249424.P9855743747431910124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P9855743747431910124

namespace A249424

/-- `eq[A130472(n), A249431(n)]` -/
def P9855743747431910124.Spec : Prop :=
  ∀ n, (P9855743747431910124.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P7515071612913126510

`eq[A245710(n), A249151(n)]`
-/

namespace A249424.P7515071612913126510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P7515071612913126510

namespace A249424

/-- `eq[A245710(n), A249151(n)]` -/
def P7515071612913126510.Spec : Prop :=
  ∀ n, (P7515071612913126510.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P9165058314443885840

`eq[A249151(n), A300068(n)]`
-/

namespace A249424.P9165058314443885840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P9165058314443885840

namespace A249424

/-- `eq[A249151(n), A300068(n)]` -/
def P9165058314443885840.Spec : Prop :=
  ∀ n, (P9165058314443885840.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P1573405898269460308

`eq[A249151(n), A300293(n)]`
-/

namespace A249424.P1573405898269460308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P1573405898269460308

namespace A249424

/-- `eq[A249151(n), A300293(n)]` -/
def P1573405898269460308.Spec : Prop :=
  ∀ n, (P1573405898269460308.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P10462281849272890659

`eq[A140106(n+1), A249151(n)]`
-/

namespace A249424.P10462281849272890659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P10462281849272890659

namespace A249424

/-- `eq[A140106(n+1), A249151(n)]` -/
def P10462281849272890659.Spec : Prop :=
  ∀ n, (P10462281849272890659.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P13811970270036399297

`eq[A249151(n), A249738(n+1)]`
-/

namespace A249424.P13811970270036399297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P13811970270036399297

namespace A249424

/-- `eq[A249151(n), A249738(n+1)]` -/
def P13811970270036399297.Spec : Prop :=
  ∀ n, (P13811970270036399297.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P15125267541267604316

`eq[A249431(n), A270439(n+1)]`
-/

namespace A249424.P15125267541267604316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270439 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P15125267541267604316

namespace A249424

/-- `eq[A249431(n), A270439(n+1)]` -/
def P15125267541267604316.Spec : Prop :=
  ∀ n, (P15125267541267604316.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P9302609390129068384

`eq[A249151(n), A279119(n+1)]`
-/

namespace A249424.P9302609390129068384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P9302609390129068384

namespace A249424

/-- `eq[A249151(n), A279119(n+1)]` -/
def P9302609390129068384.Spec : Prop :=
  ∀ n, (P9302609390129068384.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P7100121397831029074

`eq[A249151(n), A377734(n+1)]`
-/

namespace A249424.P7100121397831029074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P7100121397831029074

namespace A249424

/-- `eq[A249151(n), A377734(n+1)]` -/
def P7100121397831029074.Spec : Prop :=
  ∀ n, (P7100121397831029074.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P3453167517950869908

`eq[A038548(n+1), A042970(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A249424

/-- `eq[A038548(n+1), A042970(n+1)]` -/
def P3453167517950869908.Spec : Prop :=
  ∀ n, (P3453167517950869908.a n : ℤ) = A249424 (n + 1)

theorem P3453167517950869908.correct : P3453167517950869908.Spec := by
  intro n
  simp only [A249424, Nat.add_sub_cancel]

end A249424

/-! ## A249424.P323492827774990138

`eq[A042970(n+1), A062362(n+1)]`
-/

namespace A249424.P323492827774990138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P323492827774990138

namespace A249424

/-- `eq[A042970(n+1), A062362(n+1)]` -/
def P323492827774990138.Spec : Prop :=
  ∀ n, (P323492827774990138.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P13515455988709668067

`eq[A042970(n+1), A115751(n+1)]`
-/

namespace A249424.P13515455988709668067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P13515455988709668067

namespace A249424

/-- `eq[A042970(n+1), A115751(n+1)]` -/
def P13515455988709668067.Spec : Prop :=
  ∀ n, (P13515455988709668067.a n : ℤ) = A249424 (n + 1)

end A249424

/-! ## A249424.P6022817829554675773

`eq[A023891(n+1), A137502(n+1)]`
-/

namespace A249424.P6022817829554675773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249424.P6022817829554675773

namespace A249424

/-- `eq[A023891(n+1), A137502(n+1)]` -/
def P6022817829554675773.Spec : Prop :=
  ∀ n, (P6022817829554675773.a n : ℤ) = A249424 (n + 1)

end A249424

/-!
# A249425: Positions of records in A249150 and A249151.

The programs for A249425, there is no canonical definition to state claims against.
-/

/-! ## A249425.P17831556480373083415

`A175524(n+1)-A118914(A062200(n+3))`
-/

namespace A249425.P17831556480373083415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175524 (n + 1) - A118914 (A062200 (n + 3)).toNat

end

end A249425.P17831556480373083415

/-! ## A249425.P11029056392228531997

`A000040(n+1)-A270644(A322622(n+5))`
-/

namespace A249425.P11029056392228531997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A270644 (A322622 (n + 5)).toNat

end

end A249425.P11029056392228531997

/-! ## A249425.P2001587098794683775

`record[A000010(n+1)]-A058840(A000013(n+1))`
-/

namespace A249425.P2001587098794683775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A058840 (A000013 (n + 1)).toNat

end

end A249425.P2001587098794683775

/-! ## A249425.P1462083040563167869

`A000040(n+1)-A070084(A344619(3*(n+1)))`
-/

namespace A249425.P1462083040563167869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A070084 (A344619 (3 * (n + 1))).toNat

end

end A249425.P1462083040563167869

/-! ## A249425.P5847699086379291537

`A000040(n+1)-A338945(A207540(2*(n+2)))`
-/

namespace A249425.P5847699086379291537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A338945 (A207540 (2 * (n + 2))).toNat

end

end A249425.P5847699086379291537

/-!
# A249426: Record values in A249150.

The programs for A249426, there is no canonical definition to state claims against.
-/

/-! ## A249426.P4370446326469122890

`A249427(n+1)-1`
-/

namespace A249426.P4370446326469122890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249427 (n + 1) - 1

end

end A249426.P4370446326469122890

/-! ## A249426.P486926729078170102

`A249150(A249425(n+1))`
-/

namespace A249426.P486926729078170102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249150 (A249425 (n + 1)).toNat

end

end A249426.P486926729078170102

/-! ## A249426.P11685881701679294838

`record[A249151(n)-1]`
-/

namespace A249426.P11685881701679294838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249426.P11685881701679294838

/-! ## A249426.P14346705433911300895

`record[A249431(1+n)+n]`
-/

namespace A249426.P14346705433911300895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 (1 + n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249426.P14346705433911300895

/-! ## A249426.P4001575797017497069

`record[n-(1-A249431(n))]`
-/

namespace A249426.P4001575797017497069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - A249431 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249426.P4001575797017497069

/-! ## A249426.P10626936057813860652

`A023443(record[A249151(n)])`
-/

namespace A249426.P10626936057813860652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249426.P10626936057813860652

/-! ## A249426.P12791199634161062236

`record[(A249151(A056239(n+1))+n)%(n+1)]`
-/

namespace A249426.P12791199634161062236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249151 (A056239 (n + 1)).toNat + (n : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249426.P12791199634161062236

/-! ## A249426.P8237176106392951983

`record[A249150(n)]`
-/

namespace A249426.P8237176106392951983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249426.P8237176106392951983

/-!
# A249427: Record values in A249151.

The programs for A249427, there is no canonical definition to state claims against.
-/

/-! ## A249427.P2257955650902265685

`A249426(n+1)+1`
-/

namespace A249427.P2257955650902265685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249426 (n + 1) + 1

end

end A249427.P2257955650902265685

/-! ## A249427.P5641260384453242484

`A249151(A249425(n+1))`
-/

namespace A249427.P5641260384453242484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 (A249425 (n + 1)).toNat

end

end A249427.P5641260384453242484

/-! ## A249427.P12483402788971661937

`record[A249151(n)]`
-/

namespace A249427.P12483402788971661937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249427.P12483402788971661937

/-! ## A249427.P3619080569621134365

`record[A249431(n)+n]`
-/

namespace A249427.P3619080569621134365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249427.P3619080569621134365

/-! ## A249427.P11836116257429495217

`record[1-(A024000(n)-A249431(n))]`
-/

namespace A249427.P11836116257429495217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A024000 n - A249431 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249427.P11836116257429495217

/-! ## A249427.P13734376798670209139

`record[A249150(n)+1]`
-/

namespace A249427.P13734376798670209139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249150 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249427.P13734376798670209139

/-!
# A249428: Numbers n such that A249151(2n+1) = n.

The programs for A249428, the canonical program `A249428.P3847306228098961032` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249428 has offset 1).

The definition of A249428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249428.P2834408419867641138

`A249151(A249424(n+1))`
-/

namespace A249428.P2834408419867641138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 (A249424 (n + 1)).toNat

end

end A249428.P2834408419867641138

namespace A249428

/-- `A249151(A249424(n+1))` -/
def P2834408419867641138.Spec : Prop :=
  ∀ n, P2834408419867641138.a n = A249428 (n + 1)

end A249428

/-! ## A249428.P8283132940240143400

`eq[0, A323896(n+1)]`
-/

namespace A249428.P8283132940240143400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249428.P8283132940240143400

namespace A249428

/-- `eq[0, A323896(n+1)]` -/
def P8283132940240143400.Spec : Prop :=
  ∀ n, (P8283132940240143400.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P5413179504419131380

`eq[-1, A346241(n+1)]`
-/

namespace A249428.P5413179504419131380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P5413179504419131380

namespace A249428

/-- `eq[-1, A346241(n+1)]` -/
def P5413179504419131380.Spec : Prop :=
  ∀ n, (P5413179504419131380.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P14395892646752709306

`floor(A249424(n+1)/2)`
-/

namespace A249428.P14395892646752709306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249424 (n + 1) : ℚ) / 2⌋

end

end A249428.P14395892646752709306

namespace A249428

/-- `floor(A249424(n+1)/2)` -/
def P14395892646752709306.Spec : Prop :=
  ∀ n, P14395892646752709306.a n = A249428 (n + 1)

end A249428

/-! ## A249428.P13554455022723419564

`eq[n+1, A189036(n+1)]`
-/

namespace A249428.P13554455022723419564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249428.P13554455022723419564

namespace A249428

/-- `eq[n+1, A189036(n+1)]` -/
def P13554455022723419564.Spec : Prop :=
  ∀ n, (P13554455022723419564.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P13629353407341812407

`eq[n, A249151(2*n+1)]`
-/

namespace A249428.P13629353407341812407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249428.P13629353407341812407

namespace A249428

/-- `eq[n, A249151(2*n+1)]` -/
def P13629353407341812407.Spec : Prop :=
  ∀ n, (P13629353407341812407.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P11841191713029183280

`A004524(A249424(n+1))`
-/

namespace A249428.P11841191713029183280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A249424 (n + 1)).toNat

end

end A249428.P11841191713029183280

namespace A249428

/-- `A004524(A249424(n+1))` -/
def P11841191713029183280.Spec : Prop :=
  ∀ n, P11841191713029183280.a n = A249428 (n + 1)

end A249428

/-! ## A249428.P4953129741674938761

`eq[A003417(n), A326933(n)]`
-/

namespace A249428.P4953129741674938761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P4953129741674938761

namespace A249428

/-- `eq[A003417(n), A326933(n)]` -/
def P4953129741674938761.Spec : Prop :=
  ∀ n, (P4953129741674938761.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P5335158845718600038

`eq[A005872(n), A067565(n+1)]`
-/

namespace A249428.P5335158845718600038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P5335158845718600038

namespace A249428

/-- `eq[A005872(n), A067565(n+1)]` -/
def P5335158845718600038.Spec : Prop :=
  ∀ n, (P5335158845718600038.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P2379951739371070155

`eq[A002033(n), A077088(n+1)]`
-/

namespace A249428.P2379951739371070155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P2379951739371070155

namespace A249428

/-- `eq[A002033(n), A077088(n+1)]` -/
def P2379951739371070155.Spec : Prop :=
  ∀ n, (P2379951739371070155.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P13619917260920223960

`eq[A008437(n), A108234(n+1)]`
-/

namespace A249428.P13619917260920223960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P13619917260920223960

namespace A249428

/-- `eq[A008437(n), A108234(n+1)]` -/
def P13619917260920223960.Spec : Prop :=
  ∀ n, (P13619917260920223960.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P7450270338626150687

`eq[A015996(n+1), A133265(n)]`
-/

namespace A249428.P7450270338626150687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P7450270338626150687

namespace A249428

/-- `eq[A015996(n+1), A133265(n)]` -/
def P7450270338626150687.Spec : Prop :=
  ∀ n, (P7450270338626150687.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P3847306228098961032

`eq[A062790(n+1), A093148(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A249428

/-- `eq[A062790(n+1), A093148(n)]` -/
def P3847306228098961032.Spec : Prop :=
  ∀ n, (P3847306228098961032.a n : ℤ) = A249428 (n + 1)

theorem P3847306228098961032.correct : P3847306228098961032.Spec := by
  intro n
  simp only [A249428, Nat.add_sub_cancel]

end A249428

/-! ## A249428.P7803719129701226038

`eq[A061350(n+1), A140201(n)]`
-/

namespace A249428.P7803719129701226038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P7803719129701226038

namespace A249428

/-- `eq[A061350(n+1), A140201(n)]` -/
def P7803719129701226038.Spec : Prop :=
  ∀ n, (P7803719129701226038.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P420630002962152987

`eq[A068976(n+1), A133265(n)]`
-/

namespace A249428.P420630002962152987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P420630002962152987

namespace A249428

/-- `eq[A068976(n+1), A133265(n)]` -/
def P420630002962152987.Spec : Prop :=
  ∀ n, (P420630002962152987.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P16258802554407490444

`eq[A093148(n), A164879(n+1)]`
-/

namespace A249428.P16258802554407490444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P16258802554407490444

namespace A249428

/-- `eq[A093148(n), A164879(n+1)]` -/
def P16258802554407490444.Spec : Prop :=
  ∀ n, (P16258802554407490444.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P12367683946132435095

`eq[A091818(n+1), A174354(n)]`
-/

namespace A249428.P12367683946132435095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P12367683946132435095

namespace A249428

/-- `eq[A091818(n+1), A174354(n)]` -/
def P12367683946132435095.Spec : Prop :=
  ∀ n, (P12367683946132435095.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P16534749918157800141

`eq[A015996(n+1), A275365(n)]`
-/

namespace A249428.P16534749918157800141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P16534749918157800141

namespace A249428

/-- `eq[A015996(n+1), A275365(n)]` -/
def P16534749918157800141.Spec : Prop :=
  ∀ n, (P16534749918157800141.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P12743582986927317445

`eq[A054024(n+1), A242926(n)]`
-/

namespace A249428.P12743582986927317445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P12743582986927317445

namespace A249428

/-- `eq[A054024(n+1), A242926(n)]` -/
def P12743582986927317445.Spec : Prop :=
  ∀ n, (P12743582986927317445.a n : ℤ) = A249428 (n + 1)

end A249428

/-! ## A249428.P4860093746244085815

`eq[A057449(n+1), A245092(n)]`
-/

namespace A249428.P4860093746244085815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249428.P4860093746244085815

namespace A249428

/-- `eq[A057449(n+1), A245092(n)]` -/
def P4860093746244085815.Spec : Prop :=
  ∀ n, (P4860093746244085815.a n : ℤ) = A249428 (n + 1)

end A249428

/-!
# A249429: Integers n such that (n+1)! divides the product of elements on row n of Pascal's triangle.

The programs for A249429, there is no canonical definition to state claims against.
-/

/-! ## A249429.P3054499194560064518

`lt[0, A249431(n)]`
-/

namespace A249429.P3054499194560064518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249429.P3054499194560064518

/-! ## A249429.P3233728702238259076

`lt[n, A249151(n)]`
-/

namespace A249429.P3233728702238259076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249429.P3233728702238259076

/-! ## A249429.P1848078590326147648

`∩[A249434(n+1), A118742(n)]`
-/

namespace A249429.P1848078590326147648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249429.P1848078590326147648

/-! ## A249429.P13826169301086575039

`eq[A001489(n%A249151(n)), A001489(n)]`
-/

namespace A249429.P13826169301086575039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (Int.tmod (n : ℤ) (A249151 n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249429.P13826169301086575039

/-! ## A249429.P8967164600071510791

`eq[n, A233583(n+1)%A249151(n)]`
-/

namespace A249429.P8967164600071510791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1)) (A249151 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249429.P8967164600071510791

/-! ## A249429.P406648070622102043

`lt[n, A249150(n)+1]`
-/

namespace A249429.P406648070622102043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249150 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249429.P406648070622102043

/-!
# A249430: a(n) = Least integer k such that A249431(k) = n, and -1 if no such integer exists.

The programs for A249430, there is no canonical definition to state claims against.
-/

/-! ## A249430.P17013362791512063273

`fo[A249431(n)]`
-/

namespace A249430.P17013362791512063273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A249430.P17013362791512063273

/-!
# A249431: a(n) = A249151(n) - n.

The programs for A249431, there is no canonical definition to state claims against.
-/

/-! ## A249431.P9526466112877417072

`A249151(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249431.P9526466112877417072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n - (n : ℤ)

end

end A249431.P9526466112877417072

/-! ## A249431.P14403211652268418210

`A023444(A249151(n))+A022958(n)`
-/

namespace A249431.P14403211652268418210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A249151 n).toNat + A022958 n

end

end A249431.P14403211652268418210

/-! ## A249431.P8788867291437091054

`A024000(n)+A023443(A249151(n))`
-/

namespace A249431.P8788867291437091054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A023443 (A249151 n).toNat

end

end A249431.P8788867291437091054

/-! ## A249431.P12686545584733586603

`A249150(n)+1-n`
-/

namespace A249431.P12686545584733586603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249150 n + (1 - (n : ℤ))

end

end A249431.P12686545584733586603

/-! ## A249431.P17756806051668427501

`A008619(2*A249150(n))-n`
-/

namespace A249431.P17756806051668427501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A249150 n).toNat - (n : ℤ)

end

end A249431.P17756806051668427501

/-!
# A249432: Positions of records in A249431.

The programs for A249432, there is no canonical definition to state claims against.
-/

/-! ## A249432.P4921514701301974504

`A249430(A000005(n+1)*A046937(n))`
-/

namespace A249432.P4921514701301974504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249430 (A000005 (n + 1) * A046937 n).toNat

end

end A249432.P4921514701301974504

/-!
# A249433: Integers k such that k! does not divide the product of elements on row k of Pascal's triangle.

The programs for A249433, there is no canonical definition to state claims against.
-/

/-! ## A249433.P12575581943036233471

`lt[A249431(n), 0]`
-/

namespace A249433.P12575581943036233471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249433.P12575581943036233471

/-! ## A249433.P2212807141784512111

`lt[A249151(n), n]`
-/

namespace A249433.P2212807141784512111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249433.P2212807141784512111

/-! ## A249433.P13444607797731448242

`comp[record[n%(A326775(n)+A249151(n))]]`
-/

namespace A249433.P13444607797731448242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A326775 n + A249151 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249433.P13444607797731448242

/-! ## A249433.P6169681863461400965

`comp[A249434(n+1)]`
-/

namespace A249433.P6169681863461400965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249433.P6169681863461400965

/-! ## A249433.P5752006337243908886

`comp[record[A249434(A286554(n))]]`
-/

namespace A249433.P5752006337243908886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249434 (A286554 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249433.P5752006337243908886

/-! ## A249433.P18201821205893023703

`lt[A249150(n)+1, n]`
-/

namespace A249433.P18201821205893023703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249150 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249433.P18201821205893023703

/-! ## A249433.P4444229793780757693

`eq[2, A043529(A249431(n)²)]`
-/

namespace A249433.P4444229793780757693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A249431 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249433.P4444229793780757693

/-! ## A249433.P7863119347251719326

`eq[1, A249442(A249431(n)²)]`
-/

namespace A249433.P7863119347251719326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A249431 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249433.P7863119347251719326

/-! ## A249433.P11382819193599583629

`eq[2, A249441(A249431(n)²)]`
-/

namespace A249433.P11382819193599583629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249441 (A249431 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249433.P11382819193599583629

/-!
# A249434: Integers m such that m! divides the product of elements on row m of Pascal's triangle.

The programs for A249434, there is no canonical definition to state claims against.
-/

/-! ## A249434.P9119862306649009868

`comp[A249433(1+n)]`
-/

namespace A249434.P9119862306649009868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249433 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249434.P9119862306649009868

/-! ## A249434.P6997882516976175595

`lt[-1, A249431(n)]`
-/

namespace A249434.P6997882516976175595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249434.P6997882516976175595

/-! ## A249434.P16161289107524644381

`lt[n, 1+A249151(n)]`
-/

namespace A249434.P16161289107524644381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249434.P16161289107524644381

/-! ## A249434.P10691177749546475363

`lt[A011371(n), A249151(n)]`
-/

namespace A249434.P10691177749546475363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249434.P10691177749546475363

/-! ## A249434.P15138135923877949640

`lt[A000007(n), A249431(n)+1]`
-/

namespace A249434.P15138135923877949640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249434.P15138135923877949640

/-! ## A249434.P5030202065402152133

`record[n%(A326775(n)+A249151(n))]`
-/

namespace A249434.P5030202065402152133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A326775 n + A249151 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249434.P5030202065402152133

/-! ## A249434.P9564628382827961794

`∪[A006093(n+1), A249429(n+1)]`
-/

namespace A249434.P9564628382827961794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249434.P9564628382827961794

/-! ## A249434.P13019579652362735811

`lt[n, A249150(n)+2]`
-/

namespace A249434.P13019579652362735811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249150 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249434.P13019579652362735811

/-!
# A249435: a(1) = 0, after which one less than prime powers p^m with exponent m >= 2.

The programs for A249435, there is no canonical definition to state claims against.
-/

/-! ## A249435.P11777106668299440815

`A025475(n+1)-1`
-/

namespace A249435.P11777106668299440815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1) - 1

end

end A249435.P11777106668299440815

/-! ## A249435.P14015587543961930120

`A053707(n)+a(n-1)` with `a(0)=0`
-/

namespace A249435.P14015587543961930120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053707 n + a (n - 1)

end

end A249435.P14015587543961930120

/-! ## A249435.P10590136425419218031

`∑[A053707(round(sqrt(n²+1)))]-3`
-/

namespace A249435.P10590136425419218031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A249435.P10590136425419218031

/-! ## A249435.P10314432847015495486

`∪[A000302(n), A246547(n+1)]-1`
-/

namespace A249435.P10314432847015495486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246547 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A249435.P10314432847015495486

/-! ## A249435.P7609586163032662498

`∪[A000079(n)², A246547(n+1)]-1`
-/

namespace A249435.P7609586163032662498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246547 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A249435.P7609586163032662498

/-! ## A249435.P5089121000735612426

`A246547(n+1)-(A053707(n+1)+1)`
-/

namespace A249435.P5089121000735612426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246547 (n + 1) - (A053707 (n + 1) + 1)

end

end A249435.P5089121000735612426

/-! ## A249435.P3913780594364240276

`A001489(n+1)+A025475(n+1)+n`
-/

namespace A249435.P3913780594364240276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A025475 (n + 1) + (n : ℤ))

end

end A249435.P3913780594364240276

/-! ## A249435.P8471101609261938141

`record[A025475(A152271(n))-1]`
-/

namespace A249435.P8471101609261938141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249435.P8471101609261938141

/-! ## A249435.P17845985608595504786

`A001597(eq[A025478(n+1), A076396(n+1)]+1)-1`
-/

namespace A249435.P17845985608595504786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 1

end

end A249435.P17845985608595504786

/-! ## A249435.P3047635224909074967

`A181062(A024621(n+1))`
-/

namespace A249435.P3047635224909074967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (A024621 (n + 1)).toNat

end

end A249435.P3047635224909074967

/-! ## A249435.P11594898374371176125

`fp[A069637(n+1)+1]`
-/

namespace A249435.P11594898374371176125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069637 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A249435.P11594898374371176125

/-! ## A249435.P6580900688830116982

`lt[∑{p}[n+1, #+n], 2*n+1]`
-/

namespace A249435.P6580900688830116982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (p + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A249435.P6580900688830116982

/-!
# A249437: a(n) = A249151(A249436(n)).

The programs for A249437, there is no canonical definition to state claims against.
-/

/-! ## A249437.P4333930104429174825

`A249151(A249436(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249437.P4333930104429174825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 (A249436 (n + 1)).toNat

end

end A249437.P4333930104429174825

/-! ## A249437.P5397607556068639267

`A249436(C(n+1, n))+A249431(A249436(n+1))`
-/

namespace A249437.P5397607556068639267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249436 (Nat.choose (n + 1) n) + A249431 (A249436 (n + 1)).toNat

end

end A249437.P5397607556068639267

/-! ## A249437.P16599032295114784517

`A249436(2*n+1-n)+A249431(A249436(n+1))`
-/

namespace A249437.P16599032295114784517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249436 (2 * n + 1 - n) + A249431 (A249436 (n + 1)).toNat

end

end A249437.P16599032295114784517

/-!
# A249439: Record values in A249442.

The programs for A249439, there is no canonical definition to state claims against.
-/

/-! ## A249439.P16124827468382157638

`A249442(A249440(n+1))`
-/

namespace A249439.P16124827468382157638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A249440 (n + 1)).toNat

end

end A249439.P16124827468382157638

/-! ## A249439.P6156475688554171637

`record[and(A092921(n), A141862(n+1))]`
-/

namespace A249439.P6156475688554171637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092921 n) (A141862 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249439.P6156475688554171637

/-! ## A249439.P10939065152023929140

`record[and(A074841(n+1), A211266(n+1))]`
-/

namespace A249439.P10939065152023929140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074841 (n + 1)) (A211266 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249439.P10939065152023929140

/-! ## A249439.P9051467611335053522

`A238165(A238441(n)+n)`
-/

namespace A249439.P9051467611335053522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238165 (A238441 n + (n : ℤ)).toNat

end

end A249439.P9051467611335053522

/-!
# A249440: Positions of records in A249442.

The programs for A249440, there is no canonical definition to state claims against.
-/

/-! ## A249440.P15826686456738992252

`A249149(n+1)-1`
-/

namespace A249440.P15826686456738992252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249149 (n + 1) - 1

end

end A249440.P15826686456738992252

/-! ## A249440.P5278919499375221633

`record[Δ[A249149(A152271(n))]]`
-/

namespace A249440.P5278919499375221633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249149 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249440.P5278919499375221633

/-! ## A249440.P14505509842116127164

`record[Δ[A249149(A158416(n))]]`
-/

namespace A249440.P14505509842116127164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249149 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249440.P14505509842116127164

/-! ## A249440.P14173086195537549288

`record[A249149(A126759(n))-1]`
-/

namespace A249440.P14173086195537549288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249149 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249440.P14173086195537549288

/-!
# A249441: a(n) is the smallest prime whose square divides at least one entry in the n-th row of Pascal's triangle, or 0 if there is no such prime.

The programs for A249441, there is no canonical definition to state claims against.
-/

/-! ## A249441.P16308157671722774142

`A001222(A349093(n+1))%A249716(n)`
-/

namespace A249441.P16308157671722774142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A349093 (n + 1)).toNat) (A249716 n)

end

end A249441.P16308157671722774142

/-! ## A249441.P10403470266813342260

`A001222(A090825(n+1))%A249716(n)`
-/

namespace A249441.P10403470266813342260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A090825 (n + 1)).toNat) (A249716 n)

end

end A249441.P10403470266813342260

/-! ## A249441.P12337975929927990293

`A126759(A211776(n+1))%A249716(n)`
-/

namespace A249441.P12337975929927990293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126759 (A211776 (n + 1)).toNat) (A249716 n)

end

end A249441.P12337975929927990293

/-! ## A249441.P16085960941881525445

`A063958(A117303(n+1))`
-/

namespace A249441.P16085960941881525445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063958 (A117303 (n + 1)).toNat

end

end A249441.P16085960941881525445

/-!
# A249442: a(n) is the smallest m such that binomial(n,m) is not squarefree, or a(n)=0, if there is no such m.

The programs for A249442, there is no canonical definition to state claims against.
-/

/-! ## A249442.P17266046290780694743

`A255689(A320964(n))%∏{p}[n+1, #-1]`
-/

namespace A249442.P17266046290780694743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255689 (A320964 n).toNat) (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1))

end

end A249442.P17266046290780694743

/-! ## A249442.P17137728096436659198

`A261294(n+1)%A001222(A058698(n+1))`
-/

namespace A249442.P17137728096436659198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261294 (n + 1)) (A001222 (A058698 (n + 1)).toNat)

end

end A249442.P17137728096436659198

/-! ## A249442.P7750142829595045794

`and(A154940(n+1), A299282(A203363(n+1)))`
-/

namespace A249442.P7750142829595045794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A154940 (n + 1)) (A299282 (A203363 (n + 1)).toNat)

end

end A249442.P7750142829595045794

/-!
# A249443: Numbers with digits in nondecreasing order and digital sum not larger than the product of the digits.

The programs for A249443, there is no canonical definition to state claims against.
-/

/-! ## A249443.P8236614914436580453

`lt[row(A213217(n))!, n+3]`
-/

namespace A249443.P8236614914436580453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.triRow (A213217 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249443.P8236614914436580453

/-! ## A249443.P5435091806608075589

`lt[A213217(n)², A250403(n+3)]`
-/

namespace A249443.P5435091806608075589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250403 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249443.P5435091806608075589

/-! ## A249443.P10383769850705647134

`lt[A213217(n), log(A005898(2*(n+2)))]`
-/

namespace A249443.P10383769850705647134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A005898 (2 * (n + 2)) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A249443.P10383769850705647134

/-! ## A249443.P15395093214554236238

`lt[A188678(A213217(n)), A085502(n)]`
-/

namespace A249443.P15395093214554236238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188678 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249443.P15395093214554236238

/-! ## A249443.P1040972686807787139

`lt[A265063(A213217(n)), A017449(n)]`
-/

namespace A249443.P1040972686807787139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265063 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249443.P1040972686807787139

/-!
# A249444: Primes representable as p^q + p + q, where p and q are primes.

The programs for A249444, there is no canonical definition to state claims against.
-/

/-! ## A249444.P16857443736152703887

`filter[A253776(n+1), A194683(#)]`
-/

namespace A249444.P16857443736152703887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A194683 (f1 j).toNat = 1) n)

end

end A249444.P16857443736152703887

/-!
# A249446: Numbers n such that 2*(n^2-1) - 1 and 2*(n^2-1) + 1 are primes.

The programs for A249446, there is no canonical definition to state claims against.
-/

/-! ## A249446.P9897058265868389244

`sqrt(∩[A040040(n+1)+1, (n+2)²])`
-/

namespace A249446.P9897058265868389244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A249446.P9897058265868389244

/-! ## A249446.P195631391569532312

`sqrt(∩[A168497(n+1)+1, (n+2)²])`
-/

namespace A249446.P195631391569532312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A249446.P195631391569532312

/-! ## A249446.P616737651292960110

`record[abs(A113277(A002822(n+1)))]`
-/

namespace A249446.P616737651292960110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113277 (A002822 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249446.P616737651292960110

/-! ## A249446.P3686929906581515955

`eq[2, A240697(n²+1)]`
-/

namespace A249446.P3686929906581515955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249446.P3686929906581515955

/-! ## A249446.P17942798306074232067

`eq[2, A240697((n+1)*(n+1)+1)]+1`
-/

namespace A249446.P17942798306074232067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 ((n + 1) * (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249446.P17942798306074232067

/-!
# A249447: Least n-digit prime whose digit sum is also prime.

The programs for A249447, there is no canonical definition to state claims against.
-/

/-! ## A249447.P15683926178158589562

`filter[A139053(n+1), A179829(#)]`
-/

namespace A249447.P15683926178158589562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179829 (f1 j).toNat = 1) n)

end

end A249447.P15683926178158589562

/-! ## A249447.P11728103321496475843

`A000040(A014784(n)+A006880(n))`
-/

namespace A249447.P11728103321496475843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014784 n + A006880 n).toNat

end

end A249447.P11728103321496475843

/-!
# A249448: Largest n-digit prime whose digit sum is also prime.

The programs for A249448, there is no canonical definition to state claims against.
-/

/-! ## A249448.P8237392404344274349

`A397050(∑[A397051(1+n)])`
-/

namespace A249448.P8237392404344274349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397051 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249448.P8237392404344274349

/-!
# A249450: a(n) = Fibonacci(2*n) - 2.

The programs for A249450, the canonical program `A249450.P8410916202522237215` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249450 has offset 0).

The definition of A249450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n)-2` (program `A249450.P8410916202522237215`, by `A249450.P8410916202522237215.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249450.P17537829940905765793

`ogf((-2+7x-3x^2)/(1-4x+4x^2-x^3))`
-/

namespace A249450.P17537829940905765793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 7, -3] [1, -4, 4, -1] n

end

end A249450.P17537829940905765793

namespace A249450

/-- `ogf((-2+7x-3x^2)/(1-4x+4x^2-x^3))` -/
def P17537829940905765793.Spec : Prop :=
  ∀ n, P17537829940905765793.a n = A249450 n

end A249450

/-! ## A249450.P8410916202522237215

`A000045(2*n)-2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249450

/-- `A000045(2*n)-2` -/
def P8410916202522237215.Spec : Prop :=
  ∀ n, P8410916202522237215.a n = A249450 n

theorem P8410916202522237215.correct : P8410916202522237215.Spec := by
  intro n
  simp only [A249450]

end A249450

/-! ## A249450.P17737172054257077526

`3*a(n-1)-a(n-2)+2` with `a(0)=-2, a(1)=-1`
-/

namespace A249450.P17737172054257077526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, -1] fun n a =>
  3 * a (n - 1) - a (n - 2) + 2

end

end A249450.P17737172054257077526

namespace A249450

/-- `3*a(n-1)-a(n-2)+2` -/
def P17737172054257077526.Spec : Prop :=
  ∀ n, P17737172054257077526.a n = A249450 n

end A249450

/-! ## A249450.P589059192803346941

`∑[floor(ϕ²*a(n-1))]` with `a(0)=-2, a(1)=1`
-/

namespace A249450.P589059192803346941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249450.P589059192803346941

namespace A249450

/-- `∑[floor(ϕ²*a(n-1))]` -/
def P589059192803346941.Spec : Prop :=
  ∀ n, P589059192803346941.a n = A249450 n

end A249450

/-! ## A249450.P5048384947341432169

`∑[floor(ϕ*ϕ*a(n-1))]` with `a(0)=-2, a(1)=1`
-/

namespace A249450.P5048384947341432169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 1] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249450.P5048384947341432169

namespace A249450

/-- `∑[floor(ϕ*ϕ*a(n-1))]` -/
def P5048384947341432169.Spec : Prop :=
  ∀ n, P5048384947341432169.a n = A249450 n

end A249450

/-! ## A249450.P6969670424041123230

`∑[record[a(n-2)-a(n-1)]]-2` with `a(0)=0, a(1)=1`
-/

namespace A249450.P6969670424041123230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A249450.P6969670424041123230

namespace A249450

/-- `∑[record[a(n-2)-a(n-1)]]-2` -/
def P6969670424041123230.Spec : Prop :=
  ∀ n, P6969670424041123230.a n = A249450 n

end A249450

/-! ## A249450.P15662509922942882232

`∑[3*a(n-1)-a(n-2)]` with `a(0)=-2, a(1)=1, a(2)=2`
-/

namespace A249450.P15662509922942882232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 1, 2] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249450.P15662509922942882232

namespace A249450

/-- `∑[3*a(n-1)-a(n-2)]` -/
def P15662509922942882232.Spec : Prop :=
  ∀ n, P15662509922942882232.a n = A249450 n

end A249450

/-! ## A249450.P18118668287977920986

`record[a(n-2)+1-a(n-1)]-3` with `a(0)=1, a(1)=0`
-/

namespace A249450.P18118668287977920986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 3

end

end A249450.P18118668287977920986

namespace A249450

/-- `record[a(n-2)+1-a(n-1)]-3` -/
def P18118668287977920986.Spec : Prop :=
  ∀ n, P18118668287977920986.a n = A249450 n

end A249450

/-! ## A249450.P7983106570176516998

`∑[lcm(3, a(n-1))-a(n-2)]-3` with `a(0)=1, a(1)=1`
-/

namespace A249450.P7983106570176516998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Int.lcm 3 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A249450.P7983106570176516998

namespace A249450

/-- `∑[lcm(3, a(n-1))-a(n-2)]-3` -/
def P7983106570176516998.Spec : Prop :=
  ∀ n, P7983106570176516998.a n = A249450 n

end A249450

/-! ## A249450.P17595642322455671477

`A001906(n)-2`
-/

namespace A249450.P17595642322455671477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - 2

end

end A249450.P17595642322455671477

namespace A249450

/-- `A001906(n)-2` -/
def P17595642322455671477.Spec : Prop :=
  ∀ n, P17595642322455671477.a n = A249450 n

end A249450

/-! ## A249450.P17562839875198527551

`A055588(n)-3`
-/

namespace A249450.P17562839875198527551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n - 3

end

end A249450.P17562839875198527551

namespace A249450

/-- `A055588(n)-3` -/
def P17562839875198527551.Spec : Prop :=
  ∀ n, P17562839875198527551.a n = A249450 n

end A249450

/-! ## A249450.P8981038284209462830

`∑[A001519(n)]-3`
-/

namespace A249450.P8981038284209462830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A249450.P8981038284209462830

namespace A249450

/-- `∑[A001519(n)]-3` -/
def P8981038284209462830.Spec : Prop :=
  ∀ n, P8981038284209462830.a n = A249450 n

end A249450

/-! ## A249450.P15844024124364710709

`A094966(2*n)-2`
-/

namespace A249450.P15844024124364710709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * n) - 2

end

end A249450.P15844024124364710709

namespace A249450

/-- `A094966(2*n)-2` -/
def P15844024124364710709.Spec : Prop :=
  ∀ n, P15844024124364710709.a n = A249450 n

end A249450

/-! ## A249450.P10998227998955884088

`A109522(2*n)-2`
-/

namespace A249450.P10998227998955884088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 (2 * n) - 2

end

end A249450.P10998227998955884088

namespace A249450

/-- `A109522(2*n)-2` -/
def P10998227998955884088.Spec : Prop :=
  ∀ n, P10998227998955884088.a n = A249450 n

end A249450

/-! ## A249450.P6297619401157956212

`A001611(2*n)-3`
-/

namespace A249450.P6297619401157956212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n) - 3

end

end A249450.P6297619401157956212

namespace A249450

/-- `A001611(2*n)-3` -/
def P6297619401157956212.Spec : Prop :=
  ∀ n, P6297619401157956212.a n = A249450 n

theorem P6297619401157956212.correct : P6297619401157956212.Spec := by
  intro n
  simp only [A249450, Nat.add_sub_cancel, A249450.P6297619401157956212.a, A249450.P8410916202522237215.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249450

/-! ## A249450.P731476319707395007

`A008346(2*n)-3`
-/

namespace A249450.P731476319707395007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (2 * n) - 3

end

end A249450.P731476319707395007

namespace A249450

/-- `A008346(2*n)-3` -/
def P731476319707395007.Spec : Prop :=
  ∀ n, P731476319707395007.a n = A249450 n

end A249450

/-! ## A249450.P17052691572936107268

`A355020(2*n)-3`
-/

namespace A249450.P17052691572936107268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 (2 * n) - 3

end

end A249450.P17052691572936107268

namespace A249450

/-- `A355020(2*n)-3` -/
def P17052691572936107268.Spec : Prop :=
  ∀ n, P17052691572936107268.a n = A249450 n

end A249450

/-! ## A249450.P9878371593779447705

`A157725(2*n)-4`
-/

namespace A249450.P9878371593779447705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (2 * n) - 4

end

end A249450.P9878371593779447705

namespace A249450

/-- `A157725(2*n)-4` -/
def P9878371593779447705.Spec : Prop :=
  ∀ n, P9878371593779447705.a n = A249450 n

theorem P9878371593779447705.correct : P9878371593779447705.Spec := by
  intro n
  simp only [A249450, Nat.add_sub_cancel, A249450.P9878371593779447705.a, A249450.P8410916202522237215.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249450

/-! ## A249450.P17201041718409018053

`A157726(2*n)-5`
-/

namespace A249450.P17201041718409018053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (2 * n) - 5

end

end A249450.P17201041718409018053

namespace A249450

/-- `A157726(2*n)-5` -/
def P17201041718409018053.Spec : Prop :=
  ∀ n, P17201041718409018053.a n = A249450 n

theorem P17201041718409018053.correct : P17201041718409018053.Spec := by
  intro n
  simp only [A249450, Nat.add_sub_cancel, A249450.P17201041718409018053.a, A249450.P8410916202522237215.a, A000045, A000045.P11838749114346432762.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249450

/-! ## A249450.P13548278721064645974

`A157727(2*n)-6`
-/

namespace A249450.P13548278721064645974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (2 * n) - 6

end

end A249450.P13548278721064645974

namespace A249450

/-- `A157727(2*n)-6` -/
def P13548278721064645974.Spec : Prop :=
  ∀ n, P13548278721064645974.a n = A249450 n

theorem P13548278721064645974.correct : P13548278721064645974.Spec := by
  intro n
  simp only [A249450, Nat.add_sub_cancel, A249450.P13548278721064645974.a, A249450.P8410916202522237215.a, A000045, A000045.P11838749114346432762.a, A157727, A157727.P751779701380853510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249450

/-!
# A249452: Numbers k such that A249441(k) = 3.

The programs for A249452, the canonical program `A249452.P2619371724854992228` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249452 has offset 1).

The definition of A249452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249452.P1096656738964457594

`ogf((15+16x-14x^2-16x^3)/(1-x-2x^2+2x^3))`
-/

namespace A249452.P1096656738964457594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 16, -14, -16] [1, -1, -2, 2] n

end

end A249452.P1096656738964457594

namespace A249452

/-- `ogf((15+16x-14x^2-16x^3)/(1-x-2x^2+2x^3))` -/
def P1096656738964457594.Spec : Prop :=
  ∀ n, P1096656738964457594.a n = A249452 (n + 1)

end A249452

/-! ## A249452.P2619371724854992228

`16*A029744(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249452

/-- `16*A029744(n+1)-1` -/
def P2619371724854992228.Spec : Prop :=
  ∀ n, P2619371724854992228.a n = A249452 (n + 1)

theorem P2619371724854992228.correct : P2619371724854992228.Spec := by
  intro n
  simp only [A249452, Nat.add_sub_cancel]

end A249452

/-! ## A249452.P4673184279292847562

`record[or(14, A052955(n))]`
-/

namespace A249452.P4673184279292847562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 14 (A052955 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249452.P4673184279292847562

namespace A249452

/-- `record[or(14, A052955(n))]` -/
def P4673184279292847562.Spec : Prop :=
  ∀ n, P4673184279292847562.a n = A249452 (n + 1)

end A249452

/-! ## A249452.P13335597346589227336

`or(15, 8*A027383(n))`
-/

namespace A249452.P13335597346589227336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 15 (8 * A027383 n)

end

end A249452.P13335597346589227336

namespace A249452

/-- `or(15, 8*A027383(n))` -/
def P13335597346589227336.Spec : Prop :=
  ∀ n, P13335597346589227336.a n = A249452 (n + 1)

end A249452

/-! ## A249452.P11989042954880316131

`A052955(ceil(sqrt(∑[2*n]))+6)`
-/

namespace A249452.P11989042954880316131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 6).toNat

end

end A249452.P11989042954880316131

namespace A249452

/-- `A052955(ceil(sqrt(∑[2*n]))+6)` -/
def P11989042954880316131.Spec : Prop :=
  ∀ n, P11989042954880316131.a n = A249452 (n + 1)

end A249452

/-! ## A249452.P14059279462090066654

`A209721(A242963(n+1)+2)-2`
-/

namespace A249452.P14059279462090066654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (A242963 (n + 1) + 2).toNat - 2

end

end A249452.P14059279462090066654

namespace A249452

/-- `A209721(A242963(n+1)+2)-2` -/
def P14059279462090066654.Spec : Prop :=
  ∀ n, P14059279462090066654.a n = A249452 (n + 1)

end A249452

/-! ## A249452.P17077655389892989699

`4*record[A257791(n+1)]-1`
-/

namespace A249452.P17077655389892989699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A249452.P17077655389892989699

namespace A249452

/-- `4*record[A257791(n+1)]-1` -/
def P17077655389892989699.Spec : Prop :=
  ∀ n, P17077655389892989699.a n = A249452 (n + 1)

end A249452

/-! ## A249452.P11905792682603689894

`record[or(15, A241957(n+1))]`
-/

namespace A249452.P11905792682603689894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 15 (A241957 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249452.P11905792682603689894

namespace A249452

/-- `record[or(15, A241957(n+1))]` -/
def P11905792682603689894.Spec : Prop :=
  ∀ n, P11905792682603689894.a n = A249452 (n + 1)

end A249452

/-!
# A249453: a(0) = 4; for n>0, a(n) = a(n-1) + 2^n - 3.

The programs for A249453, the canonical program `A249453.P3257533466448353477` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249453 has offset 0).

The definition of A249453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2^n-3` (program `A249453.P3257533466448353477`, by `A249453.P3257533466448353477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249453.P7305284678201985623

`ogf((4-13x+12x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A249453.P7305284678201985623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -13, 12] [1, -4, 5, -2] n

end

end A249453.P7305284678201985623

namespace A249453

/-- `ogf((4-13x+12x^2)/(1-4x+5x^2-2x^3))` -/
def P7305284678201985623.Spec : Prop :=
  ∀ n, P7305284678201985623.a n = A249453 n

end A249453

/-! ## A249453.P4611085997013738937

`2+2^(1+n)-3*n`
-/

namespace A249453.P4611085997013738937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 + 2 ^ (1 + n) : ℤ) - (3 * n : ℤ)

end

end A249453.P4611085997013738937

namespace A249453

/-- `2+2^(1+n)-3*n` -/
def P4611085997013738937.Spec : Prop :=
  ∀ n, P4611085997013738937.a n = A249453 n

theorem P4611085997013738937.correct : P4611085997013738937.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A249453, Nat.add_sub_cancel, A249453.P4611085997013738937.a, A249453.P3257533466448353477.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A249453, Nat.add_sub_cancel, A249453.P4611085997013738937.a, A249453.P3257533466448353477.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A249453

/-! ## A249453.P3257533466448353477

`a(n-1)+2^n-3` with `a(0)=4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A249453

/-- `a(n-1)+2^n-3` -/
def P3257533466448353477.Spec : Prop :=
  ∀ n, P3257533466448353477.a n = A249453 n

theorem P3257533466448353477.correct : P3257533466448353477.Spec := by
  intro n
  simp only [A249453]

end A249453

/-! ## A249453.P961637160336062819

`2*a(n-1)+3*n-8` with `a(0)=4`
-/

namespace A249453.P961637160336062819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  2 * a (n - 1) + (3 * n : ℤ) - 8

end

end A249453.P961637160336062819

namespace A249453

/-- `2*a(n-1)+3*n-8` -/
def P961637160336062819.Spec : Prop :=
  ∀ n, P961637160336062819.a n = A249453 n

end A249453

/-! ## A249453.P15938826484243877713

`7-∑[4-or(1, 2^n)]`
-/

namespace A249453.P15938826484243877713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.lor 1 (2 ^ n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249453.P15938826484243877713

namespace A249453

/-- `7-∑[4-or(1, 2^n)]` -/
def P15938826484243877713.Spec : Prop :=
  ∀ n, P15938826484243877713.a n = A249453 n

end A249453

/-! ## A249453.P13281335207512185618

`or(2^n, a(n-1))-3` with `a(0)=4`
-/

namespace A249453.P13281335207512185618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.lor (2 ^ n : ℤ) (a (n - 1)) - 3

end

end A249453.P13281335207512185618

namespace A249453

/-- `or(2^n, a(n-1))-3` -/
def P13281335207512185618.Spec : Prop :=
  ∀ n, P13281335207512185618.a n = A249453 n

end A249453

/-! ## A249453.P13591121431228509567

`xor(2^n, a(n-1))-3` with `a(0)=4`
-/

namespace A249453.P13591121431228509567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.xor (2 ^ n : ℤ) (a (n - 1)) - 3

end

end A249453.P13591121431228509567

namespace A249453

/-- `xor(2^n, a(n-1))-3` -/
def P13591121431228509567.Spec : Prop :=
  ∀ n, P13591121431228509567.a n = A249453 n

end A249453

/-! ## A249453.P12355878291739169135

`∑[2*a(n-1)+3]` with `a(0)=4, a(1)=-1`
-/

namespace A249453.P12355878291739169135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, -1] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249453.P12355878291739169135

namespace A249453

/-- `∑[2*a(n-1)+3]` -/
def P12355878291739169135.Spec : Prop :=
  ∀ n, P12355878291739169135.a n = A249453 n

end A249453

/-! ## A249453.P5497770117396881225

`∑[∑[2*a(n-1)]]` with `a(0)=4, a(1)=-5, a(2)=2`
-/

namespace A249453.P5497770117396881225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, -5, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249453.P5497770117396881225

namespace A249453

/-- `∑[∑[2*a(n-1)]]` -/
def P5497770117396881225.Spec : Prop :=
  ∀ n, P5497770117396881225.a n = A249453 n

end A249453

/-! ## A249453.P17959590871710455009

`abs(3-a(n-1)-2^n)` with `a(0)=4`
-/

namespace A249453.P17959590871710455009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |3 - a (n - 1) - (2 ^ n : ℤ)|

end

end A249453.P17959590871710455009

namespace A249453

/-- `abs(3-a(n-1)-2^n)` -/
def P17959590871710455009.Spec : Prop :=
  ∀ n, P17959590871710455009.a n = A249453 n

end A249453

/-! ## A249453.P16195640240941939498

`floor(2^n-(3-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A249453.P16195640240941939498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (2 ^ n : ℤ) - (3 - a (n - 1))

end

end A249453.P16195640240941939498

namespace A249453

/-- `floor(2^n-(3-a(n-1)))` -/
def P16195640240941939498.Spec : Prop :=
  ∀ n, P16195640240941939498.a n = A249453 n

theorem P16195640240941939498.correct : P16195640240941939498.Spec := by
  intro n
  simp only [A249453, Nat.add_sub_cancel, A249453.P16195640240941939498.a, A249453.P3257533466448353477.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A249453

/-! ## A249453.P15005852848549963564

`3*n+2*(a(n-1)-4)` with `a(0)=4`
-/

namespace A249453.P15005852848549963564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (3 * n : ℤ) + 2 * (a (n - 1) - 4)

end

end A249453.P15005852848549963564

namespace A249453

/-- `3*n+2*(a(n-1)-4)` -/
def P15005852848549963564.Spec : Prop :=
  ∀ n, P15005852848549963564.a n = A249453 n

end A249453

/-! ## A249453.P4267850819574828407

`3*n-2*(4-a(n-1))` with `a(0)=4`
-/

namespace A249453.P4267850819574828407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (3 * n : ℤ) - 2 * (4 - a (n - 1))

end

end A249453.P4267850819574828407

namespace A249453

/-- `3*n-2*(4-a(n-1))` -/
def P4267850819574828407.Spec : Prop :=
  ∀ n, P4267850819574828407.a n = A249453 n

end A249453

/-! ## A249453.P2060696362230642941

`∑[a(n-1)+a(n-1)+3]` with `a(0)=4, a(1)=-1`
-/

namespace A249453.P2060696362230642941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, -1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249453.P2060696362230642941

namespace A249453

/-- `∑[a(n-1)+a(n-1)+3]` -/
def P2060696362230642941.Spec : Prop :=
  ∀ n, P2060696362230642941.a n = A249453 n

end A249453

/-! ## A249453.P13447284576607060502

`A036563(n)+a(n-1)` with `a(0)=4`
-/

namespace A249453.P13447284576607060502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A036563 n + a (n - 1)

end

end A249453.P13447284576607060502

namespace A249453

/-- `A036563(n)+a(n-1)` -/
def P13447284576607060502.Spec : Prop :=
  ∀ n, P13447284576607060502.a n = A249453 n

theorem P13447284576607060502.correct : P13447284576607060502.Spec := by
  intro n
  simp only [A249453, Nat.add_sub_cancel, A249453.P13447284576607060502.a, A249453.P3257533466448353477.a, A036563, A036563.P16747850807333830855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249453

/-! ## A249453.P17276921101819417884

`∑[(A000225(n)-2)^C(2, C(2, n))]`
-/

namespace A249453.P17276921101819417884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n - 2) ^ Nat.choose 2 (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249453.P17276921101819417884

namespace A249453

/-- `∑[(A000225(n)-2)^C(2, C(2, n))]` -/
def P17276921101819417884.Spec : Prop :=
  ∀ n, P17276921101819417884.a n = A249453 n

end A249453

/-! ## A249453.P15404374230303547177

`Δ[A084634(n)-(2-n)²]`
-/

namespace A249453.P15404374230303547177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084634 n - (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249453.P15404374230303547177

namespace A249453

/-- `Δ[A084634(n)-(2-n)²]` -/
def P15404374230303547177.Spec : Prop :=
  ∀ n, P15404374230303547177.a n = A249453 n

end A249453

/-! ## A249453.P11260285236762535737

`Δ[A014844(n+1)-(2-n)²]`
-/

namespace A249453.P11260285236762535737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014844 (n + 1) - (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249453.P11260285236762535737

namespace A249453

/-- `Δ[A014844(n+1)-(2-n)²]` -/
def P11260285236762535737.Spec : Prop :=
  ∀ n, P11260285236762535737.a n = A249453 n

end A249453

/-!
# A249454: E.g.f. exp(x*(sqrt(4*x^2+1)+2*x)).

The programs for A249454, there is no canonical definition to state claims against.
-/

/-! ## A249454.P17874350842283163353

`A004277(A193930(n))-A190875(n)`
-/

namespace A249454.P17874350842283163353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A193930 n).toNat - A190875 n

end

end A249454.P17874350842283163353

/-! ## A249454.P5963206509245265221

`A005408(A246689(n)-A353225(n))`
-/

namespace A249454.P5963206509245265221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A246689 n - A353225 n).toNat

end

end A249454.P5963206509245265221

/-!
# A249457: The numerator of curvatures of touching circles inscribed in a special way in the larger segment of a unit circle divided by a chord of length sqrt(84)/5.

The programs for A249457, the canonical program `A249457.P4380148840988544029` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249457 has offset 0).

The definition of A249457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249457.P4380148840988544029

`5*(A249862(n)+3^n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249457

/-- `5*(A249862(n)+3^n)` -/
def P4380148840988544029.Spec : Prop :=
  ∀ n, P4380148840988544029.a n = A249457 n

theorem P4380148840988544029.correct : P4380148840988544029.Spec := by
  intro n
  simp only [A249457]

end A249457

/-! ## A249457.P4497662834785425587

`ogf((10-270x+300x^2)/(1-37x+111x^2-27x^3))`
-/

namespace A249457.P4497662834785425587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -270, 300] [1, -37, 111, -27] n

end

end A249457.P4497662834785425587

namespace A249457

/-- `ogf((10-270x+300x^2)/(1-37x+111x^2-27x^3))` -/
def P4497662834785425587.Spec : Prop :=
  ∀ n, P4497662834785425587.a n = A249457 n

end A249457

/-!
# A249458: The numerators of curvatures of touching circles inscribed in a special way in the smaller segment of unit circle divided by a chord of length sqrt(84)/5.

The programs for A249458, the canonical program `A249458.P10090392725250684682` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249458 has offset 0).

The definition of A249458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249458.P10090392725250684682

`5*(A249864(n)+7^n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249458

/-- `5*(A249864(n)+7^n)` -/
def P10090392725250684682.Spec : Prop :=
  ∀ n, P10090392725250684682.a n = A249458 n

theorem P10090392725250684682.correct : P10090392725250684682.Spec := by
  intro n
  simp only [A249458]

end A249458

/-! ## A249458.P17835027894381591545

`ogf((10-230x+700x^2)/(1-33x+231x^2-343x^3))`
-/

namespace A249458.P17835027894381591545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -230, 700] [1, -33, 231, -343] n

end

end A249458.P17835027894381591545

namespace A249458

/-- `ogf((10-230x+700x^2)/(1-33x+231x^2-343x^3))` -/
def P17835027894381591545.Spec : Prop :=
  ∀ n, P17835027894381591545.a n = A249458 n

end A249458

/-!
# A249459: a(n) = Sum_{k=0..n} k^(2*n).

The programs for A249459, the canonical program `A249459.P3047692066544044030` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249459 has offset 0).

The definition of A249459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, #^(2*n)]` (program `A249459.P3047692066544044030`, by `A249459.P3047692066544044030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249459.P3047692066544044030

`∑{#}[n, #^(2*n)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A249459

/-- `∑{#}[n, #^(2*n)]` -/
def P3047692066544044030.Spec : Prop :=
  ∀ n, (P3047692066544044030.a n : ℤ) = A249459 n

theorem P3047692066544044030.correct : P3047692066544044030.Spec := by
  intro n
  simp only [A249459]

end A249459

/-! ## A249459.P6522398150239719859

`A352981(2*n)`
-/

namespace A249459.P6522398150239719859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352981 (2 * n)

end

end A249459.P6522398150239719859

namespace A249459

/-- `A352981(2*n)` -/
def P6522398150239719859.Spec : Prop :=
  ∀ n, P6522398150239719859.a n = A249459 n

end A249459

/-! ## A249459.P2263417568250565441

`A192001(A006137(n))`
-/

namespace A249459.P2263417568250565441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192001 (A006137 n).toNat

end

end A249459.P2263417568250565441

namespace A249459

/-- `A192001(A006137(n))` -/
def P2263417568250565441.Spec : Prop :=
  ∀ n, P2263417568250565441.a n = A249459 n

end A249459

/-! ## A249459.P18061102170872307822

`A215083(A106232(n+1))`
-/

namespace A249459.P18061102170872307822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215083 (A106232 (n + 1)).toNat

end

end A249459.P18061102170872307822

namespace A249459

/-- `A215083(A106232(n+1))` -/
def P18061102170872307822.Spec : Prop :=
  ∀ n, P18061102170872307822.a n = A249459 n

end A249459

/-! ## A249459.P4276166400646214421

`A292830(n+1)/(2*n+1)`
-/

namespace A249459.P4276166400646214421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292830 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A249459.P4276166400646214421

namespace A249459

/-- `A292830(n+1)/(2*n+1)` -/
def P4276166400646214421.Spec : Prop :=
  ∀ n, P4276166400646214421.a n = (A249459 n : ℚ)

end A249459

/-!
# A249460: Number of proper colorings of the cube with at most n colors under rotational symmetry.

The programs for A249460, the canonical program `A249460.P9176399048443871641` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249460 has offset 0).

The definition of A249460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249460.P16080186861557384112

`ogf((x^3+3x^4+6x^5+20x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A249460.P16080186861557384112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 3, 6, 20] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A249460.P16080186861557384112

namespace A249460

/-- `ogf((x^3+3x^4+6x^5+20x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P16080186861557384112.Spec : Prop :=
  ∀ n, P16080186861557384112.a n = A249460 n

end A249460

/-! ## A249460.P9176399048443871641

`(n-2)*(n-1)*n*(n^3-9*n²+32*n-38)/24`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A249460

/-- `(n-2)*(n-1)*n*(n^3-9*n²+32*n-38)/24` -/
def P9176399048443871641.Spec : Prop :=
  ∀ n, P9176399048443871641.a n = (A249460 n : ℚ)

end A249460

/-! ## A249460.P7811200107685977521

`A014682(A282818(n))`
-/

namespace A249460.P7811200107685977521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A282818 n).toNat

end

end A249460.P7811200107685977521

namespace A249460

/-- `A014682(A282818(n))` -/
def P7811200107685977521.Spec : Prop :=
  ∀ n, P7811200107685977521.a n = A249460 n

end A249460

/-! ## A249460.P474858306583571677

`A001281(A282818(n))`
-/

namespace A249460.P474858306583571677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A282818 n).toNat

end

end A249460.P474858306583571677

namespace A249460

/-- `A001281(A282818(n))` -/
def P474858306583571677.Spec : Prop :=
  ∀ n, P474858306583571677.a n = A249460 n

end A249460

/-!
# A249461: Number of length n+4 0..3 arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249461, there is no canonical definition to state claims against.
-/

/-! ## A249461.P9020249003067051641

`A249466(∑[n+3]+1)`
-/

namespace A249461.P9020249003067051641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249461.P9020249003067051641

/-! ## A249461.P13409758863298038247

`record[A249466(A101881(n+2))]`
-/

namespace A249461.P13409758863298038247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A101881 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249461.P13409758863298038247

/-!
# A249462: Number of length n+4 0..4 arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249462, there is no canonical definition to state claims against.
-/

/-! ## A249462.P4042093652951512292

`A249466(A027379(n+2))`
-/

namespace A249462.P4042093652951512292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A027379 (n + 2)).toNat

end

end A249462.P4042093652951512292

/-!
# A249463: Number of length n+4 0..5 arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249463, there is no canonical definition to state claims against.
-/

/-! ## A249463.P3943451493661584705

`A249466(A046691(n+3))`
-/

namespace A249463.P3943451493661584705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A046691 (n + 3)).toNat

end

end A249463.P3943451493661584705

/-!
# A249464: Number of length n+4 0..6 arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249464, there is no canonical definition to state claims against.
-/

/-! ## A249464.P17981860469699313200

`A249466(A052905(n+3))`
-/

namespace A249464.P17981860469699313200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A052905 (n + 3)).toNat

end

end A249464.P17981860469699313200

/-!
# A249465: Number of length n+4 0..7 arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249465, there is no canonical definition to state claims against.
-/

/-! ## A249465.P1696099787554195052

`A249466(A055999(n+4))`
-/

namespace A249465.P1696099787554195052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A055999 (n + 4)).toNat

end

end A249465.P1696099787554195052

/-!
# A249466: T(n,k)=Number of length n+4 0..k arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249466, there is no canonical definition to state claims against.
-/

/-! ## A249466.P16891051713662765433

`A339942(A339953(n+1))+A249001(n+1)`
-/

namespace A249466.P16891051713662765433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339942 (A339953 (n + 1)).toNat + A249001 (n + 1)

end

end A249466.P16891051713662765433

/-!
# A249467: Number of length 1+4 0..n arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249467, the canonical program `A249467.P11510455707939637359` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249467 has offset 1).

The definition of A249467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249467.P11510455707939637359

`ogf((30+70x+280x^2+190x^3+500x^4+50x^5+320x^6-30x^7+30x^8)/(1-4x+6x^2-5x^3+4x^4-2x^5-2x^6+4x^7-5x^8+6x^9-4x^10+x^11))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A249467

/-- `ogf((30+70x+280x^2+190x^3+500x^4+50x^5+320x^6-30x^7+30x^8)/(1-4x+6x^2-5x^3+4x^4-2x^5-2x^6+4x^7-5x^8+6x^9-4x^10+x^11))` -/
def P11510455707939637359.Spec : Prop :=
  ∀ n, P11510455707939637359.a n = A249467 (n + 1)

theorem P11510455707939637359.correct : P11510455707939637359.Spec := by
  intro n
  simp only [A249467, Nat.add_sub_cancel]

end A249467

/-! ## A249467.P14931367084368593745

`(n+2)^5-A249657(n+1)`
-/

namespace A249467.P14931367084368593745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 5 : ℤ) - A249657 (n + 1)

end

end A249467.P14931367084368593745

namespace A249467

/-- `(n+2)^5-A249657(n+1)` -/
def P14931367084368593745.Spec : Prop :=
  ∀ n, P14931367084368593745.a n = A249467 (n + 1)

end A249467

/-! ## A249467.P1373094624012943387

`A249466(∑[n]+1)`
-/

namespace A249467.P1373094624012943387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249467.P1373094624012943387

namespace A249467

/-- `A249466(∑[n]+1)` -/
def P1373094624012943387.Spec : Prop :=
  ∀ n, P1373094624012943387.a n = A249467 (n + 1)

end A249467

/-! ## A249467.P15525376087027197699

`record[A010054(n)*A249466(n+1)]`
-/

namespace A249467.P15525376087027197699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A249466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249467.P15525376087027197699

namespace A249467

/-- `record[A010054(n)*A249466(n+1)]` -/
def P15525376087027197699.Spec : Prop :=
  ∀ n, P15525376087027197699.a n = A249467 (n + 1)

end A249467

/-! ## A249467.P4221750591070257701

`record[gcd(A002262(n), A249466(n+1))]`
-/

namespace A249467.P4221750591070257701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A249466 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249467.P4221750591070257701

namespace A249467

/-- `record[gcd(A002262(n), A249466(n+1))]` -/
def P4221750591070257701.Spec : Prop :=
  ∀ n, (P4221750591070257701.a n : ℤ) = A249467 (n + 1)

end A249467

/-! ## A249467.P6360867202416427318

`record[A249466(n+1)/A093905(n+1)]`
-/

namespace A249467.P6360867202416427318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249466 (n + 1) : ℚ) / (A093905 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249467.P6360867202416427318

namespace A249467

/-- `record[A249466(n+1)/A093905(n+1)]` -/
def P6360867202416427318.Spec : Prop :=
  ∀ n, P6360867202416427318.a n = (A249467 (n + 1) : ℚ)

end A249467

/-!
# A249468: Number of length 2+4 0..n arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249468, there is no canonical definition to state claims against.
-/

/-! ## A249468.P11138779729866126360

`A249466(∑[n+1]+2)`
-/

namespace A249468.P11138779729866126360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249468.P11138779729866126360

/-!
# A249469: Number of length 3+4 0..n arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249469, there is no canonical definition to state claims against.
-/

/-! ## A249469.P10065172279078017169

`A249466(∑[n+2]+4)`
-/

namespace A249469.P10065172279078017169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249469.P10065172279078017169

/-!
# A249470: Number of length 4+4 0..n arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249470, there is no canonical definition to state claims against.
-/

/-! ## A249470.P3302584202301151582

`A249466(A052905(n)+9)`
-/

namespace A249470.P3302584202301151582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A052905 n + 9).toNat

end

end A249470.P3302584202301151582

/-!
# A249471: Number of length 5+4 0..n arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249471, there is no canonical definition to state claims against.
-/

/-! ## A249471.P13265174378862171121

`A249466(A167499(n+3))`
-/

namespace A249471.P13265174378862171121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A167499 (n + 3)).toNat

end

end A249471.P13265174378862171121

/-!
# A249472: Number of length 6+4 0..n arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249472, there is no canonical definition to state claims against.
-/

/-! ## A249472.P1263098159786290856

`A249466(A166136(n+4))`
-/

namespace A249472.P1263098159786290856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A166136 (n + 4)).toNat

end

end A249472.P1263098159786290856

/-!
# A249473: Number of length 7+4 0..n arrays with no five consecutive terms having four times any element equal to the sum of the remaining four.

The programs for A249473, there is no canonical definition to state claims against.
-/

/-! ## A249473.P16349096995542871035

`A249466(A167499(n+5)+2)`
-/

namespace A249473.P16349096995542871035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A167499 (n + 5) + 2).toNat

end

end A249473.P16349096995542871035

/-!
# A249474: E.g.f.: P(x)/exp(1) + Q(x), where P(x) = 1/Product_{n>=1} (1 - x^n/n) and Q(x) = Sum_{n>=1} -(-1)^n / Product_{k=1..n} (k - x^k).

The programs for A249474, there is no canonical definition to state claims against.
-/

/-! ## A249474.P11515799801399275410

`A117910(∑[(n+2)*n!-round(sqrt(n²+1))])`
-/

namespace A249474.P11515799801399275410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.factorial n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249474.P11515799801399275410

/-! ## A249474.P11862047678379267038

`A054899(A080599(n))+n!`
-/

namespace A249474.P11862047678379267038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A080599 n).toNat + (Nat.factorial n : ℤ)

end

end A249474.P11862047678379267038

/-! ## A249474.P11295483530440220707

`A008619(xor(C(n, 4), A196710(n+1)))`
-/

namespace A249474.P11295483530440220707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor (Nat.choose n 4 : ℤ) (A196710 (n + 1))).toNat

end

end A249474.P11295483530440220707

/-!
# A249475: E.g.f.: exp(2)*P(x) - Q(x), where P(x) = 1/Product_{n>=1} (1 - x^n/n) and Q(x) = Sum_{n>=1} 2^n/Product_{k=1..n} (k - x^k).

The programs for A249475, there is no canonical definition to state claims against.
-/

/-! ## A249475.P9078037530787613334

`A002265(A023000(n))+A000985(n)`
-/

namespace A249475.P9078037530787613334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A023000 n).toNat + A000985 n

end

end A249475.P9078037530787613334

/-! ## A249475.P16736735307285235790

`A237284(A002110(n))+A002293(n)`
-/

namespace A249475.P16736735307285235790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237284 (A002110 n).toNat + A002293 n

end

end A249475.P16736735307285235790

/-!
# A249476: E.g.f.: exp(3)*P(x) - Q(x), where P(x) = 1/Product_{n>=1} (1 - x^n/n) and Q(x) = Sum_{n>=1} 3^n/Product_{k=1..n} (k - x^k).

The programs for A249476, there is no canonical definition to state claims against.
-/

/-! ## A249476.P4209207644987495359

`A065033(A363574(n))-A093566(n)`
-/

namespace A249476.P4209207644987495359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A363574 n).toNat - A093566 n

end

end A249476.P4209207644987495359

/-! ## A249476.P14653103171273838538

`A008624(xor(A002293(n+1), A002524(n)))`
-/

namespace A249476.P14653103171273838538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.xor (A002293 (n + 1)) (A002524 n)).toNat

end

end A249476.P14653103171273838538

/-!
# A249477: E.g.f.: exp(4)*P(x) - Q(x), where P(x) = 1/Product_{n>=1} (1 - x^n/n) and Q(x) = Sum_{n>=1} 4^n/Product_{k=1..n} (k - x^k).

The programs for A249477, there is no canonical definition to state claims against.
-/

/-! ## A249477.P6744772134948043106

`A093508(a(n-1))+n-1` with `a(0)=1, a(1)=1`
-/

namespace A249477.P6744772134948043106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A093508 (a (n - 1)).toNat + ((n : ℤ) - 1)

end

end A249477.P6744772134948043106

/-!
# A249479: E.g.f.: Sum_{n>=0} x^n / Product_{k=1..n} (k - x^k).

The programs for A249479, there is no canonical definition to state claims against.
-/

/-! ## A249479.P15148866664174874744

`or(A272900(n!), A325308(n))`
-/

namespace A249479.P15148866664174874744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A272900 (Nat.factorial n)) (A325308 n)

end

end A249479.P15148866664174874744

/-! ## A249479.P17552866087060656260

`A005651(n)+A002620(A014381(n))`
-/

namespace A249479.P17552866087060656260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005651 n + A002620 (A014381 n).toNat

end

end A249479.P17552866087060656260

/-! ## A249479.P7227766223026076208

`A071334(A003432(n))+A005651(n)`
-/

namespace A249479.P7227766223026076208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071334 (A003432 n).toNat + A005651 n

end

end A249479.P7227766223026076208

/-!
# A249483: Squares (A000290) which are also centered triangular numbers (A005448).

The programs for A249483, the canonical program `A249483.P3552470165336617969` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249483 has offset 1).

The definition of A249483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249483.P3552470165336617969

`ogf((1+3x-38x^2+3x^3+x^4)/(1-x-98x^2+98x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A249483

/-- `ogf((1+3x-38x^2+3x^3+x^4)/(1-x-98x^2+98x^3+x^4-x^5))` -/
def P3552470165336617969.Spec : Prop :=
  ∀ n, P3552470165336617969.a n = A249483 (n + 1)

theorem P3552470165336617969.correct : P3552470165336617969.Spec := by
  intro n
  simp only [A249483, Nat.add_sub_cancel]

end A249483

/-! ## A249483.P10662244360317757487

`Δ[10*a(n-2)-a(n-4)]²` with `a(0)=0, a(1)=1, a(2)=3, a(3)=11, a(4)=30`
-/

namespace A249483.P10662244360317757487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 11, 30] fun n f1 =>
  10 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A249483.P10662244360317757487

namespace A249483

/-- `Δ[10*a(n-2)-a(n-4)]²` -/
def P10662244360317757487.Spec : Prop :=
  ∀ n, P10662244360317757487.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P16719284456686594903

`record[10*a(n-2)-a(n-4)]²` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=8, a(5)=19`
-/

namespace A249483.P16719284456686594903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 2, 8, 19] fun n f1 =>
  10 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A249483.P16719284456686594903

namespace A249483

/-- `record[10*a(n-2)-a(n-4)]²` -/
def P16719284456686594903.Spec : Prop :=
  ∀ n, P16719284456686594903.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P11896670215717968852

`A129445(1+n)²`
-/

namespace A249483.P11896670215717968852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (1 + n) ^ 2

end

end A249483.P11896670215717968852

namespace A249483

/-- `A129445(1+n)²` -/
def P11896670215717968852.Spec : Prop :=
  ∀ n, P11896670215717968852.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P1283538392658490387

`A129445(n+1)^2`
-/

namespace A249483.P1283538392658490387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (n + 1) ^ 2

end

end A249483.P1283538392658490387

namespace A249483

/-- `A129445(n+1)^2` -/
def P1283538392658490387.Spec : Prop :=
  ∀ n, P1283538392658490387.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P9738308753414869062

`3*A245031(n+1)+1`
-/

namespace A249483.P9738308753414869062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A245031 (n + 1) + 1

end

end A249483.P9738308753414869062

namespace A249483

/-- `3*A245031(n+1)+1` -/
def P9738308753414869062.Spec : Prop :=
  ∀ n, P9738308753414869062.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P9000166233234744683

`record[A129445(A020986(n))²]`
-/

namespace A249483.P9000166233234744683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A020986 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249483.P9000166233234744683

namespace A249483

/-- `record[A129445(A020986(n))²]` -/
def P9000166233234744683.Spec : Prop :=
  ∀ n, P9000166233234744683.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P2180997807694376329

`record[A129445(A028920(n))²]`
-/

namespace A249483.P2180997807694376329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A028920 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249483.P2180997807694376329

namespace A249483

/-- `record[A129445(A028920(n))²]` -/
def P2180997807694376329.Spec : Prop :=
  ∀ n, P2180997807694376329.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P6728407546710593467

`record[A129445(A291766(n))²]`
-/

namespace A249483.P6728407546710593467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A291766 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249483.P6728407546710593467

namespace A249483

/-- `record[A129445(A291766(n))²]` -/
def P6728407546710593467.Spec : Prop :=
  ∀ n, P6728407546710593467.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P735584818386724090

`∑[gcd(A004291(n), A087125(n))]²`
-/

namespace A249483.P735584818386724090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004291 n) (A087125 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A249483.P735584818386724090

namespace A249483

/-- `∑[gcd(A004291(n), A087125(n))]²` -/
def P735584818386724090.Spec : Prop :=
  ∀ n, (P735584818386724090.a n : ℤ) = A249483 (n + 1)

end A249483

/-! ## A249483.P5316455556687013153

`∑[A122653(n)/A000034(n)]+1`
-/

namespace A249483.P5316455556687013153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122653 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249483.P5316455556687013153

namespace A249483

/-- `∑[A122653(n)/A000034(n)]+1` -/
def P5316455556687013153.Spec : Prop :=
  ∀ n, P5316455556687013153.a n = (A249483 (n + 1) : ℚ)

end A249483

/-! ## A249483.P5447025563374318993

`(A181442(n+1)-A129444(n+2))²`
-/

namespace A249483.P5447025563374318993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181442 (n + 1) - A129444 (n + 2)) ^ 2

end

end A249483.P5447025563374318993

namespace A249483

/-- `(A181442(n+1)-A129444(n+2))²` -/
def P5447025563374318993.Spec : Prop :=
  ∀ n, P5447025563374318993.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P15026827485309648398

`(2*A080806(n+1)-A074061(n))²`
-/

namespace A249483.P15026827485309648398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A080806 (n + 1) - A074061 n) ^ 2

end

end A249483.P15026827485309648398

namespace A249483

/-- `(2*A080806(n+1)-A074061(n))²` -/
def P15026827485309648398.Spec : Prop :=
  ∀ n, P15026827485309648398.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P12184528875088029219

`∪[A080874(2*n+1), A140781(n)]²`
-/

namespace A249483.P12184528875088029219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140781 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A249483.P12184528875088029219

namespace A249483

/-- `∪[A080874(2*n+1), A140781(n)]²` -/
def P12184528875088029219.Spec : Prop :=
  ∀ n, (P12184528875088029219.a n : ℤ) = A249483 (n + 1)

end A249483

/-! ## A249483.P805223711547351253

`∪[A140781(n), A080874(A005408(n))]²`
-/

namespace A249483.P805223711547351253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140781 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (A005408 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A249483.P805223711547351253

namespace A249483

/-- `∪[A140781(n), A080874(A005408(n))]²` -/
def P805223711547351253.Spec : Prop :=
  ∀ n, (P805223711547351253.a n : ℤ) = A249483 (n + 1)

end A249483

/-! ## A249483.P150510375173840090

`record[A129445(A020986(n))]*A129445(n+1)`
-/

namespace A249483.P150510375173840090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A129445 (n + 1)

end

end A249483.P150510375173840090

namespace A249483

/-- `record[A129445(A020986(n))]*A129445(n+1)` -/
def P150510375173840090.Spec : Prop :=
  ∀ n, P150510375173840090.a n = A249483 (n + 1)

end A249483

/-! ## A249483.P769702548167870232

`record[A129445(A028920(n))]*A129445(n+1)`
-/

namespace A249483.P769702548167870232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A129445 (n + 1)

end

end A249483.P769702548167870232

namespace A249483

/-- `record[A129445(A028920(n))]*A129445(n+1)` -/
def P769702548167870232.Spec : Prop :=
  ∀ n, P769702548167870232.a n = A249483 (n + 1)

end A249483

/-!
# A249484: Sequence which reappears when consecutive terms are erased iff they have the same parity.

The programs for A249484, there is no canonical definition to state claims against.
-/

/-! ## A249484.P2918656510171795668

`A073898(A249900(n))`
-/

namespace A249484.P2918656510171795668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (A249900 n).toNat

end

end A249484.P2918656510171795668

/-!
# A249485: Numbers n such that sigma(n) - 2 is prime.

The programs for A249485, the canonical program `A249485.P3309504854679943155` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249485 has offset 1).

The definition of A249485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249485.P3309504854679943155

`eq[1, A001222(A000203(n+2)-2)]+2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249485

/-- `eq[1, A001222(A000203(n+2)-2)]+2` -/
def P3309504854679943155.Spec : Prop :=
  ∀ n, (P3309504854679943155.a n : ℤ) = A249485 (n + 1)

theorem P3309504854679943155.correct : P3309504854679943155.Spec := by
  intro n
  simp only [A249485, Nat.add_sub_cancel]

end A249485

/-! ## A249485.P3551146859210875912

`eq[2, A000005(A000203(n+2)-2)]+2`
-/

namespace A249485.P3551146859210875912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 2) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A249485.P3551146859210875912

namespace A249485

/-- `eq[2, A000005(A000203(n+2)-2)]+2` -/
def P3551146859210875912.Spec : Prop :=
  ∀ n, (P3551146859210875912.a n : ℤ) = A249485 (n + 1)

end A249485

/-! ## A249485.P4439598433762685377

`eq[1, A330241(∑{d}[n, #%#²])]`
-/

namespace A249485.P4439598433762685377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 (∑ d ∈ Nat.divisors (f3 n), d % d ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249485.P4439598433762685377

namespace A249485

/-- `eq[1, A330241(∑{d}[n, #%#²])]` -/
def P4439598433762685377.Spec : Prop :=
  ∀ n, (P4439598433762685377.a n : ℤ) = A249485 (n + 1)

end A249485

/-! ## A249485.P7392086354768893111

`eq[1, A330241(A039653(n))]`
-/

namespace A249485.P7392086354768893111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249485.P7392086354768893111

namespace A249485

/-- `eq[1, A330241(A039653(n))]` -/
def P7392086354768893111.Spec : Prop :=
  ∀ n, (P7392086354768893111.a n : ℤ) = A249485 (n + 1)

end A249485

/-! ## A249485.P13157236934007916323

`eq[A040000(n), A190014(A039653(n))]`
-/

namespace A249485.P13157236934007916323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249485.P13157236934007916323

namespace A249485

/-- `eq[A040000(n), A190014(A039653(n))]` -/
def P13157236934007916323.Spec : Prop :=
  ∀ n, (P13157236934007916323.a n : ℤ) = A249485 (n + 1)

end A249485

/-!
# A249486: Nonprime numbers n such that sigma(n) + n is prime.

The programs for A249486, there is no canonical definition to state claims against.
-/

/-! ## A249486.P12252208988881639182

`filter[A078762(1+n), A005171(#)]`
-/

namespace A249486.P12252208988881639182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A249486.P12252208988881639182

/-! ## A249486.P4859645979772251785

`∩[A018252(n+1), A078762(n+1)]`
-/

namespace A249486.P4859645979772251785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249486.P4859645979772251785

/-! ## A249486.P13756545503602254716

`∩[A078762(n+1), A141468(n+1)]`
-/

namespace A249486.P13756545503602254716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249486.P13756545503602254716

/-! ## A249486.P451155187960045052

`record[A191558(A078762(n+1))]`
-/

namespace A249486.P451155187960045052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A078762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249486.P451155187960045052

/-! ## A249486.P5872029782125506966

`eq[A014683(n+1)+1, A246908(n+1)]+1`
-/

namespace A249486.P5872029782125506966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A249486.P5872029782125506966

/-! ## A249486.P17622144944682226393

`record[A063928(2*A078762(n+1))]`
-/

namespace A249486.P17622144944682226393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (2 * A078762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249486.P17622144944682226393

/-! ## A249486.P1691574118822292314

`record[A191558(n+1)-A191558(A155085(n+1))]`
-/

namespace A249486.P1691574118822292314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1) - A191558 (A155085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249486.P1691574118822292314

/-!
# A249488: Square array A(n,k) for n,k>=0, where A(n,k) is the number of paths from (0,0) to (n,k) in the directed graph with vertices (i,j) and edges (i,j)-to-(i+1,j), (i,j)-to-(i,j+1), and (i,i+h)-to-(i+1,i+h+1) for every i,j,h>=0.

The programs for A249488, there is no canonical definition to state claims against.
-/

/-! ## A249488.P5222422964106520482

`A026780(∑[2*n]%comp[∑[n]])`
-/

namespace A249488.P5222422964106520482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A249488.P5222422964106520482

/-! ## A249488.P10254032919571603252

`A056160(A039755(n))`
-/

namespace A249488.P10254032919571603252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056160 (A039755 n).toNat

end

end A249488.P10254032919571603252

/-!
# A249490: a(n) = Sum_{m=0..floor((n-1)/2)} prime((n-m)(n-m-1)/2+m+1).

The programs for A249490, the canonical program `A249490.P6787782101432485879` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249490 has offset 1).

The definition of A249490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), A000040((n+1-#)*(n+1-#-1)/2+#+1)]` (program `A249490.P6787782101432485879`, by `A249490.P6787782101432485879.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249490.P6787782101432485879

`∑{#}[floor(n/2), A000040((n+1-#)*(n+1-#-1)/2+#+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249490

/-- `∑{#}[floor(n/2), A000040((n+1-#)*(n+1-#-1)/2+#+1)]` -/
def P6787782101432485879.Spec : Prop :=
  ∀ n, P6787782101432485879.a n = A249490 (n + 1)

theorem P6787782101432485879.correct : P6787782101432485879.Spec := by
  intro n
  simp only [A249490, Nat.add_sub_cancel]

end A249490

/-! ## A249490.P10700670035689705903

`A295053(n)+A002260(A004102(n))`
-/

namespace A249490.P10700670035689705903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295053 n + A002260 (A004102 n).toNat

end

end A249490.P10700670035689705903

namespace A249490

/-- `A295053(n)+A002260(A004102(n))` -/
def P10700670035689705903.Spec : Prop :=
  ∀ n, P10700670035689705903.a n = A249490 (n + 1)

end A249490

/-!
# A249494: Lexicographically earliest permutation of the positive integers such that the parity of the first digit of a(n+1) equals that of a(n)'s last digit.

The programs for A249494, there is no canonical definition to state claims against.
-/

/-! ## A249494.P11681071303345996153

`fo[A249506(n+1)-1]+1`
-/

namespace A249494.P11681071303345996153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249506 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A249494.P11681071303345996153

/-! ## A249494.P5211965238444426055

`A249278(A249506(A249278(n+1)))`
-/

namespace A249494.P5211965238444426055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249278 (A249506 (A249278 (n + 1)).toNat).toNat

end

end A249494.P5211965238444426055

/-!
# A249495: Number of length n+5 0..6 arrays with every six consecutive terms having five times some element equal to the sum of the remaining five.

The programs for A249495, there is no canonical definition to state claims against.
-/

/-! ## A249495.P15443634747185775385

`A249497(A052905(n+3))`
-/

namespace A249495.P15443634747185775385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A052905 (n + 3)).toNat

end

end A249495.P15443634747185775385

/-!
# A249496: Number of length n+5 0..7 arrays with every six consecutive terms having five times some element equal to the sum of the remaining five.

The programs for A249496, there is no canonical definition to state claims against.
-/

/-! ## A249496.P5932461189810635083

`A249497(((n+1)/2+5)*(n+4))`
-/

namespace A249496.P5932461189810635083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / 2 + 5) * (n + 4 : ℚ))).toNat

end

end A249496.P5932461189810635083

/-!
# A249497: T(n,k)=Number of length n+5 0..k arrays with every six consecutive terms having five times some element equal to the sum of the remaining five.

The programs for A249497, there is no canonical definition to state claims against.
-/

/-! ## A249497.P13396694445165744846

`A249499(A000120(A204985(n+1)²))`
-/

namespace A249497.P13396694445165744846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249499 (A000120 (A204985 (n + 1) ^ 2).toNat).toNat

end

end A249497.P13396694445165744846

/-! ## A249497.P7434965314675591903

`A249500(A004736(n+1)*A008835(n+1))`
-/

namespace A249497.P7434965314675591903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249500 (A004736 (n + 1) * A008835 (n + 1)).toNat

end

end A249497.P7434965314675591903

/-!
# A249498: Number of length 1+5 0..n arrays with every six consecutive terms having five times some element equal to the sum of the remaining five.

The programs for A249498, there is no canonical definition to state claims against.
-/

/-! ## A249498.P16913571338671311424

`A249097(A249098(n+2))-A249531(n+1)`
-/

namespace A249498.P16913571338671311424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249097 (A249098 (n + 2)).toNat - A249531 (n + 1)

end

end A249498.P16913571338671311424

/-! ## A249498.P17894342415678361015

`A249497(∑[n]+1)`
-/

namespace A249498.P17894342415678361015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249498.P17894342415678361015

/-! ## A249498.P18351202416655229799

`record[A249497(A106247(n))]`
-/

namespace A249498.P18351202416655229799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249498.P18351202416655229799

/-! ## A249498.P539444659937068970

`record[A249497(A246276(n+1))]`
-/

namespace A249498.P539444659937068970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249498.P539444659937068970

/-! ## A249498.P5275786331663564401

`record[A249497(A249725(n+1))]`
-/

namespace A249498.P5275786331663564401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A249725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249498.P5275786331663564401

/-!
# A249499: Number of length 2+5 0..n arrays with every six consecutive terms having five times some element equal to the sum of the remaining five.

The programs for A249499, there is no canonical definition to state claims against.
-/

/-! ## A249499.P8833997940980574683

`A249532(n+1)%(A249498(n+1)-A249531(n+1))`
-/

namespace A249499.P8833997940980574683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249532 (n + 1)) (A249498 (n + 1) - A249531 (n + 1))

end

end A249499.P8833997940980574683

/-! ## A249499.P6175277411379570502

`A249497(∑[n+1]+2)`
-/

namespace A249499.P6175277411379570502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249499.P6175277411379570502

/-! ## A249499.P79251402719018560

`record[A249497(A022856(n+1))]`
-/

namespace A249499.P79251402719018560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249499.P79251402719018560

/-! ## A249499.P2361483477643768726

`record[A249497(A089071(n+1))]`
-/

namespace A249499.P2361483477643768726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249499.P2361483477643768726

/-! ## A249499.P16003119694925816562

`record[A249497(record[A255552(n+1)])]`
-/

namespace A249499.P16003119694925816562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249499.P16003119694925816562

