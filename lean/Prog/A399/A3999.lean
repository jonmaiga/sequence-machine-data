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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A399900: First elements of the rows of the precise grasshopper infinite barrycade (recursively defined family of permutations of the positive integers having pairwise disjoint sets of partial sums).

The programs for A399900, there is no canonical definition to state claims against.
-/

/-! ## A399900.P10126165218976459980

`fp[A399901(n+1)]+1`
-/

namespace A399900.P10126165218976459980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A399900.P10126165218976459980

/-!
# A399901: Word representation of the precise grasshopper infinite barrycade (recursively defined family of permutations of the positive integers having pairwise disjoint sets of partial sums).

The programs for A399901, there is no canonical definition to state claims against.
-/

/-! ## A399901.P559631586039524462

`A072344(A301812(n+1))`
-/

namespace A399901.P559631586039524462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072344 (A301812 (n + 1)).toNat

end

end A399901.P559631586039524462

/-! ## A399901.P14908166536343242518

`A106052(A042331(n))`
-/

namespace A399901.P14908166536343242518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106052 (A042331 n).toNat

end

end A399901.P14908166536343242518

/-! ## A399901.P7730776341404340025

`A003324(A368804(n+1))`
-/

namespace A399901.P7730776341404340025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A368804 (n + 1)).toNat

end

end A399901.P7730776341404340025

/-!
# A399902: First elements of the rows of the greedy grasshopper infinite barrycade (recursively defined family of permutations of the positive integers having pairwise disjoint sets of partial sums).

The programs for A399902, there is no canonical definition to state claims against.
-/

/-! ## A399902.P12644787691495011101

`fp[A399904(n+1)]+1`
-/

namespace A399902.P12644787691495011101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A399902.P12644787691495011101

/-!
# A399903: Partial sums missed by the greedy grasshopper infinite barrycade (recursively defined family of permutations of the positive integers having pairwise disjoint sets of partial sums).

The programs for A399903, there is no canonical definition to state claims against.
-/

/-! ## A399903.P12247824267219053111

`eq[0, A399904(n+1)]+1`
-/

namespace A399903.P12247824267219053111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399903.P12247824267219053111

/-! ## A399903.P523852121128769279

`lt[A399904(A028310(n)), 1]`
-/

namespace A399903.P523852121128769279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399904 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A399903.P523852121128769279

/-! ## A399903.P15583197327573019177

`lt[and(A126908(3*n+5), -A399904(n+1)), n]+1`
-/

namespace A399903.P15583197327573019177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126908 (3 * n + 5)) (-A399904 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A399903.P15583197327573019177

/-! ## A399903.P226851355285522325

`lt[and(A092058(n+5), -A399904(n+1)), n]+1`
-/

namespace A399903.P226851355285522325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092058 (n + 5)) (-A399904 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A399903.P226851355285522325

/-! ## A399903.P5486192317238582817

`lt[and(A178883(3*(n+1)), -A399904(n+1)), n]+1`
-/

namespace A399903.P5486192317238582817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178883 (3 * (n + 1))) (-A399904 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A399903.P5486192317238582817

/-!
# A399905: First elements of the rows of the precise greedy grasshopper infinite barrycade (recursively defined family of permutations of the positive integers having pairwise disjoint sets of partial sums).

The programs for A399905, there is no canonical definition to state claims against.
-/

/-! ## A399905.P3130371675963505123

`fp[A399906(n+1)]+1`
-/

namespace A399905.P3130371675963505123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A399905.P3130371675963505123

/-!
# A399906: Word representation of the precise greedy grasshopper infinite barrycade (recursively defined family of permutations of the positive integers having pairwise disjoint sets of partial sums).

The programs for A399906, there is no canonical definition to state claims against.
-/

/-! ## A399906.P15733238993494253167

`A083898(A063431(n+2))`
-/

namespace A399906.P15733238993494253167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083898 (A063431 (n + 2)).toNat

end

end A399906.P15733238993494253167

/-! ## A399906.P13678370178249644371

`A374740(A035515(n))`
-/

namespace A399906.P13678370178249644371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374740 (A035515 n).toNat

end

end A399906.P13678370178249644371

/-! ## A399906.P12850653081524710021

`A218828(A290415(n+1))`
-/

namespace A399906.P12850653081524710021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (A290415 (n + 1)).toNat

end

end A399906.P12850653081524710021

/-! ## A399906.P12882538471111461466

`A327567(A209684(n+2))`
-/

namespace A399906.P12882538471111461466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327567 (A209684 (n + 2)).toNat

end

end A399906.P12882538471111461466

/-! ## A399906.P16130122379821351551

`A001222(4+n+A049614(n))`
-/

namespace A399906.P16130122379821351551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 + ((n : ℤ) + A049614 n)).toNat

end

end A399906.P16130122379821351551

/-!
# A399907: Smallest positive integers omitted from the rows of the greedy infinite quasi-barrycade (recursively defined family of quasi-permutations having pairwise disjoint sets of partial sums).

The programs for A399907, there is no canonical definition to state claims against.
-/

/-! ## A399907.P8337503154167159140

`A399908(n+2)-A089723(A171701(n+1))`
-/

namespace A399907.P8337503154167159140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399908 (n + 2) - A089723 (A171701 (n + 1)).toNat

end

end A399907.P8337503154167159140

/-!
# A399908: First elements of the rows of the greedy infinite quasi-barrycade (recursively defined family of quasi-permutations having pairwise disjoint sets of partial sums).

The programs for A399908, there is no canonical definition to state claims against.
-/

/-! ## A399908.P11104554002077789559

`fp[A399909(n+1)]+1`
-/

namespace A399908.P11104554002077789559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A399908.P11104554002077789559

/-!
# A399909: Word representation of the greedy infinite quasi-barrycade (recursively defined family of quasi-permutations having pairwise disjoint sets of partial sums).

The programs for A399909, there is no canonical definition to state claims against.
-/

/-! ## A399909.P12085530324298391477

`A376181(A060637(n)%A336863(n+1))`
-/

namespace A399909.P12085530324298391477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376181 (Int.tmod (A060637 n) (A336863 (n + 1))).toNat

end

end A399909.P12085530324298391477

/-! ## A399909.P13211645761206438251

`A334201(A165504(n+1)*(A258207(n+1)+1))`
-/

namespace A399909.P13211645761206438251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334201 (A165504 (n + 1) * (A258207 (n + 1) + 1)).toNat

end

end A399909.P13211645761206438251

/-! ## A399909.P6131663858016470313

`A376181(A127136(n+1))`
-/

namespace A399909.P6131663858016470313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376181 (A127136 (n + 1)).toNat

end

end A399909.P6131663858016470313

/-! ## A399909.P3382246871790531626

`A235123(A336863(n+1))`
-/

namespace A399909.P3382246871790531626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235123 (A336863 (n + 1)).toNat

end

end A399909.P3382246871790531626

/-! ## A399909.P17949685000902283302

`A347643(A388547(n+1))`
-/

namespace A399909.P17949685000902283302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (A388547 (n + 1)).toNat

end

end A399909.P17949685000902283302

/-!
# A399916: The factorial base expansion of a(n) corresponds to the winning position in Tchoukaillon (or Mancala) solitaire for n stones.

The programs for A399916, there is no canonical definition to state claims against.
-/

/-! ## A399916.P15850059080014192852

`A322001(A028931(n))`
-/

namespace A399916.P15850059080014192852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322001 (A028931 n).toNat

end

end A399916.P15850059080014192852

/-!
# A399920: Smallest Ramanujan's largely composite number (A067128) which is divisible by prime(n).

The programs for A399920, there is no canonical definition to state claims against.
-/

/-! ## A399920.P1088349207291180078

`A046523(A001710(n+1))*A154363(n+1)`
-/

namespace A399920.P1088349207291180078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A001710 (n + 1)).toNat * A154363 (n + 1)

end

end A399920.P1088349207291180078

/-! ## A399920.P12794442338551531838

`A000040(n+1)*A115510(A062569(n))`
-/

namespace A399920.P12794442338551531838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A115510 (A062569 n).toNat

end

end A399920.P12794442338551531838

/-!
# A399922: Number of equivalence classes of n X n binary matrices with distinct rows and distinct columns under simultaneous permutation of rows and columns.

The programs for A399922, there is no canonical definition to state claims against.
-/

/-! ## A399922.P1976906938459100168

`A356059(A000578(a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A399922.P1976906938459100168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A356059 (A000578 (a (n - 2)).toNat).toNat

end

end A399922.P1976906938459100168

/-!
# A399924: Numbers k such that A007429(k) is odd.

The programs for A399924, the canonical program `A399924.P13669418604275787557` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399924 has offset 1).

The definition of A399924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399924.P13669418604275787557

`eq[1, gcd(2, A007429(n+1))]+1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399924

/-- `eq[1, gcd(2, A007429(n+1))]+1` -/
def P13669418604275787557.Spec : Prop :=
  ∀ n, (P13669418604275787557.a n : ℤ) = A399924 (n + 1)

theorem P13669418604275787557.correct : P13669418604275787557.Spec := by
  intro n
  simp only [A399924, Nat.add_sub_cancel]

end A399924

/-! ## A399924.P1283769413018116845

`filter[A003159(1+n), A353628(#)]`
-/

namespace A399924.P1283769413018116845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A399924.P1283769413018116845

namespace A399924

/-- `filter[A003159(1+n), A353628(#)]` -/
def P1283769413018116845.Spec : Prop :=
  ∀ n, P1283769413018116845.a n = A399924 (n + 1)

end A399924

/-! ## A399924.P7754377873832412351

`filter[A353511(1+n), A035263(#)]`
-/

namespace A399924.P7754377873832412351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A399924.P7754377873832412351

namespace A399924

/-- `filter[A353511(1+n), A035263(#)]` -/
def P7754377873832412351.Spec : Prop :=
  ∀ n, P7754377873832412351.a n = A399924 (n + 1)

end A399924

/-! ## A399924.P14022495618352211837

`∩[A003159(n+1), A353511(n+1)]`
-/

namespace A399924.P14022495618352211837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399924.P14022495618352211837

namespace A399924

/-- `∩[A003159(n+1), A353511(n+1)]` -/
def P14022495618352211837.Spec : Prop :=
  ∀ n, (P14022495618352211837.a n : ℤ) = A399924 (n + 1)

end A399924

/-! ## A399924.P15107508757563302545

`eq[1, A076752(n+1)%2]+1`
-/

namespace A399924.P15107508757563302545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076752 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399924.P15107508757563302545

namespace A399924

/-- `eq[1, A076752(n+1)%2]+1` -/
def P15107508757563302545.Spec : Prop :=
  ∀ n, (P15107508757563302545.a n : ℤ) = A399924 (n + 1)

end A399924

/-! ## A399924.P15625344469845641419

`eq[1, A288417(n+1)%2]+1`
-/

namespace A399924.P15625344469845641419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288417 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399924.P15625344469845641419

namespace A399924

/-- `eq[1, A288417(n+1)%2]+1` -/
def P15625344469845641419.Spec : Prop :=
  ∀ n, (P15625344469845641419.a n : ℤ) = A399924 (n + 1)

end A399924

/-! ## A399924.P2702712427785895491

`eq[2, A171977(A076752(n+1))]+1`
-/

namespace A399924.P2702712427785895491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (A076752 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399924.P2702712427785895491

namespace A399924

/-- `eq[2, A171977(A076752(n+1))]+1` -/
def P2702712427785895491.Spec : Prop :=
  ∀ n, (P2702712427785895491.a n : ℤ) = A399924 (n + 1)

end A399924

/-! ## A399924.P1891088549754672133

`comp[lt[A328271(n+1)%2, 1]]+1`
-/

namespace A399924.P1891088549754672133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328271 (n + 1)) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A399924.P1891088549754672133

namespace A399924

/-- `comp[lt[A328271(n+1)%2, 1]]+1` -/
def P1891088549754672133.Spec : Prop :=
  ∀ n, (P1891088549754672133.a n : ℤ) = A399924 (n + 1)

end A399924

/-! ## A399924.P2457940323090016369

`filter[A036552(2*n+1), A353628(#)]`
-/

namespace A399924.P2457940323090016369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A399924.P2457940323090016369

namespace A399924

/-- `filter[A036552(2*n+1), A353628(#)]` -/
def P2457940323090016369.Spec : Prop :=
  ∀ n, P2457940323090016369.a n = A399924 (n + 1)

end A399924

/-! ## A399924.P15510934935318338109

`eq[1, A328578(A007429(n+1))]+1`
-/

namespace A399924.P15510934935318338109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (A007429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399924.P15510934935318338109

namespace A399924

/-- `eq[1, A328578(A007429(n+1))]+1` -/
def P15510934935318338109.Spec : Prop :=
  ∀ n, (P15510934935318338109.a n : ℤ) = A399924 (n + 1)

end A399924

/-! ## A399924.P12156108127230937338

`eq[2, gcd(4, A320992(n))]`
-/

namespace A399924.P12156108127230937338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A320992 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399924.P12156108127230937338

namespace A399924

/-- `eq[2, gcd(4, A320992(n))]` -/
def P12156108127230937338.Spec : Prop :=
  ∀ n, (P12156108127230937338.a n : ℤ) = A399924 (n + 1)

end A399924

/-!
# A399925: Numbers k such that A007429(k) is even.

The programs for A399925, the canonical program `A399925.P15039413478081315609` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399925 has offset 1).

The definition of A399925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399925.P15039413478081315609

`eq[1, (2/gcd(2, A007429(n+1)))%2]+1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399925

/-- `eq[1, (2/gcd(2, A007429(n+1)))%2]+1` -/
def P15039413478081315609.Spec : Prop :=
  ∀ n, (P15039413478081315609.a n : ℤ) = A399925 (n + 1)

theorem P15039413478081315609.correct : P15039413478081315609.Spec := by
  intro n
  simp only [A399925, Nat.add_sub_cancel]

end A399925

/-! ## A399925.P10897128735343717701

`lt[2, val(A279227(n), 2)]`
-/

namespace A399925.P10897128735343717701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A279227 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A399925.P10897128735343717701

namespace A399925

/-- `lt[2, val(A279227(n), 2)]` -/
def P10897128735343717701.Spec : Prop :=
  ∀ n, (P10897128735343717701.a n : ℤ) = A399925 (n + 1)

end A399925

/-! ## A399925.P12195063225852735870

`lt[A288417(n+1)%2, 1]+1`
-/

namespace A399925.P12195063225852735870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288417 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A399925.P12195063225852735870

namespace A399925

/-- `lt[A288417(n+1)%2, 1]+1` -/
def P12195063225852735870.Spec : Prop :=
  ∀ n, (P12195063225852735870.a n : ℤ) = A399925 (n + 1)

end A399925

/-! ## A399925.P15259725838377135670

`lt[A328271(n+1)%2, 1]+1`
-/

namespace A399925.P15259725838377135670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328271 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A399925.P15259725838377135670

namespace A399925

/-- `lt[A328271(n+1)%2, 1]+1` -/
def P15259725838377135670.Spec : Prop :=
  ∀ n, (P15259725838377135670.a n : ℤ) = A399925 (n + 1)

end A399925

/-! ## A399925.P16124094799338347977

`eq[1, A033999(A007429(n+1))]+1`
-/

namespace A399925.P16124094799338347977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A007429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399925.P16124094799338347977

namespace A399925

/-- `eq[1, A033999(A007429(n+1))]+1` -/
def P16124094799338347977.Spec : Prop :=
  ∀ n, (P16124094799338347977.a n : ℤ) = A399925 (n + 1)

end A399925

/-! ## A399925.P175210379613776039

`lt[16, A088379(A007429(n+1)+1)]+1`
-/

namespace A399925.P175210379613776039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088379 (A007429 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A399925.P175210379613776039

namespace A399925

/-- `lt[16, A088379(A007429(n+1)+1)]+1` -/
def P175210379613776039.Spec : Prop :=
  ∀ n, (P175210379613776039.a n : ℤ) = A399925 (n + 1)

end A399925

/-!
# A399927: Lexicographically earliest sequence such that each term specifies how many positions away the nearest larger term occurs.

The programs for A399927, there is no canonical definition to state claims against.
-/

/-! ## A399927.P13196389911517880300

`gcd(A105438(n), A378560(A193632(n)))`
-/

namespace A399927.P13196389911517880300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105438 n) (A378560 (A193632 n).toNat)

end

end A399927.P13196389911517880300

/-! ## A399927.P2078850667205648303

`A000034(A271246(n+1))*A130296(n+1)`
-/

namespace A399927.P2078850667205648303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A271246 (n + 1)).toNat * A130296 (n + 1)

end

end A399927.P2078850667205648303

/-! ## A399927.P12689600863953679737

`A108371(n+1)-A358750(A333256(3*n+4))`
-/

namespace A399927.P12689600863953679737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108371 (n + 1) - A358750 (A333256 (3 * n + 4)).toNat

end

end A399927.P12689600863953679737

/-! ## A399927.P5528108675172004595

`A368544(A225466(n))`
-/

namespace A399927.P5528108675172004595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368544 (A225466 n).toNat

end

end A399927.P5528108675172004595

/-! ## A399927.P9910160974833101721

`A383534(A375969(n+2))`
-/

namespace A399927.P9910160974833101721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383534 (A375969 (n + 2)).toNat

end

end A399927.P9910160974833101721

/-!
# A399931: Maximum number of Hamiltonian cycles in a polyomino with 2*n cells.

The programs for A399931, there is no canonical definition to state claims against.
-/

/-! ## A399931.P5835315339133721056

`A356068(2^ceil(n/2))`
-/

namespace A399931.P5835315339133721056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A399931.P5835315339133721056

/-! ## A399931.P10251483389156801054

`A322841(2^floor((n+1)/2))+1`
-/

namespace A399931.P10251483389156801054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322841 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ))).toNat + 1

end

end A399931.P10251483389156801054

/-! ## A399931.P12245158224804440570

`A239950(A008643(n+1))`
-/

namespace A399931.P12245158224804440570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239950 (A008643 (n + 1)).toNat

end

end A399931.P12245158224804440570

/-! ## A399931.P12752875517072490034

`A239950(A008644(n+1))`
-/

namespace A399931.P12752875517072490034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239950 (A008644 (n + 1)).toNat

end

end A399931.P12752875517072490034

/-! ## A399931.P1703043104758177300

`A239950(A008645(n+1))`
-/

namespace A399931.P1703043104758177300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239950 (A008645 (n + 1)).toNat

end

end A399931.P1703043104758177300

/-!
# A399934: Six times the maximum area of the convex hull of a polyhex with n cells, where each hexagonal cell has area 1.

The programs for A399934, the canonical program `A399934.P14325894849498318737` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399934 has offset 1).

The definition of A399934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399934.P14325894849498318737

`ogf((6+2x+x^2-3x^3)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399934

/-- `ogf((6+2x+x^2-3x^3)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P14325894849498318737.Spec : Prop :=
  ∀ n, P14325894849498318737.a n = A399934 (n + 1)

theorem P14325894849498318737.correct : P14325894849498318737.Spec := by
  intro n
  simp only [A399934, Nat.add_sub_cancel]

end A399934

/-! ## A399934.P15499174646822049335

`ceil((n+1)²+14*(n+1)/3)`
-/

namespace A399934.P15499174646822049335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) + (14 * (n + 1) : ℚ) / 3⌉

end

end A399934.P15499174646822049335

namespace A399934

/-- `ceil((n+1)²+14*(n+1)/3)` -/
def P15499174646822049335.Spec : Prop :=
  ∀ n, P15499174646822049335.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P5010267962124580360

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=6, a(1)=14, a(2)=23, a(3)=35, a(4)=49`
-/

namespace A399934.P5010267962124580360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 14, 23, 35, 49] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A399934.P5010267962124580360

namespace A399934

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P5010267962124580360.Spec : Prop :=
  ∀ n, P5010267962124580360.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P9863484436009366975

`∑[3+∑[3-n%3]]`
-/

namespace A399934.P9863484436009366975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P9863484436009366975

namespace A399934

/-- `∑[3+∑[3-n%3]]` -/
def P9863484436009366975.Spec : Prop :=
  ∀ n, P9863484436009366975.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P7333599281259207065

`∑[a(n-3)+6]` with `a(0)=6, a(1)=8, a(2)=9`
-/

namespace A399934.P7333599281259207065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 8, 9] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P7333599281259207065

namespace A399934

/-- `∑[a(n-3)+6]` -/
def P7333599281259207065.Spec : Prop :=
  ∀ n, (P7333599281259207065.a n : ℤ) = A399934 (n + 1)

end A399934

/-! ## A399934.P15858399394211607006

`∑[∑[floor(a(n-3))]]` with `a(0)=6, a(1)=2, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A399934.P15858399394211607006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 2, 1, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P15858399394211607006

namespace A399934

/-- `∑[∑[floor(a(n-3))]]` -/
def P15858399394211607006.Spec : Prop :=
  ∀ n, (P15858399394211607006.a n : ℤ) = A399934 (n + 1)

end A399934

/-! ## A399934.P9745089761622646720

`∑[∑[4-a(a(n-2))]]` with `a(0)=6, a(1)=2, a(2)=1`
-/

namespace A399934.P9745089761622646720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 2, 1] fun n f2 =>
  4 - f2 (f2 (n - 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P9745089761622646720

namespace A399934

/-- `∑[∑[4-a(a(n-2))]]` -/
def P9745089761622646720.Spec : Prop :=
  ∀ n, P9745089761622646720.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P656405145162094077

`∑[A047261(n+1)+4]`
-/

namespace A399934.P656405145162094077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P656405145162094077

namespace A399934

/-- `∑[A047261(n+1)+4]` -/
def P656405145162094077.Spec : Prop :=
  ∀ n, P656405145162094077.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P7470037094726277835

`∑[A029739(n+1)+5]`
-/

namespace A399934.P7470037094726277835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P7470037094726277835

namespace A399934

/-- `∑[A029739(n+1)+5]` -/
def P7470037094726277835.Spec : Prop :=
  ∀ n, P7470037094726277835.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P3699564467895931737

`A400700(n)+A047378(n+1)`
-/

namespace A399934.P3699564467895931737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400700 n + A047378 (n + 1)

end

end A399934.P3699564467895931737

namespace A399934

/-- `A400700(n)+A047378(n+1)` -/
def P3699564467895931737.Spec : Prop :=
  ∀ n, P3699564467895931737.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P14186032687189762573

`A102305(n+1)+A047622(n+1)`
-/

namespace A399934.P14186032687189762573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102305 (n + 1) + A047622 (n + 1)

end

end A399934.P14186032687189762573

namespace A399934

/-- `A102305(n+1)+A047622(n+1)` -/
def P14186032687189762573.Spec : Prop :=
  ∀ n, P14186032687189762573.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P3338854748623068666

`A005563(n+1)+A005563(n+1)-A262523(n)`
-/

namespace A399934.P3338854748623068666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) + A005563 (n + 1) - A262523 n

end

end A399934.P3338854748623068666

namespace A399934

/-- `A005563(n+1)+A005563(n+1)-A262523(n)` -/
def P3338854748623068666.Spec : Prop :=
  ∀ n, P3338854748623068666.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P15445704018448277750

`A240438(n+3)+2*n+1`
-/

namespace A399934.P15445704018448277750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240438 (n + 3) + (2 * n + 1 : ℤ)

end

end A399934.P15445704018448277750

namespace A399934

/-- `A240438(n+3)+2*n+1` -/
def P15445704018448277750.Spec : Prop :=
  ∀ n, P15445704018448277750.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P17104441803715752914

`∑[A047244(n+4)]`
-/

namespace A399934.P17104441803715752914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P17104441803715752914

namespace A399934

/-- `∑[A047244(n+4)]` -/
def P17104441803715752914.Spec : Prop :=
  ∀ n, P17104441803715752914.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P12716979030727425032

`A047572(2*(n+1))+(n+2)²`
-/

namespace A399934.P12716979030727425032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047572 (2 * (n + 1)) + ((n + 2) ^ 2 : ℤ)

end

end A399934.P12716979030727425032

namespace A399934

/-- `A047572(2*(n+1))+(n+2)²` -/
def P12716979030727425032.Spec : Prop :=
  ∀ n, P12716979030727425032.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P8438311204866070414

`A398929(2*n+1)+(n+2)²`
-/

namespace A399934.P8438311204866070414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398929 (2 * n + 1) + ((n + 2) ^ 2 : ℤ)

end

end A399934.P8438311204866070414

namespace A399934

/-- `A398929(2*n+1)+(n+2)²` -/
def P8438311204866070414.Spec : Prop :=
  ∀ n, P8438311204866070414.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P15532998717627025745

`A097602(A016789(n+1))+2*n`
-/

namespace A399934.P15532998717627025745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097602 (A016789 (n + 1)).toNat + (2 * n : ℤ)

end

end A399934.P15532998717627025745

namespace A399934

/-- `A097602(A016789(n+1))+2*n` -/
def P15532998717627025745.Spec : Prop :=
  ∀ n, P15532998717627025745.a n = A399934 (n + 1)

end A399934

/-!
# A399935: G.f.: 1 = Sum_{n>=0} a(n) * x^n / (1 + x)^(3^n).

The programs for A399935, there is no canonical definition to state claims against.
-/

/-! ## A399935.P17084990268338566434

`A257340(∏[n!])`
-/

namespace A399935.P17084990268338566434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257340 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A399935.P17084990268338566434

/-!
# A399936: G.f.: 1 = Sum_{n>=0} a(n) * x^n / (1 + x)^(4^n).

The programs for A399936, there is no canonical definition to state claims against.
-/

/-! ## A399936.P5960261660382773359

`A340121(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A399936.P5960261660382773359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A340121 (a (n - 1)).toNat

end

end A399936.P5960261660382773359

/-!
# A399939: Number of permutations of 1..n such that the Hankel matrix of any subsequence of an odd number of consecutive terms is nonsingular.

The programs for A399939, there is no canonical definition to state claims against.
-/

/-! ## A399939.P153865275833431023

`n!-A399940(n)`
-/

namespace A399939.P153865275833431023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A399940 n

end

end A399939.P153865275833431023

/-! ## A399939.P8425475369906229264

`A000142(n)-A399940(n)`
-/

namespace A399939.P8425475369906229264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A399940 n

end

end A399939.P8425475369906229264

/-! ## A399939.P9673294951336164059

`A054899(A317440(3*n+5)+A115088(n))`
-/

namespace A399939.P9673294951336164059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A317440 (3 * n + 5) + A115088 n).toNat

end

end A399939.P9673294951336164059

/-!
# A399940: Number of permutations of 1..n such that the Hankel matrix of some subsequence of an odd number of consecutive terms is singular.

The programs for A399940, there is no canonical definition to state claims against.
-/

/-! ## A399940.P12030625280991825016

`n!-A399939(n)`
-/

namespace A399940.P12030625280991825016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A399939 n

end

end A399940.P12030625280991825016

/-! ## A399940.P2242483032260946819

`A000142(n)-A399939(n)`
-/

namespace A399940.P2242483032260946819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A399939 n

end

end A399940.P2242483032260946819

/-!
# A399943: Number of endofunctions on [n] having at least two isolated fixed points.

The programs for A399943, the canonical program `A399943.P13376487114959424415` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399943 has offset 0).

The definition of A399943 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350212, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399943.P13376487114959424415

`∑{#}[n-2, A350212(C(n+1, 2)+#+2)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399943

/-- `∑{#}[n-2, A350212(C(n+1, 2)+#+2)]` -/
def P13376487114959424415.Spec : Prop :=
  ∀ n, P13376487114959424415.a n = A399943 n

theorem P13376487114959424415.correct : P13376487114959424415.Spec := by
  intro n
  simp only [A399943]

end A399943

/-! ## A399943.P10239986789740304320

`A350134(n)-A348590(n)`
-/

namespace A399943.P10239986789740304320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350134 n - A348590 n

end

end A399943.P10239986789740304320

namespace A399943

/-- `A350134(n)-A348590(n)` -/
def P10239986789740304320.Spec : Prop :=
  ∀ n, P10239986789740304320.a n = A399943 n

end A399943

/-!
# A399944: Numbers k such that sigma(k) = phi(k) + tau(k)^5.

The programs for A399944, there is no canonical definition to state claims against.
-/

/-! ## A399944.P12537767841773683053

`record[∏{p}[A399540(n+1), #]]`
-/

namespace A399944.P12537767841773683053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399540 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A399944.P12537767841773683053

/-! ## A399944.P5553163377784661400

`A399540(record[A084532(2*(n+1))]%A399226(3*n+4))`
-/

namespace A399944.P5553163377784661400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399540 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A399226 (3 * n + 4))).toNat

end

end A399944.P5553163377784661400

/-!
# A399945: Highest frequency of a digit (0, 1 or 2) in the ternary representation of n.

The programs for A399945, there is no canonical definition to state claims against.
-/

/-! ## A399945.P13541551422524082552

`A043277(A319651(n+1))`
-/

namespace A399945.P13541551422524082552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A319651 (n + 1)).toNat

end

end A399945.P13541551422524082552

/-! ## A399945.P5341477305927549430

`A225224(A124216(3*(n+1))+A006530(3*n+5))`
-/

namespace A399945.P5341477305927549430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225224 (A124216 (3 * (n + 1)) + A006530 (3 * n + 5)).toNat

end

end A399945.P5341477305927549430

/-! ## A399945.P18397450611035417689

`A198068(record[A065295(n+4)])`
-/

namespace A399945.P18397450611035417689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198068 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399945.P18397450611035417689

/-! ## A399945.P12214826405030859840

`A275811(A001148(n)*A224958(n))`
-/

namespace A399945.P12214826405030859840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (A001148 n * A224958 n).toNat

end

end A399945.P12214826405030859840

/-! ## A399945.P11354858441084141329

`lcm(A279495(n+1), A279495(A373913(n)))`
-/

namespace A399945.P11354858441084141329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A279495 (n + 1)) (A279495 (A373913 n).toNat)

end

end A399945.P11354858441084141329

/-!
# A399948: Expansion of e.g.f. 1/(1 + log(1 - x) * sinh(x)).

The programs for A399948, there is no canonical definition to state claims against.
-/

/-! ## A399948.P18335590175426114030

`A306910(A394361(n+1))`
-/

namespace A399948.P18335590175426114030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306910 (A394361 (n + 1)).toNat

end

end A399948.P18335590175426114030

/-! ## A399948.P15661331531561665487

`A080464(A100134(n)*A371140(n))`
-/

namespace A399948.P15661331531561665487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080464 ((A100134 n * A371140 n).toNat + 10)

end

end A399948.P15661331531561665487

/-!
# A399949: Record high points in A400000.

The programs for A399949, there is no canonical definition to state claims against.
-/

/-! ## A399949.P9075552685338065246

`record[A397493(n)]`
-/

namespace A399949.P9075552685338065246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A399949.P9075552685338065246

/-! ## A399949.P12760169443531721982

`record[A400000(A400121(n))]`
-/

namespace A399949.P12760169443531721982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (A400121 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A399949.P12760169443531721982

/-! ## A399949.P3396959331758984048

`A400000(A399950(1+n))`
-/

namespace A399949.P3396959331758984048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (A399950 (1 + n)).toNat

end

end A399949.P3396959331758984048

/-! ## A399949.P12511731933581666326

`record[A400000(A397831(n+1)-1)]`
-/

namespace A399949.P12511731933581666326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (A397831 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A399949.P12511731933581666326

/-!
# A399950: Indices of record high points in A400000.

The programs for A399950, there is no canonical definition to state claims against.
-/

/-! ## A399950.P3234420196838082210

`A399763(record[A397493(n)])`
-/

namespace A399950.P3234420196838082210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399763 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399950.P3234420196838082210

/-! ## A399950.P5305700476842364084

`A399763(A399949(1+n))`
-/

namespace A399950.P5305700476842364084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399763 (A399949 (1 + n)).toNat

end

end A399950.P5305700476842364084

/-! ## A399950.P12543390195210622581

`A400121(lt[A046268(n), 3])`
-/

namespace A399950.P12543390195210622581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046268 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400121 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A399950.P12543390195210622581

/-! ## A399950.P454526981856821186

`A399763(record[A400000(n+1)])`
-/

namespace A399950.P454526981856821186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399763 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399950.P454526981856821186

/-! ## A399950.P12719592947142938361

`A399763(record[n-A400110(n+1)])`
-/

namespace A399950.P12719592947142938361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A400110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399763 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399950.P12719592947142938361

/-!
# A399951: Sum of the sizes of the largest components over all functions on n unlabeled nodes.

The programs for A399951, there is no canonical definition to state claims against.
-/

/-! ## A399951.P9371824398241444837

`A319899(round(exp(n)))`
-/

namespace A399951.P9371824398241444837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319899 (SequenceMachineLib.roundAway (Real.exp (n : ℝ))).toNat

end

end A399951.P9371824398241444837

/-!
# A399955: Number of connected, claw-free planar graphs with n vertices.

The programs for A399955, there is no canonical definition to state claims against.
-/

/-! ## A399955.P2840904515913183761

`A325119(A089976(n))`
-/

namespace A399955.P2840904515913183761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325119 (A089976 n).toNat

end

end A399955.P2840904515913183761

/-! ## A399955.P9246892774567616767

`A328867(A116953(n))`
-/

namespace A399955.P9246892774567616767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (A116953 n).toNat

end

end A399955.P9246892774567616767

/-! ## A399955.P2286849824438020697

`A356903(A148081(n))`
-/

namespace A399955.P2286849824438020697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356903 (A148081 n).toNat

end

end A399955.P2286849824438020697

/-!
# A399956: Number of 2-connected, claw-free planar graphs with n vertices.

The programs for A399956, there is no canonical definition to state claims against.
-/

/-! ## A399956.P9279678661727950397

`A238005(A174810(n))`
-/

namespace A399956.P9279678661727950397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (A174810 n).toNat

end

end A399956.P9279678661727950397

/-!
# A399961: Trajectory of 2 under the map x -> x + (sum of decimal digits of x)*(product of nonzero decimal digits of x).

The programs for A399961, there is no canonical definition to state claims against.
-/

/-! ## A399961.P11183934061536686334

`A062331(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A399961.P11183934061536686334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A062331 (a (n - 1)).toNat + a (n - 1)

end

end A399961.P11183934061536686334

/-!
# A399965: Inverse permutation to A397493.

The programs for A399965, there is no canonical definition to state claims against.
-/

/-! ## A399965.P3649433516571901387

`fo[A397493(n)]`
-/

namespace A399965.P3649433516571901387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A399965.P3649433516571901387

/-!
# A399966: Expansion of e.g.f. 1/(1 + log(1 - x) * cosh(x)).

The programs for A399966, there is no canonical definition to state claims against.
-/

/-! ## A399966.P17223040227469310021

`A240542(row(A046937(n*(3*n-2))))`
-/

namespace A399966.P17223040227469310021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (SequenceMachineLib.triRow (A046937 ((n : ℤ) * ((3 * n : ℤ) - 2)).toNat).toNat)

end

end A399966.P17223040227469310021

/-! ## A399966.P11518918326684667920

`or(A162306(A343353(n)), A288964(n))`
-/

namespace A399966.P11518918326684667920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A162306 (A343353 n).toNat) (A288964 n)

end

end A399966.P11518918326684667920

/-!
# A399967: Positive integers k such that the sum of the squares of the exponents in the prime factorization of k is a square.

The programs for A399967, there is no canonical definition to state claims against.
-/

/-! ## A399967.P17080012703541887602

`∪[A000961(n+1), A064120(A020988(n))]`
-/

namespace A399967.P17080012703541887602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064120 (A020988 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399967.P17080012703541887602

/-! ## A399967.P16768570843093655889

`∪[A000961(n+1), A106285(A055826(n))]`
-/

namespace A399967.P16768570843093655889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106285 (A055826 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399967.P16768570843093655889

/-! ## A399967.P17047172610915482370

`∪[A000961(1+n), A018412(A151292(n))]`
-/

namespace A399967.P17047172610915482370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A151292 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399967.P17047172610915482370

/-! ## A399967.P17473609693963054925

`∪[A000961(n+1), A298883(A005057(n))]`
-/

namespace A399967.P17473609693963054925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298883 (A005057 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399967.P17473609693963054925

/-! ## A399967.P14091772301485006789

`∪[A000961(n+1), A261005(A048395(n))]`
-/

namespace A399967.P14091772301485006789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261005 (A048395 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399967.P14091772301485006789

/-! ## A399967.P1927172907082283424

`∪[A000961(n+1), A046523(A350980(n))]`
-/

namespace A399967.P1927172907082283424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A350980 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399967.P1927172907082283424

/-! ## A399967.P5071238177929613273

`∪[A000961(n+1), A261005(A328151(n))]`
-/

namespace A399967.P5071238177929613273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261005 (A328151 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399967.P5071238177929613273

/-! ## A399967.P9877618252713931456

`∪[A000961(n+1), A277133(A370215(n))]`
-/

namespace A399967.P9877618252713931456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277133 (A370215 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399967.P9877618252713931456

/-! ## A399967.P5726110945768358003

`∪[A246655(n+1), A277133(A210672(n))]`
-/

namespace A399967.P5726110945768358003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277133 (A210672 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399967.P5726110945768358003

/-! ## A399967.P10142159270466730490

`∪[A000961(n+1), A006472(A058806(n+1))]`
-/

namespace A399967.P10142159270466730490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006472 (A058806 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399967.P10142159270466730490

/-!
# A399969: Numbers k such that the number of divisors of k divides k + 2.

The programs for A399969, the canonical program `A399969.P7561850304085371636` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399969 has offset 1).

The definition of A399969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399969.P7561850304085371636

`lt[(n+3)%A000005(n+1), 1]+1`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A399969

/-- `lt[(n+3)%A000005(n+1), 1]+1` -/
def P7561850304085371636.Spec : Prop :=
  ∀ n, (P7561850304085371636.a n : ℤ) = A399969 (n + 1)

theorem P7561850304085371636.correct : P7561850304085371636.Spec := by
  intro n
  simp only [A399969, Nat.add_sub_cancel]

end A399969

/-! ## A399969.P9085302107197931844

`lt[(n+3)%Δ[A006218(n)], 1]+1`
-/

namespace A399969.P9085302107197931844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (f2 (n + 1) - f2 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A399969.P9085302107197931844

namespace A399969

/-- `lt[(n+3)%Δ[A006218(n)], 1]+1` -/
def P9085302107197931844.Spec : Prop :=
  ∀ n, (P9085302107197931844.a n : ℤ) = A399969 (n + 1)

end A399969

/-!
# A399972: Number of nonempty sets of pairwise commuting permutations of [n].

The programs for A399972, there is no canonical definition to state claims against.
-/

/-! ## A399972.P2943585808813637898

`A006068(A197900(n+1)-col(n))+col(n)`
-/

namespace A399972.P2943585808813637898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A197900 (n + 1) - (SequenceMachineLib.triCol n : ℤ)).toNat + (SequenceMachineLib.triCol n : ℤ)

end

end A399972.P2943585808813637898

/-!
# A399973: a(n) is the sum of sigma (A000203), over the integers smaller or equal to n, that are not coprime to n.

The programs for A399973, there is no canonical definition to state claims against.
-/

/-! ## A399973.P10350740381122237689

`A024916(n+1)-A308095(n+1)`
-/

namespace A399973.P10350740381122237689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A308095 (n + 1)

end

end A399973.P10350740381122237689

/-! ## A399973.P1572720439204258992

`∑[A000203(n+1)]-A308095(n+1)`
-/

namespace A399973.P1572720439204258992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A308095 (n + 1)

end

end A399973.P1572720439204258992

/-!
# A399974: Number of nonempty sets of pairwise commuting involutions on [n].

The programs for A399974, there is no canonical definition to state claims against.
-/

/-! ## A399974.P4624751554554020592

`A007306((C(7*n, 2)/7)^ceil(n/2))`
-/

namespace A399974.P4624751554554020592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (SequenceMachineLib.roundAway (((Nat.choose (7 * n) 2 : ℚ) / 7) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A399974.P4624751554554020592

/-!
# A399976: Number of sublattices of index n in generic n-dimensional lattice.

The programs for A399976, there is no canonical definition to state claims against.
-/

/-! ## A399976.P18307592219276648065

`A128119(C(n+1+n+1-1, 2)+n+1)`
-/

namespace A399976.P18307592219276648065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (Nat.choose ((n + 1 + (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A399976.P18307592219276648065

/-! ## A399976.P4417237187713057628

`A160870(C(n+1+n+1-1, 2)+n+1)`
-/

namespace A399976.P4417237187713057628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (Nat.choose ((n + 1 + (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A399976.P4417237187713057628

/-! ## A399976.P2387204922776949345

`A128119((n+1)²+n²)`
-/

namespace A399976.P2387204922776949345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 ((n + 1) ^ 2 + n ^ 2)

end

end A399976.P2387204922776949345

/-! ## A399976.P5780193560495394807

`A160870((n+1)²+n²)`
-/

namespace A399976.P5780193560495394807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 ((n + 1) ^ 2 + n ^ 2)

end

end A399976.P5780193560495394807

/-! ## A399976.P1612934081563211424

`lcm((-1)^n, A160870(A001844(n)))`
-/

namespace A399976.P1612934081563211424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A160870 (A001844 n).toNat)

end

end A399976.P1612934081563211424

/-!
# A399978: a(n) = omega(n) + sopf(n), where omega(n) is the number of distinct prime factors of n (A001221) and sopf(n) is the sum of the distinct primes dividing n (A008472).

The programs for A399978, the canonical program `A399978.P3565571226522649033` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399978 has offset 1).

The definition of A399978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001221(n+1)+A008472(n+1)` (program `A399978.P3565571226522649033`, by `A399978.P3565571226522649033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399978.P6445345573394791398

`∑{p}[n+1, #+1]`
-/

namespace A399978.P6445345573394791398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p + 1)

end

end A399978.P6445345573394791398

namespace A399978

/-- `∑{p}[n+1, #+1]` -/
def P6445345573394791398.Spec : Prop :=
  ∀ n, (P6445345573394791398.a n : ℤ) = A399978 (n + 1)

end A399978

/-! ## A399978.P3565571226522649033

`A001221(n+1)+A008472(n+1)`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A399978

/-- `A001221(n+1)+A008472(n+1)` -/
def P3565571226522649033.Spec : Prop :=
  ∀ n, P3565571226522649033.a n = A399978 (n + 1)

theorem P3565571226522649033.correct : P3565571226522649033.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel]

end A399978

/-! ## A399978.P13838358557915532171

`A008474(∏{p}[1+n, #])`
-/

namespace A399978.P13838358557915532171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A399978.P13838358557915532171

namespace A399978

/-- `A008474(∏{p}[1+n, #])` -/
def P13838358557915532171.Spec : Prop :=
  ∀ n, P13838358557915532171.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P10902358523298316926

`A008472(n+1)+∑{e}[∏{p}[n+1, #], #]`
-/

namespace A399978.P10902358523298316926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A399978.P10902358523298316926

namespace A399978

/-- `A008472(n+1)+∑{e}[∏{p}[n+1, #], #]` -/
def P10902358523298316926.Spec : Prop :=
  ∀ n, P10902358523298316926.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P8306332774107393084

`∑{e}[∏{p}[n+1, #], #]+sqrt(A235323(n+1))`
-/

namespace A399978.P8306332774107393084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) + Real.sqrt (A235323 (n + 1) : ℝ)

end

end A399978.P8306332774107393084

namespace A399978

/-- `∑{e}[∏{p}[n+1, #], #]+sqrt(A235323(n+1))` -/
def P8306332774107393084.Spec : Prop :=
  ∀ n, P8306332774107393084.a n = (A399978 (n + 1) : ℝ)

end A399978

/-! ## A399978.P4240908786794917954

`∑{e}[∏{p}[n+1, #], #]+∑{d}[n+1, A061397(#)]`
-/

namespace A399978.P4240908786794917954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + ∑ d ∈ Nat.divisors (f3 n), A061397 d

end

end A399978.P4240908786794917954

namespace A399978

/-- `∑{e}[∏{p}[n+1, #], #]+∑{d}[n+1, A061397(#)]` -/
def P4240908786794917954.Spec : Prop :=
  ∀ n, P4240908786794917954.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P5912006531656093240

`A023889(∏{p}[n+1, #])+∑{e}[∏{p}[n+1, #], #]`
-/

namespace A399978.P5912006531656093240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (∏ p ∈ Nat.primeFactors (f1 n), p) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A399978.P5912006531656093240

namespace A399978

/-- `A023889(∏{p}[n+1, #])+∑{e}[∏{p}[n+1, #], #]` -/
def P5912006531656093240.Spec : Prop :=
  ∀ n, P5912006531656093240.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P6448492344741041708

`∑{e}[∏{p}[n+1, #], #]+A075653(n+1)-(n+1)`
-/

namespace A399978.P6448492344741041708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + (A075653 (n + 1) - (n + 1 : ℤ))

end

end A399978.P6448492344741041708

namespace A399978

/-- `∑{e}[∏{p}[n+1, #], #]+A075653(n+1)-(n+1)` -/
def P6448492344741041708.Spec : Prop :=
  ∀ n, P6448492344741041708.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P12532117941138792327

`∑{e}[∏{p}[n+1, #], #]+∑{d}[n+1, #*A010051(#)]`
-/

namespace A399978.P12532117941138792327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + ∑ d ∈ Nat.divisors (f3 n), (d : ℤ) * A010051 d

end

end A399978.P12532117941138792327

namespace A399978

/-- `∑{e}[∏{p}[n+1, #], #]+∑{d}[n+1, #*A010051(#)]` -/
def P12532117941138792327.Spec : Prop :=
  ∀ n, P12532117941138792327.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P14754874054397281400

`A008474(A007947(n+1))`
-/

namespace A399978.P14754874054397281400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (A007947 (n + 1)).toNat

end

end A399978.P14754874054397281400

namespace A399978

/-- `A008474(A007947(n+1))` -/
def P14754874054397281400.Spec : Prop :=
  ∀ n, P14754874054397281400.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P12908611136117881797

`A345279(n+1)+A345278(n+1)`
-/

namespace A399978.P12908611136117881797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345279 (n + 1) + A345278 (n + 1)

end

end A399978.P12908611136117881797

namespace A399978

/-- `A345279(n+1)+A345278(n+1)` -/
def P12908611136117881797.Spec : Prop :=
  ∀ n, P12908611136117881797.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P10400433579805347123

`A008474(n+1)-A046660(n+1)`
-/

namespace A399978.P10400433579805347123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1) - A046660 (n + 1)

end

end A399978.P10400433579805347123

namespace A399978

/-- `A008474(n+1)-A046660(n+1)` -/
def P10400433579805347123.Spec : Prop :=
  ∀ n, P10400433579805347123.a n = A399978 (n + 1)

theorem P10400433579805347123.correct : P10400433579805347123.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P10400433579805347123.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A008474, A008474.P119709174749842562.a, A046660, A046660.P3614759855976580945.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P11785030139591203360

`A229109(n+1)-A076694(n+1)`
-/

namespace A399978.P11785030139591203360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1) - A076694 (n + 1)

end

end A399978.P11785030139591203360

namespace A399978

/-- `A229109(n+1)-A076694(n+1)` -/
def P11785030139591203360.Spec : Prop :=
  ∀ n, P11785030139591203360.a n = A399978 (n + 1)

theorem P11785030139591203360.correct : P11785030139591203360.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P11785030139591203360.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A076694, A076694.P8693598391704263352.a, A229109, A229109.P7396241872602068631.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P17334096903212594544

`A380457(n+1)-A023890(n+1)`
-/

namespace A399978.P17334096903212594544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380457 (n + 1) - A023890 (n + 1)

end

end A399978.P17334096903212594544

namespace A399978

/-- `A380457(n+1)-A023890(n+1)` -/
def P17334096903212594544.Spec : Prop :=
  ∀ n, P17334096903212594544.a n = A399978 (n + 1)

theorem P17334096903212594544.correct : P17334096903212594544.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P17334096903212594544.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, A380457, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P17414387632939656244

`A075653(n+1)-A378993(n+1)`
-/

namespace A399978.P17414387632939656244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - A378993 (n + 1)

end

end A399978.P17414387632939656244

namespace A399978

/-- `A075653(n+1)-A378993(n+1)` -/
def P17414387632939656244.Spec : Prop :=
  ∀ n, P17414387632939656244.a n = A399978 (n + 1)

theorem P17414387632939656244.correct : P17414387632939656244.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P17414387632939656244.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A075653, A075653.P2659253384492111030.a, A378993, A378993.P12473165963195423861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P1475698385127287813

`A380441(n+1)-A367175(n+1)`
-/

namespace A399978.P1475698385127287813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380441 (n + 1) - A367175 (n + 1)

end

end A399978.P1475698385127287813

namespace A399978

/-- `A380441(n+1)-A367175(n+1)` -/
def P1475698385127287813.Spec : Prop :=
  ∀ n, P1475698385127287813.a n = A399978 (n + 1)

theorem P1475698385127287813.correct : P1475698385127287813.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P1475698385127287813.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A367175, A367175.P9934287224977358039.a, A380441, A380441.P1716721751457761727.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P7715366136025362549

`∑{d}[n+1, A023900(#)*A065967((n+1)/#)]`
-/

namespace A399978.P7715366136025362549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A065967 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399978.P7715366136025362549

namespace A399978

/-- `∑{d}[n+1, A023900(#)*A065967((n+1)/#)]` -/
def P7715366136025362549.Spec : Prop :=
  ∀ n, P7715366136025362549.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P8195273119676798467

`∑{d}[n+1, A055615(#)*A180253((n+1)/#)]`
-/

namespace A399978.P8195273119676798467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A180253 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399978.P8195273119676798467

namespace A399978

/-- `∑{d}[n+1, A055615(#)*A180253((n+1)/#)]` -/
def P8195273119676798467.Spec : Prop :=
  ∀ n, P8195273119676798467.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P2511740750696239203

`A008472(n+1)+A001222(A007947(n+1))`
-/

namespace A399978.P2511740750696239203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A001222 (A007947 (n + 1)).toNat

end

end A399978.P2511740750696239203

namespace A399978

/-- `A008472(n+1)+A001222(A007947(n+1))` -/
def P2511740750696239203.Spec : Prop :=
  ∀ n, P2511740750696239203.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P7470619892923771989

`A008472(n+1)+A001222(A181819(n+1))`
-/

namespace A399978.P7470619892923771989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A001222 (A181819 (n + 1)).toNat

end

end A399978.P7470619892923771989

namespace A399978

/-- `A008472(n+1)+A001222(A181819(n+1))` -/
def P7470619892923771989.Spec : Prop :=
  ∀ n, P7470619892923771989.a n = A399978 (n + 1)

end A399978

/-!
# A399979: a(n) is the least missing value from the Heraclitus transform of the first n positive square numbers.

The programs for A399979, there is no canonical definition to state claims against.
-/

/-! ## A399979.P8785686068308303453

`A380174(A014206(1+n))`
-/

namespace A399979.P8785686068308303453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380174 (A014206 (1 + n)).toNat

end

end A399979.P8785686068308303453

/-! ## A399979.P15192452294155821591

`A380174(A003682(2+n))`
-/

namespace A399979.P15192452294155821591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380174 (A003682 (2 + n)).toNat

end

end A399979.P15192452294155821591

/-! ## A399979.P11212874831815392547

`A380174(A400106(2+n))`
-/

namespace A399979.P11212874831815392547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380174 (A400106 (2 + n)).toNat

end

end A399979.P11212874831815392547

/-! ## A399979.P10449711907944869739

`A380174(A400197(n+2)+n+2)`
-/

namespace A399979.P10449711907944869739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380174 (A400197 (n + 2) + (n + 2 : ℤ)).toNat

end

end A399979.P10449711907944869739

/-! ## A399979.P16228887822011917186

`A380174(A335048(n+2))`
-/

namespace A399979.P16228887822011917186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380174 (A335048 (n + 2)).toNat

end

end A399979.P16228887822011917186

/-!
# A399980: Triangle T(n,k) (1<=k<=n) read by rows: T(n,k) = number of distinct k-inversion sets in the symmetric group on n elements.

The programs for A399980, there is no canonical definition to state claims against.
-/

/-! ## A399980.P12214183391977129477

`A321352(n^A317624(n))`
-/

namespace A399980.P12214183391977129477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A317624 n : ℤ))).toNat

end

end A399980.P12214183391977129477

/-!
# A399981: Total number of standard Young tableaux over all basic skew shapes with n cells. (Row sums of A399982.)

The programs for A399981, there is no canonical definition to state claims against.
-/

/-! ## A399981.P11017028897352361955

`A324382(or(A236468(n+5), A290436(3*n+1)))`
-/

namespace A399981.P11017028897352361955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324382 (Int.lor (A236468 (n + 5)) (A290436 (3 * n + 1))).toNat

end

end A399981.P11017028897352361955

/-!
# A399985: Number of trees with total node weight n where nodes have positive integer weights and no adjacent nodes have the same weight.

The programs for A399985, there is no canonical definition to state claims against.
-/

/-! ## A399985.P2316387154905081131

`A162344(A049856(n+1))`
-/

namespace A399985.P2316387154905081131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A049856 (n + 1)).toNat

end

end A399985.P2316387154905081131

/-! ## A399985.P1526292620016531567

`A084359(A148207(n+1))`
-/

namespace A399985.P1526292620016531567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A148207 (n + 1)).toNat

end

end A399985.P1526292620016531567

/-! ## A399985.P873061202530420877

`A135660(A205504(n+1))`
-/

namespace A399985.P873061202530420877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A205504 (n + 1)).toNat

end

end A399985.P873061202530420877

/-! ## A399985.P14905331980220906400

`A181578(A298897(n+1))`
-/

namespace A399985.P14905331980220906400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A298897 (n + 1)).toNat

end

end A399985.P14905331980220906400

/-! ## A399985.P9175929646173918189

`floor(A359897(A173303(n)+1)/2)`
-/

namespace A399985.P9175929646173918189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A359897 (A173303 n + 1).toNat : ℚ) / 2⌋

end

end A399985.P9175929646173918189

/-!
# A399989: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the permutations {123, 213, 231}.

The programs for A399989, the canonical program `A399989.P6324952000577847683` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399989 has offset 0).

The definition of A399989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399989.P6324952000577847683

`4*a(n-1)+4*a(n-2)+A000108(n-1)-6*A000108(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A399989

/-- `4*a(n-1)+4*a(n-2)+A000108(n-1)-6*A000108(n-2)` -/
def P6324952000577847683.Spec : Prop :=
  ∀ n, P6324952000577847683.a n = A399989 n

theorem P6324952000577847683.correct : P6324952000577847683.Spec := by
  intro n
  simp only [A399989]

end A399989

/-!
# A399995: a(1) = 0. For n > 1, a(n) is the number of ways to write a(n-1) as the sum of two earlier terms with distinct positions in the sequence.

The programs for A399995, there is no canonical definition to state claims against.
-/

/-! ## A399995.P14034131893664364136

`1-A397177(1+n)+n`
-/

namespace A399995.P14034131893664364136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A397177 (1 + n) + (n : ℤ)

end

end A399995.P14034131893664364136

/-! ## A399995.P14770579268983261234

`(A397177(n+1)*n)%(n+1)`
-/

namespace A399995.P14770579268983261234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397177 (n + 1) * (n : ℤ)) (n + 1 : ℤ)

end

end A399995.P14770579268983261234

/-! ## A399995.P12114695211295399313

`A024000(A397177(1+n))+n`
-/

namespace A399995.P12114695211295399313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A397177 (1 + n)).toNat + (n : ℤ)

end

end A399995.P12114695211295399313

/-! ## A399995.P1136115241255233058

`abs(A397177(n+1)+A001478(n+1))`
-/

namespace A399995.P1136115241255233058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A397177 (n + 1) + A001478 (n + 1)|

end

end A399995.P1136115241255233058

/-! ## A399995.P5833645533861334569

`n+1-A397177(A077168(n))`
-/

namespace A399995.P5833645533861334569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A397177 (A077168 n).toNat

end

end A399995.P5833645533861334569

/-!
# A399996: Number of free polyominoes with 2n cells that can be dissected into two congruent polyominoes.

The programs for A399996, there is no canonical definition to state claims against.
-/

/-! ## A399996.P11744406365639233561

`A123348(n)+A084059(n)-A236112(A349327(n+1))`
-/

namespace A399996.P11744406365639233561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123348 n + A084059 n - A236112 (A349327 (n + 1)).toNat

end

end A399996.P11744406365639233561

/-!
# A399997: a(n) is the maximum number of distinct positive differences of an n-element subset of {0, 1, ..., n*(n-1)/2}.

The programs for A399997, there is no canonical definition to state claims against.
-/

/-! ## A399997.P818285165704104245

`A245302(n+3)+A065710(n)`
-/

namespace A399997.P818285165704104245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245302 (n + 3) + A065710 n

end

end A399997.P818285165704104245

/-! ## A399997.P3782974917425593626

`A284895(n+1)+A024673(n+2)`
-/

namespace A399997.P3782974917425593626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1) + A024673 (n + 2)

end

end A399997.P3782974917425593626

/-! ## A399997.P6524502196869604959

`A100637(∑[1+2*n])-A230980(n)`
-/

namespace A399997.P6524502196869604959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (∑ j ∈ Finset.range (n + 1), f1 j) - A230980 n

end

end A399997.P6524502196869604959

/-! ## A399997.P15746062296508406666

`∑[A011371(n+4)-A379669(n+2)]`
-/

namespace A399997.P15746062296508406666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 4) - A379669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399997.P15746062296508406666

/-!
# A399998: a(n+1) = a(n-a(a(n))^2) + 1, a(0) = 0.

The programs for A399998, the canonical program `A399998.P756939935722183912` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399998 has offset 0).

The definition of A399998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399998.P756939935722183912

`a(n-1-a(a(n-1))²)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399998

/-- `a(n-1-a(a(n-1))²)+1` -/
def P756939935722183912.Spec : Prop :=
  ∀ n, (P756939935722183912.a n : ℤ) = A399998 n

theorem P756939935722183912.correct : P756939935722183912.Spec := by
  intro n
  simp only [A399998]

end A399998

/-! ## A399998.P12422897541134986291

`A196046(A153952(n)%A000051(n))`
-/

namespace A399998.P12422897541134986291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196046 (Int.tmod (A153952 n) (A000051 n)).toNat

end

end A399998.P12422897541134986291

namespace A399998

/-- `A196046(A153952(n)%A000051(n))` -/
def P12422897541134986291.Spec : Prop :=
  ∀ n, P12422897541134986291.a n = A399998 n

end A399998

/-! ## A399998.P10831154034382079728

`A001221(A270831(n+1)*A303668(n))`
-/

namespace A399998.P10831154034382079728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A270831 (n + 1) * A303668 n).toNat

end

end A399998.P10831154034382079728

namespace A399998

/-- `A001221(A270831(n+1)*A303668(n))` -/
def P10831154034382079728.Spec : Prop :=
  ∀ n, P10831154034382079728.a n = A399998 n

end A399998

/-! ## A399998.P2482365538174050008

`A001221(A242064(n+2)*A287915(n+1))`
-/

namespace A399998.P2482365538174050008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A242064 (n + 2) * A287915 (n + 1)).toNat

end

end A399998.P2482365538174050008

namespace A399998

/-- `A001221(A242064(n+2)*A287915(n+1))` -/
def P2482365538174050008.Spec : Prop :=
  ∀ n, P2482365538174050008.a n = A399998 n

end A399998

/-! ## A399998.P10983285457213691394

`A069010(A344654(3*n+2)-A334591(n+1))`
-/

namespace A399998.P10983285457213691394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A344654 (3 * n + 2) - A334591 (n + 1)).toNat

end

end A399998.P10983285457213691394

namespace A399998

/-- `A069010(A344654(3*n+2)-A334591(n+1))` -/
def P10983285457213691394.Spec : Prop :=
  ∀ n, P10983285457213691394.a n = A399998 n

end A399998

/-!
# A399999: Number of ways to cut a 30-60-90 triangle into n 30-60-90 triangles.

The programs for A399999, there is no canonical definition to state claims against.
-/

/-! ## A399999.P17356355394067185873

`A130053(A247289(n+1))`
-/

namespace A399999.P17356355394067185873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130053 (A247289 (n + 1)).toNat

end

end A399999.P17356355394067185873

/-! ## A399999.P15698084900157974459

`A014657(A259943(n+1))-n%2`
-/

namespace A399999.P15698084900157974459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (A259943 (n + 1)).toNat - ((n % 2 : ℕ) : ℤ)

end

end A399999.P15698084900157974459

